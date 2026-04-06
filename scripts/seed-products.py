#!/usr/bin/env python3
"""Generate ~1000 test products for ipove.ai marketplace."""

import random
import uuid
import json

TENANT = "00000000-0000-0000-0000-000000000001"
SELLER = "5b67a239-5c29-42eb-8e3d-59b15c305899"

# Category IDs
CAT_AUTO = "10000000-0000-0000-0000-000000000004"
CAT_APARTMENTS = "10000000-0000-0000-0000-000000000051"
CAT_HOUSES = "10000000-0000-0000-0000-000000000052"
CAT_LAND = "10000000-0000-0000-0000-000000000053"
CAT_SMARTPHONES = "10000000-0000-0000-0000-000000000012"
CAT_LAPTOPS = "10000000-0000-0000-0000-000000000011"
CAT_TABLETS = "10000000-0000-0000-0000-000000000014"
CAT_HEADPHONES = "10000000-0000-0000-0000-000000000015"
CAT_CAMERAS = "10000000-0000-0000-0000-000000000016"
CAT_ACCESSORIES = "10000000-0000-0000-0000-000000000013"

CONDITIONS = ["new", "like_new", "good", "fair"]
LOCATIONS = [
    "თბილისი, ვაკე", "თბილისი, საბურთალო", "თბილისი, ისანი", "თბილისი, გლდანი",
    "თბილისი, დიდუბე", "თბილისი, ნაძალადევი", "თბილისი, ვერა", "თბილისი, სოლოლაკი",
    "ბათუმი", "ქუთაისი", "რუსთავი", "გორი", "ზუგდიდი", "ფოთი", "თელავი", "მცხეთა",
    "სიღნაღი", "ბორჯომი", "კასპი", "მარნეული", "გარდაბანი", "საგარეჯო"
]

def esc(s):
    return s.replace("'", "''")

def img(category, idx):
    seeds = {
        "car": f"car-{idx}",
        "apartment": f"apartment-{idx}",
        "house": f"house-{idx}",
        "land": f"land-{idx}",
        "phone": f"phone-{idx}",
        "laptop": f"laptop-{idx}",
        "tablet": f"tablet-{idx}",
        "headphone": f"headphone-{idx}",
        "camera": f"camera-{idx}",
        "accessory": f"accessory-{idx}",
    }
    seed = seeds.get(category, f"product-{idx}")
    return f"https://picsum.photos/seed/{seed}/800/600"

def gen_images(category, idx, count=3):
    return [img(category, f"{idx}-{i}") for i in range(count)]

products = []

# ===== CARS (200) =====
car_brands = {
    "Toyota": ["Camry", "Corolla", "RAV4", "Prius", "Land Cruiser", "Hilux", "Yaris", "C-HR"],
    "BMW": ["320i", "520d", "X3", "X5", "M3", "330e", "X1", "740i"],
    "Mercedes-Benz": ["C200", "E220d", "GLC 300", "S500", "A200", "GLE 350", "CLA 250", "GLA 200"],
    "Hyundai": ["Tucson", "Elantra", "Santa Fe", "Sonata", "i30", "Kona", "Accent", "Palisade"],
    "Kia": ["Sportage", "Cerato", "Sorento", "K5", "Rio", "Seltos", "Stinger", "Carnival"],
    "Volkswagen": ["Golf", "Passat", "Tiguan", "Polo", "Jetta", "Touareg", "T-Roc", "Arteon"],
    "Nissan": ["Qashqai", "X-Trail", "Juke", "Note", "Leaf", "Patrol", "Altima", "Sentra"],
    "Lexus": ["RX 350", "ES 250", "NX 300", "IS 300", "GX 460", "LS 500", "UX 200"],
    "Audi": ["A4", "A6", "Q5", "Q7", "A3", "Q3", "e-tron", "A8"],
    "Subaru": ["Forester", "Outback", "XV", "Impreza", "Legacy", "BRZ"],
}
car_years = list(range(2008, 2025))
car_colors = ["შავი", "თეთრი", "ვერცხლისფერი", "ლურჯი", "წითელი", "ნაცრისფერი", "მწვანე", "შინდისფერი"]
car_fuel = ["ბენზინი", "დიზელი", "ჰიბრიდი", "ელექტრო"]
car_trans = ["ავტომატიკა", "მექანიკა"]

