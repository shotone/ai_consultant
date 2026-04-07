# ipove.ai — TODO / Sprint Plan

> სპრინტებად დაყოფილი სამუშაო გეგმა. ყოველი სპრინტი = 2 კვირა.
> პრინციპები: API-first, Test-driven, Soft Delete, Audit Fields (created_at, updated_at, deleted_at)

---

## გლობალური ტექნიკური მოთხოვნები (ყველა სპრინტში)

ქვემოთ ჩამოთვლილი მოთხოვნები ვრცელდება **ყველა** entity-ზე, service-ზე და endpoint-ზე:

### Soft Delete
- ყველა entity-ს აქვს `deleted_at` (TIMESTAMPTZ, nullable) ველი
- `DELETE` ოპერაცია = `UPDATE SET deleted_at = NOW()` (არა ფიზიკური წაშლა)
- ყველა query ავტომატურად ფილტრავს: `WHERE deleted_at IS NULL`
- Spring JPA: `@SQLRestriction("deleted_at IS NULL")` ან `@Where` annotation
- Hard delete მხოლოდ admin-ს, სპეციალური endpoint-ით

### Audit Fields (ავტომატური)
- ყველა entity-ს აქვს: `created_at`, `updated_at` (ავტომატური)
- Spring JPA: `@EntityListeners(AuditingEntityListener.class)`
- `@CreatedDate` → `created_at` (INSERT-ზე ავტომატურად)
- `@LastModifiedDate` → `updated_at` (UPDATE-ზე ავტომატურად)
- `@CreatedBy` / `@LastModifiedBy` → Keycloak user ID-დან (optional)
- Abstract `BaseEntity` კლასი რომელსაც ყველა entity extends აკეთებს

### ტესტირება
- ყველა service-ს აქვს **unit tests** (JUnit 5 + Mockito)
- ყველა controller-ს აქვს **integration tests** (Spring Boot Test + MockMvc)
- DB ტესტები **Testcontainers**-ით (PostgreSQL, Redis, RabbitMQ)
- AI სერვისის ტესტები **WireMock**-ით (LLM API mocking)
- მინიმალური test coverage: **80%** (line coverage)
- Frontend: **Vitest** + **React Testing Library**
- E2E: **Playwright** (critical flows)

### BaseEntity (ყველა entity-ს საფუძველი)

```java
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "tenant_id", nullable = false)
    private UUID tenantId;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private Instant createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private Instant updatedAt;

    @Column(name = "deleted_at")
    private Instant deletedAt;  // null = active, non-null = soft-deleted

    public void softDelete() {
        this.deletedAt = Instant.now();
    }

    public boolean isDeleted() {
        return this.deletedAt != null;
    }
}
```

---

## Sprint 0 — პროექტის ფუნდამენტი (2 კვირა)

> **მიზანი:** პროექტის skeleton, dev გარემო, CI/CD — კოდის ერთი ხაზიც არ იწერება ფუნდამენტის გარეშე.

### Backend Setup
- [x] Spring Boot 3.x პროექტის ინიციალიზაცია (Maven/Gradle)
- [x] Java 21 კონფიგურაცია
- [x] მულტი-მოდულ სტრუქტურა: `core`, `api`, `ai-gateway`, `notification`
- [x] `BaseEntity` აბსტრაქტული კლასი (id, tenant_id, created_at, updated_at, deleted_at)
- [x] `SoftDeleteRepository` — custom JPA repository soft delete-ით
- [x] Spring Auditing კონფიგურაცია (`@EnableJpaAuditing`)
- [x] Spring Profiles: `application.yml`, `application-dev.yml`, `application-staging.yml`, `application-prod.yml`, `application-test.yml`
- [x] Global Exception Handler (`@ControllerAdvice`)
- [x] API Response wrapper (standardized JSON responses)
- [x] Logging კონფიგურაცია (SLF4J + Logback, structured JSON logs)

### Database Setup
- [x] PostgreSQL + pgvector extension setup
- [x] Liquibase ინტეგრაცია და საწყისი changelog
- [x] `tenants` ცხრილის მიგრაცია (Liquibase)
- [x] `users` ცხრილის მიგრაცია
- [x] Seed data dev გარემოსთვის (Liquibase context: dev)

### Keycloak Setup
- [x] Keycloak Docker image კონფიგურაცია
- [x] `ipove-platform` realm-ის შექმნა
- [x] Roles: `buyer`, `seller`, `admin`
- [ ] Social Login setup (Google) — dev გარემოში
- [x] Spring Security OAuth2 Resource Server კონფიგურაცია
- [x] JWT validation და role mapping

