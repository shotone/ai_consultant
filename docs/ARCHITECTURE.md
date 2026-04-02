# ipove.ai — ტექნიკური არქიტექტურა

> ტექნიკური დოკუმენტაცია — API-first არქიტექტურა, ტექნოლოგიური სტეკი, მონაცემთა მოდელები
>
> **ძირითადი პრინციპი: API-first.** ipove.ai-ს საკუთარი ვებ/მობილური აპი არის API-ს პირველი კლიენტი. იგივე API მომავალში ხელმისაწვდომი იქნება მესამე მხარეებისთვის.

---

## 1. სისტემის ზოგადი არქიტექტურა (API-First)

```
┌─────────────────────────────────────────────────────────────────┐
│                        კლიენტები                                │
│                                                                 │
│  ფაზა 1 (საკუთარი):              ფაზა 2 (B2B კლიენტები):       │
│  ┌──────────┐ ┌─────┐ ┌───────┐  ┌────────────┐ ┌───────────┐  │
│  │ Web App  │ │ iOS │ │Android│  │mymarket.ge │ │ სხვა      │  │
│  │ (Next.js)│ │ App │ │ App   │  │ (widget)   │ │ კლიენტები │  │
│  └────┬─────┘ └──┬──┘ └──┬────┘  └─────┬──────┘ └─────┬─────┘  │
│       └──────────┴───────┘             └───────────────┘        │
│              │                                │                 │
└──────────────┼────────────────────────────────┼─────────────────┘
               │                                │
               │ (First-party)                  │ (Third-party)
               ▼                                ▼
┌──────────────────────────────────────────────────────────────────┐
│                     API Gateway (Kong / AWS API Gateway)          │
│                                                                  │
│  ┌─────────────────────┐    ┌──────────────────────────────────┐ │
│  │ Internal Auth       │    │ Public API Auth                  │ │
│  │ (JWT, OAuth)        │    │ (API Keys, Rate Limits, Tenants) │ │
│  └─────────────────────┘    └──────────────────────────────────┘ │
│                                                                  │
│              Rate Limiting · Load Balancing · CORS               │
└──────────────────────────┬───────────────────────────────────────┘
                           │
          ┌────────────────┼────────────────────┐
          ▼                ▼                    ▼
┌──────────────────────────────────────────────────────────────────┐
│                   Spring Boot Services (Java 21)                  │
│                                                                  │
│  ┌────────────────┐ ┌───────────────┐ ┌────────────────────────┐ │
│  │  Auth          │ │  Core API     │ │  AI Gateway Service    │ │
│  │  Service       │ │  Service      │ │  (Spring → Python AI)  │ │
│  │                │ │               │ │                        │ │
│  │ - Register     │ │ - Products    │ │ - Chat Controller      │ │
│  │ - Login        │ │ - Orders      │ │ - Matching Orchestrator│ │
│  │ - OAuth2       │ │ - Users       │ │ - Listing Pipeline     │ │
│  │ - JWT          │ │ - Reviews     │ │ - Notification Trigger │ │
│  │ - API Keys     │ │ - Categories  │ │                        │ │
│  │ - Tenant Mgmt  │ │ - Analytics   │ │     ↕ HTTP/gRPC        │ │
│  │                │ │               │ │                        │ │
│  │ Spring Security│ │ Spring Data   │ │ ┌────────────────────┐ │ │
│  │                │ │ JPA           │ │ │ Python AI Service  │ │ │
│  │                │ │ + Liquibase   │ │ │ (FastAPI)          │ │ │
│  │                │ │               │ │ │ - LangChain Agent  │ │ │
│  │                │ │               │ │ │ - Claude/GPT calls │ │ │
│  │                │ │               │ │ │ - Embeddings       │ │ │
│  │                │ │               │ │ └────────────────────┘ │ │
│  └──────┬─────────┘ └───────┬───────┘ └────────┬───────────────┘ │
│         └───────────────────┼──────────────────┘                 │
└─────────────────────────────┼────────────────────────────────────┘
                              │
                    ┌─────────┴─────────┐
                    ▼                   ▼
┌──────────────────────────┐  ┌─────────────────────────────────┐
│      RabbitMQ            │  │         მონაცემთა ფენა           │
│   (Message Broker)       │  │                                 │
│                          │  │  ┌──────────┐ ┌──────────────┐  │
│ Queues:                  │  │  │PostgreSQL│ │ Redis        │  │
│ - product.created        │  │  │(მთავარი  │ │ (Cache,      │  │
│ - product.matched        │  │  │ DB +     │ │  Sessions,   │  │
│ - notification.send      │  │  │ pgvector)│ │  Rate Limit) │  │
│ - chat.message           │  │  │          │ │              │  │
│ - listing.process        │  │  │ Liquibase│ │ Spring Cache │  │
│ - wish.check             │  │  │ migrations│ │             │  │
│                          │  │  └──────────┘ └──────────────┘  │
│ Exchanges:               │  │                                 │
│ - ipove.events (topic)   │  │  ┌────────────────────────────┐ │
│ - ipove.notifications    │  │  │ Elasticsearch              │ │
│   (fanout)               │  │  │ (Full-text Search)         │ │
│                          │  │  └────────────────────────────┘ │
└──────────────────────────┘  │                                 │
                              │  ┌──────────────┐ ┌───────────┐ │
                              │  │Pinecone/Qdrant│ │ S3 / R2  │ │
                              │  │(Vector DB)    │ │ (Files)  │ │
                              │  └──────────────┘ └───────────┘ │
                              └─────────────────────────────────┘
```

### API-First ნიშნავს:

- **ყველა ფუნქცია** ხელმისაწვდომია REST/WebSocket API-ით
- ipove.ai-ს საკუთარი frontend არის **API-ს პირველი კლიენტი** (არა განსაკუთრებული)
- მესამე მხარის კლიენტი იყენებს **იგივე API-ს** სხვა auth მეთოდით (API Key)
- **ერთი ბექენდი — რამდენიც გინდა ფრონტენდი**

---

## 2. ტექნოლოგიური სტეკი

### 2.1 Frontend

| ტექნოლოგია | დანიშნულება | დასაბუთება |
|------------|-------------|-----------|
| **Next.js 15 (App Router)** | Web აპლიკაცია | SSR, SEO, React ecosystem |
| **React Native / Expo** | მობილური აპი (iOS + Android) | ერთი კოდბეისი ორი პლატფორმისთვის |
| **TypeScript** | ტიპიზაცია | უსაფრთხოება, IDE მხარდაჭერა |
| **Tailwind CSS** | სტილიზაცია | სწრაფი UI development |
| **Zustand / Jotai** | State management | მსუბუქი, მარტივი |
| **Socket.io Client** | Real-time ჩათი | WebSocket კომუნიკაცია |

### 2.2 Backend

| ტექნოლოგია | დანიშნულება | დასაბუთება |
|------------|-------------|-----------|
| **Java 21 (LTS)** | მთავარი პროგრამირების ენა | ტიპობრივი უსაფრთხოება, წარმადობა, enterprise-ready |
| **Spring Boot 3.x** | მთავარი ფრეიმვორკი | API-first, security, dependency injection, ეკოსისტემა |
| **Spring WebFlux** | Real-time / reactive | WebSocket ჩათი, streaming AI responses |
| **Keycloak** | ცენტრალიზებული ავტორიზაცია | SSO, OAuth2/OIDC, user management, social login, multi-tenant |
| **Spring Security + Keycloak Adapter** | ავტორიზაციის ინტეგრაცია | JWT validation, role-based access, resource server |
| **Spring Data JPA** | ORM / მონაცემთა წვდომა | PostgreSQL ინტეგრაცია, repository pattern |
| **RabbitMQ** | მესიჯინგი / Event bus | ასინქრონული ამოცანები, სერვისებს შორის კომუნიკაცია, შეტყობინებები |
| **Redis** | ქეშირება, სესიები, rate limiting | Spring Cache abstraction, სწრაფი წვდომა |
| **Liquibase** | DB მიგრაციები | ვერსიონირებული სქემის მართვა, rollback, multi-tenant |
| **Email Provider (SendGrid / Resend)** | ტრანზაქციული ემაილები | რეგისტრაცია, შეტყობინებები, digest. Spring Mail abstraction |
| **SMS Provider (Twilio / Magti SMS)** | SMS შეტყობინებები | OTP ვერიფიკაცია, კრიტიკული ნოტიფიკაციები |
| **Python (FastAPI)** | AI/ML მიკროსერვისი | LangChain ეკოსისტემა, LLM ინტეგრაცია |
| **Docker + Docker Compose** | კონტეინერიზაცია | განვითარების / deploy გარემო |
| **Maven / Gradle** | Build tool | dependency management, CI/CD |