for i in range(200):
    brand = random.choice(list(car_brands.keys()))
    model = random.choice(car_brands[brand])
    year = random.choice(car_years)
    color = random.choice(car_colors)
    fuel = random.choice(car_fuel)
    trans = random.choice(car_trans)
    km = random.randint(0, 280000)
    cond = "new" if year >= 2024 and km < 100 else random.choice(["like_new", "good", "fair"])
    price = random.randint(5000, 120000) if brand not in ["BMW", "Mercedes-Benz", "Lexus", "Audi"] else random.randint(12000, 250000)

    title = f"{brand} {model} {year}"
    desc_lines = [
        f"{brand} {model}, {year} წლის გამოშვება.",
        f"ფერი: {color}, საწვავი: {fuel}, გადაცემათა კოლოფი: {trans}.",
        f"გარბენი: {km:,} კმ." if km > 0 else "გარბენი: 0 კმ — ახალი.",
    ]
    extras = random.sample([
        "კონდიციონერი", "ხის სალონი", "ტყავის სალონი", "პანორამული ჭერი",
        "უკანა კამერა", "პარკინგ სენსორები", "გამათბობელი სავარძლები",
        "ნავიგაცია", "LED ფარები", "მულტიმედია სისტემა", "კრუიზ კონტროლი"
    ], k=random.randint(2, 6))
    desc_lines.append(f"აღჭურვილობა: {', '.join(extras)}.")
    if cond == "fair":
        desc_lines.append("მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.")
    elif cond == "like_new":
        desc_lines.append("ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.")

    meta = json.dumps({"year": year, "fuel": fuel, "transmission": trans, "mileage_km": km, "color": color}, ensure_ascii=False)
    images = gen_images("car", i)
    products.append((title, "\n".join(desc_lines), price, "GEL", cond, CAT_AUTO, random.choice(LOCATIONS), images, meta))

# ===== APARTMENTS (100) =====
apt_districts = {
    "ვაკე": (1800, 4500), "საბურთალო": (1200, 3000), "ვერა": (2500, 5000),
    "სოლოლაკი": (2000, 4000), "დიდუბე": (900, 2000), "გლდანი": (700, 1500),
    "ისანი": (800, 1800), "ნაძალადევი": (700, 1600), "ბათუმი ახალი ბულვარი": (1500, 3500),
    "ბათუმი ცენტრი": (1200, 2800), "ქუთაისი ცენტრი": (600, 1500)
}
apt_types = ["სტუდიო", "1-ოთახიანი", "2-ოთახიანი", "3-ოთახიანი", "4-ოთახიანი"]
apt_sqm_range = {"სტუდიო": (25, 45), "1-ოთახიანი": (35, 60), "2-ოთახიანი": (55, 90), "3-ოთახიანი": (80, 130), "4-ოთახიანი": (110, 200)}

for i in range(100):
    district = random.choice(list(apt_districts.keys()))
    price_per_sqm = random.randint(*apt_districts[district])
    apt_type = random.choice(apt_types)
    sqm = random.randint(*apt_sqm_range[apt_type])
    floor = random.randint(1, 20)
    total_floors = floor + random.randint(0, 10)
    price = price_per_sqm * sqm
    cond = random.choice(["new", "like_new", "good", "fair"])
    renovated = cond in ["new", "like_new"]

    title = f"{apt_type} ბინა, {sqm} კვ.მ — {district}"
    desc_lines = [
        f"{apt_type} ბინა {district}-ში, {sqm} კვადრატული მეტრი.",
        f"სართული: {floor}/{total_floors}.",
    ]
    if renovated:
        desc_lines.append("ახალი ევრორემონტი, თანამედროვე დიზაინი.")
        desc_lines.append(random.choice([
            "იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.",
            "პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.",
            "თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი."
        ]))
    else:
        desc_lines.append(random.choice([
            "ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.",
            "საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.",
            "კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება."
        ]))
    desc_lines.append(random.choice([
        "მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.",
        "მშვიდი უბანი, ბაღებთან ახლოს.",
        "ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს."
    ]))

    loc = f"თბილისი, {district}" if "ბათუმი" not in district and "ქუთაისი" not in district else district
    meta = json.dumps({"sqm": sqm, "floor": floor, "total_floors": total_floors, "rooms": apt_type, "price_per_sqm": price_per_sqm}, ensure_ascii=False)
    images = gen_images("apartment", i)
    products.append((title, "\n".join(desc_lines), price, "USD", cond, CAT_APARTMENTS, loc, images, meta))