### Infrastructure
- [x] Docker Compose: PostgreSQL, Redis, RabbitMQ, Keycloak, Elasticsearch
- [x] Redis კონფიგურაცია (Spring Cache)
- [x] RabbitMQ კონფიგურაცია (exchanges, queues)
- [x] GitHub repository + branch strategy (main, develop, feature/*)
- [x] GitHub Actions CI pipeline (build, test, lint)
- [x] `.env.example` ფაილი

### ტესტების ფუნდამენტი
- [x] JUnit 5 + Mockito dependency setup
- [x] Testcontainers setup (PostgreSQL, Redis, RabbitMQ)
- [x] `@SpringBootTest` base test class
- [x] `BaseEntity` unit tests (soft delete, audit fields)
- [x] CI-ში test coverage report (JaCoCo)

### Frontend Setup
- [x] Next.js 15 პროექტის ინიციალიზაცია
- [x] TypeScript + Tailwind CSS
- [x] Project structure: `app/`, `components/`, `lib/`, `hooks/`
- [x] Keycloak JS adapter ინტეგრაცია
- [x] API client setup (fetch wrapper with auth headers)
- [x] Vitest + React Testing Library setup
- [x] ESLint + Prettier კონფიგურაცია

**Sprint 0 Definition of Done:**
- `docker-compose up` ბრძანებით მთლიანი dev გარემო ეშვება
- Keycloak-ში შესვლა შესაძლებელია
- Spring Boot აპი ეშვება და `/actuator/health` აბრუნებს 200
- Liquibase migrations გაშვებულია
- CI pipeline მწვანეა (build + tests pass)
- Next.js აპი ეშვება და Keycloak-ით ავტორიზაცია მუშაობს

---

## Sprint 1 — მომხმარებლის სისტემა (2 კვირა)

> **მიზანი:** მომხმარებელს შეუძლია რეგისტრაცია, ავტორიზაცია და პროფილის მართვა.

### Backend
- [x] `User` entity (extends BaseEntity, soft delete)
- [x] `SellerProfile` entity (extends BaseEntity)
- [x] `UserRepository`, `SellerProfileRepository` (with soft delete)
- [x] `UserService` — CRUD + Keycloak sync
- [x] `UserController` — REST endpoints
  - `GET /api/users/me`
  - `PATCH /api/users/me`
  - `GET /api/users/:id/public`
  - `POST /api/users/me/become-seller` (buyer → seller role)
- [x] Keycloak event listener — user created/updated events sync to DB (JWT auto-sync on first API call)
- [x] Email verification flow (Keycloak + Email provider) — configurable via ipove.notifications.email
- [x] SMS OTP verification (Keycloak + SMS provider) — configurable via ipove.notifications.sms
- [x] Email provider: `EmailService` interface + `SendGridEmailProvider` + `ConsoleEmailProvider`
- [x] SMS provider: `SmsService` interface + `TwilioSmsProvider` + `ConsoleSmsProvider`

### Liquibase
- [x] `users` ცხრილის სრული მიგრაცია (with deleted_at)
- [x] `seller_profiles` ცხრილის მიგრაცია
- [x] Indexes: email, tenant_id

### ტესტები
- [x] `UserService` unit tests (register, getProfile, update, softDelete)
- [x] `UserController` integration tests (MockMvc)
- [x] Keycloak integration test (Testcontainers + Keycloak container) — @Tag("integration"), runs via `./gradlew integrationTest`
- [x] Email/SMS provider unit tests
- [x] NotificationProperties config unit tests

### Frontend
- [x] Login / Register pages (Keycloak redirect)
- [x] User profile page
- [x] Role selection: "მყიდველი ვარ" / "გამყიდველი ვარ" (become-seller page)
- [x] Protected routes (auth guard)
- [x] Frontend unit tests (auth flow, profile page)

### დამატებითი (არ იყო გეგმაში, მაგრამ გაკეთდა)
- [x] Keycloak Custom Theme (ipove.ai ბრენდინგი login/register გვერდებზე)
- [x] Light / Dark / System theme (ThemeProvider + ThemeToggle)
- [x] 3-ენოვანი სისტემა: ქართული, ინგლისური, რუსული (i18n)
- [x] LocaleProvider + LocaleSwitch კომპონენტი
- [x] შავი (#000000) accent ფერი ნაცვლად ლურჯის
- [x] CORS fix (Spring Security filter chain)
- [x] JWT issuer validation fix (Docker localhost vs network)

**Sprint 1 DoD:**
- მომხმარებელი რეგისტრირდება Keycloak-ით (email + social)
- პროფილის ნახვა/რედაქტირება მუშაობს
- Soft delete მუშაობს (წაშლილი user არ ჩანს API-ში)
- Email/SMS verification მუშაობს (dev-ში console provider)
- ყველა test მწვანეა, coverage ≥ 80%

---

## Sprint 2 — პროდუქტი და კატეგორიები (2 კვირა)

> **მიზანი:** გამყიდველს შეუძლია პროდუქტის CRUD, კატეგორიების სისტემა მუშაობს.

### Backend
- [x] `Category` entity (hierarchical — parent_id)
- [x] `Product` entity (extends BaseEntity, soft delete)
- [x] `CategoryRepository`, `ProductRepository`
- [x] `CategoryService` — tree structure, caching (Redis @Cacheable)
- [x] `ProductService` — CRUD, soft delete, seller ownership validation
- [x] `ProductController` — REST endpoints
  - `POST /api/products`
  - `GET /api/products/:id`
  - `PATCH /api/products/:id`
  - `DELETE /api/products/:id` (soft delete)
  - `GET /api/products/seller/:sellerId`
  - `GET /api/products?categoryId=` (listing with pagination)
- [x] Image upload: local file storage for dev (S3 placeholder)
- [x] `ImageService` — upload, delete
- [x] Product validation (title, price, description required)
- [x] Redis caching: categories (@Cacheable)
- [x] `CategoryController` — GET /api/categories, GET by id/slug/children

### Liquibase
- [x] `categories` ცხრილის მიგრაცია + seed data (7 კატეგორია: 4 root + 3 sub)
- [x] `products` ცხრილის მიგრაცია (with deleted_at, metadata jsonb)
- [x] Indexes: category_id, seller_id, status+tenant, price+tenant

### ტესტები
- [x] `ProductService` unit tests (create, update, softDelete, ownership check) — 7 tests
- [x] `ProductController` integration tests (create, get, delete, list) — 4 tests
- [x] `CategoryService` unit tests (tree, getById, getChildren) — 4 tests
- [ ] Image upload integration test
- [x] Soft delete integration test — წაშლილი პროდუქტი API-ში არ ჩანს

### Frontend
- [x] პროდუქტის ნახვის გვერდი (detail page)
- [x] პროდუქტის დამატების ფორმა (ტრადიციული)
- [x] პროდუქტების ლისტი (grid layout, pagination ready)
- [x] კატეგორიების ბრაუზინგი (dropdown in add form)
- [ ] Image upload component (drag & drop) — Sprint 4-ში ჩათიდან
- [x] Frontend tests (5 passed)
- [x] i18n: product/category ტექსტები 3 ენაზე

**Sprint 2 DoD:**
- პროდუქტის CRUD მუშაობს (API + UI)
- კატეგორიების ხე მუშაობს (cached)
- Image upload მუშაობს
- Soft delete: წაშლილი პროდუქტი არ ჩანს, მაგრამ DB-ში არსებობს
- ყველა test მწვანეა

---

## Sprint 3 — AI ჩათის ფუნდამენტი (2 კვირა)

> **მიზანი:** AI ჩათი მუშაობს — "რას ეძებ?" მიმართულება ძირითადი ფუნქციონალით.

> **შენიშვნა (იმპლემენტაცია):** მთავარი LLM ჯაჭვი ამ ეტაპზე **Spring Boot-შია** (`AnthropicBuyerLlmClient` + `StubBuyerLlmClient`). `IPOVE_AI_ANTHROPIC_API_KEY` / `ipove.ai.anthropic-api-key` ცარიელია → stub + keyword ძებნა. Streaming: **SSE** (`POST .../messages/stream`), არა WebSocket. Python მიკროსერვისი: `ai_service/` მინიმალური FastAPI `/health` — LangChain და Spring↔Python gateway შემდეგ ეტაპებზე.

### Python AI Service
- [x] FastAPI პროექტის ინიციალიზაცია (`ai_service/main.py`, `/health`)
- [ ] LangChain/LangGraph agent setup
- [x] Claude ინტეგრაცია — Spring-ში (`AnthropicBuyerLlmClient`, tool `search_products`)
- [ ] GPT-4o-mini integration (entity extraction, classification)
- [x] Chat memory (conversation history) — `chat_messages` + ისტორია API-ზე
- [x] Buyer system prompt — `AnthropicBuyerLlmClient` system string
- [x] Tool: `search_products` — `ProductSearchTool` + Anthropic tool schema
- [ ] Tool: `get_product_details` — პროდუქტის დეტალები
- [ ] Tool: `compare_products` — შედარება
- [x] სესიის რეჟიმი BUYER vs SELLER (`session_mode`; seller placeholder ტექსტი)
- [x] Health check endpoint (`ai_service`)
- [x] Docker image (`ai_service/Dockerfile`)

### Backend (Spring Boot)
- [x] `ChatSession` entity (extends BaseEntity)
- [x] `ChatMessage` entity (extends BaseEntity)
- [x] `ChatSessionRepository`, `ChatMessageRepository`
- [x] `ChatService` — session management, message history
- [ ] `AiGatewayService` — Spring ↔ Python AI Service (HTTP client) — გადავადებულია
- [x] `ChatController`
  - [x] `POST /api/chat/sessions` (ახალი სესია)
  - [x] `GET /api/chat/sessions` (სესიების ლისტი)
  - [x] `GET /api/chat/sessions/:id/messages` (ისტორია)
  - [x] `POST /api/chat/sessions/:id/messages` (შეტყობინების გაგზავნა)
- [x] Streaming: `POST /api/chat/sessions/:id/messages/stream` (SSE; არქიტექტურაში WebSocket — შემდეგ ეტაპზე)
- [x] RabbitMQ: `chat.message` routing + queue `chat.message`

### Liquibase
- [x] `chat_sessions` ცხრილის მიგრაცია (`006-create-chat.xml`)
- [x] `chat_messages` ცხრილის მიგრაცია

### ტესტები
- [ ] Python AI Service: unit tests (pytest, intent detection, tool calling)
- [x] `ChatService` unit tests
- [x] `ChatController` integration tests
- [ ] AI Gateway integration test (WireMock — mock Python AI responses)
- [ ] WebSocket integration test (SSE ტესტი — მომავალში ან რჩება WS გადასვლისას)

### Frontend
- [x] Chat UI (`/chat`) + SSE streaming
- [x] "რას ეძებ? / რას ყიდი?" საწყისი არჩევანი
- [x] პროდუქტის ბარათი ჩათში (`metadata.products`)
- [ ] WebSocket connection management (SSE გამოიყენება)
- [x] Frontend tests — Vitest `sse.ts` (SSE parse/decode); chat UI ტესტი მომავალში

**Sprint 3 DoD:**
- ჩათი ეშვება, AI პასუხობს ქართულად
- "რას ეძებ?" → AI პოულობს პროდუქტებს და სთავაზობს
- Streaming response მუშაობს (real-time)
- ჩათის ისტორია ინახება
- ყველა test მწვანეა

---

## Sprint 4 — AI ლისტინგი + "რას ყიდი?" (2 კვირა)

> **მიზანი:** გამყიდველს შეუძლია პროდუქტის განთავსება ჩათში.

### Python AI Service
- [ ] `seller_system_prompt` — ლისტინგ-ასისტენტის პრომფტი (Spring-ში განხორციელდა: `AnthropicSellerLlmClient`)
- [ ] `listing_agent` — ცალკე agent (Spring-ში: `AnthropicSellerLlmClient` + `StubSellerLlmClient`)
- [x] Tool: `detect_category` — Spring-ში `AnthropicSellerLlmClient.handleDetectCategory()`
- [x] Tool: `suggest_price` — Spring-ში `AnthropicSellerLlmClient.handleSuggestPrice()`
- [x] Tool: `generate_description` — Spring-ში `AnthropicSellerLlmClient.handleGenerateDescription()`
- [x] Tool: `create_listing` — Spring-ში `AnthropicSellerLlmClient.handleCreateListing()` → `ProductService.create()`
- [ ] GPT-4o Vision: ფოტო ანალიზი — Sprint 5-ში

### Backend
- [x] `AnthropicSellerLlmClient` — ჩათიდან ლისტინგამდე ორკესტრაცია (Anthropic tool-calling)
- [x] `StubSellerLlmClient` — stub (API key გარეშე)
- [x] `SellerLlmClient` interface
- [x] Chat-to-Listing flow: conversational data → Product entity (`ProductService.create()`)
- [ ] Image analysis endpoint (proxy to GPT-4o Vision) — Sprint 5-ში
- [x] RabbitMQ: `listing.submitted` queue + `ListingSubmittedEvent`
- [x] `ChatService` — SELLER mode-ის ჩართვა (seller clients)
- [x] `LlmReply` — `createdProductId` ველი
- [x] `ChatController` SSE — `createdListing` event

### ტესტები
- [ ] `AnthropicSellerLlmClient` unit tests (WireMock)
- [ ] `StubSellerLlmClient` unit tests
- [ ] Full flow test: chat message → product created

### Frontend
- [x] "რას ყიდი?" flow — SELLER სესია ჩათით
- [x] ფოტოების ატვირთვა ჩათში (📷 ღილაკი)
- [x] ლისტინგის preview ჩათში (მწვანე ბარათი — "გამოქვეყნდა!")
- [x] "გამოქვეყნდა!" confirmation UI + ბმული განცხადებაზე
- [x] i18n — seller flow 3 ენაზე
- [ ] Frontend unit tests (seller flow)

**Sprint 4 DoD:**
- გამყიდველი ჩათში ეუბნება რა აქვს → AI ეკითხება დეტალებს → ფოტოები → ლისტინგი იქმნება
- AI ანალიზებს ფოტოებს და ამოიცნობს პროდუქტს
- AI გვთავაზობს ფასს და აღწერას
- ყველა test მწვანეა

---

## Sprint 5 — Flexibility Engine + ადაპტური ძებნა (2 კვირა)

> **მიზანი:** AI არ იყენებს სტატიკურ ფილტრებს — მოქნილი, ადაპტური ძებნა.

### Backend + AI
- [ ] `FlexibilityEngine` კლასი (match score calculation)
- [ ] Embedding generation: პროდუქტის ტექსტი → ვექტორი (text-embedding-3-small)
- [ ] pgvector ინტეგრაცია: cosine similarity ძებნა
- [ ] Elasticsearch ინტეგრაცია: full-text + semantic hybrid search
- [ ] Product indexing pipeline: new product → embedding + ES index
- [ ] `MatchingService` — buyer query → ranked products
- [ ] Flexibility: ფასის ±15%, მსგავსი მოდელები, ბრენდის ალტერნატივები
- [ ] AI Sales Pipeline integration (DISCOVER → EXPAND → ENGAGE...)
- [ ] RabbitMQ: `product.created` → indexing queue

### Python AI Service
- [ ] `search_products` tool upgrade — Flexibility Engine integration
- [ ] `suggest_alternatives` tool — ალტერნატივების შეთავაზება
- [ ] AI sales techniques integration (FOMO, social proof, value explanation)
- [ ] Context-aware recommendations (რისთვის სჭირდება? → შესაბამისი ვარიანტები)

### ტესტები
- [ ] `FlexibilityEngine` unit tests (match score, price flexibility)
- [ ] `MatchingService` integration tests (pgvector + ES)
- [ ] Search quality tests (precision, recall)
- [ ] AI sales conversation tests

### Frontend
- [ ] პროდუქტის ბარათის გაუმჯობესება (match score, "რატომ ეს ვარიანტი?")
- [ ] AI-ს რეკომენდაციის ვიზუალიზაცია ჩათში
- [ ] "შეადარე" ფუნქცია ჩათში

**Sprint 5 DoD:**
- AI პოულობს პროდუქტებს მოქნილად (არა ხისტი ფილტრებით)
- Embedding-based search მუშაობს
- AI სთავაზობს ალტერნატივებს და ხსნის რატომ
- ყველა test მწვანეა

---

## Sprint 6 — Wish Profile + პროაქტიული შეტყობინებები (2 კვირა)

> **მიზანი:** AI იმახსოვრებს სურვილებს და პროაქტიულად აცნობებს.

### Backend
- [ ] `WishProfile` entity (extends BaseEntity, soft delete)
- [ ] `WishProfileRepository`
- [ ] `WishService` — CRUD, matching
- [ ] `NotificationService` — multi-channel (push, email, SMS, in-app)
- [ ] `Notification` entity (extends BaseEntity)
- [ ] Matching pipeline: new product → wish_profiles comparison → notification
- [ ] RabbitMQ consumers:
  - `product.created` → `WishMatchingConsumer`
  - `notification.send` → `NotificationDispatchConsumer` (routes to email/SMS/push)
- [ ] Notification throttling (Redis: max 3/day per user)
- [ ] Notification preferences API

### Python AI Service
- [ ] `save_wish` tool — ჩათიდან wish profile-ის შექმნა
- [ ] AI follow-up: "გახსოვს რომ MacBook-ს ეძებდი? აი ახალი ვარიანტი..."

### ტესტები
- [ ] `WishService` unit tests
- [ ] `NotificationService` unit tests (all channels)
- [ ] Matching pipeline integration test (product created → notification sent)
- [ ] Throttling test (>3 → blocked)
- [ ] RabbitMQ consumer tests (Testcontainers)

### Frontend
- [ ] ჩემი სურვილები (wish list page)
- [ ] შეტყობინებების ცენტრი (in-app)
- [ ] Push notification setup (FCM)
- [ ] Notification preferences UI

**Sprint 6 DoD:**
- "შეგატყობინო როცა გამოჩნდება?" → AI ინახავს wish-ს
- ახალი პროდუქტი ემთხვევა wish-ს → მომხმარებელი იღებს შეტყობინებას
- Multi-channel: push, email, in-app
- Throttling მუშაობს
- ყველა test მწვანეა

---

## Sprint 7 — გამყიდველი-მყიდველი კომუნიკაცია + მოლაპარაკება (2 კვირა)

> **მიზანი:** მყიდველს და გამყიდველს შეუძლიათ პირდაპირი კომუნიკაცია AI-ს დახმარებით.

### Backend
- [ ] `Conversation` entity (extends BaseEntity, soft delete)
- [ ] `DirectMessage` entity (extends BaseEntity)
- [ ] `ConversationService` — create, list, messages
- [ ] `ConversationController` — REST + WebSocket
  - `POST /api/conversations`
  - `GET /api/conversations`
  - `GET /api/conversations/:id/messages`
  - `WS /api/conversations/:id/stream`
- [ ] AI-assisted messages (is_ai_assisted flag)
- [ ] `NegotiationService` — ფასზე მოლაპარაკების ლოგიკა

### Python AI Service
- [ ] `initiate_conversation` tool — მყიდველის დაკავშირება გამყიდველთან
- [ ] `suggest_negotiation` tool — ფასზე მოლაპარაკება
- [ ] Negotiation agent: AI როგორც მედიატორი

### ტესტები
- [ ] `ConversationService` unit tests
- [ ] WebSocket integration test
- [ ] Negotiation flow integration test
- [ ] AI mediation test

### Frontend
- [ ] Conversations list page
- [ ] Direct message UI (real-time)
- [ ] AI-ს შეთავაზების UI ("გინდა 2550₾ შევთავაზო?")
- [ ] Frontend tests

**Sprint 7 DoD:**
- მყიდველი-გამყიდველი პირდაპირ საუბრობენ
- AI ეხმარება მოლაპარაკებაში
- Real-time messaging მუშაობს
- ყველა test მწვანეა

---

## Sprint 8 — გამყიდველის AI მენეჯერი (2 კვირა)

> **მიზანი:** AI აქტიურად ეხმარება გამყიდველს — ეძებს მყიდველებს, ურჩევს ფასს.

### Python AI Service
- [ ] `seller_sales_agent` — გამყიდველის AI სრული ფუნქციონალი
- [ ] Tool: `find_potential_buyers` — პოტენციური მყიდველების ძებნა
- [ ] Tool: `pricing_strategy` — ფასის ოპტიმიზაცია
- [ ] Tool: `market_analytics` — ბაზრის ანალიტიკა
- [ ] Tool: `suggest_price_drop` — ფასის კორექციის რეკომენდაცია
- [ ] Proactive seller notifications: "3 მყიდველი ეძებს შენს პროდუქტს!"

### Backend
- [ ] `SellerAnalyticsService` — views, matches, conversion
- [ ] `SellerDashboardController` — analytics endpoints
- [ ] RabbitMQ: scheduled job — daily seller report

### ტესტები
- [ ] Seller agent unit tests
- [ ] Analytics service tests
- [ ] Proactive notification tests

### Frontend
- [ ] Seller dashboard (analytics, active listings, notifications)
- [ ] AI რჩევების UI ("ფასი შეამცირე 10%-ით, 5 მყიდველი ელოდება")

**Sprint 8 DoD:**
- გამყიდველი იღებს AI რჩევებს
- Analytics dashboard მუშაობს
- Proactive buyer-finding მუშაობს
- ყველა test მწვანეა

---

## Sprint 9 — User Intelligence + KYC სისტემა (2 კვირა)

> **მიზანი:** AI იცნობს თავის მომხმარებელს — ქცევის ანალიტიკა, prediction, KYC/Trust Score.

### Backend
- [ ] `UserBehaviorEvent` entity — ქცევის ლოგი
- [ ] `UserIntelligenceProfile` entity (extends BaseEntity)
- [ ] `UserKyc` entity (extends BaseEntity)
- [ ] `UserReview` entity (extends BaseEntity)
- [ ] Liquibase: `user_behavior_events`, `user_intelligence_profiles`, `user_kyc`, `user_reviews` მიგრაციები
- [ ] `BehaviorTrackingService` — ივენთების ჩაწერა
  - product_view, search, chat_message, purchase, wishlist_add
- [ ] `UserIntelligenceService` — პროფილის აგება და განახლება
  - preferred_categories, brands, price_range, active_hours
  - ai_summary, tags
- [ ] `KycService` — Trust Score გამოთვლა
  - Level 0-3 ავტომატური განსაზღვრა
  - Trust Score formula: email(10) + phone(15) + ID(25) + transactions(30) + rating(20)
- [ ] `ReviewService` — მომხმარებლის შეფასება ტრანზაქციის შემდეგ
- [ ] `PredictionService` — ML/AI predictions
  - purchase_intent score
  - churn_risk score
  - price_sensitivity
- [ ] RabbitMQ consumers:
  - ყოველ ივენთზე → `BehaviorTrackingConsumer` (async ჩაწერა)
  - `prediction.recalculate` → scheduled daily job
- [ ] REST endpoints:
  - `GET /api/users/me/intelligence` (მომხმარებლის AI პროფილი)
  - `GET /api/users/me/kyc` (KYC სტატუსი)
  - `POST /api/users/me/kyc/verify` (ID დოკუმენტის ატვირთვა)
  - `POST /api/reviews` (შეფასების დატოვება)
  - `GET /api/users/:id/reviews` (შეფასებების ნახვა)

### Python AI Service
- [ ] User Intelligence integration — AI agent იყენებს user profile-ს ჩათში
- [ ] Personalized greeting: "გამარჯობა გიორგი, ვიცი რომ Apple-ით ინტერესდები..."
- [ ] Prediction-based proactive messaging (churn risk → re-engagement)
- [ ] Trust Score ინტეგრაცია — AI ახსენებს გამყიდველის სანდოობას
- [ ] Behavior analysis job — ყოველდღიური ai_summary და tags განახლება

### ტესტები
- [ ] `BehaviorTrackingService` unit tests
- [ ] `UserIntelligenceService` unit tests (profile building)
- [ ] `KycService` unit tests (trust score calculation, level transitions)
- [ ] `PredictionService` unit tests
- [ ] `ReviewService` unit tests
- [ ] Integration test: user action → behavior event → intelligence profile updated
- [ ] Integration test: KYC level upgrade flow
- [ ] AI personalization test: different users get different recommendations

### Frontend
- [ ] KYC verification page (document upload)
- [ ] Trust Score badge (user profile-ზე)
- [ ] Review/Rating UI (ტრანზაქციის შემდეგ)
- [ ] "AI შენზე" page — მომხმარებელი ხედავს რა იცის AI-მ მასზე (transparency)

**Sprint 9 DoD:**
- ქცევის ლოგი იწერება ყოველ ინტერაქციაზე
- AI intelligence profile იგება ავტომატურად
- KYC Trust Score მუშაობს (level 0-3)
- AI იყენებს user profile-ს ჩათში პერსონალიზაციისთვის
- Review სისტემა მუშაობს
- ყველა test მწვანეა

---

## Sprint 10 — Polish, Performance, Security Hardening (2 კვირა)


> **მიზანი:** პროდაქშენ-რედინესი. ხარისხი, სისწრაფე, უსაფრთხოება.

### Performance
- [ ] Redis caching strategy review და optimization
- [ ] Database query optimization (N+1, slow queries)
- [ ] Elasticsearch query tuning
- [ ] API response time audit (<200ms P95)
- [ ] AI response time audit (<3s P95)
- [ ] Connection pooling (HikariCP tuning)
- [ ] Load testing (k6 / JMeter)

### Security
- [ ] Security audit (OWASP top 10)
- [ ] Rate limiting review
- [ ] Input validation review (all endpoints)
- [ ] Keycloak hardening (brute force protection, password policy)
- [ ] API key rotation mechanism
- [ ] Penetration testing (basic)

### Quality
- [ ] Code review all modules
- [ ] Test coverage report (≥80% ყველა module-ში)
- [ ] E2E tests: Playwright critical flows
  - [ ] Registration → Login → Search → Chat → Find product
  - [ ] Registration → Login → List product via chat → Get notification
- [ ] Error handling review (graceful degradation)
- [ ] Logging review (structured, no sensitive data)
- [ ] API documentation (OpenAPI/Swagger)

### UI/UX
- [ ] Responsive design review (mobile + desktop)
- [ ] Loading states, error states, empty states
- [ ] Accessibility audit (basic)
- [ ] Georgian localization review

**Sprint 10 DoD:**
- Load test: 100 concurrent users, <200ms P95
- Security audit passed
- E2E tests pass
- All modules ≥80% coverage
- Swagger documentation complete

---

## Sprint 11 — Production Deploy + Monitoring (1 კვირა)

> **მიზანი:** პროდუქტი გადის პროდაქშენში.

### Infrastructure
- [ ] AWS production environment setup
  - [ ] ECS clusters (Spring Boot + Python AI)
  - [ ] RDS PostgreSQL (Multi-AZ)
  - [ ] ElastiCache Redis (cluster)
  - [ ] Amazon MQ RabbitMQ (HA)
  - [ ] Keycloak (HA, RDS backend)
- [ ] Vercel production deploy (Next.js)
- [ ] CloudFlare DNS + CDN + DDoS protection
- [ ] SSL certificates
- [ ] Liquibase production migration (manual approval)
- [ ] Environment variables / secrets management (AWS Secrets Manager)

### Monitoring
- [ ] Datadog / Grafana dashboards
- [ ] Application metrics (Spring Actuator + Micrometer)
- [ ] Alert rules (error rate, latency, disk, memory)
- [ ] Sentry error tracking (backend + frontend)
- [ ] LangSmith AI monitoring
- [ ] Uptime monitoring

### Launch
- [ ] Smoke tests on production
- [ ] Seed production data (categories, test products)
- [ ] DNS cutover: ipove.ai → production
- [ ] Keycloak production realm setup
- [ ] SendGrid production setup (domain verification)
- [ ] Twilio/Magti production setup

**Sprint 11 DoD:**
- ipove.ai ხელმისაწვდომია ინტერნეტში
- მომხმარებელი რეგისტრირდება, იყენებს AI ჩათს, ეძებს/ყიდის პროდუქტს
- მონიტორინგი მუშაობს, alerting კონფიგურირებულია
- **MVP LAUNCHED!** 🚀

---

## Post-MVP (ფაზა 2 სპრინტები)

ეს სპრინტები MVP-ს შემდეგ დაიგეგმება:

- [ ] **Sprint 12-13:** Public API + Developer Portal (B2B)
- [ ] **Sprint 14:** Multi-tenant system გააქტიურება
- [ ] **Sprint 15:** API billing + usage tracking
- [ ] **Sprint 16:** Mobile app (React Native / Expo)
- [ ] **Sprint 17:** White-label solution
- [ ] **Sprint 18:** Custom AI model fine-tuning
- [ ] **Sprint 19+:** გლობალური სკალირება

---

## Sprint Summary

| Sprint | ხანგრძლივობა | ფოკუსი | შედეგი |
|--------|-------------|--------|--------|
| 0 | 2 კვირა | ფუნდამენტი | dev გარემო, CI/CD, BaseEntity, Keycloak |
| 1 | 2 კვირა | მომხმარებელი | რეგისტრაცია, ავტორიზაცია, პროფილი |
| 2 | 2 კვირა | პროდუქტი | CRUD, კატეგორიები, სურათები |
| 3 | 2 კვირა | AI ჩათი | "რას ეძებ?", Claude, streaming |
| 4 | 2 კვირა | AI ლისტინგი | "რას ყიდი?", ფოტო ანალიზი |
| 5 | 2 კვირა | Smart Search | Flexibility Engine, embeddings |
| 6 | 2 კვირა | შეტყობინებები | Wish Profile, proactive notifications |
| 7 | 2 კვირა | კომუნიკაცია | Direct messages, AI მოლაპარაკება |
| 8 | 2 კვირა | Seller AI | გაყიდვების მენეჯერი, analytics |
| 9 | 2 კვირა | User Intelligence | ქცევის ანალიტიკა, KYC, prediction, AI პერსონალიზაცია |
| 10 | 2 კვირა | Quality | Performance, security, E2E tests |
| 11 | 1 კვირა | Launch | Production deploy, monitoring |
| **Total** | **~21 კვირა** | | **MVP Ready** |

---

*ბოლო განახლება: 2026-04-01*