### 2.3 AI/ML სტეკი — რეკომენდებული AI Source

#### მთავარი LLM არჩევანი

| მოდელი | როლი | რატომ |
|--------|------|-------|
| **Claude 4 Sonnet (Anthropic)** | **მთავარი ჩათის ძრავი** | საუკეთესო ქართული ენის მხარდაჭერა, ძლიერი reasoning, tool calling, გრძელი კონტექსტი (200K tokens), უსაფრთხო |
| **GPT-4o (OpenAI)** | **სარეზერვო / fallback** | vision (ფოტო ანალიზი), multimodal, სტაბილური API |
| **GPT-4o-mini (OpenAI)** | **მსუბუქი ამოცანები** | სწრაფი, იაფი — კატეგორიზაცია, entity extraction, embedding |

#### რატომ Claude 4 Sonnet როგორც მთავარი?

| კრიტერიუმი | Claude 4 Sonnet | GPT-4o | 
|-----------|----------------|--------|
| ქართული ენა | ძალიან კარგი | კარგი |
| Tool calling | შესანიშნავი | შესანიშნავი |
| Reasoning / დარწმუნება | უკეთესი ტონი, ნაკლებ „რობოტული" | კარგი |
| კონტექსტის ფანჯარა | 200K tokens | 128K tokens |
| ფასი (input/output) | $3/$15 per 1M tokens | $2.50/$10 per 1M tokens |
| Vision (ფოტო) | კი | კი |
| Streaming | კი | კი |

**Claude-ს უპირატესობა ipove.ai-სთვის:** გამყიდველი კონსულტანტის როლისთვის მნიშვნელოვანია ბუნებრივი, მეგობრული ტონი. Claude-ს ტონი უფრო „ადამიანურია" — ნაკლებად ტექნიკური, უფრო საუბრისებური, რაც სწორედ ის არის რაც გვჭირდება.

#### რატომ GPT-4o-mini დამხმარედ?

- **ფოტოების ანალიზი** — გამყიდველის ფოტოებიდან პროდუქტის ავტომატური ამოცნობა
- **Entity extraction** — ჩათიდან პროდუქტის, ფასის, კატეგორიის ამოღება (იაფი, სწრაფი)
- **Embedding-ები** — OpenAI text-embedding-3-small ვექტორიზაციისთვის
- **ფასი** — 60x-ით იაფი Claude-ზე, მსუბუქი ამოცანებისთვის

#### Hybrid AI სტრატეგია (Multi-model routing)

```
მომხმარებლის შეტყობინება
    ↓
Router (სწრაფი კლასიფიკატორი — GPT-4o-mini):
    ├── "რა ტიპის ამოცანაა?"
    │
    ├─ მსუბუქი (კატეგორიზაცია, extraction) → GPT-4o-mini ($0.15/1M)
    ├─ ჩათი (საუბარი, დარწმუნება, გაყიდვა) → Claude 4 Sonnet ($3/1M)
    ├─ ფოტო ანალიზი (vision)               → GPT-4o ($2.50/1M)
    └─ embedding (ვექტორიზაცია)             → text-embedding-3-small ($0.02/1M)
```

ეს ზოგავს ხარჯებს: მსუბუქ ამოცანებზე იაფ მოდელს იყენებ, მძიმეზე — ძლიერს.

#### სრული AI/ML სტეკი

| ტექნოლოგია | დანიშნულება | დასაბუთება |
|------------|-------------|-----------|
| **Claude 4 Sonnet** | მთავარი ჩათის ძრავი | ბუნებრივი ტონი, ქართული, reasoning |
| **GPT-4o** | Vision + fallback | ფოტო ანალიზი, სარეზერვო |
| **GPT-4o-mini** | მსუბუქი ამოცანები | სწრაფი, იაფი extraction/classification |
| **text-embedding-3-small** | ვექტორიზაცია | პროდუქტ-მომხმარებლის matching |
| **LangChain / LangGraph** | AI ორკესტრაცია | ჩათის ლოგიკა, tool calling, memory, agent flow |
| **Pinecone / Qdrant** | ვექტორული DB | სემანტიკური ძებნა, similarity matching |
| **LangSmith** | მონიტორინგი | AI-ს ხარისხის კონტროლი, debugging |

### 2.4 ინფრასტრუქტურა

| ტექნოლოგია | დანიშნულება | დასაბუთება |
|------------|-------------|-----------|
| **AWS (ECS / EKS)** | ჰოსტინგი — backend | სკალირება, საიმედოობა, Java containers |
| **Vercel** | ჰოსტინგი — frontend | Next.js-ის ოპტიმალური deploy |
| **PostgreSQL (RDS)** | მთავარი მონაცემთა ბაზა | რელაციური მონაცემები, pgvector |
| **Redis (ElastiCache)** | ქეშირება, სესიები, rate limiting | Spring Cache integration |
| **RabbitMQ (Amazon MQ)** | მესიჯ ბროკერი | ასინქრონული კომუნიკაცია სერვისებს შორის |
| **Elasticsearch** | სრულტექსტური ძებნა | პროდუქტის ინდექსაცია |
| **CloudFlare R2 / AWS S3** | ფაილების შენახვა | სურათები, დოკუმენტები |
| **Resend / SendGrid** | Email | შეტყობინებები |
| **Firebase Cloud Messaging** | Push notifications | მობილური შეტყობინებები |
| **Liquibase** | DB მიგრაციები | Spring Boot ინტეგრაცია, ავტომატური მიგრაცია |

---

## 3. Multi-Tenant და API Key სისტემა

### 3.1 Tenant მოდელი

ფაზა 1-ში ipove.ai თავად არის ერთადერთი tenant. ფაზა 2-ში ემატება B2B კლიენტები.

```
┌─────────────────────────────────────────────────────┐
│                    Tenants                            │
│                                                     │
│  ┌────────────────┐  ┌────────────┐  ┌───────────┐  │
│  │ ipove.ai       │  │ mymarket   │  │ client_3  │  │
│  │ (default)      │  │ .ge        │  │           │  │
│  │                │  │            │  │           │  │
│  │ tenant_id: 1   │  │ tenant_id: │  │ tenant_id:│  │
│  │ type: internal │  │  2         │  │  3        │  │
│  │ plan: unlimited│  │ type: api  │  │ type: api │  │
│  │                │  │ plan: growth│ │ plan:     │  │
│  │                │  │            │  │  starter  │  │
│  └────────────────┘  └────────────┘  └───────────┘  │
└─────────────────────────────────────────────────────┘
```

- ყველა მონაცემი (users, products, chats) ეკუთვნის tenant-ს
- ipove.ai-ს საკუთარი პლატფორმა = `tenant_id: default`
- B2B კლიენტი = ცალკე tenant თავისი მონაცემებით
- tenant-ებს შორის მონაცემები **იზოლირებულია**

### 3.2 API Key სისტემა