# ===== HOUSES (60) =====
house_locations = [
    ("წყნეთი", 120000, 450000), ("დიღომი", 100000, 350000), ("ბაგები", 80000, 280000),
    ("ოქროყანა", 150000, 500000), ("კოჯორი", 60000, 200000), ("წავკისი", 100000, 400000),
    ("შინდისი", 50000, 180000), ("საგურამო", 40000, 150000), ("მუხრანი", 30000, 120000),
    ("ბათუმი გონიო", 80000, 300000), ("ბათუმი კვარიათი", 70000, 250000)
]

for i in range(60):
    loc_name, pmin, pmax = random.choice(house_locations)
    sqm_house = random.randint(80, 400)
    sqm_land = random.randint(200, 3000)
    floors = random.randint(1, 3)
    price = random.randint(pmin, pmax)
    cond = random.choice(CONDITIONS)

    title = f"სახლი {sqm_house} კვ.მ, მიწა {sqm_land} კვ.მ — {loc_name}"
    desc_lines = [
        f"{floors}-სართულიანი სახლი {loc_name}-ში.",
        f"საცხოვრებელი ფართი: {sqm_house} კვ.მ, მიწის ნაკვეთი: {sqm_land} კვ.მ.",
    ]
    if cond in ["new", "like_new"]:
        desc_lines.append(random.choice([
            "ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.",
            "სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.",
            "პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა."
        ]))
    else:
        desc_lines.append(random.choice([
            "კარგ მდგომარეობაში, ეზო მოწესრიგებული.",
            "სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.",
            "ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია."
        ]))
    desc_lines.append(random.choice([
        "ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.",
        "მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.",
        "ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი."
    ]))

    meta = json.dumps({"sqm_house": sqm_house, "sqm_land": sqm_land, "floors": floors}, ensure_ascii=False)
    images = gen_images("house", i)
    products.append((title, "\n".join(desc_lines), price, "USD", cond, CAT_HOUSES, loc_name, images, meta))

# ===== LAND (40) =====
land_locations = [
    ("საგურამო", 5, 30), ("მუხრანი", 3, 15), ("ნატახტარი", 4, 20),
    ("მანგლისი", 2, 10), ("კოჯორი", 8, 40), ("წყნეთი", 10, 50),
    ("შეკვეთილი", 15, 60), ("გონიო", 20, 80), ("კახეთი, სიღნაღი", 3, 15),
    ("კახეთი, წინანდალი", 5, 25), ("ბორჯომი", 6, 30)
]

for i in range(40):
    loc_name, pmin, pmax = random.choice(land_locations)
    sqm = random.randint(500, 10000)
    price_per = random.uniform(pmin, pmax)
    price = int(sqm * price_per)

    purpose = random.choice(["სასოფლო-სამეურნეო", "საცხოვრებელი", "კომერციული"])
    title = f"მიწის ნაკვეთი {sqm} კვ.მ — {loc_name}"
    desc_lines = [
        f"მიწის ნაკვეთი {loc_name}-ში, {sqm} კვადრატული მეტრი.",
        f"დანიშნულება: {purpose}.",
    ]
    desc_lines.append(random.choice([
        "ბრტყელი რელიეფი, კომუნიკაციები ახლოს.",
        "ხედი მთებზე, წყაროს წყალი ახლოს.",
        "ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.",
        "ვენახიანი ნაკვეთი, ნაყოფიერი ნიადაგი.",
        "ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი."
    ]))

    meta = json.dumps({"sqm": sqm, "purpose": purpose}, ensure_ascii=False)
    images = gen_images("land", i)
    products.append((title, "\n".join(desc_lines), price, "USD", "good", CAT_LAND, loc_name, images, meta))

# ===== SMARTPHONES (200) =====
phone_models = {
    "Apple iPhone": [
        ("16 Pro Max", 4200, 5500), ("16 Pro", 3800, 4800), ("16", 3200, 4000),
        ("15 Pro Max", 3500, 4500), ("15 Pro", 3000, 3800), ("15", 2500, 3200),
        ("14 Pro Max", 2800, 3500), ("14 Pro", 2400, 3000), ("14", 1800, 2400),
        ("13", 1200, 1800), ("12", 800, 1300), ("SE 2022", 900, 1400),
    ],
    "Samsung Galaxy": [
        ("S24 Ultra", 3800, 5000), ("S24+", 3200, 4000), ("S24", 2800, 3500),
        ("S23 Ultra", 3000, 4000), ("S23", 2200, 2800), ("Z Fold5", 4500, 5500),
        ("Z Flip5", 2800, 3500), ("A54", 800, 1200), ("A34", 500, 800),
        ("A14", 300, 500), ("M14", 350, 550),
    ],
    "Xiaomi": [
        ("14 Ultra", 2800, 3500), ("14 Pro", 2200, 2800), ("14", 1800, 2400),
        ("13T Pro", 1500, 2000), ("13T", 1200, 1600), ("Redmi Note 13 Pro+", 800, 1200),
        ("Redmi Note 13", 500, 800), ("Redmi 13C", 300, 500), ("POCO X6 Pro", 900, 1300),
        ("POCO F6", 1100, 1500),
    ],
    "Google Pixel": [
        ("8 Pro", 2800, 3500), ("8", 2200, 2800), ("7a", 1200, 1700),
        ("7 Pro", 2000, 2600), ("6a", 800, 1200),
    ],
    "OnePlus": [
        ("12", 2500, 3200), ("12R", 1800, 2300), ("Nord 3", 1000, 1500),
        ("Nord CE 3", 700, 1000),
    ],
    "Huawei": [
        ("P60 Pro", 2500, 3200), ("Mate 60", 3000, 4000), ("Nova 12", 800, 1300),
    ],
}
phone_storage = ["64GB", "128GB", "256GB", "512GB", "1TB"]
phone_colors_map = ["შავი", "თეთრი", "ლურჯი", "მწვანე", "იისფერი", "ვარდისფერი", "ტიტანის ნაცრისფერი", "ოქროსფერი"]

for i in range(200):
    brand = random.choice(list(phone_models.keys()))
    model_name, pmin, pmax = random.choice(phone_models[brand])
    storage = random.choice(phone_storage)
    color = random.choice(phone_colors_map)
    cond = random.choice(CONDITIONS)
    price = random.randint(pmin, pmax)
    if cond == "new":
        price = int(price * 1.1)
    elif cond == "fair":
        price = int(price * 0.7)

    title = f"{brand} {model_name} {storage}"
    desc_lines = [
        f"{brand} {model_name}, მეხსიერება: {storage}, ფერი: {color}.",
    ]
    if cond == "new":
        desc_lines.append("ახალი, დალუქული ყუთით, გარანტია 1 წელი.")
    elif cond == "like_new":
        desc_lines.append("ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.")
    elif cond == "good":
        desc_lines.append("კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.")
    else:
        desc_lines.append("მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.")

    desc_lines.append(random.choice([
        "დამტენი და ყურსასმენი მოყვება.",
        "ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.",
        "მხოლოდ ტელეფონი, დამტენის გარეშე.",
        "სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი."
    ]))

    meta = json.dumps({"storage": storage, "color": color, "brand": brand}, ensure_ascii=False)
    images = gen_images("phone", i)
    products.append((title, "\n".join(desc_lines), price, "GEL", cond, CAT_SMARTPHONES, random.choice(LOCATIONS), images, meta))