```sql
CREATE TABLE api_keys (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id) ON DELETE CASCADE,
    key_hash        VARCHAR(255) NOT NULL,
    key_prefix      VARCHAR(10) NOT NULL,       -- "ipv_live_" ან "ipv_test_"
    name            VARCHAR(255) NOT NULL,       -- "Production Key", "Test Key"
    permissions     TEXT[] NOT NULL,              -- '{chat, search, match, notify}'
    rate_limit      INTEGER DEFAULT 1000,        -- requests per minute
    is_active       BOOLEAN DEFAULT TRUE,
    last_used_at    TIMESTAMPTZ,
    expires_at      TIMESTAMPTZ,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE tenants (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name            VARCHAR(255) NOT NULL,
    slug            VARCHAR(100) UNIQUE NOT NULL,
    type            VARCHAR(20) NOT NULL CHECK (type IN ('internal', 'api', 'white_label')),
    plan            VARCHAR(20) DEFAULT 'starter' CHECK (plan IN ('starter', 'growth', 'enterprise')),
    config          JSONB DEFAULT '{}',          -- tenant-სპეციფიური კონფიგურაცია
    webhook_url     TEXT,                        -- B2B კლიენტის webhook
    monthly_quota   INTEGER DEFAULT 10000,       -- API calls ლიმიტი
    is_active       BOOLEAN DEFAULT TRUE,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE api_usage_logs (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id),
    api_key_id      UUID REFERENCES api_keys(id),
    endpoint        VARCHAR(255) NOT NULL,
    method          VARCHAR(10) NOT NULL,
    status_code     INTEGER NOT NULL,
    latency_ms      INTEGER NOT NULL,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_api_usage_tenant_date ON api_usage_logs(tenant_id, created_at);
```

### 3.3 API Authentication Flow

```
B2B კლიენტის მოთხოვნა:
    │
    │  Header: Authorization: Bearer ipv_live_abc123...
    │
    ▼
API Gateway:
    │
    ├─ 1. API Key validation (key_hash lookup)
    ├─ 2. Tenant identification (key → tenant_id)
    ├─ 3. Permission check (endpoint ∈ key.permissions?)
    ├─ 4. Rate limit check (tenant.rate_limit)
    ├─ 5. Quota check (monthly_quota)
    │
    ▼
Core Service (tenant_id context injected)
    │
    └─ ყველა query ფილტრავს: WHERE tenant_id = :tenant_id
```

---

## 4. მონაცემთა ბაზის სქემა (Database Schema)

### 4.1 მომხმარებლები (Users)

```sql
CREATE TABLE users (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id) DEFAULT 'default',
    email           VARCHAR(255) NOT NULL,
    password_hash   VARCHAR(255) NOT NULL,
    full_name       VARCHAR(255) NOT NULL,
    phone           VARCHAR(50),
    avatar_url      TEXT,
    role            VARCHAR(20) NOT NULL CHECK (role IN ('buyer', 'seller', 'both')),
    is_verified     BOOLEAN DEFAULT FALSE,
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(tenant_id, email)
);
```

### 4.2 გამყიდველის პროფილი (Seller Profiles)

```sql
CREATE TABLE seller_profiles (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id) DEFAULT 'default',
    user_id         UUID REFERENCES users(id) ON DELETE CASCADE,
    business_name   VARCHAR(255),
    description     TEXT,
    rating          DECIMAL(3,2) DEFAULT 0.00,
    total_sales     INTEGER DEFAULT 0,
    is_premium      BOOLEAN DEFAULT FALSE,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### 4.3 პროდუქტები (Products)

```sql
CREATE TABLE products (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id) DEFAULT 'default',
    seller_id       UUID REFERENCES seller_profiles(id) ON DELETE CASCADE,
    title           VARCHAR(500) NOT NULL,
    description     TEXT NOT NULL,
    price           DECIMAL(12,2) NOT NULL,
    currency        VARCHAR(3) DEFAULT 'GEL',
    category_id     UUID REFERENCES categories(id),
    condition       VARCHAR(20) CHECK (condition IN ('new', 'like_new', 'good', 'fair')),
    status          VARCHAR(20) DEFAULT 'active' CHECK (status IN ('active', 'sold', 'reserved', 'inactive')),
    location        VARCHAR(255),
    images          TEXT[],
    metadata        JSONB DEFAULT '{}',
    embedding       VECTOR(1536),
    view_count      INTEGER DEFAULT 0,
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_products_tenant ON products(tenant_id);
CREATE INDEX idx_products_embedding ON products
    USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