# ===== LAPTOPS (200) =====
laptop_models = {
    "Apple MacBook": [
        ("Air M2 13\"", 3500, 5000), ("Air M3 15\"", 4500, 6000), ("Pro M3 14\"", 5500, 7500),
        ("Pro M3 Max 16\"", 8000, 12000), ("Air M1 13\"", 2500, 3500),
    ],
    "Lenovo": [
        ("ThinkPad X1 Carbon", 3000, 5000), ("ThinkPad T14s", 2500, 4000),
        ("IdeaPad 5", 1200, 2000), ("Legion 5 Pro", 3500, 5500),
        ("Yoga 9i", 3000, 4500), ("IdeaPad Slim 3", 800, 1500),
    ],
    "Dell": [
        ("XPS 13", 3000, 4500), ("XPS 15", 4000, 6000), ("Inspiron 15", 1200, 2000),
        ("Latitude 5540", 2500, 3500), ("Alienware m16", 5000, 8000),
    ],
    "HP": [
        ("Spectre x360", 3500, 5000), ("EliteBook 840", 2500, 4000),
        ("Pavilion 15", 1000, 1800), ("Envy 16", 2800, 4000),
        ("Omen 16", 3500, 5500), ("ProBook 450", 1500, 2500),
    ],
    "ASUS": [
        ("ZenBook 14", 2500, 3500), ("ROG Strix G16", 4000, 6000),
        ("VivoBook 15", 1000, 1800), ("TUF Gaming A15", 2500, 4000),
        ("ProArt StudioBook", 4500, 7000),
    ],
    "Acer": [
        ("Swift 5", 2200, 3500), ("Predator Helios 16", 4000, 6500),
        ("Aspire 5", 900, 1600), ("Nitro 5", 2000, 3500),
    ],
}
ram_options = ["8GB", "16GB", "32GB", "64GB"]
ssd_options = ["256GB SSD", "512GB SSD", "1TB SSD", "2TB SSD"]
cpu_options = ["Intel Core i5", "Intel Core i7", "Intel Core i9", "AMD Ryzen 5", "AMD Ryzen 7", "AMD Ryzen 9", "Apple M1", "Apple M2", "Apple M3", "Apple M3 Max"]

for i in range(200):
    brand = random.choice(list(laptop_models.keys()))
    model_name, pmin, pmax = random.choice(laptop_models[brand])
    ram = random.choice(ram_options)
    ssd = random.choice(ssd_options)
    cpu = random.choice(cpu_options) if "Apple" not in brand else random.choice(["Apple M1", "Apple M2", "Apple M3", "Apple M3 Max"])
    cond = random.choice(CONDITIONS)
    price = random.randint(pmin, pmax)
    if cond == "new":
        price = int(price * 1.1)
    elif cond == "fair":
        price = int(price * 0.65)

    title = f"{brand} {model_name}, {ram}/{ssd}"
    desc_lines = [
        f"{brand} {model_name}.",
        f"პროცესორი: {cpu}, ოპერატიული: {ram}, დისკი: {ssd}.",
    ]
    if cond == "new":
        desc_lines.append("ახალი, დალუქული, ოფიციალური გარანტია.")
    elif cond == "like_new":
        desc_lines.append("როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.")
    elif cond == "good":
        desc_lines.append("კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.")
    else:
        desc_lines.append("მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.")

    desc_lines.append(random.choice([
        "დამტენი და ორიგინალი ყუთი მოყვება.",
        "Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.",
        "macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.",
        "სრული კომპლექტი + ლეპტოპის ჩანთა."
    ]))

    meta = json.dumps({"cpu": cpu, "ram": ram, "ssd": ssd, "brand": brand}, ensure_ascii=False)
    images = gen_images("laptop", i)
    products.append((title, "\n".join(desc_lines), price, "GEL", cond, CAT_LAPTOPS, random.choice(LOCATIONS), images, meta))

# ===== OTHER DEVICES (200) =====
# Tablets (70)
tablet_models = [
    ("Apple iPad Pro 12.9\" M2", 3000, 4500), ("Apple iPad Pro 11\" M2", 2500, 3800),
    ("Apple iPad Air M1", 1800, 2800), ("Apple iPad 10th Gen", 1200, 1800),
    ("Apple iPad mini 6", 1500, 2200), ("Samsung Galaxy Tab S9 Ultra", 3500, 4500),
    ("Samsung Galaxy Tab S9+", 2800, 3500), ("Samsung Galaxy Tab S9", 2200, 2800),
    ("Samsung Galaxy Tab A9", 500, 800), ("Xiaomi Pad 6", 800, 1300),
    ("Lenovo Tab P12 Pro", 1500, 2200), ("Huawei MatePad Pro", 1800, 2500),
]

for i in range(70):
    model_name, pmin, pmax = random.choice(tablet_models)
    storage = random.choice(["64GB", "128GB", "256GB", "512GB"])
    cond = random.choice(CONDITIONS)
    price = random.randint(pmin, pmax)
    if cond == "fair": price = int(price * 0.65)
    if cond == "new": price = int(price * 1.1)

    title = f"{model_name} {storage}"
    desc_lines = [
        f"{model_name}, მეხსიერება: {storage}.",
    ]
    if cond == "new":
        desc_lines.append("ახალი, დალუქული ყუთით.")
    else:
        desc_lines.append(random.choice([
            "კარგ მდგომარეობაში, ეკრანი უნაკლო.", "მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.",
            "როგორც ახალი, კომპლექტი სრულია.", "ბატარეა კარგად იჭერს, ეკრანი სუფთა."
        ]))
    desc_lines.append(random.choice(["სტილუსი მოყვება.", "Wi-Fi + Cellular ვერსია.", "Wi-Fi ვერსია.", "კლავიატურის ქეისი მოყვება."]))

    meta = json.dumps({"storage": storage, "type": "tablet"}, ensure_ascii=False)
    images = gen_images("tablet", i)
    products.append((title, "\n".join(desc_lines), price, "GEL", cond, CAT_TABLETS, random.choice(LOCATIONS), images, meta))

# Headphones (70)
headphone_models = [
    ("Apple AirPods Pro 2", 600, 900), ("Apple AirPods Max", 1500, 2200),
    ("Apple AirPods 3", 350, 550), ("Sony WH-1000XM5", 800, 1200),
    ("Sony WH-1000XM4", 500, 800), ("Sony WF-1000XM5", 700, 1000),
    ("Bose QuietComfort Ultra", 900, 1300), ("Bose QuietComfort 45", 600, 900),
    ("Samsung Galaxy Buds2 Pro", 400, 650), ("JBL Tune 770NC", 200, 350),
    ("JBL Live Pro 2", 300, 500), ("Sennheiser Momentum 4", 800, 1200),
    ("Marshall Major IV", 250, 400), ("Beats Studio Pro", 700, 1000),
    ("Nothing Ear (2)", 300, 500), ("Xiaomi Buds 4 Pro", 250, 400),
]

for i in range(70):
    model_name, pmin, pmax = random.choice(headphone_models)
    color = random.choice(["შავი", "თეთრი", "ლურჯი", "ვერცხლისფერი", "მწვანე"])
    cond = random.choice(CONDITIONS)
    price = random.randint(pmin, pmax)
    if cond == "fair": price = int(price * 0.6)
    if cond == "new": price = int(price * 1.1)

    title = f"{model_name} — {color}"
    desc_lines = [
        f"{model_name}, ფერი: {color}.",
    ]
    if cond == "new":
        desc_lines.append("ახალი, არ გახსნილა, სრული გარანტია.")
    else:
        desc_lines.append(random.choice([
            "კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.", "გამოყენებული რამდენიმე თვე, ქეისი მოყვება.",
            "მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.", "მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს."
        ]))

    meta = json.dumps({"color": color, "type": "headphones"}, ensure_ascii=False)
    images = gen_images("headphone", i)
    products.append((title, "\n".join(desc_lines), price, "GEL", cond, CAT_HEADPHONES, random.choice(LOCATIONS), images, meta))