CREATE INDEX idx_products_category ON products(tenant_id, category_id);
CREATE INDEX idx_products_status ON products(tenant_id, status);
CREATE INDEX idx_products_price ON products(tenant_id, price);
```

### 4.4 კატეგორიები (Categories)

```sql
CREATE TABLE categories (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name            VARCHAR(255) NOT NULL,
    slug            VARCHAR(255) UNIQUE NOT NULL,
    parent_id       UUID REFERENCES categories(id),
    icon            VARCHAR(50),
    sort_order      INTEGER DEFAULT 0
);
```

### 4.5 AI ჩათის ისტორია (Chat History)

```sql
CREATE TABLE chat_sessions (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID REFERENCES users(id) ON DELETE CASCADE,
    session_type    VARCHAR(20) CHECK (session_type IN ('search', 'negotiate', 'support')),
    status          VARCHAR(20) DEFAULT 'active',
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE chat_messages (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id      UUID REFERENCES chat_sessions(id) ON DELETE CASCADE,
    role            VARCHAR(20) NOT NULL CHECK (role IN ('user', 'assistant', 'system')),
    content         TEXT NOT NULL,
    metadata        JSONB DEFAULT '{}',
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### 4.6 სურვილების პროფილი (Wish Profile)

```sql
CREATE TABLE wish_profiles (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID REFERENCES users(id) ON DELETE CASCADE,
    query_text      TEXT NOT NULL,                          -- ორიგინალი მოთხოვნა
    parsed_criteria JSONB NOT NULL,                         -- AI-ს მიერ დაშლილი კრიტერიუმები
    embedding       VECTOR(1536),                           -- მოთხოვნის ვექტორული წარმოდგენა
    priority        VARCHAR(10) DEFAULT 'medium',
    price_min       DECIMAL(12,2),
    price_max       DECIMAL(12,2),
    price_flexible  BOOLEAN DEFAULT TRUE,                   -- ფასის მოქნილობა
    flexibility_pct INTEGER DEFAULT 15,                     -- რამდენ %-ით მოქნილია
    is_active       BOOLEAN DEFAULT TRUE,
    notify_channels VARCHAR(20)[] DEFAULT '{push,email}',   -- შეტყობინების არხები
    last_matched_at TIMESTAMPTZ,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_wish_embedding ON wish_profiles
    USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
```

### 4.7 შეტყობინებები (Notifications)

```sql
CREATE TABLE notifications (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID REFERENCES users(id) ON DELETE CASCADE,
    type            VARCHAR(30) NOT NULL,
    title           VARCHAR(500) NOT NULL,
    body            TEXT NOT NULL,
    channel         VARCHAR(20) NOT NULL,
    data            JSONB DEFAULT '{}',
    is_read         BOOLEAN DEFAULT FALSE,
    sent_at         TIMESTAMPTZ DEFAULT NOW()
);
```

### 4.8 მომხმარებელთა შორის კომუნიკაცია (Direct Messages)

```sql
CREATE TABLE conversations (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    buyer_id        UUID REFERENCES users(id),
    seller_id       UUID REFERENCES users(id),
    product_id      UUID REFERENCES products(id),
    status          VARCHAR(20) DEFAULT 'active',
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE direct_messages (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    conversation_id UUID REFERENCES conversations(id) ON DELETE CASCADE,
    sender_id       UUID REFERENCES users(id),
    content         TEXT NOT NULL,
    is_ai_assisted  BOOLEAN DEFAULT FALSE,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### 4.9 User Intelligence — ქცევის ანალიტიკა და KYC

```sql
-- მომხმარებლის ქცევის ლოგი
CREATE TABLE user_behavior_events (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id),
    user_id         UUID REFERENCES users(id),
    event_type      VARCHAR(50) NOT NULL,    -- 'product_view', 'search', 'chat_message', 'purchase', 'wishlist_add'
    event_data      JSONB NOT NULL,          -- {product_id, query, category, price, duration_ms, ...}
    session_id      VARCHAR(100),
    device_type     VARCHAR(20),             -- 'web', 'mobile_ios', 'mobile_android'
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_behavior_user ON user_behavior_events(user_id, created_at);
CREATE INDEX idx_behavior_type ON user_behavior_events(tenant_id, event_type, created_at);

-- AI-ს მიერ აგებული მომხმარებლის პროფილი
CREATE TABLE user_intelligence_profiles (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id),
    user_id         UUID REFERENCES users(id) UNIQUE,

    -- გემოვნების პროფილი
    preferred_categories  UUID[],            -- ხშირად ნახული კატეგორიები
    preferred_brands      TEXT[],            -- ბრენდის პრეფერენცია
    price_range_min       DECIMAL(12,2),     -- ჩვეულებრივი ფასის დიაპაზონი
    price_range_max       DECIMAL(12,2),
    price_sensitivity     DECIMAL(3,2),      -- 0.0 (არ აინტერესებს ფასი) → 1.0 (ძალიან მგრძნობიარე)

    -- ქცევის ნიმუში
    avg_session_duration  INTEGER,           -- საშუალო სესიის ხანგრძლივობა (წამებში)
    active_hours          INTEGER[],         -- აქტიური საათები (0-23)
    active_days           INTEGER[],         -- აქტიური დღეები (1-7)
    preferred_device      VARCHAR(20),

    -- prediction scores
    purchase_intent       DECIMAL(3,2),      -- 0.0 → 1.0 (ყიდვის ალბათობა)
    churn_risk            DECIMAL(3,2),      -- 0.0 → 1.0 (წასვლის რისკი)
    lifetime_value        DECIMAL(12,2),     -- სავარაუდო LTV

    -- AI-ს ზოგადი ცოდნა
    ai_summary            TEXT,              -- AI-ს თავისუფალი ტექსტის შეჯამება მომხმარებელზე
    tags                  TEXT[],            -- AI-ს მიერ მინიჭებული თეგები: 'apple_fan', 'bargain_hunter', 'premium_buyer'

    last_analyzed_at      TIMESTAMPTZ,
    created_at            TIMESTAMPTZ DEFAULT NOW(),
    updated_at            TIMESTAMPTZ DEFAULT NOW()
);

-- KYC / Trust Score სისტემა
CREATE TABLE user_kyc (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id),
    user_id         UUID REFERENCES users(id) UNIQUE,

    -- ვერიფიკაციის სტატუსები
    email_verified      BOOLEAN DEFAULT FALSE,
    phone_verified      BOOLEAN DEFAULT FALSE,
    id_document_status  VARCHAR(20) DEFAULT 'none'
                        CHECK (id_document_status IN ('none', 'pending', 'verified', 'rejected')),
    id_document_url     TEXT,

    -- Trust Score (0-100)
    trust_score         INTEGER DEFAULT 0,
    kyc_level           INTEGER DEFAULT 0 CHECK (kyc_level IN (0, 1, 2, 3)),

    -- ტრანზაქციის ისტორია (სკორისთვის)
    total_transactions  INTEGER DEFAULT 0,
    successful_transactions INTEGER DEFAULT 0,
    avg_rating_received DECIMAL(3,2) DEFAULT 0.00,
    member_since        TIMESTAMPTZ,
    last_transaction_at TIMESTAMPTZ,

    -- ფლეგები
    is_suspicious       BOOLEAN DEFAULT FALSE,
    fraud_flags         JSONB DEFAULT '[]',

    created_at          TIMESTAMPTZ DEFAULT NOW(),
    updated_at          TIMESTAMPTZ DEFAULT NOW()
);