# Cameras (60)
camera_models = [
    ("Sony Alpha A7 IV", 5000, 7000), ("Sony Alpha A7C II", 4500, 6000),
    ("Sony ZV-E10", 1500, 2200), ("Canon EOS R6 Mark II", 5500, 7500),
    ("Canon EOS R8", 3500, 4800), ("Canon EOS R50", 1800, 2500),
    ("Nikon Z8", 7000, 9500), ("Nikon Z6 III", 4500, 6000),
    ("Nikon Z30", 1500, 2200), ("Fujifilm X-T5", 3500, 4800),
    ("Fujifilm X-S20", 2500, 3500), ("GoPro HERO12 Black", 800, 1200),
    ("DJI Osmo Action 4", 600, 900), ("Panasonic Lumix S5 II", 3500, 4800),
    ("Sony Alpha A6700", 3000, 4200),
]

for i in range(60):
    model_name, pmin, pmax = random.choice(camera_models)
    cond = random.choice(CONDITIONS)
    price = random.randint(pmin, pmax)
    if cond == "fair": price = int(price * 0.6)
    if cond == "new": price = int(price * 1.1)
    shutter = random.randint(0, 80000)

    title = model_name
    desc_lines = [
        f"{model_name}.",
    ]
    if cond == "new":
        desc_lines.append("ახალი, დალუქული, ოფიციალური გარანტია.")
    elif shutter < 5000:
        desc_lines.append(f"თითქმის ახალი, შატერის რაოდენობა: {shutter:,}.")
    else:
        desc_lines.append(f"შატერის რაოდენობა: {shutter:,}. " + random.choice([
            "კარგ მდგომარეობაში, სენსორი სუფთა.", "ყუთი და დამტენი მოყვება.",
            "კორპუსზე მცირე კოსმეტიკური ცვეთა.", "პროფესიონალურად მოვლილი."
        ]))

    desc_lines.append(random.choice([
        "ობიექტივი არ მოყვება (მხოლოდ body).", "კიტის ობიექტივით: 28-70mm.",
        "მეხსიერების ბარათი 128GB მოყვება.", "ჩანთა და დამატებითი ბატარეა მოყვება."
    ]))

    meta = json.dumps({"shutter_count": shutter, "type": "camera"}, ensure_ascii=False)
    images = gen_images("camera", i)
    products.append((title, "\n".join(desc_lines), price, "GEL", cond, CAT_CAMERAS, random.choice(LOCATIONS), images, meta))

# ===== GENERATE SQL =====
random.shuffle(products)

sql_lines = []
sql_lines.append("BEGIN;")
sql_lines.append("")

for idx, (title, desc, price, currency, cond, cat_id, location, images, meta) in enumerate(products):
    pid = str(uuid.uuid4())
    img_arr = "ARRAY[" + ",".join(f"'{esc(u)}'" for u in images) + "]::text[]"
    view_count = random.randint(0, 500)

    sql_lines.append(f"""INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('{pid}', '{TENANT}', '{SELLER}', '{cat_id}', '{esc(title)}', '{esc(desc)}', {price}, '{currency}', '{cond}', 'active', '{esc(location)}', {img_arr}, '{esc(meta)}'::jsonb, {view_count});""")

sql_lines.append("")
sql_lines.append("COMMIT;")
sql_lines.append(f"-- Total products: {len(products)}")

with open("/Users/shoto/Desktop/shopping/ai_consultant/scripts/seed-products.sql", "w") as f:
    f.write("\n".join(sql_lines))

print(f"Generated {len(products)} products -> seed-products.sql")