-- მომხმარებელთა შეფასებები (rating/review)
CREATE TABLE user_reviews (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id       UUID REFERENCES tenants(id),
    reviewer_id     UUID REFERENCES users(id),
    reviewed_id     UUID REFERENCES users(id),
    product_id      UUID REFERENCES products(id),
    conversation_id UUID REFERENCES conversations(id),
    rating          INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
    comment         TEXT,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_reviews_reviewed ON user_reviews(reviewed_id);
```

---

## 5. ჩათ-ბეისირებული ლისტინგის სისტემა

### 5.1 Chat-to-Listing Flow (ტექნიკური)

პროდუქტის განთავსება ხდება ჩათში, არა ფორმებით. AI აგენტი კითხვა-პასუხის რეჟიმში აგროვებს ინფორმაციას:

```
┌─────────────────────────────────────────────────────────────┐
│                  Chat-to-Listing Pipeline                     │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  1. INTENT DETECTION                                        │
│     └→ მომხმარებელი: "მინდა გავყიდო"                        │
│     └→ Router → seller_listing_agent (Claude Sonnet)        │
│                                                             │
│  2. CONVERSATIONAL DATA COLLECTION                          │
│     └→ AI ეკითხება ეტაპობრივად:                             │
│        ├─ "რა პროდუქტია?" → title, category (auto-detect)  │
│        ├─ "რა მახასიათებლები?" → specs (structured JSONB)   │
│        ├─ "რა მდგომარეობაშია?" → condition enum             │
│        ├─ "რა ფასი გინდა?" → price + AI pricing advice     │
│        └─ "ფოტოები ატვირთე" → images[] (vision analysis)   │
│                                                             │
│  3. AI PHOTO ANALYSIS (GPT-4o Vision)                       │
│     └→ ფოტოებიდან ავტომატურად:                              │
│        ├─ პროდუქტის ტიპის ვერიფიკაცია                      │
│        ├─ მდგომარეობის შეფასება                              │
│        ├─ ბრენდის / მოდელის ამოცნობა                        │
│        └─ ხარისხის შემოწმება (ბუნდოვანი? ბნელი?)            │
│                                                             │
│  4. AI-ENHANCED LISTING GENERATION                          │
│     └→ Claude Sonnet აგენერირებს:                            │
│        ├─ ოპტიმიზებული სათაური                              │
│        ├─ დეტალური აღწერა (SEO-friendly)                    │
│        ├─ სტრუქტურირებული specs                             │
│        └─ ფასის რეკომენდაცია (ბაზრის ანალიზით)             │
│                                                             │
│  5. CONFIRMATION                                            │
│     └→ AI აჩვენებს preview-ს ჩათში                          │
│     └→ გამყიდველი ამოწმებს და ადასტურებს                    │
│     └→ "გამოქვეყნდა! ✅"                                    │
│                                                             │
│  6. POST-LISTING (გაყიდვების მენეჯერის რეჟიმი)             │
│     └→ Embedding generation → ვექტორული ინდექსაცია          │
│     └→ wish_profiles-თან matching                           │
│     └→ პოტენციურ მყიდველებს ეცნობებათ                       │
│     └→ AI აქტიურად ეძებს მყიდველს                           │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 5.2 ლისტინგის AI Tools

```python
listing_tools = [
    Tool(name="detect_category",     func=detect_category,     description="ტექსტიდან კატეგორიის ავტომატური დადგენა"),
    Tool(name="analyze_photo",       func=analyze_photo,       description="GPT-4o Vision: ფოტოს ანალიზი — ბრენდი, მდგომარეობა"),
    Tool(name="suggest_price",       func=suggest_price,       description="ბაზრის ანალიზით ფასის რეკომენდაცია"),
    Tool(name="generate_description",func=generate_description,description="SEO-ოპტიმიზებული აღწერის გენერაცია"),
    Tool(name="create_listing",      func=create_listing,      description="ლისტინგის შექმნა DB-ში"),
    Tool(name="find_matching_buyers",func=find_matching_buyers, description="მყისიერი match: ვინ ეძებს ამ პროდუქტს?"),
]
```

---

## 6. AI Matching Engine — არქიტექტურა

### 6.1 პროდუქტის ინდექსაცია

ყოველი ახალი პროდუქტის დალისტვისას (ჩათიდან ან API-დან):

```
გამყიდველი ამატებს პროდუქტს
    ↓
1. ტექსტი → OpenAI Embedding API → ვექტორი (1536-dim)
2. ვექტორი ინახება PostgreSQL-ში (pgvector) + Pinecone-ში
3. Elasticsearch-ში ინდექსირდება (full-text search)
4. Background job: wish_profiles-თან შედარება
    ↓
  თუ match > 70% → შეტყობინება მყიდველს
```

### 6.2 მყიდველის ძებნის ნაკადი

```
მყიდველი წერს AI ჩათში: "მინდა MacBook M3 Pro, 3000₾-მდე"
    ↓
1. LangChain Agent იღებს შეტყობინებას
2. Intent Classification: ძებნა / შეკითხვა / მოლაპარაკება
3. Entity Extraction: {product: "MacBook M3 Pro", price_max: 3000, currency: "GEL"}
4. Query Embedding → ვექტორული ძებნა (cosine similarity)
5. Elasticsearch hybrid search (keyword + semantic)
6. Flexibility Engine:
   - price_max * 1.15 = 3450₾ (15% მოქნილობა)
   - მსგავსი მოდელები: M2 Pro, M3 (არა Pro)
   - მსგავსი ბრენდები: ThinkPad X1
7. Ranking & Personalization
8. AI ფორმულირებს პასუხს რეკომენდაციებით
    ↓
მყიდველს უბრუნდება პერსონალიზებული პასუხი
```

### 6.3 Flexibility Engine — ადაპტური ფილტრაცია

```python
class FlexibilityEngine:
    """
    სტატიკური ფილტრების ნაცვლად — ადაპტური შესატყვისობა.
    ყოველ პროდუქტს ენიჭება relevance score 0-100%.
    """

    def calculate_match_score(self, wish, product) -> float:
        scores = {
            "semantic":  self.semantic_similarity(wish.embedding, product.embedding),
            "price":     self.price_flexibility_score(wish, product),
            "condition": self.condition_score(wish, product),
            "location":  self.location_score(wish, product),
            "seller":    self.seller_reputation_score(product.seller),
        }

        weights = {
            "semantic":  0.35,
            "price":     0.25,
            "condition": 0.15,
            "location":  0.10,
            "seller":    0.15,
        }

        return sum(scores[k] * weights[k] for k in scores)

    def price_flexibility_score(self, wish, product) -> float:
        """
        ფასი ზუსტ დიაპაზონშია → 1.0
        ფასი 10%-ით მეტია     → 0.8
        ფასი 20%-ით მეტია     → 0.5
        ფასი 30%+ მეტია       → 0.2
        ფასი ნაკლებია         → 1.0 (ბონუსით)
        """
        if product.price <= wish.price_max:
            return 1.0
        overage_pct = (product.price - wish.price_max) / wish.price_max
        if overage_pct <= 0.10:
            return 0.8
        elif overage_pct <= 0.20:
            return 0.5
        elif overage_pct <= 0.30:
            return 0.2
        return 0.0
```

### 6.4 AI Chat Agent სტრუქტურა (LangChain)

```python
from langchain.agents import AgentExecutor
from langchain.tools import Tool

# ---- მყიდველის AI (შოპინგ-კონსულტანტი) ----
buyer_tools = [
    Tool(name="search_products",       func=search_products,       description="ძებნა პროდუქტების ბაზაში — ფართო, მოქნილი ძებნა"),
    Tool(name="get_product_details",    func=get_product_details,   description="პროდუქტის სრული დეტალები გაყიდვის არგუმენტებისთვის"),
    Tool(name="compare_products",       func=compare_products,      description="2+ პროდუქტის შედარება მყიდველის კონტექსტში"),
    Tool(name="check_seller_profile",   func=check_seller_profile,  description="გამყიდველის საიმედოობის შემოწმება"),
    Tool(name="save_wish",              func=save_wish,             description="სურვილის შენახვა — AI გააგრძელებს ძებნას ფონში"),
    Tool(name="initiate_conversation",  func=initiate_conversation, description="მყიდველის დაკავშირება გამყიდველთან"),
    Tool(name="suggest_negotiation",    func=suggest_negotiation,   description="ფასზე მოლაპარაკების წამოწყება"),
    Tool(name="suggest_alternatives",   func=suggest_alternatives,  description="ალტერნატიული/მსგავსი პროდუქტების შეთავაზება"),
]

# ---- გამყიდველის AI (გაყიდვების მენეჯერი) ----
seller_tools = [
    Tool(name="find_potential_buyers",  func=find_potential_buyers,  description="პოტენციური მყიდველების აქტიური ძებნა"),
    Tool(name="optimize_listing",       func=optimize_listing,       description="ლისტინგის ოპტიმიზაცია — აღწერა, ფასი, ფოტოები"),
    Tool(name="pricing_strategy",       func=pricing_strategy,       description="ფასის სტრატეგია — ბაზრის ანალიზი, მოთხოვნა"),
    Tool(name="notify_buyer",           func=notify_buyer,           description="პოტენციურ მყიდველთან კავშირის ინიცირება"),
    Tool(name="market_analytics",       func=market_analytics,       description="ბაზრის ანალიტიკა — რას ეძებენ, ტრენდები"),
    Tool(name="suggest_price_drop",     func=suggest_price_drop,     description="ფასის კორექციის რეკომენდაცია გაყიდვის დასაჩქარებლად"),
]

# ---- მყიდველის AI system prompt ----
buyer_system_prompt = """
შენ ხარ ipove.ai-ს გამყიდველი კონსულტანტი. შენ არ ხარ ჩვეულებრივი ჩათბოტი — 
შენ ხარ გამოცდილი გამყიდველი, რომელსაც უყვარს თავისი საქმე.

## შენი #1 მიზანი: გაყიდვა
ყოველი საუბრის საბოლოო მიზანი არის მყიდველმა იყიდოს პროდუქტი.

## როგორ ყიდი:
1. მოუსმინე რა სურს — მაგრამ ნუ შემოიფარგლები მხოლოდ იმით რაც თქვა
2. იპოვე საუკეთესო ვარიანტები — ფართოდ, არა ხისტი ფილტრებით
3. ესაუბრე პროდუქტზე — ახსენი რატომ ღირს, რა უპირატესობა აქვს, რისთვის არის კარგი
4. დააინტერესე — თუ ზუსტი არ არის, შესთავაზე უკეთესი/იაფი/ალტერნატიული
5. ეკითხე რისთვის სჭირდება — რათა სწორი რჩევა მისცე
6. შეადარე ვარიანტები — მის კონტექსტში, არა აბსტრაქტულად
7. შეარჩევინე — 3-5 საუკეთესო, არა 50 შემთხვევითი
8. დახურე deal-ი — როცა მზადაა, დაუკავშირე გამყიდველს, დაეხმარე მოლაპარაკებაში

## ტონი:
- მეგობრული, მაგრამ პროფესიონალი
- გულწრფელი — თუ პროდუქტი არ ღირს, უთხარი, მაგრამ შესთავაზე უკეთესი
- არ აიძულო — არწმუნე ჭკვიანურად, ფაქტებით
- ეცადე ყველა საუბარი გაყიდვით დაასრულო
"""

# ---- გამყიდველის AI system prompt ----
seller_system_prompt = """
შენ ხარ ipove.ai-ს გაყიდვების მენეჯერი. შენ მუშაობ გამყიდველისთვის.

## შენი #1 მიზანი: გამყიდველის პროდუქტის მაქსიმალურად სწრაფი რეალიზაცია.

## როგორ ყიდი გამყიდველის პროდუქტს:
1. აქტიურად ეძებე პოტენციური მყიდველები — ნუ ელოდები
2. როცა მყიდველი გამოჩნდება — მაშინვე შეატყობინე გამყიდველს
3. დაეხმარე ლისტინგის ოპტიმიზაციაში — აღწერა, ფოტოები, სწორი ფასი
4. ურჩიე ფასის სტრატეგია — ბაზარზე რა ხდება, რა ფასში იყიდება
5. თუ დიდხანს არ იყიდება — შესთავაზე ფასის კორექცია, ახალი აღწერა
6. წარადგინე პროდუქტი მყიდველებთან — შენ ხარ მისი გაყიდვების გუნდი
7. დაეხმარე მოლაპარაკებაში — მაქსიმალური ფასი მაქსიმალურ სიჩქარეში
"""
```

### 6.5 AI Sales Logic — გაყიდვაზე ორიენტირებული ლოგიკა

AI-ს ყოველი ინტერაქცია გადის **Sales Pipeline**-ში:

```
┌─────────────────────────────────────────────────────────────┐
│                    AI Sales Pipeline                         │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  1. DISCOVER (გაგება)                                       │
│     └→ რა სურს? რისთვის? რა ბიუჯეტი? რა პრიორიტეტი?       │
│                                                             │
│  2. EXPAND (გაფართოება)                                     │
│     └→ ნუ შემოიფარგლები ზუსტი მოთხოვნით                    │
│     └→ იპოვე მსგავსი, უკეთესი, იაფი ვარიანტები             │
│     └→ Flexibility Engine: ფასი ±15%, მსგავსი მოდელები      │
│                                                             │
│  3. ENGAGE (დაინტერესება)                                   │
│     └→ ესაუბრე პროდუქტზე — რატომ ღირს, რა უპირატესობა      │
│     └→ შეადარე ვარიანტები მომხმარებლის კონტექსტში           │
│     └→ გამოიყენე: social proof, ღირებულების ახსნა, FOMO     │
│                                                             │
│  4. CONVINCE (დარწმუნება)                                   │
│     └→ შეარჩევინე 2-3 საუკეთესო                            │
│     └→ ახსენი trade-off-ები: "200₾ მეტია, მაგრამ..."       │
│     └→ ეკითხე: "რომელს ანიჭებ უპირატესობას?"               │
│                                                             │
│  5. CLOSE (გაყიდვა)                                        │
│     └→ დაუკავშირე გამყიდველს                                │
│     └→ დაეხმარე მოლაპარაკებაში                              │
│     └→ თუ ვერ დაიხურა — save wish, გააგრძელე ფონში         │
│                                                             │
│  6. FOLLOW-UP (თვალყურის დევნება)                           │
│     └→ შეინახე სურვილი                                      │
│     └→ პროაქტიულად შეატყობინე ახალი ვარიანტების შესახებ    │
│     └→ დაბრუნდი: "გახსოვს MacBook რომ გეძებნა? აი..."      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

**ყოველ ეტაპზე AI-ს აქვს ერთი შეკითხვა: "როგორ მივიყვანო ეს ინტერაქცია გაყიდვამდე?"**

---

## 7. Real-time არქიტექტურა

### 7.1 WebSocket კავშირები (Spring WebFlux)

```
┌────────────┐     WebSocket (STOMP)     ┌──────────────────────┐
│  Client    │ ◄────────────────────── │  Spring WebFlux      │
│  (Browser/ │                          │  WebSocket Handler   │
│   Mobile)  │ ──────────────────────► │                      │
└────────────┘                          └──────┬───────────────┘
                                               │
                                    ┌──────────┼──────────┐
                                    ▼          ▼          ▼
                              ┌─────────┐ ┌────────┐ ┌────────┐
                              │AI Chat  │ │Direct  │ │Notif.  │
                              │Events   │ │Message │ │Events  │
                              └─────────┘ └────────┘ └────────┘
```

### 7.2 შეტყობინებების ნაკადი (RabbitMQ Pipeline)

```
ახალი პროდუქტი ემატება (Spring → RabbitMQ)
    ↓
RabbitMQ Exchange: "ipove.events"
    ↓
Queue: "product.created"
    ↓
Consumer (Spring @RabbitListener):
    1. პროდუქტის embedding-ის გენერაცია (→ Python AI Service)
    2. wish_profiles-თან cosine similarity
    3. შედეგების ფილტრაცია (score > 0.70)
    ↓
RabbitMQ Queue: "notification.send"
    ↓
Notification Consumer:
    4. Notification throttling (spam prevention, Redis counter)
    5. არხის არჩევა (push / email / SMS / in-app)
    ↓
┌─────────────────────────────────────────┐
│  Push: score > 0.90 → მყისიერი         │
│  In-app: score 0.70-0.90 → ბადჯი       │
│  Email: ყოველდღიური digest              │
│  SMS: score > 0.95 + ფასი დაეცა         │
└─────────────────────────────────────────┘
```

### 7.3 RabbitMQ Event Architecture

```
Exchanges:
├── ipove.events (topic)
│   ├── product.created    → matching queue, indexing queue
│   ├── product.updated    → re-index queue
│   ├── wish.created       → matching queue
│   ├── chat.message       → AI processing queue
│   └── listing.submitted  → listing pipeline queue
│
├── ipove.notifications (fanout)
│   ├── → push notification worker
│   ├── → email worker
│   ├── → SMS worker
│   └── → in-app notification worker
│
└── ipove.ai (direct)
    ├── ai.chat.request    → Python AI Service
    ├── ai.embed.request   → Embedding worker
    └── ai.match.request   → Matching worker
```

---

## 8. უსაფრთხოება და ავტორიზაცია

### 8.1 Keycloak — ცენტრალიზებული ავტორიზაციის სისტემა

Keycloak არის ავტორიზაციის ერთადერთი წყარო მთელ სისტემაში. ყველა სერვისი Keycloak-ს ენდობა.

```
┌──────────────────────────────────────────────────────────────┐
│                        Keycloak                               │
│                  (Identity & Access Management)               │
│                                                              │
│  Realms:                                                     │
│  ├── ipove-platform (საკუთარი პლატფორმის მომხმარებლები)      │
│  │   ├── Roles: buyer, seller, admin                         │
│  │   ├── Social Login: Google, Facebook, Apple               │
│  │   ├── OTP: Email + SMS verification                       │
│  │   └── Sessions: SSO across web + mobile                   │
│  │                                                           │
│  └── ipove-api (B2B API კლიენტები — ფაზა 2)                 │
│      ├── Client Credentials flow (service-to-service)        │
│      ├── Roles: api_read, api_write, api_admin               │
│      └── Tenant isolation via custom attributes              │
│                                                              │
│  Protocols: OpenID Connect (OIDC), OAuth 2.0, SAML 2.0      │
│  Token: JWT (access + refresh + ID token)                    │
└───────────────────────┬──────────────────────────────────────┘
                        │ JWT Token
        ┌───────────────┼───────────────────┐
        ▼               ▼                   ▼
┌──────────────┐ ┌──────────────┐ ┌──────────────────┐
│ Web App      │ │ Mobile App   │ │ Spring Boot      │
│ (Next.js)    │ │ (React       │ │ Resource Server  │
│              │ │  Native)     │ │                  │
│ Keycloak JS  │ │ Keycloak     │ │ spring-security  │
│ adapter      │ │ PKCE flow    │ │ -oauth2-resource │
│              │ │              │ │ -server          │
└──────────────┘ └──────────────┘ └──────────────────┘
```

#### Keycloak Auth Flow:

```
1. მომხმარებელი → Keycloak Login Page (ან Social Login)
2. Keycloak → JWT tokens (access_token + refresh_token + id_token)
3. Frontend → ყოველ API request-ზე: Authorization: Bearer <access_token>
4. Spring Boot → Keycloak JWT validation (public key verification)
5. Spring Security → Role-based access control (@PreAuthorize)
```

#### Spring Boot Keycloak კონფიგურაცია:

```yaml
# application.yml
spring:
  security:
    oauth2:
      resourceserver:
        jwt:
          issuer-uri: ${KEYCLOAK_URL}/realms/ipove-platform
          jwk-set-uri: ${KEYCLOAK_URL}/realms/ipove-platform/protocol/openid-connect/certs
```

### 8.2 Email და SMS პროვაიდერები

#### Email პროვაიდერი

```
┌──────────────────────────────────────────────┐
│           Email Service (Spring)              │
│                                              │
│  Interface: EmailProvider                    │
│  ├── SendGridEmailProvider (production)      │
│  ├── ResendEmailProvider (alternative)       │
│  └── ConsoleEmailProvider (development)      │
│                                              │
│  Email Types:                                │
│  ├── Transactional: რეგისტრაცია, OTP,        │
│  │   პაროლის აღდგენა                         │
│  ├── Notification: match found, new buyer,   │
│  │   price drop                              │
│  └── Digest: ყოველკვირეული მიმოხილვა         │
│                                              │
│  Delivery: RabbitMQ queue → Email Worker      │
└──────────────────────────────────────────────┘
```

#### SMS პროვაიდერი

```
┌──────────────────────────────────────────────┐
│            SMS Service (Spring)               │
│                                              │
│  Interface: SmsProvider                      │
│  ├── TwilioSmsProvider (international)       │
│  ├── MagtiSmsProvider (Georgia-specific)     │
│  └── ConsoleSmsProvider (development)        │
│                                              │
│  SMS Types:                                  │
│  ├── OTP verification (რეგისტრაცია, login)   │
│  ├── Critical notification (score > 95%)     │
│  └── Transaction confirmation                │
│                                              │
│  Delivery: RabbitMQ queue → SMS Worker        │
└──────────────────────────────────────────────┘
```

**Provider Pattern:** ორივე სერვისი იყენებს Strategy pattern-ს — interface + implementations. გარემოს მიხედვით (dev/staging/prod) სხვადასხვა implementation ინჯექტდება. ახალი პროვაიდერის დამატება = ახალი კლასის დაწერა, არსებულის შეცვლის გარეშე.

### 8.3 უსაფრთხოების ზომები

| ასპექტი | გადაწყვეტა |
|---------|-----------|
| ცენტრალიზებული ავტორიზაცია | **Keycloak** — OIDC/OAuth2, SSO, Social Login |
| JWT ვალიდაცია | Spring Security OAuth2 Resource Server (Keycloak public key) |
| Role-Based Access | Keycloak roles → Spring @PreAuthorize("hasRole('SELLER')") |
| Social Login | Keycloak Identity Providers (Google, Facebook, Apple) |
| OTP / 2FA | Keycloak + SMS provider (Twilio/Magti) |
| API Rate Limiting | Redis + Spring Gateway filter (100 req/min per user) |
| B2B API Auth | Keycloak Client Credentials + API Key (dual auth) |
| მონაცემები | AES-256 encryption at rest |
| კომუნიკაცია | TLS 1.3 everywhere |
| ვალიდაცია | Jakarta Bean Validation (@Valid, custom validators) |
| CSRF/XSS | Spring Security CSRF + Next.js CSP headers |
| Audit Log | Spring AOP-based audit logging |

---

## 9. Deployment & DevOps

### 9.1 CI/CD Pipeline

```
Git Push → GitHub Actions
    ↓
┌─── Backend (Java/Spring Boot) ───────────────────┐
│ 1. mvn compile / gradle build                    │
│ 2. Checkstyle + SpotBugs (static analysis)       │
│ 3. Unit Tests (JUnit 5 + Mockito)                │
│ 4. Integration Tests (Testcontainers)            │
│ 5. Liquibase migration validation                │
│ 6. Build Docker Image (Spring Boot layered jar)  │
│ 7. Push to ECR                                   │
└──────────────────────────────────────────────────┘
    ↓
┌─── Frontend (Next.js) ──────────────────────────┐
│ 1. npm install + TypeScript check                │
│ 2. ESLint + Prettier                             │
│ 3. Unit Tests (Vitest)                           │
│ 4. Build                                         │
│ 5. Deploy to Vercel                              │
└──────────────────────────────────────────────────┘
    ↓
┌─── AI Service (Python) ─────────────────────────┐
│ 1. ruff lint + mypy                              │
│ 2. pytest                                        │
│ 3. Build Docker Image                            │
│ 4. Push to ECR                                   │
└──────────────────────────────────────────────────┘
    ↓
Deploy to Staging → E2E Tests → Production (manual approval)
```

### 9.2 Environment Profiles (dev / staging / prod)

პროექტი დაყოფილია სამ გარემოდ. Spring Boot profiles და Next.js environment variables მართავს კონფიგურაციას.

```
┌─────────────────────────────────────────────────────────────────┐
│                    Environment Profiles                          │
├──────────────┬──────────────────┬───────────────────────────────┤
│     dev      │    staging       │     production                │
├──────────────┼──────────────────┼───────────────────────────────┤
│ localhost    │ staging.ipove.ai │ ipove.ai                      │
│              │                  │                               │
│ H2 / local  │ RDS PostgreSQL   │ RDS PostgreSQL (Multi-AZ)     │
│ PostgreSQL   │ (single)         │                               │
│              │                  │                               │
│ Embedded     │ ElastiCache      │ ElastiCache (cluster)         │
│ Redis        │ (single)         │                               │
│              │                  │                               │
│ Embedded     │ Amazon MQ        │ Amazon MQ (HA cluster)        │
│ RabbitMQ     │ (single)         │                               │
│              │                  │                               │
│ Local        │ Keycloak         │ Keycloak (HA, RDS backend)    │
│ Keycloak     │ (single)         │                               │
│              │                  │                               │
│ Console      │ SendGrid         │ SendGrid                      │
│ Email        │ (sandbox)        │ (production)                  │
│              │                  │                               │
│ Console      │ Twilio           │ Twilio / Magti SMS            │
│ SMS          │ (test numbers)   │ (production)                  │
│              │                  │                               │
│ Claude free  │ Claude API       │ Claude API                    │
│ tier / mock  │ (low limits)     │ (production limits)           │
│              │                  │                               │
│ Docker       │ AWS ECS          │ AWS ECS (auto-scaling)        │
│ Compose      │ (single task)    │                               │
├──────────────┼──────────────────┼───────────────────────────────┤
│ Liquibase:   │ Liquibase:       │ Liquibase:                    │
│ auto-migrate │ auto-migrate     │ manual approval               │
│ + seed data  │                  │                               │
└──────────────┴──────────────────┴───────────────────────────────┘
```

#### Spring Boot Profile Files:

```
src/main/resources/
├── application.yml                  # საერთო კონფიგურაცია
├── application-dev.yml              # dev: localhost, H2, console providers
├── application-staging.yml          # staging: AWS single instances
├── application-prod.yml             # prod: AWS HA clusters, real providers
└── application-test.yml             # unit/integration test კონფიგურაცია
```

#### კონფიგურაციის მაგალითი:

```yaml
# application.yml (საერთო)
spring:
  profiles:
    active: ${SPRING_PROFILES_ACTIVE:dev}

# application-dev.yml
spring:
  datasource:
    url: jdbc:postgresql://localhost:5432/ipove_dev
  rabbitmq:
    host: localhost
keycloak:
  auth-server-url: http://localhost:8180
notifications:
  email:
    provider: console    # ლოგში წერს, არ აგზავნის
  sms:
    provider: console    # ლოგში წერს, არ აგზავნის

# application-prod.yml
spring:
  datasource:
    url: jdbc:postgresql://${RDS_HOST}:5432/ipove_prod
  rabbitmq:
    host: ${RABBITMQ_HOST}
  cache:
    type: redis
  redis:
    host: ${REDIS_HOST}
keycloak:
  auth-server-url: https://auth.ipove.ai
notifications:
  email:
    provider: sendgrid
    api-key: ${SENDGRID_API_KEY}
  sms:
    provider: twilio
    account-sid: ${TWILIO_ACCOUNT_SID}
    auth-token: ${TWILIO_AUTH_TOKEN}
```

### 9.3 Infrastructure

```
Production Environment:
├── Vercel (Next.js frontend)
├── AWS ECS (Spring Boot backend — Java containers)
├── AWS ECS (Python AI service — FastAPI container)
├── AWS ECS (Keycloak — HA mode, RDS backend)
├── AWS RDS (PostgreSQL + pgvector + Liquibase migrations)
├── AWS ElastiCache (Redis — cache, sessions, rate limiting)
├── Amazon MQ (RabbitMQ — messaging)
├── Elasticsearch (OpenSearch on AWS)
├── Pinecone (Vector DB)
├── CloudFlare R2 / S3 (Object storage)
├── CloudFlare (CDN + DNS + DDoS protection)
├── SendGrid (Email provider)
├── Twilio / Magti (SMS provider)
└── Datadog / Grafana (Monitoring)

Development Environment (Docker Compose):
├── docker-compose.yml
│   ├── postgres:16 (port 5432)
│   ├── redis:7 (port 6379)
│   ├── rabbitmq:3-management (ports 5672, 15672)
│   ├── keycloak:24 (port 8180)
│   ├── elasticsearch:8 (port 9200)
│   └── ipove-backend (port 8080, profile: dev)
```

---

## 10. მასშტაბირების სტრატეგია

### ფაზა 1: MVP — საკუთარი პლატფორმა (1-1000 მომხმარებელი)
- Vercel (frontend) + single Spring Boot instance (ECS)
- PostgreSQL (RDS) + Liquibase migrations
- Redis single instance (ElastiCache)
- RabbitMQ single instance (Amazon MQ)
- OpenAI/Claude API direct calls (Python AI service)
- pgvector (PostgreSQL extension)
- **Single tenant (ipove.ai)**
- მიზანი: კონცეფციის დამტკიცება, მეტრიკების დაგროვება

### ფაზა 2: Growth + Public API (1K-50K მომხმარებელი)
- Spring Boot horizontal scaling (ECS with auto-scaling)
- Redis cluster (ElastiCache)
- RabbitMQ cluster (high availability)
- Pinecone dedicated index
- Elasticsearch cluster (OpenSearch)
- CDN for static assets
- **Multi-tenant გააქტიურება**
- **Public API + Developer Portal**
- **API Key management + billing**
- B2B კლიენტების მოზიდვა

### ფაზა 3: Scale + White-label (50K+ მომხმარებელი)
- Spring Cloud microservices (service discovery, config server)
- RabbitMQ federation (multi-region)
- Multi-region deployment
- Custom ML models (fine-tuned)
- PostgreSQL read replicas
- **White-label გადაწყვეტა**
- **Enterprise SLA-ები**
- **Tenant-სპეციფიური AI fine-tuning**

---

## 11. API ენდპოინთების სტრუქტურა

### Internal API (ipove.ai-ს საკუთარი აპისთვის — JWT Auth)

```
# Auth
POST   /api/auth/register
POST   /api/auth/login
POST   /api/auth/refresh
POST   /api/auth/logout
POST   /api/auth/oauth/{provider}

# Users
GET    /api/users/me
PATCH  /api/users/me
GET    /api/users/:id/public

# Products
POST   /api/products
GET    /api/products/:id
PATCH  /api/products/:id
DELETE /api/products/:id
GET    /api/products/seller/:sellerId

# AI Chat
POST   /api/chat/sessions
GET    /api/chat/sessions
GET    /api/chat/sessions/:id/messages
WS     /api/chat/sessions/:id/stream

# Wishes
POST   /api/wishes
GET    /api/wishes
PATCH  /api/wishes/:id
DELETE /api/wishes/:id

# Notifications
GET    /api/notifications
PATCH  /api/notifications/:id/read
PATCH  /api/notifications/read-all
PUT    /api/notifications/preferences

# Conversations (Buyer ↔ Seller)
POST   /api/conversations
GET    /api/conversations
GET    /api/conversations/:id/messages
WS     /api/conversations/:id/stream
```

### Public API (B2B კლიენტებისთვის — API Key Auth) — ფაზა 2

```
# ავტორიზაცია: Header: Authorization: Bearer ipv_live_xxxxx

# AI Sales Chat (ჩასაშენებელი გამყიდველი კონსულტანტი)
POST   /v1/chat/sessions                    # ახალი ჩათ სესია
POST   /v1/chat/sessions/:id/messages       # შეტყობინების გაგზავნა
GET    /v1/chat/sessions/:id/messages       # ისტორია
WS     /v1/chat/sessions/:id/stream         # real-time streaming

# Smart Search (ადაპტური ძებნა)
POST   /v1/search                            # AI-powered flexible search
POST   /v1/search/similar/:productId         # მსგავსი პროდუქტები

# Products (CRUD)
POST   /v1/products                          # პროდუქტის დამატება
GET    /v1/products/:id                      # პროდუქტის ნახვა
PATCH  /v1/products/:id                      # განახლება
DELETE /v1/products/:id                      # წაშლა
POST   /v1/products/bulk                     # масовი იმპორტი

# Matching
POST   /v1/match/buyer-to-products           # მყიდველისთვის პროდუქტების მოძებნა
POST   /v1/match/product-to-buyers           # პროდუქტისთვის მყიდველების მოძებნა

# Wishes & Notifications
POST   /v1/wishes                            # სურვილის შენახვა
GET    /v1/wishes/:userId                    # მომხმარებლის სურვილები
POST   /v1/notifications/trigger             # მანუალური trigger

# Analytics
GET    /v1/analytics/overview                # ზოგადი მიმოხილვა
GET    /v1/analytics/trends                  # ტრენდები
GET    /v1/analytics/conversion              # კონვერსიის მონაცემები

# Tenant Management
GET    /v1/tenant/usage                      # API usage სტატისტიკა
GET    /v1/tenant/billing                    # ბილინგის ინფო
POST   /v1/tenant/webhooks                   # Webhook კონფიგურაცია
```

### Webhook Events (B2B კლიენტისთვის)

როცა მნიშვნელოვანი მოვლენა ხდება, ipove.ai აგზავნის webhook-ს კლიენტის URL-ზე:

```json
// მაგალითი: ახალი match იპოვა
{
  "event": "match.found",
  "timestamp": "2026-04-01T12:00:00Z",
  "data": {
    "buyer_id": "usr_abc123",
    "product_id": "prod_xyz789",
    "match_score": 0.92,
    "ai_recommendation": "ეს პროდუქტი 92%-ით შეესაბამება მყიდველის მოთხოვნას"
  }
}

// სხვა events: match.found, wish.triggered, conversation.started,
//              product.sold, negotiation.agreed, buyer.interested
```

---

## 12. მონიტორინგი და ანალიტიკა

| მეტრიკა | ინსტრუმენტი | მნიშვნელობა |
|---------|------------|------------|
| API latency | Datadog / Grafana | <200ms P95 |
| AI response time | LangSmith | <3s P95 |
| Error rate | Sentry | <0.1% |
| Match accuracy | Custom dashboard | >80% relevant |
| DB query time | pg_stat_statements | <50ms P95 |
| WebSocket connections | Custom metrics | concurrent count |
| Notification delivery | SendGrid/FCM stats | >98% delivery |

### B2B / API მეტრიკები

| მეტრიკა | ინსტრუმენტი | მნიშვნელობა |
|---------|------------|------------|
| API calls / tenant | Custom dashboard | usage tracking |
| API latency P95 | Datadog | <300ms |
| API error rate | Sentry | <0.5% |
| Tenant count | Custom | active tenants |
| Revenue / tenant | Billing system | MRR tracking |
| API key rotations | Audit log | security |

---

*დოკუმენტი განახლდება არქიტექტურის ევოლუციასთან ერთად.*
*ბოლო განახლება: 2026-04-01*
