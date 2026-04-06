BEGIN;

INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dc788c0b-dcc0-4d5e-811d-05ae24dd6cfb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan X-Trail 2021', 'Nissan X-Trail, 2021 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 218,709 კმ.
აღჭურვილობა: ხის სალონი, ტყავის სალონი, ნავიგაცია, კრუიზ კონტროლი, მულტიმედია სისტემა.', 61148, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/car-160-0/800/600','https://picsum.photos/seed/car-160-1/800/600','https://picsum.photos/seed/car-160-2/800/600']::text[], '{"year": 2021, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 218709, "color": "წითელი"}'::jsonb, 399);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a1e7ab5e-266e-4957-88dc-456bbf2fa206', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 16GB/2TB SSD', 'Lenovo Yoga 9i.
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2325, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-114-0/800/600','https://picsum.photos/seed/laptop-114-1/800/600','https://picsum.photos/seed/laptop-114-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 291);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('41a6dd9f-a33d-434a-a6b6-22ae9ea8ae2a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — მწვანე', 'Apple AirPods Pro 2, ფერი: მწვანე.
ახალი, არ გახსნილა, სრული გარანტია.', 845, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-24-0/800/600','https://picsum.photos/seed/headphone-24-1/800/600','https://picsum.photos/seed/headphone-24-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 386);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9bdf0f23-ea33-4149-a131-fbeaa0de9bb7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Cerato 2015', 'Kia Cerato, 2015 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 36,871 კმ.
აღჭურვილობა: LED ფარები, პანორამული ჭერი, კრუიზ კონტროლი, კონდიციონერი, ხის სალონი, მულტიმედია სისტემა.', 44651, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/car-85-0/800/600','https://picsum.photos/seed/car-85-1/800/600','https://picsum.photos/seed/car-85-2/800/600']::text[], '{"year": 2015, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 36871, "color": "თეთრი"}'::jsonb, 76);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4b997a3e-dee6-4170-b3b4-fcdedad5aa97', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 128GB', 'Apple iPad Pro 11" M2, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi ვერსია.', 3567, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/tablet-21-0/800/600','https://picsum.photos/seed/tablet-21-1/800/600','https://picsum.photos/seed/tablet-21-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 135);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4d327088-caf5-47b3-bd63-e121f5b961c7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia K5 2013', 'Kia K5, 2013 წლის გამოშვება.
ფერი: შავი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 157,562 კმ.
აღჭურვილობა: პანორამული ჭერი, ტყავის სალონი, უკანა კამერა.', 101886, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-57-0/800/600','https://picsum.photos/seed/car-57-1/800/600','https://picsum.photos/seed/car-57-2/800/600']::text[], '{"year": 2013, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 157562, "color": "შავი"}'::jsonb, 253);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a90160ce-915c-4b7d-a74f-cf00d1388864', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 8GB/2TB SSD', 'Dell Latitude 5540.
პროცესორი: Apple M3, ოპერატიული: 8GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3232, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-42-0/800/600','https://picsum.photos/seed/laptop-42-1/800/600','https://picsum.photos/seed/laptop-42-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "8GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 143);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b3861c0f-fe7d-4cb5-8157-e7a2e1a84962', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP EliteBook 840, 32GB/512GB SSD', 'HP EliteBook 840.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 2282, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-167-0/800/600','https://picsum.photos/seed/laptop-167-1/800/600','https://picsum.photos/seed/laptop-167-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 284);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ddabc9fd-4f6c-45d9-9e5a-427d93eff6b7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM4 — მწვანე', 'Sony WH-1000XM4, ფერი: მწვანე.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 526, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/headphone-7-0/800/600','https://picsum.photos/seed/headphone-7-1/800/600','https://picsum.photos/seed/headphone-7-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 272);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b3a1adcb-cf4b-42a6-b0ce-bdaad0ee2786', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO F6 512GB', 'Xiaomi POCO F6, მეხსიერება: 512GB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1125, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/phone-85-0/800/600','https://picsum.photos/seed/phone-85-1/800/600','https://picsum.photos/seed/phone-85-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 211);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8366ae82-5091-4ce6-8bbb-c385586d3a74', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen T-Roc 2022', 'Volkswagen T-Roc, 2022 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 36,928 კმ.
აღჭურვილობა: კონდიციონერი, ხის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 103881, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-13-0/800/600','https://picsum.photos/seed/car-13-1/800/600','https://picsum.photos/seed/car-13-2/800/600']::text[], '{"year": 2022, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 36928, "color": "ნაცრისფერი"}'::jsonb, 500);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0ef76021-63be-4652-9fdf-d5403a400214', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 204 კვ.მ, მიწა 1249 კვ.მ — მუხრანი', '2-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 204 კვ.მ, მიწის ნაკვეთი: 1249 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 76628, 'USD', 'new', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-23-0/800/600','https://picsum.photos/seed/house-23-1/800/600','https://picsum.photos/seed/house-23-2/800/600']::text[], '{"sqm_house": 204, "sqm_land": 1249, "floors": 2}'::jsonb, 219);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f7411d4a-0a9d-4287-9072-22f96e14999e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 32GB/512GB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 5, ოპერატიული: 32GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3102, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-45-0/800/600','https://picsum.photos/seed/laptop-45-1/800/600','https://picsum.photos/seed/laptop-45-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "32GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 328);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('23e5dbfc-0504-490b-a428-89d51f426bb3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 Pro Max 64GB', 'Apple iPhone 14 Pro Max, მეხსიერება: 64GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2175, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-121-0/800/600','https://picsum.photos/seed/phone-121-1/800/600','https://picsum.photos/seed/phone-121-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Apple iPhone"}'::jsonb, 446);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a5976066-3ca6-46fb-bdfb-22897b6b82be', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 Pro+ 256GB', 'Xiaomi Redmi Note 13 Pro+, მეხსიერება: 256GB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 985, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-49-0/800/600','https://picsum.photos/seed/phone-49-1/800/600','https://picsum.photos/seed/phone-49-2/800/600']::text[], '{"storage": "256GB", "color": "ოქროსფერი", "brand": "Xiaomi"}'::jsonb, 6);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4166899b-b3c7-46a6-af88-43935e5cd825', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 64GB/2TB SSD', 'Acer Swift 5.
პროცესორი: Intel Core i7, ოპერატიული: 64GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1571, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-20-0/800/600','https://picsum.photos/seed/laptop-20-1/800/600','https://picsum.photos/seed/laptop-20-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "64GB", "ssd": "2TB SSD", "brand": "Acer"}'::jsonb, 161);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ac2a7362-5ddd-403d-8dd3-9ef2fca646d2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12R 64GB', 'OnePlus 12R, მეხსიერება: 64GB, ფერი: ტიტანის ნაცრისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2190, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-134-0/800/600','https://picsum.photos/seed/phone-134-1/800/600','https://picsum.photos/seed/phone-134-2/800/600']::text[], '{"storage": "64GB", "color": "ტიტანის ნაცრისფერი", "brand": "OnePlus"}'::jsonb, 332);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3b861ae0-f4e4-4d8a-8133-ba07ee54fa43', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 123 კვ.მ, მიწა 1456 კვ.მ — ბათუმი კვარიათი', '3-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 123 კვ.მ, მიწის ნაკვეთი: 1456 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 222239, 'USD', 'new', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-58-0/800/600','https://picsum.photos/seed/house-58-1/800/600','https://picsum.photos/seed/house-58-2/800/600']::text[], '{"sqm_house": 123, "sqm_land": 1456, "floors": 3}'::jsonb, 216);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a85008ab-6eda-4991-a83e-6df7ad774610', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 Ultra 64GB', 'Samsung Galaxy S24 Ultra, მეხსიერება: 64GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2721, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-69-0/800/600','https://picsum.photos/seed/phone-69-1/800/600','https://picsum.photos/seed/phone-69-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "Samsung Galaxy"}'::jsonb, 303);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d136ca71-dce9-4649-bb2f-008ac6d5ef6e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 88 კვ.მ — ქუთაისი ცენტრი', '2-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 88 კვადრატული მეტრი.
სართული: 5/14.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 62656, 'USD', 'good', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-20-0/800/600','https://picsum.photos/seed/apartment-20-1/800/600','https://picsum.photos/seed/apartment-20-2/800/600']::text[], '{"sqm": 88, "floor": 5, "total_floors": 14, "rooms": "2-ოთახიანი", "price_per_sqm": 712}'::jsonb, 437);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('57e4a85a-c328-4d23-8848-8d625337381a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'DJI Osmo Action 4', 'DJI Osmo Action 4.
შატერის რაოდენობა: 78,813. პროფესიონალურად მოვლილი.
ობიექტივი არ მოყვება (მხოლოდ body).', 621, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/camera-51-0/800/600','https://picsum.photos/seed/camera-51-1/800/600','https://picsum.photos/seed/camera-51-2/800/600']::text[], '{"shutter_count": 78813, "type": "camera"}'::jsonb, 141);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('68eac99b-07d8-494e-9160-fbcec86941f8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 44 კვ.მ — ისანი', 'სტუდიო ბინა ისანი-ში, 44 კვადრატული მეტრი.
სართული: 13/21.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 51304, 'USD', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-31-0/800/600','https://picsum.photos/seed/apartment-31-1/800/600','https://picsum.photos/seed/apartment-31-2/800/600']::text[], '{"sqm": 44, "floor": 13, "total_floors": 21, "rooms": "სტუდიო", "price_per_sqm": 1166}'::jsonb, 243);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('08bfdc8c-dbae-4390-ad68-e9356f828ba8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 16GB/512GB SSD', 'ASUS ROG Strix G16.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3365, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-7-0/800/600','https://picsum.photos/seed/laptop-7-1/800/600','https://picsum.photos/seed/laptop-7-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 480);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e0723ebe-9fb3-441d-9e28-b78ce7944196', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R6 Mark II', 'Canon EOS R6 Mark II.
ახალი, დალუქული, ოფიციალური გარანტია.
ჩანთა და დამატებითი ბატარეა მოყვება.', 6290, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/camera-32-0/800/600','https://picsum.photos/seed/camera-32-1/800/600','https://picsum.photos/seed/camera-32-2/800/600']::text[], '{"shutter_count": 56567, "type": "camera"}'::jsonb, 157);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3b631019-eb74-4d22-a64c-6c4b7a9172df', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Prius 2008', 'Toyota Prius, 2008 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 226,297 კმ.
აღჭურვილობა: პარკინგ სენსორები, LED ფარები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 56708, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-38-0/800/600','https://picsum.photos/seed/car-38-1/800/600','https://picsum.photos/seed/car-38-2/800/600']::text[], '{"year": 2008, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 226297, "color": "ნაცრისფერი"}'::jsonb, 66);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('63a02297-1123-4bdd-a268-750abef77cc4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz S500 2008', 'Mercedes-Benz S500, 2008 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 41,248 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კონდიციონერი, გამათბობელი სავარძლები, პანორამული ჭერი.', 38189, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/car-139-0/800/600','https://picsum.photos/seed/car-139-1/800/600','https://picsum.photos/seed/car-139-2/800/600']::text[], '{"year": 2008, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 41248, "color": "წითელი"}'::jsonb, 466);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d53276a6-5c74-497d-85e6-17b167be9c62', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 2459 კვ.მ — ბორჯომი', 'მიწის ნაკვეთი ბორჯომი-ში, 2459 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ხედი მთებზე, წყაროს წყალი ახლოს.', 16332, 'USD', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/land-13-0/800/600','https://picsum.photos/seed/land-13-1/800/600','https://picsum.photos/seed/land-13-2/800/600']::text[], '{"sqm": 2459, "purpose": "საცხოვრებელი"}'::jsonb, 55);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0881fd2f-2497-40b5-a355-1b26b274770d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T 64GB', 'Xiaomi 13T, მეხსიერება: 64GB, ფერი: შავი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1478, 'GEL', 'new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/phone-183-0/800/600','https://picsum.photos/seed/phone-183-1/800/600','https://picsum.photos/seed/phone-183-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "Xiaomi"}'::jsonb, 387);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b7ceae2b-864e-4d0e-b37a-6cb04d6c2c1e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 16GB/2TB SSD', 'Dell Alienware m16.
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 7441, 'GEL', 'new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-145-0/800/600','https://picsum.photos/seed/laptop-145-1/800/600','https://picsum.photos/seed/laptop-145-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 52);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('04c8e37e-2351-4fa3-9938-cc6f6d65e81f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A8 2022', 'Audi A8, 2022 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 198,747 კმ.
აღჭურვილობა: მულტიმედია სისტემა, პარკინგ სენსორები, უკანა კამერა, LED ფარები.', 41468, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-18-0/800/600','https://picsum.photos/seed/car-18-1/800/600','https://picsum.photos/seed/car-18-2/800/600']::text[], '{"year": 2022, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 198747, "color": "ნაცრისფერი"}'::jsonb, 52);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('023ac1bd-3cde-41a5-b4be-1c7819482d54', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 112 კვ.მ — საბურთალო', '3-ოთახიანი ბინა საბურთალო-ში, 112 კვადრატული მეტრი.
სართული: 16/22.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 171024, 'USD', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/apartment-94-0/800/600','https://picsum.photos/seed/apartment-94-1/800/600','https://picsum.photos/seed/apartment-94-2/800/600']::text[], '{"sqm": 112, "floor": 16, "total_floors": 22, "rooms": "3-ოთახიანი", "price_per_sqm": 1527}'::jsonb, 477);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e8e1e3c7-d927-415d-8de0-eb2efc5c1296', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Cerato 2011', 'Kia Cerato, 2011 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 83,521 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კრუიზ კონტროლი, ტყავის სალონი, გამათბობელი სავარძლები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 109145, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-156-0/800/600','https://picsum.photos/seed/car-156-1/800/600','https://picsum.photos/seed/car-156-2/800/600']::text[], '{"year": 2011, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 83521, "color": "ვერცხლისფერი"}'::jsonb, 52);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b46026ba-7005-407f-8e07-5cb63e0e37a9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 15, 64GB/1TB SSD', 'Dell XPS 15.
პროცესორი: Intel Core i7, ოპერატიული: 64GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4571, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-32-0/800/600','https://picsum.photos/seed/laptop-32-1/800/600','https://picsum.photos/seed/laptop-32-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "64GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 354);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('02c9653b-b0b1-4298-b85f-9c2463fab591', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 256GB', 'Google Pixel 7a, მეხსიერება: 256GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1565, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-167-0/800/600','https://picsum.photos/seed/phone-167-1/800/600','https://picsum.photos/seed/phone-167-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 233);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bbe3898c-5cfd-4da5-abce-691955311d85', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 512GB', 'Huawei P60 Pro, მეხსიერება: 512GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3245, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-84-0/800/600','https://picsum.photos/seed/phone-84-1/800/600','https://picsum.photos/seed/phone-84-2/800/600']::text[], '{"storage": "512GB", "color": "მწვანე", "brand": "Huawei"}'::jsonb, 115);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e3398032-16a5-493d-a268-b067f7fad70f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 256GB', 'Huawei Mate 60, მეხსიერება: 256GB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3189, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-60-0/800/600','https://picsum.photos/seed/phone-60-1/800/600','https://picsum.photos/seed/phone-60-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Huawei"}'::jsonb, 120);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a4fb72d6-bbb0-48ae-b6b8-3fe22f667c9e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW M3 2015', 'BMW M3, 2015 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 200,696 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, კრუიზ კონტროლი, ხის სალონი, ტყავის სალონი, უკანა კამერა, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 49051, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-112-0/800/600','https://picsum.photos/seed/car-112-1/800/600','https://picsum.photos/seed/car-112-2/800/600']::text[], '{"year": 2015, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 200696, "color": "შინდისფერი"}'::jsonb, 124);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('da138c93-56f5-491b-83ba-25a3be42dcd2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 94 კვ.მ — დიდუბე', '3-ოთახიანი ბინა დიდუბე-ში, 94 კვადრატული მეტრი.
სართული: 2/4.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 183488, 'USD', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-51-0/800/600','https://picsum.photos/seed/apartment-51-1/800/600','https://picsum.photos/seed/apartment-51-2/800/600']::text[], '{"sqm": 94, "floor": 2, "total_floors": 4, "rooms": "3-ოთახიანი", "price_per_sqm": 1952}'::jsonb, 253);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6cc8da71-e900-48fd-9412-72a7d634a1ed', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 512GB', 'OnePlus 12, მეხსიერება: 512GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3140, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-103-0/800/600','https://picsum.photos/seed/phone-103-1/800/600','https://picsum.photos/seed/phone-103-2/800/600']::text[], '{"storage": "512GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 448);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c65e038a-01da-4fdd-afba-1f7f15e8f11f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota C-HR 2012', 'Toyota C-HR, 2012 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 210,574 კმ.
აღჭურვილობა: LED ფარები, კრუიზ კონტროლი, პარკინგ სენსორები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 22953, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-82-0/800/600','https://picsum.photos/seed/car-82-1/800/600','https://picsum.photos/seed/car-82-2/800/600']::text[], '{"year": 2012, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 210574, "color": "თეთრი"}'::jsonb, 497);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8bf57695-e2a8-4873-be1e-d5e220d0c4e9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 1TB', 'Apple iPhone 15, მეხსიერება: 1TB, ფერი: შავი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2523, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-63-0/800/600','https://picsum.photos/seed/phone-63-1/800/600','https://picsum.photos/seed/phone-63-2/800/600']::text[], '{"storage": "1TB", "color": "შავი", "brand": "Apple iPhone"}'::jsonb, 361);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7cf3b118-60aa-4238-8cbc-315e08cd95a8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7 Pro 256GB', 'Google Pixel 7 Pro, მეხსიერება: 256GB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1607, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-67-0/800/600','https://picsum.photos/seed/phone-67-1/800/600','https://picsum.photos/seed/phone-67-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 263);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('759ca747-c124-42eb-91b3-ff1d47258ff7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A4 2012', 'Audi A4, 2012 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 109,416 კმ.
აღჭურვილობა: პარკინგ სენსორები, პანორამული ჭერი, კრუიზ კონტროლი, ტყავის სალონი, ნავიგაცია, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 49023, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/car-14-0/800/600','https://picsum.photos/seed/car-14-1/800/600','https://picsum.photos/seed/car-14-2/800/600']::text[], '{"year": 2012, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 109416, "color": "ვერცხლისფერი"}'::jsonb, 322);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c61d6d52-f08c-4da6-841f-43575be7bffc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 16 Pro Max 128GB', 'Apple iPhone 16 Pro Max, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 4988, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-116-0/800/600','https://picsum.photos/seed/phone-116-1/800/600','https://picsum.photos/seed/phone-116-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "Apple iPhone"}'::jsonb, 410);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('af00c6c3-8d1b-43e2-95e4-f2f2f956db1c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 16GB/2TB SSD', 'Lenovo Yoga 9i.
პროცესორი: AMD Ryzen 9, ოპერატიული: 16GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 4256, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-70-0/800/600','https://picsum.photos/seed/laptop-70-1/800/600','https://picsum.photos/seed/laptop-70-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "16GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 457);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5f99d2e3-ae97-4246-ad33-91927b26aee2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz S500 2013', 'Mercedes-Benz S500, 2013 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 266,302 კმ.
აღჭურვილობა: უკანა კამერა, გამათბობელი სავარძლები.', 87912, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-91-0/800/600','https://picsum.photos/seed/car-91-1/800/600','https://picsum.photos/seed/car-91-2/800/600']::text[], '{"year": 2013, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 266302, "color": "თეთრი"}'::jsonb, 260);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3d5945be-3f19-4f35-8dc4-de586cdbeff4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 Pro+ 128GB', 'Xiaomi Redmi Note 13 Pro+, მეხსიერება: 128GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1074, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-117-0/800/600','https://picsum.photos/seed/phone-117-1/800/600','https://picsum.photos/seed/phone-117-2/800/600']::text[], '{"storage": "128GB", "color": "ლურჯი", "brand": "Xiaomi"}'::jsonb, 362);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('70f8b768-c850-46a6-ade2-dad20e828cb1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WF-1000XM5 — მწვანე', 'Sony WF-1000XM5, ფერი: მწვანე.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 754, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/headphone-32-0/800/600','https://picsum.photos/seed/headphone-32-1/800/600','https://picsum.photos/seed/headphone-32-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 298);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6703a5b3-d763-4f9f-b370-20a0b634c934', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 32GB/512GB SSD', 'Lenovo Yoga 9i.
პროცესორი: Intel Core i9, ოპერატიული: 32GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 2676, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-156-0/800/600','https://picsum.photos/seed/laptop-156-1/800/600','https://picsum.photos/seed/laptop-156-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "32GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 262);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('121295c9-7c1e-4d1a-9972-8f073ddd4c92', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Outback 2010', 'Subaru Outback, 2010 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 46,470 კმ.
აღჭურვილობა: ხის სალონი, პარკინგ სენსორები.', 102277, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-149-0/800/600','https://picsum.photos/seed/car-149-1/800/600','https://picsum.photos/seed/car-149-2/800/600']::text[], '{"year": 2010, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 46470, "color": "ლურჯი"}'::jsonb, 6);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a4da64aa-07e8-4df9-8f95-d7cfa130f819', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 256GB', 'Huawei P60 Pro, მეხსიერება: 256GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2809, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-107-0/800/600','https://picsum.photos/seed/phone-107-1/800/600','https://picsum.photos/seed/phone-107-2/800/600']::text[], '{"storage": "256GB", "color": "ტიტანის ნაცრისფერი", "brand": "Huawei"}'::jsonb, 272);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('480451e2-1156-4086-89a1-2b64be6db2c7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 512GB', 'Huawei Nova 12, მეხსიერება: 512GB, ფერი: ლურჯი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 998, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-154-0/800/600','https://picsum.photos/seed/phone-154-1/800/600','https://picsum.photos/seed/phone-154-2/800/600']::text[], '{"storage": "512GB", "color": "ლურჯი", "brand": "Huawei"}'::jsonb, 2);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7e677033-1bef-45e2-8397-c208d531bda3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7 Pro 1TB', 'Google Pixel 7 Pro, მეხსიერება: 1TB, ფერი: ტიტანის ნაცრისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2775, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-93-0/800/600','https://picsum.photos/seed/phone-93-1/800/600','https://picsum.photos/seed/phone-93-2/800/600']::text[], '{"storage": "1TB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 60);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4a557efe-39e7-47e8-8441-e1f2993f1c2e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods 3 — თეთრი', 'Apple AirPods 3, ფერი: თეთრი.
ახალი, არ გახსნილა, სრული გარანტია.', 597, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/headphone-64-0/800/600','https://picsum.photos/seed/headphone-64-1/800/600','https://picsum.photos/seed/headphone-64-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 260);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bb651492-c1ba-4fb9-88fe-b836a94b30cc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 64GB', 'OnePlus Nord CE 3, მეხსიერება: 64GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 575, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-145-0/800/600','https://picsum.photos/seed/phone-145-1/800/600','https://picsum.photos/seed/phone-145-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "OnePlus"}'::jsonb, 122);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('452dcfe7-ba7d-4339-8f00-ed7a6ba6f136', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 128GB', 'Huawei Nova 12, მეხსიერება: 128GB, ფერი: შავი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 877, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-31-0/800/600','https://picsum.photos/seed/phone-31-1/800/600','https://picsum.photos/seed/phone-31-2/800/600']::text[], '{"storage": "128GB", "color": "შავი", "brand": "Huawei"}'::jsonb, 403);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5a72ea64-2951-40ec-88b0-f7fad0b2747b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'DJI Osmo Action 4', 'DJI Osmo Action 4.
ახალი, დალუქული, ოფიციალური გარანტია.
მეხსიერების ბარათი 128GB მოყვება.', 773, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/camera-22-0/800/600','https://picsum.photos/seed/camera-22-1/800/600','https://picsum.photos/seed/camera-22-2/800/600']::text[], '{"shutter_count": 35621, "type": "camera"}'::jsonb, 7);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a7c1733f-9725-4c1b-8d65-3ae1fd725f43', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 512GB', 'OnePlus Nord CE 3, მეხსიერება: 512GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 996, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-99-0/800/600','https://picsum.photos/seed/phone-99-1/800/600','https://picsum.photos/seed/phone-99-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 305);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4dd31e27-20ab-4965-91d1-890d7263722f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A3 2017', 'Audi A3, 2017 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 249,366 კმ.
აღჭურვილობა: მულტიმედია სისტემა, უკანა კამერა, კრუიზ კონტროლი, ხის სალონი, ნავიგაცია, პარკინგ სენსორები.', 136088, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/car-128-0/800/600','https://picsum.photos/seed/car-128-1/800/600','https://picsum.photos/seed/car-128-2/800/600']::text[], '{"year": 2017, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 249366, "color": "თეთრი"}'::jsonb, 98);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cbab3840-e4e8-46bd-ab4e-735f7a1ebd12', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 60 კვ.მ — ისანი', '1-ოთახიანი ბინა ისანი-ში, 60 კვადრატული მეტრი.
სართული: 11/18.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 101220, 'USD', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-24-0/800/600','https://picsum.photos/seed/apartment-24-1/800/600','https://picsum.photos/seed/apartment-24-2/800/600']::text[], '{"sqm": 60, "floor": 11, "total_floors": 18, "rooms": "1-ოთახიანი", "price_per_sqm": 1687}'::jsonb, 383);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3089a8eb-99df-4e85-ae43-ea8c0961284f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 64GB', 'Huawei Mate 60, მეხსიერება: 64GB, ფერი: მწვანე.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3055, 'GEL', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-149-0/800/600','https://picsum.photos/seed/phone-149-1/800/600','https://picsum.photos/seed/phone-149-2/800/600']::text[], '{"storage": "64GB", "color": "მწვანე", "brand": "Huawei"}'::jsonb, 341);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b1079689-d1b4-4f87-882c-fde9009276cb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 64GB', 'Samsung Galaxy Tab S9, მეხსიერება: 64GB.
მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.
Wi-Fi + Cellular ვერსია.', 2243, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/tablet-17-0/800/600','https://picsum.photos/seed/tablet-17-1/800/600','https://picsum.photos/seed/tablet-17-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 286);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4648685b-baf1-430c-89c0-30d3f60e7cd2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Jetta 2010', 'Volkswagen Jetta, 2010 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 93,764 კმ.
აღჭურვილობა: პანორამული ჭერი, კრუიზ კონტროლი, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 96386, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-51-0/800/600','https://picsum.photos/seed/car-51-1/800/600','https://picsum.photos/seed/car-51-2/800/600']::text[], '{"year": 2010, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 93764, "color": "შინდისფერი"}'::jsonb, 62);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('831afcb5-2cbe-4881-aa6b-4e1e63fad5f1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12R 1TB', 'OnePlus 12R, მეხსიერება: 1TB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1381, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/phone-42-0/800/600','https://picsum.photos/seed/phone-42-1/800/600','https://picsum.photos/seed/phone-42-2/800/600']::text[], '{"storage": "1TB", "color": "ოქროსფერი", "brand": "OnePlus"}'::jsonb, 485);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8c242cd1-8537-47bc-a398-6e5a23eab5c9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 12 128GB', 'Apple iPhone 12, მეხსიერება: 128GB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 779, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-192-0/800/600','https://picsum.photos/seed/phone-192-1/800/600','https://picsum.photos/seed/phone-192-2/800/600']::text[], '{"storage": "128GB", "color": "ოქროსფერი", "brand": "Apple iPhone"}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8c877bb4-e608-4c06-8bc9-753a95167458', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 740i 2017', 'BMW 740i, 2017 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 141,460 კმ.
აღჭურვილობა: პანორამული ჭერი, კონდიციონერი.', 167612, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-187-0/800/600','https://picsum.photos/seed/car-187-1/800/600','https://picsum.photos/seed/car-187-2/800/600']::text[], '{"year": 2017, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 141460, "color": "თეთრი"}'::jsonb, 386);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4b960ed9-34eb-41c0-ac11-5bdc17805a1d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 5531 კვ.მ — შეკვეთილი', 'მიწის ნაკვეთი შეკვეთილი-ში, 5531 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 139072, 'USD', 'good', 'active', 'შეკვეთილი', ARRAY['https://picsum.photos/seed/land-35-0/800/600','https://picsum.photos/seed/land-35-1/800/600','https://picsum.photos/seed/land-35-2/800/600']::text[], '{"sqm": 5531, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 394);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('491fadfa-1bfe-416e-a609-a9c7a223be75', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 32GB/256GB SSD', 'Dell Alienware m16.
პროცესორი: AMD Ryzen 7, ოპერატიული: 32GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3641, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-107-0/800/600','https://picsum.photos/seed/laptop-107-1/800/600','https://picsum.photos/seed/laptop-107-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "32GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 214);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('21f771f5-28a6-475e-98d6-7aaacd91a0c6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 Max 16", 32GB/256GB SSD', 'Apple MacBook Pro M3 Max 16".
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 10739, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-18-0/800/600','https://picsum.photos/seed/laptop-18-1/800/600','https://picsum.photos/seed/laptop-18-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 14);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('40265f76-4b8a-41f5-88f4-a80850629ebf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLE 350 2012', 'Mercedes-Benz GLE 350, 2012 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 10,197 კმ.
აღჭურვილობა: ხის სალონი, LED ფარები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 98276, 'GEL', 'like_new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-142-0/800/600','https://picsum.photos/seed/car-142-1/800/600','https://picsum.photos/seed/car-142-2/800/600']::text[], '{"year": 2012, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 10197, "color": "შინდისფერი"}'::jsonb, 56);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2180b3d5-6607-44a1-8479-f29204d4cad0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 89 კვ.მ, მიწა 2992 კვ.მ — ბაგები', '2-სართულიანი სახლი ბაგები-ში.
საცხოვრებელი ფართი: 89 კვ.მ, მიწის ნაკვეთი: 2992 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 149495, 'USD', 'new', 'active', 'ბაგები', ARRAY['https://picsum.photos/seed/house-57-0/800/600','https://picsum.photos/seed/house-57-1/800/600','https://picsum.photos/seed/house-57-2/800/600']::text[], '{"sqm_house": 89, "sqm_land": 2992, "floors": 2}'::jsonb, 106);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fdfd5285-d5ee-41ac-b14b-6742977d4a1c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 64GB', 'Xiaomi Redmi Note 13, მეხსიერება: 64GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 476, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-53-0/800/600','https://picsum.photos/seed/phone-53-1/800/600','https://picsum.photos/seed/phone-53-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "Xiaomi"}'::jsonb, 149);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8065d0ba-6d8a-4257-9afa-7d63750cf038', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 256GB', 'Apple iPad Pro 11" M2, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
Wi-Fi ვერსია.', 2036, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/tablet-57-0/800/600','https://picsum.photos/seed/tablet-57-1/800/600','https://picsum.photos/seed/tablet-57-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 122);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4c101826-877a-4ffb-a9b0-1331fe74e270', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Golf 2016', 'Volkswagen Golf, 2016 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 275,718 კმ.
აღჭურვილობა: უკანა კამერა, ხის სალონი, ნავიგაცია, მულტიმედია სისტემა.', 93232, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-54-0/800/600','https://picsum.photos/seed/car-54-1/800/600','https://picsum.photos/seed/car-54-2/800/600']::text[], '{"year": 2016, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 275718, "color": "თეთრი"}'::jsonb, 432);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a7521da7-24dc-431a-bc16-90a137ac055e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Huawei MatePad Pro 128GB', 'Huawei MatePad Pro, მეხსიერება: 128GB.
მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.
Wi-Fi ვერსია.', 1481, 'GEL', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/tablet-51-0/800/600','https://picsum.photos/seed/tablet-51-1/800/600','https://picsum.photos/seed/tablet-51-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 165);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8d636a4f-e945-4f3e-b2d7-45a60aada16a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota C-HR 2009', 'Toyota C-HR, 2009 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 25,338 კმ.
აღჭურვილობა: უკანა კამერა, პანორამული ჭერი, პარკინგ სენსორები, კრუიზ კონტროლი.', 54729, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-147-0/800/600','https://picsum.photos/seed/car-147-1/800/600','https://picsum.photos/seed/car-147-2/800/600']::text[], '{"year": 2009, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 25338, "color": "ნაცრისფერი"}'::jsonb, 345);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8d13d6b5-51e8-448f-9bf8-f035d0eabeea', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 64GB', 'Apple iPhone 15, მეხსიერება: 64GB, ფერი: ლურჯი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1770, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-115-0/800/600','https://picsum.photos/seed/phone-115-1/800/600','https://picsum.photos/seed/phone-115-2/800/600']::text[], '{"storage": "64GB", "color": "ლურჯი", "brand": "Apple iPhone"}'::jsonb, 224);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('af5b9164-3ab5-43c8-9662-0463d51ae097', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — ლურჯი', 'JBL Tune 770NC, ფერი: ლურჯი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 303, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/headphone-0-0/800/600','https://picsum.photos/seed/headphone-0-1/800/600','https://picsum.photos/seed/headphone-0-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 168);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f7ab6381-cfd8-4b14-b6f5-c7470878bfa1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 175 კვ.მ — ქუთაისი ცენტრი', '4-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 175 კვადრატული მეტრი.
სართული: 19/29.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 133350, 'USD', 'fair', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-15-0/800/600','https://picsum.photos/seed/apartment-15-1/800/600','https://picsum.photos/seed/apartment-15-2/800/600']::text[], '{"sqm": 175, "floor": 19, "total_floors": 29, "rooms": "4-ოთახიანი", "price_per_sqm": 762}'::jsonb, 459);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bd511884-f1c4-4d0c-84fc-4dfb4d3d3df9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 193 კვ.მ — ნაძალადევი', '4-ოთახიანი ბინა ნაძალადევი-ში, 193 კვადრატული მეტრი.
სართული: 15/20.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 234109, 'USD', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-18-0/800/600','https://picsum.photos/seed/apartment-18-1/800/600','https://picsum.photos/seed/apartment-18-2/800/600']::text[], '{"sqm": 193, "floor": 15, "total_floors": 20, "rooms": "4-ოთახიანი", "price_per_sqm": 1213}'::jsonb, 406);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9117ab12-a7a0-4006-b51f-def0eb3e6d21', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 12 512GB', 'Apple iPhone 12, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 889, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-16-0/800/600','https://picsum.photos/seed/phone-16-1/800/600','https://picsum.photos/seed/phone-16-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "Apple iPhone"}'::jsonb, 53);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0f0d30ff-3d2b-4bbc-9423-1997ef714bb1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 256GB', 'Huawei P60 Pro, მეხსიერება: 256GB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2759, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-34-0/800/600','https://picsum.photos/seed/phone-34-1/800/600','https://picsum.photos/seed/phone-34-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "Huawei"}'::jsonb, 326);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9884fa8d-c8e8-4d23-9d03-28bc708ad7c4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q7 2023', 'Audi Q7, 2023 წლის გამოშვება.
ფერი: შავი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 42,338 კმ.
აღჭურვილობა: ნავიგაცია, ხის სალონი, კრუიზ კონტროლი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 45194, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-183-0/800/600','https://picsum.photos/seed/car-183-1/800/600','https://picsum.photos/seed/car-183-2/800/600']::text[], '{"year": 2023, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 42338, "color": "შავი"}'::jsonb, 223);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('21b35d51-6e06-4f1e-b464-27142e484500', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 128GB', 'Google Pixel 7a, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 1714, 'GEL', 'new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-161-0/800/600','https://picsum.photos/seed/phone-161-1/800/600','https://picsum.photos/seed/phone-161-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 375);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('58d3b2bf-fc40-4f29-9b4f-59e112c61caf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1562 კვ.მ — კოჯორი', 'მიწის ნაკვეთი კოჯორი-ში, 1562 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 13782, 'USD', 'good', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/land-37-0/800/600','https://picsum.photos/seed/land-37-1/800/600','https://picsum.photos/seed/land-37-2/800/600']::text[], '{"sqm": 1562, "purpose": "საცხოვრებელი"}'::jsonb, 435);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f486c856-ff42-4fd7-92a8-c518b81fceb2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1727 კვ.მ — ნატახტარი', 'მიწის ნაკვეთი ნატახტარი-ში, 1727 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ხედი მთებზე, წყაროს წყალი ახლოს.', 26783, 'USD', 'good', 'active', 'ნატახტარი', ARRAY['https://picsum.photos/seed/land-6-0/800/600','https://picsum.photos/seed/land-6-1/800/600','https://picsum.photos/seed/land-6-2/800/600']::text[], '{"sqm": 1727, "purpose": "კომერციული"}'::jsonb, 294);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('65967b01-5da9-43fa-91b2-ecec4ae466f4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 1TB', 'Apple iPhone 15, მეხსიერება: 1TB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 2217, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-91-0/800/600','https://picsum.photos/seed/phone-91-1/800/600','https://picsum.photos/seed/phone-91-2/800/600']::text[], '{"storage": "1TB", "color": "იისფერი", "brand": "Apple iPhone"}'::jsonb, 65);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('aaee1225-f6b2-4950-aa9a-2adcd6378ce0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Sonata 2023', 'Hyundai Sonata, 2023 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 44,111 კმ.
აღჭურვილობა: უკანა კამერა, LED ფარები, კონდიციონერი, ტყავის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 45242, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-5-0/800/600','https://picsum.photos/seed/car-5-1/800/600','https://picsum.photos/seed/car-5-2/800/600']::text[], '{"year": 2023, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 44111, "color": "წითელი"}'::jsonb, 267);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('75f9ead5-0c84-462a-ab60-e698707a5d4f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Polo 2015', 'Volkswagen Polo, 2015 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 265,870 კმ.
აღჭურვილობა: კრუიზ კონტროლი, LED ფარები, მულტიმედია სისტემა, ნავიგაცია, ხის სალონი, პარკინგ სენსორები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 78330, 'GEL', 'fair', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/car-22-0/800/600','https://picsum.photos/seed/car-22-1/800/600','https://picsum.photos/seed/car-22-2/800/600']::text[], '{"year": 2015, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 265870, "color": "მწვანე"}'::jsonb, 225);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b4f154bc-2c00-4877-8f52-696f0bf6182d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 8GB/256GB SSD', 'HP Pavilion 15.
პროცესორი: AMD Ryzen 9, ოპერატიული: 8GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1521, 'GEL', 'like_new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/laptop-79-0/800/600','https://picsum.photos/seed/laptop-79-1/800/600','https://picsum.photos/seed/laptop-79-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "8GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 103);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f0121dbe-9717-495e-8405-9fe983bbccb5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 64GB', 'Huawei Nova 12, მეხსიერება: 64GB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1217, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/phone-119-0/800/600','https://picsum.photos/seed/phone-119-1/800/600','https://picsum.photos/seed/phone-119-2/800/600']::text[], '{"storage": "64GB", "color": "იისფერი", "brand": "Huawei"}'::jsonb, 355);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4244ab3e-3cdd-4fd6-8ebd-fc612beff18c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLE 350 2016', 'Mercedes-Benz GLE 350, 2016 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 109,717 კმ.
აღჭურვილობა: პარკინგ სენსორები, ტყავის სალონი, ხის სალონი, უკანა კამერა, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 15505, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-40-0/800/600','https://picsum.photos/seed/car-40-1/800/600','https://picsum.photos/seed/car-40-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 109717, "color": "ნაცრისფერი"}'::jsonb, 314);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('66e2ee73-2e9c-4955-8a3d-5353978fdc24', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 31 კვ.მ — ბათუმი ცენტრი', 'სტუდიო ბინა ბათუმი ცენტრი-ში, 31 კვადრატული მეტრი.
სართული: 9/10.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 60636, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-65-0/800/600','https://picsum.photos/seed/apartment-65-1/800/600','https://picsum.photos/seed/apartment-65-2/800/600']::text[], '{"sqm": 31, "floor": 9, "total_floors": 10, "rooms": "სტუდიო", "price_per_sqm": 1956}'::jsonb, 101);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0331beb7-287d-4c14-8ca2-9f41725df4b6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R8', 'Canon EOS R8.
შატერის რაოდენობა: 49,012. კარგ მდგომარეობაში, სენსორი სუფთა.
ჩანთა და დამატებითი ბატარეა მოყვება.', 4449, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/camera-15-0/800/600','https://picsum.photos/seed/camera-15-1/800/600','https://picsum.photos/seed/camera-15-2/800/600']::text[], '{"shutter_count": 49012, "type": "camera"}'::jsonb, 262);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ac627b15-a20a-4e0d-bdf4-1a0eed5c775c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 47 კვ.მ — ნაძალადევი', '1-ოთახიანი ბინა ნაძალადევი-ში, 47 კვადრატული მეტრი.
სართული: 19/20.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 66082, 'USD', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-75-0/800/600','https://picsum.photos/seed/apartment-75-1/800/600','https://picsum.photos/seed/apartment-75-2/800/600']::text[], '{"sqm": 47, "floor": 19, "total_floors": 20, "rooms": "1-ოთახიანი", "price_per_sqm": 1406}'::jsonb, 344);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e51d4348-84cd-4b24-a5b1-6f33831e10fb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 12,065. კარგ მდგომარეობაში, სენსორი სუფთა.
კიტის ობიექტივით: 28-70mm.', 4102, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/camera-49-0/800/600','https://picsum.photos/seed/camera-49-1/800/600','https://picsum.photos/seed/camera-49-2/800/600']::text[], '{"shutter_count": 12065, "type": "camera"}'::jsonb, 357);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9daf855a-ff22-45c7-8674-ae08dbc3ead8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 769 კვ.მ — კახეთი, წინანდალი', 'მიწის ნაკვეთი კახეთი, წინანდალი-ში, 769 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 10681, 'USD', 'good', 'active', 'კახეთი, წინანდალი', ARRAY['https://picsum.photos/seed/land-15-0/800/600','https://picsum.photos/seed/land-15-1/800/600','https://picsum.photos/seed/land-15-2/800/600']::text[], '{"sqm": 769, "purpose": "საცხოვრებელი"}'::jsonb, 143);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('16b461c4-6a33-465e-8f95-2f60401dc96b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 512GB', 'Samsung Galaxy Tab S9, მეხსიერება: 512GB.
ახალი, დალუქული ყუთით.
Wi-Fi ვერსია.', 2946, 'GEL', 'new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/tablet-33-0/800/600','https://picsum.photos/seed/tablet-33-1/800/600','https://picsum.photos/seed/tablet-33-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 249);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a5708b2e-6225-4be3-a409-f7d10e0fc569', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 1TB', 'Google Pixel 8, მეხსიერება: 1TB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1936, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-74-0/800/600','https://picsum.photos/seed/phone-74-1/800/600','https://picsum.photos/seed/phone-74-2/800/600']::text[], '{"storage": "1TB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 120);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8b17a16c-52d7-4000-849f-09354dc0ba80', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 12 1TB', 'Apple iPhone 12, მეხსიერება: 1TB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1236, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-176-0/800/600','https://picsum.photos/seed/phone-176-1/800/600','https://picsum.photos/seed/phone-176-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "Apple iPhone"}'::jsonb, 37);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('47233841-6ed4-482c-811b-357e424b5608', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus UX 200 2022', 'Lexus UX 200, 2022 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 150,929 კმ.
აღჭურვილობა: პანორამული ჭერი, მულტიმედია სისტემა, LED ფარები, პარკინგ სენსორები, ნავიგაცია, კრუიზ კონტროლი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 178443, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-46-0/800/600','https://picsum.photos/seed/car-46-1/800/600','https://picsum.photos/seed/car-46-2/800/600']::text[], '{"year": 2022, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 150929, "color": "ლურჯი"}'::jsonb, 407);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a3f4bce3-bc27-47ba-aac9-7d152f996700', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 31,172. კორპუსზე მცირე კოსმეტიკური ცვეთა.
მეხსიერების ბარათი 128GB მოყვება.', 3732, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/camera-33-0/800/600','https://picsum.photos/seed/camera-33-1/800/600','https://picsum.photos/seed/camera-33-2/800/600']::text[], '{"shutter_count": 31172, "type": "camera"}'::jsonb, 243);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3da32ce5-cd27-4129-ac47-f644dbf9668b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Sportage 2017', 'Kia Sportage, 2017 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 262,681 კმ.
აღჭურვილობა: ტყავის სალონი, პანორამული ჭერი, ნავიგაცია, უკანა კამერა, გამათბობელი სავარძლები, ხის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 22540, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-135-0/800/600','https://picsum.photos/seed/car-135-1/800/600','https://picsum.photos/seed/car-135-2/800/600']::text[], '{"year": 2017, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 262681, "color": "ვერცხლისფერი"}'::jsonb, 102);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cb5fe9c5-8c0c-4327-9fa3-a59dde946786', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 8GB/512GB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: Apple M1, ოპერატიული: 8GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5078, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-136-0/800/600','https://picsum.photos/seed/laptop-136-1/800/600','https://picsum.photos/seed/laptop-136-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "8GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 389);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c096c83d-96d5-4ccb-90b4-183a6ed58985', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Legacy 2016', 'Subaru Legacy, 2016 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 267,345 კმ.
აღჭურვილობა: ტყავის სალონი, ნავიგაცია, მულტიმედია სისტემა, პარკინგ სენსორები, პანორამული ჭერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 117552, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-62-0/800/600','https://picsum.photos/seed/car-62-1/800/600','https://picsum.photos/seed/car-62-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 267345, "color": "მწვანე"}'::jsonb, 61);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('be52e238-0265-4fcf-a414-61a5a42ec75a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 64GB', 'OnePlus 12, მეხსიერება: 64GB, ფერი: მწვანე.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 3069, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-3-0/800/600','https://picsum.photos/seed/phone-3-1/800/600','https://picsum.photos/seed/phone-3-2/800/600']::text[], '{"storage": "64GB", "color": "მწვანე", "brand": "OnePlus"}'::jsonb, 183);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0eaf6e5b-424f-4fea-b17f-d7b62fc3c2ed', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 355 კვ.მ, მიწა 1065 კვ.მ — წყნეთი', '3-სართულიანი სახლი წყნეთი-ში.
საცხოვრებელი ფართი: 355 კვ.მ, მიწის ნაკვეთი: 1065 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 182394, 'USD', 'new', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/house-34-0/800/600','https://picsum.photos/seed/house-34-1/800/600','https://picsum.photos/seed/house-34-2/800/600']::text[], '{"sqm_house": 355, "sqm_land": 1065, "floors": 3}'::jsonb, 78);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c1536ff8-e26a-4041-ae3f-965a4aee8d63', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 64GB', 'Xiaomi Pad 6, მეხსიერება: 64GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
კლავიატურის ქეისი მოყვება.', 811, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/tablet-13-0/800/600','https://picsum.photos/seed/tablet-13-1/800/600','https://picsum.photos/seed/tablet-13-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 500);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a3e6e2fe-2320-453c-8979-12ea6926af67', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 512GB', 'Samsung Galaxy Tab S9, მეხსიერება: 512GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi + Cellular ვერსია.', 1545, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/tablet-47-0/800/600','https://picsum.photos/seed/tablet-47-1/800/600','https://picsum.photos/seed/tablet-47-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 243);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fe6374f0-9156-4770-9174-407ef7764994', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z30', 'Nikon Z30.
თითქმის ახალი, შატერის რაოდენობა: 3,898.
კიტის ობიექტივით: 28-70mm.', 1812, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/camera-12-0/800/600','https://picsum.photos/seed/camera-12-1/800/600','https://picsum.photos/seed/camera-12-2/800/600']::text[], '{"shutter_count": 3898, "type": "camera"}'::jsonb, 496);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('40cf64c3-c64d-41df-ac2b-ef70c57d9088', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 40 კვ.მ — ვერა', '1-ოთახიანი ბინა ვერა-ში, 40 კვადრატული მეტრი.
სართული: 12/18.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 129480, 'USD', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-81-0/800/600','https://picsum.photos/seed/apartment-81-1/800/600','https://picsum.photos/seed/apartment-81-2/800/600']::text[], '{"sqm": 40, "floor": 12, "total_floors": 18, "rooms": "1-ოთახიანი", "price_per_sqm": 3237}'::jsonb, 343);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0f3a15c7-49af-4b2a-96c8-9ff4e6cc85ab', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW X3 2019', 'BMW X3, 2019 წლის გამოშვება.
ფერი: შავი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 64,102 კმ.
აღჭურვილობა: ხის სალონი, კონდიციონერი, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 205262, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-130-0/800/600','https://picsum.photos/seed/car-130-1/800/600','https://picsum.photos/seed/car-130-2/800/600']::text[], '{"year": 2019, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 64102, "color": "შავი"}'::jsonb, 217);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c6cf2f64-a8ba-461a-8b30-c80c9e73f2a6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 64GB/2TB SSD', 'Dell Inspiron 15.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1887, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-158-0/800/600','https://picsum.photos/seed/laptop-158-1/800/600','https://picsum.photos/seed/laptop-158-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 15);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('81daca92-921c-4e2c-8af9-2c47c8475809', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 128GB', 'Huawei Mate 60, მეხსიერება: 128GB, ფერი: ოქროსფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 3654, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-127-0/800/600','https://picsum.photos/seed/phone-127-1/800/600','https://picsum.photos/seed/phone-127-2/800/600']::text[], '{"storage": "128GB", "color": "ოქროსფერი", "brand": "Huawei"}'::jsonb, 242);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7b4de6cb-fe17-45bd-b00d-6327cc4186ac', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 207 კვ.მ, მიწა 2784 კვ.მ — საგურამო', '1-სართულიანი სახლი საგურამო-ში.
საცხოვრებელი ფართი: 207 კვ.მ, მიწის ნაკვეთი: 2784 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 93888, 'USD', 'good', 'active', 'საგურამო', ARRAY['https://picsum.photos/seed/house-59-0/800/600','https://picsum.photos/seed/house-59-1/800/600','https://picsum.photos/seed/house-59-2/800/600']::text[], '{"sqm_house": 207, "sqm_land": 2784, "floors": 1}'::jsonb, 180);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dc5137ce-dc46-48ab-b478-cc66448c497e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 Max 16", 64GB/256GB SSD', 'Apple MacBook Pro M3 Max 16".
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 8724, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-135-0/800/600','https://picsum.photos/seed/laptop-135-1/800/600','https://picsum.photos/seed/laptop-135-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 468);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('23e2ae97-7bd5-41d4-8d77-ae3f6a377f25', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R8', 'Canon EOS R8.
შატერის რაოდენობა: 29,119. ყუთი და დამტენი მოყვება.
მეხსიერების ბარათი 128GB მოყვება.', 2118, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/camera-9-0/800/600','https://picsum.photos/seed/camera-9-1/800/600','https://picsum.photos/seed/camera-9-2/800/600']::text[], '{"shutter_count": 29119, "type": "camera"}'::jsonb, 18);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('69aca908-804b-4e47-97d7-6853eb671837', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 296 კვ.მ, მიწა 2575 კვ.მ — დიღომი', '1-სართულიანი სახლი დიღომი-ში.
საცხოვრებელი ფართი: 296 კვ.მ, მიწის ნაკვეთი: 2575 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 110423, 'USD', 'good', 'active', 'დიღომი', ARRAY['https://picsum.photos/seed/house-40-0/800/600','https://picsum.photos/seed/house-40-1/800/600','https://picsum.photos/seed/house-40-2/800/600']::text[], '{"sqm_house": 296, "sqm_land": 2575, "floors": 1}'::jsonb, 92);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('00a6043b-3ee8-489e-b862-8ea5773e6790', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: ოქროსფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1063, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-7-0/800/600','https://picsum.photos/seed/phone-7-1/800/600','https://picsum.photos/seed/phone-7-2/800/600']::text[], '{"storage": "512GB", "color": "ოქროსფერი", "brand": "Google Pixel"}'::jsonb, 452);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('614e9aa7-d002-4dae-a992-8b984b7c0448', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 277 კვ.მ, მიწა 305 კვ.მ — ოქროყანა', '2-სართულიანი სახლი ოქროყანა-ში.
საცხოვრებელი ფართი: 277 კვ.მ, მიწის ნაკვეთი: 305 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 473165, 'USD', 'fair', 'active', 'ოქროყანა', ARRAY['https://picsum.photos/seed/house-1-0/800/600','https://picsum.photos/seed/house-1-1/800/600','https://picsum.photos/seed/house-1-2/800/600']::text[], '{"sqm_house": 277, "sqm_land": 305, "floors": 2}'::jsonb, 347);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('44a72b79-6e59-4c7d-86cf-6c3014c4f148', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort Ultra — შავი', 'Bose QuietComfort Ultra, ფერი: შავი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 950, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/headphone-12-0/800/600','https://picsum.photos/seed/headphone-12-1/800/600','https://picsum.photos/seed/headphone-12-2/800/600']::text[], '{"color": "შავი", "type": "headphones"}'::jsonb, 45);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6e2b40f8-33e9-4dec-ab97-e2842cf6b2c1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy Z Fold5 64GB', 'Samsung Galaxy Z Fold5, მეხსიერება: 64GB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3843, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-181-0/800/600','https://picsum.photos/seed/phone-181-1/800/600','https://picsum.photos/seed/phone-181-2/800/600']::text[], '{"storage": "64GB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 379);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('96ce61e6-2add-4bc1-9df7-68157debfb56', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 64GB/1TB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3014, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-113-0/800/600','https://picsum.photos/seed/laptop-113-1/800/600','https://picsum.photos/seed/laptop-113-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "1TB SSD", "brand": "Apple MacBook"}'::jsonb, 402);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ab04b0d1-e2d5-45b4-990c-86282e4e65b1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sennheiser Momentum 4 — მწვანე', 'Sennheiser Momentum 4, ფერი: მწვანე.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 1188, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/headphone-61-0/800/600','https://picsum.photos/seed/headphone-61-1/800/600','https://picsum.photos/seed/headphone-61-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 233);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ce9ddfb4-e302-44c1-90f8-6f4d0b1c0c45', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 64GB', 'OnePlus Nord 3, მეხსიერება: 64GB, ფერი: შავი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1090, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/phone-123-0/800/600','https://picsum.photos/seed/phone-123-1/800/600','https://picsum.photos/seed/phone-123-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "OnePlus"}'::jsonb, 323);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('71801212-a785-4b5c-a3e0-0d2037b08250', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Nitro 5, 64GB/256GB SSD', 'Acer Nitro 5.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3429, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-99-0/800/600','https://picsum.photos/seed/laptop-99-1/800/600','https://picsum.photos/seed/laptop-99-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 442);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b5787eb6-8c11-4b97-8d20-e82b1260622d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 8GB/256GB SSD', 'Acer Aspire 5.
პროცესორი: Intel Core i5, ოპერატიული: 8GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 1398, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-147-0/800/600','https://picsum.photos/seed/laptop-147-1/800/600','https://picsum.photos/seed/laptop-147-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "8GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 220);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e064d3c8-bb94-47d5-b58f-dae0970683ae', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 314 კვ.მ, მიწა 911 კვ.მ — ბაგები', '1-სართულიანი სახლი ბაგები-ში.
საცხოვრებელი ფართი: 314 კვ.მ, მიწის ნაკვეთი: 911 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 266285, 'USD', 'like_new', 'active', 'ბაგები', ARRAY['https://picsum.photos/seed/house-43-0/800/600','https://picsum.photos/seed/house-43-1/800/600','https://picsum.photos/seed/house-43-2/800/600']::text[], '{"sqm_house": 314, "sqm_land": 911, "floors": 1}'::jsonb, 13);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('11509cf9-80d5-444f-b77b-89f6dbedb422', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 128GB', 'Lenovo Tab P12 Pro, მეხსიერება: 128GB.
მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.
Wi-Fi ვერსია.', 1054, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/tablet-52-0/800/600','https://picsum.photos/seed/tablet-52-1/800/600','https://picsum.photos/seed/tablet-52-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 296);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('194384ec-fbb3-4a18-9f06-f5698247cdca', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 172 კვ.მ, მიწა 220 კვ.მ — დიღომი', '3-სართულიანი სახლი დიღომი-ში.
საცხოვრებელი ფართი: 172 კვ.მ, მიწის ნაკვეთი: 220 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 276392, 'USD', 'fair', 'active', 'დიღომი', ARRAY['https://picsum.photos/seed/house-26-0/800/600','https://picsum.photos/seed/house-26-1/800/600','https://picsum.photos/seed/house-26-2/800/600']::text[], '{"sqm_house": 172, "sqm_land": 220, "floors": 3}'::jsonb, 71);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a47d9759-42da-4d51-92d0-6d1af8810691', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 187 კვ.მ, მიწა 1001 კვ.მ — ბათუმი გონიო', '1-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 187 კვ.მ, მიწის ნაკვეთი: 1001 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 202927, 'USD', 'fair', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-19-0/800/600','https://picsum.photos/seed/house-19-1/800/600','https://picsum.photos/seed/house-19-2/800/600']::text[], '{"sqm_house": 187, "sqm_land": 1001, "floors": 1}'::jsonb, 9);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f92a763b-6646-41ed-b073-931b2ebfa43b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia K5 2023', 'Kia K5, 2023 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 122,340 კმ.
აღჭურვილობა: კრუიზ კონტროლი, პარკინგ სენსორები, ტყავის სალონი, პანორამული ჭერი, ხის სალონი, კონდიციონერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 31400, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-11-0/800/600','https://picsum.photos/seed/car-11-1/800/600','https://picsum.photos/seed/car-11-2/800/600']::text[], '{"year": 2023, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 122340, "color": "წითელი"}'::jsonb, 91);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9b5786cc-7c51-481c-a74e-dc7893d7050c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ZenBook 14, 64GB/512GB SSD', 'ASUS ZenBook 14.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 3417, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-88-0/800/600','https://picsum.photos/seed/laptop-88-1/800/600','https://picsum.photos/seed/laptop-88-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 390);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('48c7dda6-7729-498d-98d5-89065ccac701', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony ZV-E10', 'Sony ZV-E10.
ახალი, დალუქული, ოფიციალური გარანტია.
ჩანთა და დამატებითი ბატარეა მოყვება.', 1884, 'GEL', 'new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/camera-29-0/800/600','https://picsum.photos/seed/camera-29-1/800/600','https://picsum.photos/seed/camera-29-2/800/600']::text[], '{"shutter_count": 8510, "type": "camera"}'::jsonb, 164);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('69cdec5d-88e5-4503-a2d7-5dfec33983f2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 64GB', 'OnePlus Nord CE 3, მეხსიერება: 64GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 1025, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-8-0/800/600','https://picsum.photos/seed/phone-8-1/800/600','https://picsum.photos/seed/phone-8-2/800/600']::text[], '{"storage": "64GB", "color": "მწვანე", "brand": "OnePlus"}'::jsonb, 159);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f8bff18f-2eb5-4b97-858b-b01423f01d81', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Nothing Ear (2) — მწვანე', 'Nothing Ear (2), ფერი: მწვანე.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 306, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/headphone-19-0/800/600','https://picsum.photos/seed/headphone-19-1/800/600','https://picsum.photos/seed/headphone-19-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 299);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b8261b05-b7df-43e9-871b-c964c7498c9a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus NX 300 2019', 'Lexus NX 300, 2019 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 782 კმ.
აღჭურვილობა: პანორამული ჭერი, კონდიციონერი.', 216331, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/car-177-0/800/600','https://picsum.photos/seed/car-177-1/800/600','https://picsum.photos/seed/car-177-2/800/600']::text[], '{"year": 2019, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 782, "color": "ლურჯი"}'::jsonb, 441);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0c802e34-ef7f-4c4b-8a23-ecc7a77cb904', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12R 128GB', 'OnePlus 12R, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2297, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-30-0/800/600','https://picsum.photos/seed/phone-30-1/800/600','https://picsum.photos/seed/phone-30-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "OnePlus"}'::jsonb, 155);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d52fda75-dc59-4823-86b8-004d29100cc3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 256GB', 'Huawei P60 Pro, მეხსიერება: 256GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 3113, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-68-0/800/600','https://picsum.photos/seed/phone-68-1/800/600','https://picsum.photos/seed/phone-68-2/800/600']::text[], '{"storage": "256GB", "color": "მწვანე", "brand": "Huawei"}'::jsonb, 316);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('01f980f2-c06b-4751-9e48-e1b90ab0306f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad mini 6 128GB', 'Apple iPad mini 6, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi + Cellular ვერსია.', 1316, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/tablet-16-0/800/600','https://picsum.photos/seed/tablet-16-1/800/600','https://picsum.photos/seed/tablet-16-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 403);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bb143f58-0c78-403b-96b4-114550a7226b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 128GB', 'Lenovo Tab P12 Pro, მეხსიერება: 128GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi ვერსია.', 2048, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-12-0/800/600','https://picsum.photos/seed/tablet-12-1/800/600','https://picsum.photos/seed/tablet-12-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 332);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('82d0c722-52f3-458d-acd7-89ab8e668754', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 16GB/1TB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2353, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-173-0/800/600','https://picsum.photos/seed/laptop-173-1/800/600','https://picsum.photos/seed/laptop-173-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "1TB SSD", "brand": "Lenovo"}'::jsonb, 8);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9d52c753-4efe-4177-931b-0c704dfe3445', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 39 კვ.მ — ვაკე', 'სტუდიო ბინა ვაკე-ში, 39 კვადრატული მეტრი.
სართული: 17/23.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მშვიდი უბანი, ბაღებთან ახლოს.', 144807, 'USD', 'new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-88-0/800/600','https://picsum.photos/seed/apartment-88-1/800/600','https://picsum.photos/seed/apartment-88-2/800/600']::text[], '{"sqm": 39, "floor": 17, "total_floors": 23, "rooms": "სტუდიო", "price_per_sqm": 3713}'::jsonb, 210);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('42a62341-8699-4ef4-b8bc-83fc3a975c34', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 45 კვ.მ — ნაძალადევი', 'სტუდიო ბინა ნაძალადევი-ში, 45 კვადრატული მეტრი.
სართული: 11/17.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 36450, 'USD', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-55-0/800/600','https://picsum.photos/seed/apartment-55-1/800/600','https://picsum.photos/seed/apartment-55-2/800/600']::text[], '{"sqm": 45, "floor": 11, "total_floors": 17, "rooms": "სტუდიო", "price_per_sqm": 810}'::jsonb, 406);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('73554851-c33f-4146-8239-9f34b2ecbf1f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 325 კვ.მ, მიწა 1615 კვ.მ — კოჯორი', '2-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 325 კვ.მ, მიწის ნაკვეთი: 1615 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 128150, 'USD', 'like_new', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-32-0/800/600','https://picsum.photos/seed/house-32-1/800/600','https://picsum.photos/seed/house-32-2/800/600']::text[], '{"sqm_house": 325, "sqm_land": 1615, "floors": 2}'::jsonb, 411);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('74658c4c-2c9c-4ddb-8755-6350e467b152', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 15, 64GB/1TB SSD', 'Dell XPS 15.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4512, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-66-0/800/600','https://picsum.photos/seed/laptop-66-1/800/600','https://picsum.photos/seed/laptop-66-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 326);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f6a624bd-a03f-40f3-9ce0-50f33506213d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A8 2013', 'Audi A8, 2013 წლის გამოშვება.
ფერი: მწვანე, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 270,782 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, კრუიზ კონტროლი, ხის სალონი, პარკინგ სენსორები, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 93162, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-197-0/800/600','https://picsum.photos/seed/car-197-1/800/600','https://picsum.photos/seed/car-197-2/800/600']::text[], '{"year": 2013, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 270782, "color": "მწვანე"}'::jsonb, 356);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('901538f7-1e83-4984-abf6-bb81427e64b1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 122 კვ.მ, მიწა 2957 კვ.მ — კოჯორი', '3-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 122 კვ.მ, მიწის ნაკვეთი: 2957 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 156257, 'USD', 'fair', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-45-0/800/600','https://picsum.photos/seed/house-45-1/800/600','https://picsum.photos/seed/house-45-2/800/600']::text[], '{"sqm_house": 122, "sqm_land": 2957, "floors": 3}'::jsonb, 192);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('83ed065e-a313-4e8f-9357-04525700f3b8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 133 კვ.მ, მიწა 1344 კვ.მ — საგურამო', '1-სართულიანი სახლი საგურამო-ში.
საცხოვრებელი ფართი: 133 კვ.მ, მიწის ნაკვეთი: 1344 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 137312, 'USD', 'good', 'active', 'საგურამო', ARRAY['https://picsum.photos/seed/house-13-0/800/600','https://picsum.photos/seed/house-13-1/800/600','https://picsum.photos/seed/house-13-2/800/600']::text[], '{"sqm_house": 133, "sqm_land": 1344, "floors": 1}'::jsonb, 355);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d6020b96-4738-45c7-a4ba-009eb5be4394', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad T14s, 32GB/256GB SSD', 'Lenovo ThinkPad T14s.
პროცესორი: AMD Ryzen 5, ოპერატიული: 32GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3255, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-9-0/800/600','https://picsum.photos/seed/laptop-9-1/800/600','https://picsum.photos/seed/laptop-9-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "32GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 394);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9be6fe33-6177-45c8-9464-e18afb317310', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Carnival 2016', 'Kia Carnival, 2016 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 76,536 კმ.
აღჭურვილობა: კონდიციონერი, ტყავის სალონი, კრუიზ კონტროლი, პარკინგ სენსორები, გამათბობელი სავარძლები, პანორამული ჭერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 118285, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-140-0/800/600','https://picsum.photos/seed/car-140-1/800/600','https://picsum.photos/seed/car-140-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 76536, "color": "მწვანე"}'::jsonb, 175);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9bf41bc9-8abc-4523-8073-d284f98bdf8f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R6 Mark II', 'Canon EOS R6 Mark II.
შატერის რაოდენობა: 68,950. პროფესიონალურად მოვლილი.
კიტის ობიექტივით: 28-70mm.', 6850, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/camera-43-0/800/600','https://picsum.photos/seed/camera-43-1/800/600','https://picsum.photos/seed/camera-43-2/800/600']::text[], '{"shutter_count": 68950, "type": "camera"}'::jsonb, 452);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f59d8dd3-c2a0-461c-9198-ab0d05b72ab8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2013', 'Lexus ES 250, 2013 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 268,190 კმ.
აღჭურვილობა: LED ფარები, კრუიზ კონტროლი, ტყავის სალონი, პარკინგ სენსორები, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 99560, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-98-0/800/600','https://picsum.photos/seed/car-98-1/800/600','https://picsum.photos/seed/car-98-2/800/600']::text[], '{"year": 2013, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 268190, "color": "ლურჯი"}'::jsonb, 429);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3104967a-898e-4c9f-8699-a99ecc4ccfc4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Tiguan 2017', 'Volkswagen Tiguan, 2017 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 153,230 კმ.
აღჭურვილობა: მულტიმედია სისტემა, გამათბობელი სავარძლები, ტყავის სალონი, კრუიზ კონტროლი, ნავიგაცია, უკანა კამერა.', 60449, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/car-0-0/800/600','https://picsum.photos/seed/car-0-1/800/600','https://picsum.photos/seed/car-0-2/800/600']::text[], '{"year": 2017, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 153230, "color": "მწვანე"}'::jsonb, 99);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8f086db8-66af-493e-b90a-0d06d75e529e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 147 კვ.მ — გლდანი', '4-ოთახიანი ბინა გლდანი-ში, 147 კვადრატული მეტრი.
სართული: 2/3.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 195216, 'USD', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-60-0/800/600','https://picsum.photos/seed/apartment-60-1/800/600','https://picsum.photos/seed/apartment-60-2/800/600']::text[], '{"sqm": 147, "floor": 2, "total_floors": 3, "rooms": "4-ოთახიანი", "price_per_sqm": 1328}'::jsonb, 223);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('070ec63d-a511-4937-938a-37ba09231305', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1224 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 1224 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ხედი მთებზე, წყაროს წყალი ახლოს.', 4564, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-0-0/800/600','https://picsum.photos/seed/land-0-1/800/600','https://picsum.photos/seed/land-0-2/800/600']::text[], '{"sqm": 1224, "purpose": "კომერციული"}'::jsonb, 430);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('34aa86ae-8eb5-4fc4-aa03-6f9adc522819', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort Ultra — ლურჯი', 'Bose QuietComfort Ultra, ფერი: ლურჯი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 1274, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-20-0/800/600','https://picsum.photos/seed/headphone-20-1/800/600','https://picsum.photos/seed/headphone-20-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 457);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1fd67a11-aecd-4d29-9b66-46d6f4f34f5b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Carnival 2013', 'Kia Carnival, 2013 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 239,920 კმ.
აღჭურვილობა: ხის სალონი, მულტიმედია სისტემა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 10654, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-52-0/800/600','https://picsum.photos/seed/car-52-1/800/600','https://picsum.photos/seed/car-52-2/800/600']::text[], '{"year": 2013, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 239920, "color": "ლურჯი"}'::jsonb, 391);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('eddc24cb-1516-4b3d-8e22-37bbb36f404b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — ვერცხლისფერი', 'Apple AirPods Pro 2, ფერი: ვერცხლისფერი.
ახალი, არ გახსნილა, სრული გარანტია.', 858, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/headphone-31-0/800/600','https://picsum.photos/seed/headphone-31-1/800/600','https://picsum.photos/seed/headphone-31-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 152);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e1d3842f-351c-4d66-ad3d-223d7a0d190e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 64GB/1TB SSD', 'ASUS ProArt StudioBook.
პროცესორი: Intel Core i7, ოპერატიული: 64GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 3812, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-177-0/800/600','https://picsum.photos/seed/laptop-177-1/800/600','https://picsum.photos/seed/laptop-177-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "64GB", "ssd": "1TB SSD", "brand": "ASUS"}'::jsonb, 241);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('32f28934-bc53-4cce-a074-5e90b97c5be2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — შავი', 'JBL Tune 770NC, ფერი: შავი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 247, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/headphone-56-0/800/600','https://picsum.photos/seed/headphone-56-1/800/600','https://picsum.photos/seed/headphone-56-2/800/600']::text[], '{"color": "შავი", "type": "headphones"}'::jsonb, 181);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ce135b07-0bb5-4703-a80a-94ed4716ddc3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ZenBook 14, 64GB/2TB SSD', 'ASUS ZenBook 14.
პროცესორი: Intel Core i5, ოპერატიული: 64GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 2560, 'GEL', 'like_new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/laptop-122-0/800/600','https://picsum.photos/seed/laptop-122-1/800/600','https://picsum.photos/seed/laptop-122-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "64GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 258);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('49a4ae2f-7631-4671-97c9-dae3ffc8afff', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 256GB', 'Samsung Galaxy Tab S9, მეხსიერება: 256GB.
ახალი, დალუქული ყუთით.
Wi-Fi + Cellular ვერსია.', 3039, 'GEL', 'new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/tablet-29-0/800/600','https://picsum.photos/seed/tablet-29-1/800/600','https://picsum.photos/seed/tablet-29-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 337);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6127fc53-a5f4-4d3b-b833-d21ec1183471', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 512GB', 'Apple iPad Pro 11" M2, მეხსიერება: 512GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi + Cellular ვერსია.', 3143, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/tablet-38-0/800/600','https://picsum.photos/seed/tablet-38-1/800/600','https://picsum.photos/seed/tablet-38-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 321);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fe61e97f-4cdc-4088-87a0-4b10f50dac90', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad mini 6 128GB', 'Apple iPad mini 6, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
სტილუსი მოყვება.', 1770, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/tablet-22-0/800/600','https://picsum.photos/seed/tablet-22-1/800/600','https://picsum.photos/seed/tablet-22-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 431);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a926ceef-7975-48fa-b49f-e8749b81a1d5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 129 კვ.მ, მიწა 844 კვ.მ — კოჯორი', '1-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 129 კვ.მ, მიწის ნაკვეთი: 844 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 119935, 'USD', 'new', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-30-0/800/600','https://picsum.photos/seed/house-30-1/800/600','https://picsum.photos/seed/house-30-2/800/600']::text[], '{"sqm_house": 129, "sqm_land": 844, "floors": 1}'::jsonb, 487);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f0ff847e-86bc-4b32-88b4-0ced9da12b48', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 58 კვ.მ — ვერა', '2-ოთახიანი ბინა ვერა-ში, 58 კვადრატული მეტრი.
სართული: 16/26.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 224866, 'USD', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-71-0/800/600','https://picsum.photos/seed/apartment-71-1/800/600','https://picsum.photos/seed/apartment-71-2/800/600']::text[], '{"sqm": 58, "floor": 16, "total_floors": 26, "rooms": "2-ოთახიანი", "price_per_sqm": 3877}'::jsonb, 223);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('15e6e353-a3bb-45bd-852f-ed33cb9a0399', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort 45 — მწვანე', 'Bose QuietComfort 45, ფერი: მწვანე.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 658, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/headphone-27-0/800/600','https://picsum.photos/seed/headphone-27-1/800/600','https://picsum.photos/seed/headphone-27-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 176);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b0e1d79f-19fe-4333-b33b-b5fe5cc0a4da', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 39 კვ.მ — სოლოლაკი', 'სტუდიო ბინა სოლოლაკი-ში, 39 კვადრატული მეტრი.
სართული: 5/6.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მშვიდი უბანი, ბაღებთან ახლოს.', 103311, 'USD', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-6-0/800/600','https://picsum.photos/seed/apartment-6-1/800/600','https://picsum.photos/seed/apartment-6-2/800/600']::text[], '{"sqm": 39, "floor": 5, "total_floors": 6, "rooms": "სტუდიო", "price_per_sqm": 2649}'::jsonb, 127);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e5d46431-0b01-4000-9d88-de0023497865', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Arteon 2009', 'Volkswagen Arteon, 2009 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 237,480 კმ.
აღჭურვილობა: პანორამული ჭერი, კონდიციონერი, მულტიმედია სისტემა, ხის სალონი, უკანა კამერა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 55694, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-150-0/800/600','https://picsum.photos/seed/car-150-1/800/600','https://picsum.photos/seed/car-150-2/800/600']::text[], '{"year": 2009, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 237480, "color": "წითელი"}'::jsonb, 46);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('283f3a9d-5d21-430d-a4d8-41467fa7724d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 128GB', 'OnePlus 12, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1960, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-191-0/800/600','https://picsum.photos/seed/phone-191-1/800/600','https://picsum.photos/seed/phone-191-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "OnePlus"}'::jsonb, 315);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('36b514bb-9fcb-444c-ad4b-7598102864f8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Sportage 2014', 'Kia Sportage, 2014 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 187,474 კმ.
აღჭურვილობა: პარკინგ სენსორები, LED ფარები, ნავიგაცია, ხის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 82745, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-132-0/800/600','https://picsum.photos/seed/car-132-1/800/600','https://picsum.photos/seed/car-132-2/800/600']::text[], '{"year": 2014, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 187474, "color": "მწვანე"}'::jsonb, 352);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e64a1a38-c97c-47ac-88c4-b481a4444387', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 55 კვ.მ — ბათუმი ცენტრი', '1-ოთახიანი ბინა ბათუმი ცენტრი-ში, 55 კვადრატული მეტრი.
სართული: 19/23.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 95040, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-36-0/800/600','https://picsum.photos/seed/apartment-36-1/800/600','https://picsum.photos/seed/apartment-36-2/800/600']::text[], '{"sqm": 55, "floor": 19, "total_floors": 23, "rooms": "1-ოთახიანი", "price_per_sqm": 1728}'::jsonb, 483);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('56d52d52-e331-4880-9f5f-704218330caf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WF-1000XM5 — თეთრი', 'Sony WF-1000XM5, ფერი: თეთრი.
ახალი, არ გახსნილა, სრული გარანტია.', 875, 'GEL', 'new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/headphone-14-0/800/600','https://picsum.photos/seed/headphone-14-1/800/600','https://picsum.photos/seed/headphone-14-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 439);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('16e80e8e-4bf2-4a41-9104-0773745504e4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Nothing Ear (2) — მწვანე', 'Nothing Ear (2), ფერი: მწვანე.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 464, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-69-0/800/600','https://picsum.photos/seed/headphone-69-1/800/600','https://picsum.photos/seed/headphone-69-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 242);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('42853886-3282-4574-8872-d777264d07af', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP EliteBook 840, 32GB/256GB SSD', 'HP EliteBook 840.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3741, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-133-0/800/600','https://picsum.photos/seed/laptop-133-1/800/600','https://picsum.photos/seed/laptop-133-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 196);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bd85090f-b298-4790-954e-50bd4839bd81', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Palisade 2011', 'Hyundai Palisade, 2011 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 209,938 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ხის სალონი, ნავიგაცია.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 46207, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-72-0/800/600','https://picsum.photos/seed/car-72-1/800/600','https://picsum.photos/seed/car-72-2/800/600']::text[], '{"year": 2011, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 209938, "color": "შავი"}'::jsonb, 267);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('843cedb0-06e7-4352-aa3d-50fd2912d8e4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 5192 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 5192 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 54182, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-4-0/800/600','https://picsum.photos/seed/land-4-1/800/600','https://picsum.photos/seed/land-4-2/800/600']::text[], '{"sqm": 5192, "purpose": "საცხოვრებელი"}'::jsonb, 399);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('07dcb3b2-b46c-4ef9-8c70-d6b87cb2772b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 8GB/2TB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i9, ოპერატიული: 8GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2764, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-55-0/800/600','https://picsum.photos/seed/laptop-55-1/800/600','https://picsum.photos/seed/laptop-55-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "8GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 257);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8624ecf9-ba39-458e-9c80-70501d7eaf65', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 340 კვ.მ, მიწა 1274 კვ.მ — ბათუმი კვარიათი', '1-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 340 კვ.მ, მიწის ნაკვეთი: 1274 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 74405, 'USD', 'fair', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-35-0/800/600','https://picsum.photos/seed/house-35-1/800/600','https://picsum.photos/seed/house-35-2/800/600']::text[], '{"sqm_house": 340, "sqm_land": 1274, "floors": 1}'::jsonb, 410);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('011ae093-8ce8-4f11-a404-63ee8d87da8c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 8GB/256GB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M3, ოპერატიული: 8GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5842, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-174-0/800/600','https://picsum.photos/seed/laptop-174-1/800/600','https://picsum.photos/seed/laptop-174-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "8GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 174);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f6fc7f46-6f38-4e8f-a3b6-f429d003a9bd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 185 კვ.მ — გლდანი', '4-ოთახიანი ბინა გლდანი-ში, 185 კვადრატული მეტრი.
სართული: 15/25.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 168350, 'USD', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-57-0/800/600','https://picsum.photos/seed/apartment-57-1/800/600','https://picsum.photos/seed/apartment-57-2/800/600']::text[], '{"sqm": 185, "floor": 15, "total_floors": 25, "rooms": "4-ოთახიანი", "price_per_sqm": 910}'::jsonb, 27);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9f52f5b7-d153-498d-809f-0b6b5c78432b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 128GB', 'Apple iPhone 15, მეხსიერება: 128GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3348, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-37-0/800/600','https://picsum.photos/seed/phone-37-1/800/600','https://picsum.photos/seed/phone-37-2/800/600']::text[], '{"storage": "128GB", "color": "მწვანე", "brand": "Apple iPhone"}'::jsonb, 232);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('849651bc-fca2-4850-8bef-7b5b6e43dfd7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 59 კვ.მ — გლდანი', '2-ოთახიანი ბინა გლდანი-ში, 59 კვადრატული მეტრი.
სართული: 10/19.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 76523, 'USD', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-23-0/800/600','https://picsum.photos/seed/apartment-23-1/800/600','https://picsum.photos/seed/apartment-23-2/800/600']::text[], '{"sqm": 59, "floor": 10, "total_floors": 19, "rooms": "2-ოთახიანი", "price_per_sqm": 1297}'::jsonb, 26);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8fcadc9a-ad49-4d96-bca2-100f5839e978', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia K5 2020', 'Kia K5, 2020 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 233,660 კმ.
აღჭურვილობა: პანორამული ჭერი, ნავიგაცია.', 94260, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-119-0/800/600','https://picsum.photos/seed/car-119-1/800/600','https://picsum.photos/seed/car-119-2/800/600']::text[], '{"year": 2020, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 233660, "color": "ლურჯი"}'::jsonb, 470);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('90826ea5-d2eb-4762-bb7a-d4eb7046fda6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 128GB', 'Apple iPad Pro 11" M2, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
კლავიატურის ქეისი მოყვება.', 3473, 'GEL', 'new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/tablet-2-0/800/600','https://picsum.photos/seed/tablet-2-1/800/600','https://picsum.photos/seed/tablet-2-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 456);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8d8b4112-66b3-4141-ba46-84e6565bdbaa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP EliteBook 840, 32GB/512GB SSD', 'HP EliteBook 840.
პროცესორი: AMD Ryzen 7, ოპერატიული: 32GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 4049, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-17-0/800/600','https://picsum.photos/seed/laptop-17-1/800/600','https://picsum.photos/seed/laptop-17-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "32GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 295);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2f686bd2-c218-4523-a373-ccedc01eec60', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Envy 16, 8GB/512GB SSD', 'HP Envy 16.
პროცესორი: Apple M3, ოპერატიული: 8GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3368, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-62-0/800/600','https://picsum.photos/seed/laptop-62-1/800/600','https://picsum.photos/seed/laptop-62-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "8GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 62);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5a5948b1-b534-4482-8168-f5a8770fa589', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 32GB/2TB SSD', 'Dell XPS 13.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3312, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-117-0/800/600','https://picsum.photos/seed/laptop-117-1/800/600','https://picsum.photos/seed/laptop-117-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 361);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b200143a-3da4-4eea-843e-e13a96588d37', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A34 128GB', 'Samsung Galaxy A34, მეხსიერება: 128GB, ფერი: შავი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 579, 'GEL', 'new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-187-0/800/600','https://picsum.photos/seed/phone-187-1/800/600','https://picsum.photos/seed/phone-187-2/800/600']::text[], '{"storage": "128GB", "color": "შავი", "brand": "Samsung Galaxy"}'::jsonb, 417);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ae397c5c-f90f-4cc1-ac41-8273c1f8e3b1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 64GB', 'Huawei Mate 60, მეხსიერება: 64GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3331, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-70-0/800/600','https://picsum.photos/seed/phone-70-1/800/600','https://picsum.photos/seed/phone-70-2/800/600']::text[], '{"storage": "64GB", "color": "იისფერი", "brand": "Huawei"}'::jsonb, 226);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('19d476c1-7b71-4de1-87f5-ee0e52da4f8f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 Max 16", 8GB/2TB SSD', 'Apple MacBook Pro M3 Max 16".
პროცესორი: Apple M3 Max, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5418, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-102-0/800/600','https://picsum.photos/seed/laptop-102-1/800/600','https://picsum.photos/seed/laptop-102-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "8GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 247);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e32c15d8-1137-42b8-a5db-de2b646fbf7c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 233 კვ.მ, მიწა 2910 კვ.მ — ოქროყანა', '2-სართულიანი სახლი ოქროყანა-ში.
საცხოვრებელი ფართი: 233 კვ.მ, მიწის ნაკვეთი: 2910 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 399277, 'USD', 'good', 'active', 'ოქროყანა', ARRAY['https://picsum.photos/seed/house-25-0/800/600','https://picsum.photos/seed/house-25-1/800/600','https://picsum.photos/seed/house-25-2/800/600']::text[], '{"sqm_house": 233, "sqm_land": 2910, "floors": 2}'::jsonb, 298);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9b45681d-6124-411c-bb71-e206ee47f1c0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS TUF Gaming A15, 32GB/1TB SSD', 'ASUS TUF Gaming A15.
პროცესორი: AMD Ryzen 5, ოპერატიული: 32GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3294, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-183-0/800/600','https://picsum.photos/seed/laptop-183-1/800/600','https://picsum.photos/seed/laptop-183-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "32GB", "ssd": "1TB SSD", "brand": "ASUS"}'::jsonb, 132);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('baebcdfc-4be5-40b4-b0b5-8303b521df4e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 256GB', 'OnePlus Nord CE 3, მეხსიერება: 256GB, ფერი: თეთრი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 889, 'GEL', 'new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-6-0/800/600','https://picsum.photos/seed/phone-6-1/800/600','https://picsum.photos/seed/phone-6-2/800/600']::text[], '{"storage": "256GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 156);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3c8d05e0-1255-49f7-a2fa-1495ec3df062', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 64GB/256GB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4163, 'GEL', 'new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-144-0/800/600','https://picsum.photos/seed/laptop-144-1/800/600','https://picsum.photos/seed/laptop-144-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 488);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('08ef2ae1-ca7e-40bb-b712-6d77c435aad8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — ლურჯი', 'Apple AirPods Max, ფერი: ლურჯი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 1527, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/headphone-51-0/800/600','https://picsum.photos/seed/headphone-51-1/800/600','https://picsum.photos/seed/headphone-51-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 76);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a248aaf7-8a21-4b58-88f7-f6725a58c91c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO X6 Pro 128GB', 'Xiaomi POCO X6 Pro, მეხსიერება: 128GB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1038, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-27-0/800/600','https://picsum.photos/seed/phone-27-1/800/600','https://picsum.photos/seed/phone-27-2/800/600']::text[], '{"storage": "128GB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 181);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e09155d7-1c6b-43be-aa09-5a589c389284', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Samsung Galaxy Buds2 Pro — მწვანე', 'Samsung Galaxy Buds2 Pro, ფერი: მწვანე.
ახალი, არ გახსნილა, სრული გარანტია.', 511, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/headphone-6-0/800/600','https://picsum.photos/seed/headphone-6-1/800/600','https://picsum.photos/seed/headphone-6-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 255);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('411d4f8d-575f-4c23-864c-5444dcdadb72', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Carnival 2015', 'Kia Carnival, 2015 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 164,891 კმ.
აღჭურვილობა: ხის სალონი, გამათბობელი სავარძლები, კონდიციონერი.', 88316, 'GEL', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-144-0/800/600','https://picsum.photos/seed/car-144-1/800/600','https://picsum.photos/seed/car-144-2/800/600']::text[], '{"year": 2015, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 164891, "color": "ვერცხლისფერი"}'::jsonb, 76);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('aead3194-2015-4f79-99ee-e55117718ecc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 128GB', 'OnePlus Nord CE 3, მეხსიერება: 128GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 699, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-141-0/800/600','https://picsum.photos/seed/phone-141-1/800/600','https://picsum.photos/seed/phone-141-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 480);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f1b80734-cf39-4fa8-940d-0cbac6370b5c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A6 2010', 'Audi A6, 2010 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 161,817 კმ.
აღჭურვილობა: ტყავის სალონი, გამათბობელი სავარძლები, პარკინგ სენსორები, კრუიზ კონტროლი, პანორამული ჭერი, LED ფარები.', 218475, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-78-0/800/600','https://picsum.photos/seed/car-78-1/800/600','https://picsum.photos/seed/car-78-2/800/600']::text[], '{"year": 2010, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 161817, "color": "ნაცრისფერი"}'::jsonb, 48);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4367c160-d99b-4f3b-b574-7fac861bc07b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 60 კვ.მ — გლდანი', '1-ოთახიანი ბინა გლდანი-ში, 60 კვადრატული მეტრი.
სართული: 19/22.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 47880, 'USD', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-11-0/800/600','https://picsum.photos/seed/apartment-11-1/800/600','https://picsum.photos/seed/apartment-11-2/800/600']::text[], '{"sqm": 60, "floor": 19, "total_floors": 22, "rooms": "1-ოთახიანი", "price_per_sqm": 798}'::jsonb, 47);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b1d02ee1-509e-41fc-bcc6-e8a0291e431d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — თეთრი', 'JBL Tune 770NC, ფერი: თეთრი.
ახალი, არ გახსნილა, სრული გარანტია.', 288, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/headphone-45-0/800/600','https://picsum.photos/seed/headphone-45-1/800/600','https://picsum.photos/seed/headphone-45-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 68);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4f4c6b7a-75bd-4ffe-87e8-ab6b795f86c3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 189 კვ.მ — ქუთაისი ცენტრი', '4-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 189 კვადრატული მეტრი.
სართული: 4/10.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მშვიდი უბანი, ბაღებთან ახლოს.', 278019, 'USD', 'good', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-58-0/800/600','https://picsum.photos/seed/apartment-58-1/800/600','https://picsum.photos/seed/apartment-58-2/800/600']::text[], '{"sqm": 189, "floor": 4, "total_floors": 10, "rooms": "4-ოთახიანი", "price_per_sqm": 1471}'::jsonb, 277);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('90d39206-aa2d-4e36-ab03-1fea2635b323', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 397 კვ.მ, მიწა 1404 კვ.მ — მუხრანი', '3-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 397 კვ.მ, მიწის ნაკვეთი: 1404 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 76092, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-44-0/800/600','https://picsum.photos/seed/house-44-1/800/600','https://picsum.photos/seed/house-44-2/800/600']::text[], '{"sqm_house": 397, "sqm_land": 1404, "floors": 3}'::jsonb, 453);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('42a4579d-ce96-45f0-8cd8-fc20590e2307', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 128GB', 'OnePlus Nord CE 3, მეხსიერება: 128GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 829, 'GEL', 'new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-175-0/800/600','https://picsum.photos/seed/phone-175-1/800/600','https://picsum.photos/seed/phone-175-2/800/600']::text[], '{"storage": "128GB", "color": "იისფერი", "brand": "OnePlus"}'::jsonb, 256);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b1ebcb7e-60e6-4741-b177-1d76bb93f5d4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — თეთრი', 'Apple AirPods Pro 2, ფერი: თეთრი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 379, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/headphone-11-0/800/600','https://picsum.photos/seed/headphone-11-1/800/600','https://picsum.photos/seed/headphone-11-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 188);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b9a40dee-6236-422e-85a1-ff6280dd8b69', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 8GB/1TB SSD', 'Acer Swift 5.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2794, 'GEL', 'new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-14-0/800/600','https://picsum.photos/seed/laptop-14-1/800/600','https://picsum.photos/seed/laptop-14-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 135);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8e4130a0-696b-42e2-8bf7-de01bd8b5bbc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 35 კვ.მ — ვერა', 'სტუდიო ბინა ვერა-ში, 35 კვადრატული მეტრი.
სართული: 10/14.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 124705, 'USD', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-93-0/800/600','https://picsum.photos/seed/apartment-93-1/800/600','https://picsum.photos/seed/apartment-93-2/800/600']::text[], '{"sqm": 35, "floor": 10, "total_floors": 14, "rooms": "სტუდიო", "price_per_sqm": 3563}'::jsonb, 217);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cedeb8ba-8b7d-4952-8bdd-06728d01a295', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 256GB', 'Xiaomi Pad 6, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
სტილუსი მოყვება.', 1274, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/tablet-65-0/800/600','https://picsum.photos/seed/tablet-65-1/800/600','https://picsum.photos/seed/tablet-65-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 33);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ae9f6815-f764-4a96-8747-ec67ef5f3446', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z6 III', 'Nikon Z6 III.
შატერის რაოდენობა: 5,060. ყუთი და დამტენი მოყვება.
მეხსიერების ბარათი 128GB მოყვება.', 2985, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/camera-17-0/800/600','https://picsum.photos/seed/camera-17-1/800/600','https://picsum.photos/seed/camera-17-2/800/600']::text[], '{"shutter_count": 5060, "type": "camera"}'::jsonb, 333);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fcf85105-ae9a-407b-9410-c9f396e07e0a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 165 კვ.მ, მიწა 258 კვ.მ — ბათუმი კვარიათი', '3-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 165 კვ.მ, მიწის ნაკვეთი: 258 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 98952, 'USD', 'new', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-49-0/800/600','https://picsum.photos/seed/house-49-1/800/600','https://picsum.photos/seed/house-49-2/800/600']::text[], '{"sqm_house": 165, "sqm_land": 258, "floors": 3}'::jsonb, 446);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c8b57503-7584-409b-bdfc-da7165f5cb0c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sennheiser Momentum 4 — მწვანე', 'Sennheiser Momentum 4, ფერი: მწვანე.
ახალი, არ გახსნილა, სრული გარანტია.', 906, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/headphone-47-0/800/600','https://picsum.photos/seed/headphone-47-1/800/600','https://picsum.photos/seed/headphone-47-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 140);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2952c35a-6301-43cf-a094-81c0075abf69', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Marshall Major IV — ლურჯი', 'Marshall Major IV, ფერი: ლურჯი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 278, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-44-0/800/600','https://picsum.photos/seed/headphone-44-1/800/600','https://picsum.photos/seed/headphone-44-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 103);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('eea4a743-5751-41b1-ae64-b8a6643f166f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9909 კვ.მ — წყნეთი', 'მიწის ნაკვეთი წყნეთი-ში, 9909 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 419575, 'USD', 'good', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/land-26-0/800/600','https://picsum.photos/seed/land-26-1/800/600','https://picsum.photos/seed/land-26-2/800/600']::text[], '{"sqm": 9909, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 450);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('07b09689-10af-40f6-967a-eacfe051af80', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 100 კვ.მ — ვერა', '3-ოთახიანი ბინა ვერა-ში, 100 კვადრატული მეტრი.
სართული: 7/7.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 461100, 'USD', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-33-0/800/600','https://picsum.photos/seed/apartment-33-1/800/600','https://picsum.photos/seed/apartment-33-2/800/600']::text[], '{"sqm": 100, "floor": 7, "total_floors": 7, "rooms": "3-ოთახიანი", "price_per_sqm": 4611}'::jsonb, 490);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0804784c-281a-4d73-ada1-931ab02a2c38', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 512GB', 'Google Pixel 8 Pro, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 3789, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-144-0/800/600','https://picsum.photos/seed/phone-144-1/800/600','https://picsum.photos/seed/phone-144-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 60);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('88871d8f-3ed5-4aa6-b777-c482af509a09', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R8', 'Canon EOS R8.
ახალი, დალუქული, ოფიციალური გარანტია.
ჩანთა და დამატებითი ბატარეა მოყვება.', 5188, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/camera-14-0/800/600','https://picsum.photos/seed/camera-14-1/800/600','https://picsum.photos/seed/camera-14-2/800/600']::text[], '{"shutter_count": 77995, "type": "camera"}'::jsonb, 310);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('39b45a05-5d79-4418-9923-2609cf64f766', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — თეთრი', 'Apple AirPods Pro 2, ფერი: თეთრი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 897, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/headphone-62-0/800/600','https://picsum.photos/seed/headphone-62-1/800/600','https://picsum.photos/seed/headphone-62-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 306);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a89a1a9d-7241-468b-b0a1-1b3ed95bac4a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Yaris 2016', 'Toyota Yaris, 2016 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 271,858 კმ.
აღჭურვილობა: მულტიმედია სისტემა, პანორამული ჭერი, უკანა კამერა, LED ფარები.', 37342, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-161-0/800/600','https://picsum.photos/seed/car-161-1/800/600','https://picsum.photos/seed/car-161-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 271858, "color": "ნაცრისფერი"}'::jsonb, 499);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('87e757e2-473b-4657-8323-43216b735750', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 1TB', 'Google Pixel 6a, მეხსიერება: 1TB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1056, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-11-0/800/600','https://picsum.photos/seed/phone-11-1/800/600','https://picsum.photos/seed/phone-11-2/800/600']::text[], '{"storage": "1TB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 359);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4cc1dd3e-efe1-43af-8ccf-b11f0ea4f841', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Forester 2016', 'Subaru Forester, 2016 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 54,029 კმ.
აღჭურვილობა: კრუიზ კონტროლი, გამათბობელი სავარძლები, ნავიგაცია.', 103392, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-28-0/800/600','https://picsum.photos/seed/car-28-1/800/600','https://picsum.photos/seed/car-28-2/800/600']::text[], '{"year": 2016, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 54029, "color": "თეთრი"}'::jsonb, 33);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a2b6f467-ae6c-43c2-beeb-c248dba50ae1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 64GB', 'Xiaomi Pad 6, მეხსიერება: 64GB.
ახალი, დალუქული ყუთით.
კლავიატურის ქეისი მოყვება.', 929, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/tablet-42-0/800/600','https://picsum.photos/seed/tablet-42-1/800/600','https://picsum.photos/seed/tablet-42-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 272);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('99b3b4fd-387c-4a5c-bfd2-d6a2dbcff00f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 8GB/2TB SSD', 'Dell Latitude 5540.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2055, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-84-0/800/600','https://picsum.photos/seed/laptop-84-1/800/600','https://picsum.photos/seed/laptop-84-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 49);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2969e28b-7387-4a75-b2c2-63b80f0986f0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 16 Pro 64GB', 'Apple iPhone 16 Pro, მეხსიერება: 64GB, ფერი: ლურჯი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 3986, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-118-0/800/600','https://picsum.photos/seed/phone-118-1/800/600','https://picsum.photos/seed/phone-118-2/800/600']::text[], '{"storage": "64GB", "color": "ლურჯი", "brand": "Apple iPhone"}'::jsonb, 329);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('72ac4949-5ad5-489b-aedf-d37de8f7677d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 32GB/1TB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 5, ოპერატიული: 32GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 4335, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/laptop-57-0/800/600','https://picsum.photos/seed/laptop-57-1/800/600','https://picsum.photos/seed/laptop-57-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "32GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 255);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dac31aa7-54e2-4a19-954a-9fcc7e3b859d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 256GB', 'Huawei Nova 12, მეხსიერება: 256GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 773, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-164-0/800/600','https://picsum.photos/seed/phone-164-1/800/600','https://picsum.photos/seed/phone-164-2/800/600']::text[], '{"storage": "256GB", "color": "შავი", "brand": "Huawei"}'::jsonb, 455);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c2d4c04d-5837-4971-b5cd-73acf79f42d7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 64GB/2TB SSD', 'ASUS ProArt StudioBook.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5595, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-67-0/800/600','https://picsum.photos/seed/laptop-67-1/800/600','https://picsum.photos/seed/laptop-67-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 329);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e11cbd98-87b1-465a-ac06-7eb7b85428d0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods 3 — ლურჯი', 'Apple AirPods 3, ფერი: ლურჯი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 330, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/headphone-15-0/800/600','https://picsum.photos/seed/headphone-15-1/800/600','https://picsum.photos/seed/headphone-15-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 483);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('722eaefd-5926-4372-957f-46df423f8b87', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus RX 350 2013', 'Lexus RX 350, 2013 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 45,022 კმ.
აღჭურვილობა: კონდიციონერი, LED ფარები, ნავიგაცია.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 168188, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-88-0/800/600','https://picsum.photos/seed/car-88-1/800/600','https://picsum.photos/seed/car-88-2/800/600']::text[], '{"year": 2013, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 45022, "color": "წითელი"}'::jsonb, 496);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b364a579-4817-4d3c-8bf4-3cf997f4dff8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A7C II', 'Sony Alpha A7C II.
შატერის რაოდენობა: 52,904. ყუთი და დამტენი მოყვება.
ობიექტივი არ მოყვება (მხოლოდ body).', 4651, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/camera-7-0/800/600','https://picsum.photos/seed/camera-7-1/800/600','https://picsum.photos/seed/camera-7-2/800/600']::text[], '{"shutter_count": 52904, "type": "camera"}'::jsonb, 396);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1a0e78be-2ac6-404f-be79-6affb344cc2a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 128GB', 'Apple iPad Pro 11" M2, მეხსიერება: 128GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi ვერსია.', 3346, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/tablet-41-0/800/600','https://picsum.photos/seed/tablet-41-1/800/600','https://picsum.photos/seed/tablet-41-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 348);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('81dc6ae8-9dfd-48e7-ba03-09b395eda341', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 256GB', 'OnePlus Nord CE 3, მეხსიერება: 256GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 927, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-61-0/800/600','https://picsum.photos/seed/phone-61-1/800/600','https://picsum.photos/seed/phone-61-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 165);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e23990e7-ff56-4bd8-bec1-1c57d624e351', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q7 2021', 'Audi Q7, 2021 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 270,591 კმ.
აღჭურვილობა: კრუიზ კონტროლი, უკანა კამერა, პანორამული ჭერი, კონდიციონერი, ნავიგაცია, ხის სალონი.', 176818, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-101-0/800/600','https://picsum.photos/seed/car-101-1/800/600','https://picsum.photos/seed/car-101-2/800/600']::text[], '{"year": 2021, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 270591, "color": "წითელი"}'::jsonb, 459);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4ab85b0f-4d3d-4bbf-b441-b8c9e902451c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Huawei MatePad Pro 256GB', 'Huawei MatePad Pro, მეხსიერება: 256GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
სტილუსი მოყვება.', 2277, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/tablet-7-0/800/600','https://picsum.photos/seed/tablet-7-1/800/600','https://picsum.photos/seed/tablet-7-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 438);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f93287c7-de8a-4c20-a80c-4f421a4fb7e0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Envy 16, 8GB/2TB SSD', 'HP Envy 16.
პროცესორი: AMD Ryzen 9, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2343, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-106-0/800/600','https://picsum.photos/seed/laptop-106-1/800/600','https://picsum.photos/seed/laptop-106-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "8GB", "ssd": "2TB SSD", "brand": "HP"}'::jsonb, 200);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('62288e43-fc69-4e9c-bd36-96156c0a3e14', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 16GB/1TB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 9, ოპერატიული: 16GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2628, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-115-0/800/600','https://picsum.photos/seed/laptop-115-1/800/600','https://picsum.photos/seed/laptop-115-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "16GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 480);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8b6a45f7-d787-413a-8c7c-6a41e17ba4bc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T Pro 512GB', 'Xiaomi 13T Pro, მეხსიერება: 512GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1896, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-43-0/800/600','https://picsum.photos/seed/phone-43-1/800/600','https://picsum.photos/seed/phone-43-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 49);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fd9277fe-350d-4f52-81a9-68b22d46a2c6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WF-1000XM5 — თეთრი', 'Sony WF-1000XM5, ფერი: თეთრი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 436, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/headphone-21-0/800/600','https://picsum.photos/seed/headphone-21-1/800/600','https://picsum.photos/seed/headphone-21-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 211);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('852ac692-4335-4b4e-83f7-5589216cfccd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Tucson 2014', 'Hyundai Tucson, 2014 წლის გამოშვება.
ფერი: შავი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 219,406 კმ.
აღჭურვილობა: LED ფარები, ნავიგაცია.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 98315, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-110-0/800/600','https://picsum.photos/seed/car-110-1/800/600','https://picsum.photos/seed/car-110-2/800/600']::text[], '{"year": 2014, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 219406, "color": "შავი"}'::jsonb, 242);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b2bf2672-9f40-4348-afd0-15aef07d1724', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Beats Studio Pro — შავი', 'Beats Studio Pro, ფერი: შავი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 727, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/headphone-63-0/800/600','https://picsum.photos/seed/headphone-63-1/800/600','https://picsum.photos/seed/headphone-63-2/800/600']::text[], '{"color": "შავი", "type": "headphones"}'::jsonb, 307);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9901f590-505f-4d00-b01c-004697adfc3a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Envy 16, 64GB/1TB SSD', 'HP Envy 16.
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3083, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-61-0/800/600','https://picsum.photos/seed/laptop-61-1/800/600','https://picsum.photos/seed/laptop-61-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 201);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0c42f49d-9cd6-439e-9298-f601c8713c81', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Samsung Galaxy Buds2 Pro — თეთრი', 'Samsung Galaxy Buds2 Pro, ფერი: თეთრი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 401, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/headphone-23-0/800/600','https://picsum.photos/seed/headphone-23-1/800/600','https://picsum.photos/seed/headphone-23-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 172);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b0858e0d-3cca-481b-ba4a-7a1f4864b5d8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 32GB/256GB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M1, ოპერატიული: 32GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 6109, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-134-0/800/600','https://picsum.photos/seed/laptop-134-1/800/600','https://picsum.photos/seed/laptop-134-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "32GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 300);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('da25e602-b821-4016-955f-01f34ce62693', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 32GB/512GB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: AMD Ryzen 9, ოპერატიული: 32GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3532, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-60-0/800/600','https://picsum.photos/seed/laptop-60-1/800/600','https://picsum.photos/seed/laptop-60-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "32GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 451);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e84c3ee0-5df5-44c8-ac9e-c5430334a821', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 106 კვ.მ — ვაკე', '3-ოთახიანი ბინა ვაკე-ში, 106 კვადრატული მეტრი.
სართული: 3/7.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 389444, 'USD', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-83-0/800/600','https://picsum.photos/seed/apartment-83-1/800/600','https://picsum.photos/seed/apartment-83-2/800/600']::text[], '{"sqm": 106, "floor": 3, "total_floors": 7, "rooms": "3-ოთახიანი", "price_per_sqm": 3674}'::jsonb, 197);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f046c877-94c4-4be2-9d6c-7791600bdbdd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 256GB', 'Apple iPad Pro 11" M2, მეხსიერება: 256GB.
ახალი, დალუქული ყუთით.
კლავიატურის ქეისი მოყვება.', 3273, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/tablet-11-0/800/600','https://picsum.photos/seed/tablet-11-1/800/600','https://picsum.photos/seed/tablet-11-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 341);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c2bfd1f5-652c-426d-8731-e37c86d798a2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 299 კვ.მ, მიწა 671 კვ.მ — ოქროყანა', '1-სართულიანი სახლი ოქროყანა-ში.
საცხოვრებელი ფართი: 299 კვ.მ, მიწის ნაკვეთი: 671 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 355612, 'USD', 'good', 'active', 'ოქროყანა', ARRAY['https://picsum.photos/seed/house-14-0/800/600','https://picsum.photos/seed/house-14-1/800/600','https://picsum.photos/seed/house-14-2/800/600']::text[], '{"sqm_house": 299, "sqm_land": 671, "floors": 1}'::jsonb, 495);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e1d45c12-cbc5-408d-b410-18196622374f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 195 კვ.მ, მიწა 2023 კვ.მ — წავკისი', '2-სართულიანი სახლი წავკისი-ში.
საცხოვრებელი ფართი: 195 კვ.მ, მიწის ნაკვეთი: 2023 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 398435, 'USD', 'good', 'active', 'წავკისი', ARRAY['https://picsum.photos/seed/house-9-0/800/600','https://picsum.photos/seed/house-9-1/800/600','https://picsum.photos/seed/house-9-2/800/600']::text[], '{"sqm_house": 195, "sqm_land": 2023, "floors": 2}'::jsonb, 436);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('551f92aa-5085-4fdf-9e95-cd2bcd0a283b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 512GB', 'Lenovo Tab P12 Pro, მეხსიერება: 512GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
კლავიატურის ქეისი მოყვება.', 1838, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-40-0/800/600','https://picsum.photos/seed/tablet-40-1/800/600','https://picsum.photos/seed/tablet-40-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 328);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2171483b-69f4-4d62-841a-ef754ce890c8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Polo 2016', 'Volkswagen Polo, 2016 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 151,144 კმ.
აღჭურვილობა: პანორამული ჭერი, ნავიგაცია, ტყავის სალონი.', 50578, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-195-0/800/600','https://picsum.photos/seed/car-195-1/800/600','https://picsum.photos/seed/car-195-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 151144, "color": "მწვანე"}'::jsonb, 368);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7993b3d8-1031-4f88-8be0-be5b6e5508af', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Elantra 2015', 'Hyundai Elantra, 2015 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 168,612 კმ.
აღჭურვილობა: ტყავის სალონი, მულტიმედია სისტემა, ხის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 97712, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-108-0/800/600','https://picsum.photos/seed/car-108-1/800/600','https://picsum.photos/seed/car-108-2/800/600']::text[], '{"year": 2015, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 168612, "color": "წითელი"}'::jsonb, 474);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c1dc016d-f93c-48ee-a41c-fe685bf3576f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Sonata 2013', 'Hyundai Sonata, 2013 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 183,908 კმ.
აღჭურვილობა: ხის სალონი, LED ფარები, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 29066, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-166-0/800/600','https://picsum.photos/seed/car-166-1/800/600','https://picsum.photos/seed/car-166-2/800/600']::text[], '{"year": 2013, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 183908, "color": "შინდისფერი"}'::jsonb, 308);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a1b1b73a-a45f-4634-b0d1-9ff7a5dba881', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 32GB/2TB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i5, ოპერატიული: 32GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3364, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-15-0/800/600','https://picsum.photos/seed/laptop-15-1/800/600','https://picsum.photos/seed/laptop-15-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "32GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 169);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('16a02bae-65ea-4c9a-974f-c48e67aefc7f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 130 კვ.მ — ისანი', '3-ოთახიანი ბინა ისანი-ში, 130 კვადრატული მეტრი.
სართული: 17/18.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 172510, 'USD', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-99-0/800/600','https://picsum.photos/seed/apartment-99-1/800/600','https://picsum.photos/seed/apartment-99-2/800/600']::text[], '{"sqm": 130, "floor": 17, "total_floors": 18, "rooms": "3-ოთახიანი", "price_per_sqm": 1327}'::jsonb, 305);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3301f317-ab8d-4deb-a539-b891361b0e0e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone SE 2022 128GB', 'Apple iPhone SE 2022, მეხსიერება: 128GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 958, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-24-0/800/600','https://picsum.photos/seed/phone-24-1/800/600','https://picsum.photos/seed/phone-24-2/800/600']::text[], '{"storage": "128GB", "color": "ლურჯი", "brand": "Apple iPhone"}'::jsonb, 43);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('61ebcd90-c22c-472e-89d2-57d9e064c5f4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M2 13", 64GB/256GB SSD', 'Apple MacBook Air M2 13".
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 4806, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-92-0/800/600','https://picsum.photos/seed/laptop-92-1/800/600','https://picsum.photos/seed/laptop-92-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 215);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('42cb9030-b3ec-48fc-ace8-79ba8685890a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 512GB', 'OnePlus 12, მეხსიერება: 512GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2518, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-2-0/800/600','https://picsum.photos/seed/phone-2-1/800/600','https://picsum.photos/seed/phone-2-2/800/600']::text[], '{"storage": "512GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 464);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ba289db6-fd65-4e1a-891c-052f3d4c6adc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 512GB', 'OnePlus 12, მეხსიერება: 512GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 3505, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-178-0/800/600','https://picsum.photos/seed/phone-178-1/800/600','https://picsum.photos/seed/phone-178-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 456);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0d76607b-2e66-4cfd-a8e6-9596fa1554d5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 36 კვ.მ — ვერა', '1-ოთახიანი ბინა ვერა-ში, 36 კვადრატული მეტრი.
სართული: 7/13.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 118656, 'USD', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-34-0/800/600','https://picsum.photos/seed/apartment-34-1/800/600','https://picsum.photos/seed/apartment-34-2/800/600']::text[], '{"sqm": 36, "floor": 7, "total_floors": 13, "rooms": "1-ოთახიანი", "price_per_sqm": 3296}'::jsonb, 158);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9843f9d9-e2e5-4efe-8b7a-8572d16365a0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Jetta 2012', 'Volkswagen Jetta, 2012 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 277,912 კმ.
აღჭურვილობა: პარკინგ სენსორები, ნავიგაცია.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 36563, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-41-0/800/600','https://picsum.photos/seed/car-41-1/800/600','https://picsum.photos/seed/car-41-2/800/600']::text[], '{"year": 2012, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 277912, "color": "შავი"}'::jsonb, 401);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4e08b5bd-792d-4a65-b002-fca9d2c73f82', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO F6 128GB', 'Xiaomi POCO F6, მეხსიერება: 128GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1239, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-100-0/800/600','https://picsum.photos/seed/phone-100-1/800/600','https://picsum.photos/seed/phone-100-2/800/600']::text[], '{"storage": "128GB", "color": "მწვანე", "brand": "Xiaomi"}'::jsonb, 213);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e4f8faa7-2001-49ad-ad97-89a680917c9c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Palisade 2023', 'Hyundai Palisade, 2023 წლის გამოშვება.
ფერი: მწვანე, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 198,660 კმ.
აღჭურვილობა: LED ფარები, კონდიციონერი, ტყავის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 76778, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-15-0/800/600','https://picsum.photos/seed/car-15-1/800/600','https://picsum.photos/seed/car-15-2/800/600']::text[], '{"year": 2023, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 198660, "color": "მწვანე"}'::jsonb, 324);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cac55b49-9838-4430-b23e-6bd789ee308d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLE 350 2013', 'Mercedes-Benz GLE 350, 2013 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 207,596 კმ.
აღჭურვილობა: LED ფარები, ტყავის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 36163, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-92-0/800/600','https://picsum.photos/seed/car-92-1/800/600','https://picsum.photos/seed/car-92-2/800/600']::text[], '{"year": 2013, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 207596, "color": "ლურჯი"}'::jsonb, 423);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('81002394-5070-44fb-b551-93463cee4d64', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy Z Flip5 128GB', 'Samsung Galaxy Z Flip5, მეხსიერება: 128GB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3388, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-120-0/800/600','https://picsum.photos/seed/phone-120-1/800/600','https://picsum.photos/seed/phone-120-2/800/600']::text[], '{"storage": "128GB", "color": "იისფერი", "brand": "Samsung Galaxy"}'::jsonb, 90);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4c6be925-fe6a-4138-88e2-0e64eb03b7e5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Seltos 2024', 'Kia Seltos, 2024 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 154,619 კმ.
აღჭურვილობა: კრუიზ კონტროლი, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 26087, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-10-0/800/600','https://picsum.photos/seed/car-10-1/800/600','https://picsum.photos/seed/car-10-2/800/600']::text[], '{"year": 2024, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 154619, "color": "ვერცხლისფერი"}'::jsonb, 204);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a2218237-7ee7-4cbc-8ed8-9f8897b70a91', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 256GB', 'Samsung Galaxy Tab A9, მეხსიერება: 256GB.
როგორც ახალი, კომპლექტი სრულია.
კლავიატურის ქეისი მოყვება.', 560, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/tablet-48-0/800/600','https://picsum.photos/seed/tablet-48-1/800/600','https://picsum.photos/seed/tablet-48-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 37);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0b7115ac-f900-4fc1-8e89-8ee0a3515990', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 87 კვ.მ — სოლოლაკი', '3-ოთახიანი ბინა სოლოლაკი-ში, 87 კვადრატული მეტრი.
სართული: 7/12.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 195228, 'USD', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-63-0/800/600','https://picsum.photos/seed/apartment-63-1/800/600','https://picsum.photos/seed/apartment-63-2/800/600']::text[], '{"sqm": 87, "floor": 7, "total_floors": 12, "rooms": "3-ოთახიანი", "price_per_sqm": 2244}'::jsonb, 332);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3e7e5649-90ba-4c4c-9736-7881449d5225', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 256GB', 'Samsung Galaxy Tab A9, მეხსიერება: 256GB.
ახალი, დალუქული ყუთით.
სტილუსი მოყვება.', 697, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/tablet-9-0/800/600','https://picsum.photos/seed/tablet-9-1/800/600','https://picsum.photos/seed/tablet-9-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 97);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('aa6f74fc-a779-4265-b32a-b90f167c5a32', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 32GB/512GB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3346, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/laptop-152-0/800/600','https://picsum.photos/seed/laptop-152-1/800/600','https://picsum.photos/seed/laptop-152-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 79);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7bc8d4a8-6eba-493f-8c59-ed2bff74491b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 256GB', 'Samsung Galaxy S24, მეხსიერება: 256GB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 1980, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-54-0/800/600','https://picsum.photos/seed/phone-54-1/800/600','https://picsum.photos/seed/phone-54-2/800/600']::text[], '{"storage": "256GB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 102);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ba43ab9a-e472-49b4-ab23-450af4e9de4c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sennheiser Momentum 4 — ლურჯი', 'Sennheiser Momentum 4, ფერი: ლურჯი.
ახალი, არ გახსნილა, სრული გარანტია.', 1037, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-13-0/800/600','https://picsum.photos/seed/headphone-13-1/800/600','https://picsum.photos/seed/headphone-13-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 32);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('90c82f9d-ad37-42f5-bd0a-d6fcbfc833f2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 128GB', 'Apple iPad Pro 11" M2, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
სტილუსი მოყვება.', 3967, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/tablet-35-0/800/600','https://picsum.photos/seed/tablet-35-1/800/600','https://picsum.photos/seed/tablet-35-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 348);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1f6ed63c-d929-4ee7-884a-926184d3df15', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Kona 2024', 'Hyundai Kona, 2024 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 72,893 კმ.
აღჭურვილობა: ნავიგაცია, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 13716, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-136-0/800/600','https://picsum.photos/seed/car-136-1/800/600','https://picsum.photos/seed/car-136-2/800/600']::text[], '{"year": 2024, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 72893, "color": "ვერცხლისფერი"}'::jsonb, 317);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ed7dbd24-32f5-4000-a589-97073107e0c8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad 5, 64GB/2TB SSD', 'Lenovo IdeaPad 5.
პროცესორი: AMD Ryzen 7, ოპერატიული: 64GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1158, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-108-0/800/600','https://picsum.photos/seed/laptop-108-1/800/600','https://picsum.photos/seed/laptop-108-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "64GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 424);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('df20ff6b-549f-4f43-a892-5e177efdb0f1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z6 III', 'Nikon Z6 III.
შატერის რაოდენობა: 10,789. კარგ მდგომარეობაში, სენსორი სუფთა.
მეხსიერების ბარათი 128GB მოყვება.', 5671, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/camera-23-0/800/600','https://picsum.photos/seed/camera-23-1/800/600','https://picsum.photos/seed/camera-23-2/800/600']::text[], '{"shutter_count": 10789, "type": "camera"}'::jsonb, 46);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7165320a-19bf-418e-a028-923a013b3425', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW M3 2016', 'BMW M3, 2016 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 5,538 კმ.
აღჭურვილობა: კონდიციონერი, უკანა კამერა, პანორამული ჭერი, მულტიმედია სისტემა, LED ფარები.', 182574, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-131-0/800/600','https://picsum.photos/seed/car-131-1/800/600','https://picsum.photos/seed/car-131-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 5538, "color": "წითელი"}'::jsonb, 42);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('28d8f709-fbe1-4417-9b30-401c02261532', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 128GB', 'OnePlus Nord 3, მეხსიერება: 128GB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 1101, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-182-0/800/600','https://picsum.photos/seed/phone-182-1/800/600','https://picsum.photos/seed/phone-182-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 352);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3f5b0a7f-f355-4799-a573-8514c64e7073', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 32GB/512GB SSD', 'Dell Alienware m16.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5106, 'GEL', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-172-0/800/600','https://picsum.photos/seed/laptop-172-1/800/600','https://picsum.photos/seed/laptop-172-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 322);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ce5942ec-0a1c-4f4a-b2e1-23a4b34e6cf7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 64GB', 'Google Pixel 8, მეხსიერება: 64GB, ფერი: ლურჯი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2783, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-0-0/800/600','https://picsum.photos/seed/phone-0-1/800/600','https://picsum.photos/seed/phone-0-2/800/600']::text[], '{"storage": "64GB", "color": "ლურჯი", "brand": "Google Pixel"}'::jsonb, 499);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6fdb3ed8-dcd3-437b-959b-85ce0ebe0663', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Stinger 2015', 'Kia Stinger, 2015 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 80,256 კმ.
აღჭურვილობა: ნავიგაცია, კრუიზ კონტროლი, ტყავის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 98120, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-192-0/800/600','https://picsum.photos/seed/car-192-1/800/600','https://picsum.photos/seed/car-192-2/800/600']::text[], '{"year": 2015, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 80256, "color": "შინდისფერი"}'::jsonb, 45);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e0107cf3-88f5-4171-b24a-c194ef4a39c2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM5 — თეთრი', 'Sony WH-1000XM5, ფერი: თეთრი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 1161, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/headphone-8-0/800/600','https://picsum.photos/seed/headphone-8-1/800/600','https://picsum.photos/seed/headphone-8-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 426);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0dc1faa9-7013-4ed7-8ce6-d442453a6fac', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus IS 300 2020', 'Lexus IS 300, 2020 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 193,550 კმ.
აღჭურვილობა: ტყავის სალონი, ხის სალონი, გამათბობელი სავარძლები, კრუიზ კონტროლი, ნავიგაცია, უკანა კამერა.', 139057, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/car-43-0/800/600','https://picsum.photos/seed/car-43-1/800/600','https://picsum.photos/seed/car-43-2/800/600']::text[], '{"year": 2020, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 193550, "color": "ვერცხლისფერი"}'::jsonb, 394);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('20d6964f-f670-40ae-b989-65bc5aac392f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — თეთრი', 'JBL Tune 770NC, ფერი: თეთრი.
ახალი, არ გახსნილა, სრული გარანტია.', 256, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/headphone-16-0/800/600','https://picsum.photos/seed/headphone-16-1/800/600','https://picsum.photos/seed/headphone-16-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 142);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f2f95261-4379-4dc6-b3e5-b924e430634f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 64GB', 'Google Pixel 8 Pro, მეხსიერება: 64GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 2956, 'GEL', 'like_new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-129-0/800/600','https://picsum.photos/seed/phone-129-1/800/600','https://picsum.photos/seed/phone-129-2/800/600']::text[], '{"storage": "64GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 211);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c9b740b0-6b68-418d-86a2-6d28eebaa1f9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus NX 300 2024', 'Lexus NX 300, 2024 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 31,719 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 99370, 'GEL', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-125-0/800/600','https://picsum.photos/seed/car-125-1/800/600','https://picsum.photos/seed/car-125-2/800/600']::text[], '{"year": 2024, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 31719, "color": "წითელი"}'::jsonb, 169);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c520e67d-bed8-4a99-af08-60c438f7fda7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 128GB', 'Xiaomi Pad 6, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
კლავიატურის ქეისი მოყვება.', 1171, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-46-0/800/600','https://picsum.photos/seed/tablet-46-1/800/600','https://picsum.photos/seed/tablet-46-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 347);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3671b11d-5098-4a2f-8a79-7af389b6c91b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 Pro Max 1TB', 'Apple iPhone 14 Pro Max, მეხსიერება: 1TB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 2845, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-94-0/800/600','https://picsum.photos/seed/phone-94-1/800/600','https://picsum.photos/seed/phone-94-2/800/600']::text[], '{"storage": "1TB", "color": "ოქროსფერი", "brand": "Apple iPhone"}'::jsonb, 415);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cc368dec-cc68-477d-9676-a67c45c26d10', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 15, 64GB/2TB SSD', 'Dell XPS 15.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3467, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-16-0/800/600','https://picsum.photos/seed/laptop-16-1/800/600','https://picsum.photos/seed/laptop-16-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 18);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cf35b66c-b7cc-4e3c-9d9e-dadacd56341e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 512GB', 'Xiaomi Pad 6, მეხსიერება: 512GB.
ახალი, დალუქული ყუთით.
Wi-Fi ვერსია.', 911, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/tablet-45-0/800/600','https://picsum.photos/seed/tablet-45-1/800/600','https://picsum.photos/seed/tablet-45-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 198);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('94c5c50c-69c7-4994-9a61-2cc6afd8d970', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7 Pro 256GB', 'Google Pixel 7 Pro, მეხსიერება: 256GB, ფერი: მწვანე.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1653, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-177-0/800/600','https://picsum.photos/seed/phone-177-1/800/600','https://picsum.photos/seed/phone-177-2/800/600']::text[], '{"storage": "256GB", "color": "მწვანე", "brand": "Google Pixel"}'::jsonb, 410);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a621cc47-9992-449d-998a-c2e9351b2760', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 97 კვ.მ — ნაძალადევი', '3-ოთახიანი ბინა ნაძალადევი-ში, 97 კვადრატული მეტრი.
სართული: 1/1.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მშვიდი უბანი, ბაღებთან ახლოს.', 137546, 'USD', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-17-0/800/600','https://picsum.photos/seed/apartment-17-1/800/600','https://picsum.photos/seed/apartment-17-2/800/600']::text[], '{"sqm": 97, "floor": 1, "total_floors": 1, "rooms": "3-ოთახიანი", "price_per_sqm": 1418}'::jsonb, 472);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7e72ef05-59d6-4582-8941-bcfe86a05823', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Carnival 2018', 'Kia Carnival, 2018 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 247,798 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, პანორამული ჭერი, ხის სალონი, კრუიზ კონტროლი, უკანა კამერა, პარკინგ სენსორები.', 111564, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-65-0/800/600','https://picsum.photos/seed/car-65-1/800/600','https://picsum.photos/seed/car-65-2/800/600']::text[], '{"year": 2018, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 247798, "color": "მწვანე"}'::jsonb, 363);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('14d0f358-b0a7-47a5-981a-213d39363609', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 394 კვ.მ, მიწა 213 კვ.მ — ბაგები', '1-სართულიანი სახლი ბაგები-ში.
საცხოვრებელი ფართი: 394 კვ.მ, მიწის ნაკვეთი: 213 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 223388, 'USD', 'fair', 'active', 'ბაგები', ARRAY['https://picsum.photos/seed/house-4-0/800/600','https://picsum.photos/seed/house-4-1/800/600','https://picsum.photos/seed/house-4-2/800/600']::text[], '{"sqm_house": 394, "sqm_land": 213, "floors": 1}'::jsonb, 189);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0b3c2638-eaa5-4b47-9663-934980f7c741', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2012', 'Lexus ES 250, 2012 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 24,199 კმ.
აღჭურვილობა: ტყავის სალონი, პარკინგ სენსორები.', 160236, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-162-0/800/600','https://picsum.photos/seed/car-162-1/800/600','https://picsum.photos/seed/car-162-2/800/600']::text[], '{"year": 2012, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 24199, "color": "წითელი"}'::jsonb, 384);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('15070d75-baa3-4504-acb7-9a496a70e410', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Predator Helios 16, 16GB/256GB SSD', 'Acer Predator Helios 16.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5106, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-178-0/800/600','https://picsum.photos/seed/laptop-178-1/800/600','https://picsum.photos/seed/laptop-178-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 450);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('04715712-9a72-4cda-b460-1d64e3ad06a8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone SE 2022 256GB', 'Apple iPhone SE 2022, მეხსიერება: 256GB, ფერი: ოქროსფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1114, 'GEL', 'new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-36-0/800/600','https://picsum.photos/seed/phone-36-1/800/600','https://picsum.photos/seed/phone-36-2/800/600']::text[], '{"storage": "256GB", "color": "ოქროსფერი", "brand": "Apple iPhone"}'::jsonb, 391);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('82565de6-a1b5-4be7-ae12-ceec7456f341', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2021', 'Lexus ES 250, 2021 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 54,561 კმ.
აღჭურვილობა: LED ფარები, პარკინგ სენსორები.', 127603, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-178-0/800/600','https://picsum.photos/seed/car-178-1/800/600','https://picsum.photos/seed/car-178-2/800/600']::text[], '{"year": 2021, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 54561, "color": "ნაცრისფერი"}'::jsonb, 421);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('63276a05-3041-4a10-8cc4-adedc7c17222', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 81 კვ.მ — სოლოლაკი', '2-ოთახიანი ბინა სოლოლაკი-ში, 81 კვადრატული მეტრი.
სართული: 14/21.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 290061, 'USD', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-10-0/800/600','https://picsum.photos/seed/apartment-10-1/800/600','https://picsum.photos/seed/apartment-10-2/800/600']::text[], '{"sqm": 81, "floor": 14, "total_floors": 21, "rooms": "2-ოთახიანი", "price_per_sqm": 3581}'::jsonb, 463);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('04799820-eec0-41c0-9eb9-1a35b343455c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A34 128GB', 'Samsung Galaxy A34, მეხსიერება: 128GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 653, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-101-0/800/600','https://picsum.photos/seed/phone-101-1/800/600','https://picsum.photos/seed/phone-101-2/800/600']::text[], '{"storage": "128GB", "color": "მწვანე", "brand": "Samsung Galaxy"}'::jsonb, 405);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e5ccc508-82d9-4fa7-93d1-a520af0908b5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 Pro+ 256GB', 'Xiaomi Redmi Note 13 Pro+, მეხსიერება: 256GB, ფერი: იისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1004, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-29-0/800/600','https://picsum.photos/seed/phone-29-1/800/600','https://picsum.photos/seed/phone-29-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 455);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e8553c7c-3238-4c46-8e7d-4758e2998b70', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 12.9" M2 128GB', 'Apple iPad Pro 12.9" M2, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
სტილუსი მოყვება.', 3946, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/tablet-39-0/800/600','https://picsum.photos/seed/tablet-39-1/800/600','https://picsum.photos/seed/tablet-39-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 182);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8da51ab9-6a07-405d-acc2-bab548461227', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 128GB', 'Samsung Galaxy Tab S9, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
სტილუსი მოყვება.', 2238, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/tablet-25-0/800/600','https://picsum.photos/seed/tablet-25-1/800/600','https://picsum.photos/seed/tablet-25-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 454);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1ba4e94a-40fc-46c1-9f8c-2d695051e97c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sennheiser Momentum 4 — მწვანე', 'Sennheiser Momentum 4, ფერი: მწვანე.
ახალი, არ გახსნილა, სრული გარანტია.', 937, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/headphone-68-0/800/600','https://picsum.photos/seed/headphone-68-1/800/600','https://picsum.photos/seed/headphone-68-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 58);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9cfb738f-21e4-46e8-8ed5-cd6537074b60', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLE 350 2012', 'Mercedes-Benz GLE 350, 2012 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 80,950 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, კონდიციონერი, პარკინგ სენსორები, LED ფარები, მულტიმედია სისტემა, კრუიზ კონტროლი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 62690, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-21-0/800/600','https://picsum.photos/seed/car-21-1/800/600','https://picsum.photos/seed/car-21-2/800/600']::text[], '{"year": 2012, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 80950, "color": "ლურჯი"}'::jsonb, 264);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3e440ce7-6bb5-4f3a-b509-20bcf262dfe2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S23 1TB', 'Samsung Galaxy S23, მეხსიერება: 1TB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 2541, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-59-0/800/600','https://picsum.photos/seed/phone-59-1/800/600','https://picsum.photos/seed/phone-59-2/800/600']::text[], '{"storage": "1TB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 196);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8f0e4087-a310-4266-9e32-bbe01d923377', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony ZV-E10', 'Sony ZV-E10.
შატერის რაოდენობა: 67,628. პროფესიონალურად მოვლილი.
მეხსიერების ბარათი 128GB მოყვება.', 1579, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/camera-2-0/800/600','https://picsum.photos/seed/camera-2-1/800/600','https://picsum.photos/seed/camera-2-2/800/600']::text[], '{"shutter_count": 67628, "type": "camera"}'::jsonb, 63);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b49e8790-0df7-4664-b2d5-3b33706e3bf8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 64GB/1TB SSD', 'Acer Swift 5.
პროცესორი: AMD Ryzen 7, ოპერატიული: 64GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2322, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-65-0/800/600','https://picsum.photos/seed/laptop-65-1/800/600','https://picsum.photos/seed/laptop-65-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "64GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 281);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0643c447-aeed-44e9-a0cd-8d74a6870567', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 32GB/1TB SSD', 'Dell Alienware m16.
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 8109, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-151-0/800/600','https://picsum.photos/seed/laptop-151-1/800/600','https://picsum.photos/seed/laptop-151-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 497);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4cf2b932-dca4-46cc-8598-38e84ef9dc38', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 210 კვ.მ, მიწა 1726 კვ.მ — წყნეთი', '3-სართულიანი სახლი წყნეთი-ში.
საცხოვრებელი ფართი: 210 კვ.მ, მიწის ნაკვეთი: 1726 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 277129, 'USD', 'like_new', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/house-11-0/800/600','https://picsum.photos/seed/house-11-1/800/600','https://picsum.photos/seed/house-11-2/800/600']::text[], '{"sqm_house": 210, "sqm_land": 1726, "floors": 3}'::jsonb, 269);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a2f48231-7528-4dec-a34b-3daffbe579b7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 13 256GB', 'Apple iPhone 13, მეხსიერება: 256GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1302, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/phone-80-0/800/600','https://picsum.photos/seed/phone-80-1/800/600','https://picsum.photos/seed/phone-80-2/800/600']::text[], '{"storage": "256GB", "color": "ტიტანის ნაცრისფერი", "brand": "Apple iPhone"}'::jsonb, 300);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3cefc7ba-0e5f-4d1d-9b9b-1328283df473', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 93 კვ.მ — ბათუმი ცენტრი', '3-ოთახიანი ბინა ბათუმი ცენტრი-ში, 93 კვადრატული მეტრი.
სართული: 13/16.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 166656, 'USD', 'new', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-3-0/800/600','https://picsum.photos/seed/apartment-3-1/800/600','https://picsum.photos/seed/apartment-3-2/800/600']::text[], '{"sqm": 93, "floor": 13, "total_floors": 16, "rooms": "3-ოთახიანი", "price_per_sqm": 1792}'::jsonb, 385);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e094af51-0310-493d-9aa1-2faf503deb69', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 5826 კვ.მ — ბორჯომი', 'მიწის ნაკვეთი ბორჯომი-ში, 5826 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 129279, 'USD', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/land-32-0/800/600','https://picsum.photos/seed/land-32-1/800/600','https://picsum.photos/seed/land-32-2/800/600']::text[], '{"sqm": 5826, "purpose": "საცხოვრებელი"}'::jsonb, 480);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f0de8ff1-e71a-4fa4-ba6c-52bbcdf0de6c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad 10th Gen 128GB', 'Apple iPad 10th Gen, მეხსიერება: 128GB.
მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.
Wi-Fi + Cellular ვერსია.', 1563, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-36-0/800/600','https://picsum.photos/seed/tablet-36-1/800/600','https://picsum.photos/seed/tablet-36-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 284);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('01c533ff-c409-4120-a3e8-8d0aba3de66a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 64GB/1TB SSD', 'Dell Inspiron 15.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1335, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-91-0/800/600','https://picsum.photos/seed/laptop-91-1/800/600','https://picsum.photos/seed/laptop-91-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 201);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('278dc0f5-7fee-4882-b822-81b01251452a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 258 კვ.მ, მიწა 2656 კვ.მ — ბათუმი კვარიათი', '2-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 258 კვ.მ, მიწის ნაკვეთი: 2656 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 137014, 'USD', 'like_new', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-7-0/800/600','https://picsum.photos/seed/house-7-1/800/600','https://picsum.photos/seed/house-7-2/800/600']::text[], '{"sqm_house": 258, "sqm_land": 2656, "floors": 2}'::jsonb, 382);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('15c4b5ca-7f3a-4b6a-a8ff-f4962f4d23c8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 512GB', 'Lenovo Tab P12 Pro, მეხსიერება: 512GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
Wi-Fi + Cellular ვერსია.', 1526, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/tablet-23-0/800/600','https://picsum.photos/seed/tablet-23-1/800/600','https://picsum.photos/seed/tablet-23-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 357);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('64c9c9a7-27fb-402b-b233-c3db91e62495', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 64GB/256GB SSD', 'HP Pavilion 15.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1899, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-71-0/800/600','https://picsum.photos/seed/laptop-71-1/800/600','https://picsum.photos/seed/laptop-71-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 260);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('77f2adce-377a-4159-b633-338e7d7d7170', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 67 კვ.მ — ნაძალადევი', '2-ოთახიანი ბინა ნაძალადევი-ში, 67 კვადრატული მეტრი.
სართული: 16/22.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მშვიდი უბანი, ბაღებთან ახლოს.', 62846, 'USD', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-73-0/800/600','https://picsum.photos/seed/apartment-73-1/800/600','https://picsum.photos/seed/apartment-73-2/800/600']::text[], '{"sqm": 67, "floor": 16, "total_floors": 22, "rooms": "2-ოთახიანი", "price_per_sqm": 938}'::jsonb, 445);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('380ca135-1e17-4ca5-9b61-df1284a89fe3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 171 კვ.მ, მიწა 1833 კვ.მ — დიღომი', '3-სართულიანი სახლი დიღომი-ში.
საცხოვრებელი ფართი: 171 კვ.მ, მიწის ნაკვეთი: 1833 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 116619, 'USD', 'new', 'active', 'დიღომი', ARRAY['https://picsum.photos/seed/house-48-0/800/600','https://picsum.photos/seed/house-48-1/800/600','https://picsum.photos/seed/house-48-2/800/600']::text[], '{"sqm_house": 171, "sqm_land": 1833, "floors": 3}'::jsonb, 401);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b9f0a752-5ddf-44dd-b37a-9b7cab228d2b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 64GB/1TB SSD', 'Acer Aspire 5.
პროცესორი: AMD Ryzen 7, ოპერატიული: 64GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1305, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-31-0/800/600','https://picsum.photos/seed/laptop-31-1/800/600','https://picsum.photos/seed/laptop-31-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "64GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 63);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b6cdb225-12df-43a2-92d7-5afc6dd61ae7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Xiaomi Buds 4 Pro — თეთრი', 'Xiaomi Buds 4 Pro, ფერი: თეთრი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 364, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-49-0/800/600','https://picsum.photos/seed/headphone-49-1/800/600','https://picsum.photos/seed/headphone-49-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 100);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7fe4b19e-fb56-41f2-8392-788aa29d512a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Beats Studio Pro — მწვანე', 'Beats Studio Pro, ფერი: მწვანე.
ახალი, არ გახსნილა, სრული გარანტია.', 1053, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/headphone-4-0/800/600','https://picsum.photos/seed/headphone-4-1/800/600','https://picsum.photos/seed/headphone-4-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 299);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d3a115e7-32ad-4dfc-9e91-455b31894b08', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Tiguan 2015', 'Volkswagen Tiguan, 2015 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 49,318 კმ.
აღჭურვილობა: ნავიგაცია, LED ფარები, გამათბობელი სავარძლები, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 42090, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-175-0/800/600','https://picsum.photos/seed/car-175-1/800/600','https://picsum.photos/seed/car-175-2/800/600']::text[], '{"year": 2015, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 49318, "color": "ლურჯი"}'::jsonb, 369);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7d2afae7-e1ae-4b61-a56a-5fbaaaf53325', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy M14 128GB', 'Samsung Galaxy M14, მეხსიერება: 128GB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 343, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-108-0/800/600','https://picsum.photos/seed/phone-108-1/800/600','https://picsum.photos/seed/phone-108-2/800/600']::text[], '{"storage": "128GB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 62);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('98786572-1370-4fe4-9339-b4ff93d9b3a3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'GoPro HERO12 Black', 'GoPro HERO12 Black.
ახალი, დალუქული, ოფიციალური გარანტია.
ობიექტივი არ მოყვება (მხოლოდ body).', 1292, 'GEL', 'new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/camera-21-0/800/600','https://picsum.photos/seed/camera-21-1/800/600','https://picsum.photos/seed/camera-21-2/800/600']::text[], '{"shutter_count": 42119, "type": "camera"}'::jsonb, 150);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4f4bfefc-1ded-4e56-a7cf-9e62a1965522', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 15, 16GB/256GB SSD', 'Dell XPS 15.
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 5632, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-149-0/800/600','https://picsum.photos/seed/laptop-149-1/800/600','https://picsum.photos/seed/laptop-149-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 457);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d49394e6-ffb6-42d5-abbe-fbf7b688c0a9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9115 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 9115 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ხედი მთებზე, წყაროს წყალი ახლოს.', 42207, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-33-0/800/600','https://picsum.photos/seed/land-33-1/800/600','https://picsum.photos/seed/land-33-2/800/600']::text[], '{"sqm": 9115, "purpose": "საცხოვრებელი"}'::jsonb, 285);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fe8f560e-8b41-4cfd-9f67-717bdfffdec2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1471 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 1471 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 8020, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-22-0/800/600','https://picsum.photos/seed/land-22-1/800/600','https://picsum.photos/seed/land-22-2/800/600']::text[], '{"sqm": 1471, "purpose": "კომერციული"}'::jsonb, 142);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ba4b7897-1c22-42e7-9e6c-a814838482fc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 16GB/256GB SSD', 'Dell XPS 13.
პროცესორი: Apple M3, ოპერატიული: 16GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1995, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-181-0/800/600','https://picsum.photos/seed/laptop-181-1/800/600','https://picsum.photos/seed/laptop-181-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "16GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 363);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9cc8174d-2d72-47b5-a3e5-05f7f13d72e7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 1TB', 'Huawei Nova 12, მეხსიერება: 1TB, ფერი: მწვანე.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 828, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-23-0/800/600','https://picsum.photos/seed/phone-23-1/800/600','https://picsum.photos/seed/phone-23-2/800/600']::text[], '{"storage": "1TB", "color": "მწვანე", "brand": "Huawei"}'::jsonb, 456);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9eb6d9e4-2bdb-418b-a58e-3f51d9e6c935', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 64GB/2TB SSD', 'Acer Aspire 5.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1393, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-139-0/800/600','https://picsum.photos/seed/laptop-139-1/800/600','https://picsum.photos/seed/laptop-139-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "2TB SSD", "brand": "Acer"}'::jsonb, 320);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6d6c4427-a16d-4884-9194-327f25dad783', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 16GB/512GB SSD', 'ASUS ROG Strix G16.
პროცესორი: Apple M3, ოპერატიული: 16GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3887, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-49-0/800/600','https://picsum.photos/seed/laptop-49-1/800/600','https://picsum.photos/seed/laptop-49-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "16GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 235);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b9374839-d18a-45ab-b6c6-55763b5c129b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO F6 128GB', 'Xiaomi POCO F6, მეხსიერება: 128GB, ფერი: მწვანე.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 890, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-189-0/800/600','https://picsum.photos/seed/phone-189-1/800/600','https://picsum.photos/seed/phone-189-2/800/600']::text[], '{"storage": "128GB", "color": "მწვანე", "brand": "Xiaomi"}'::jsonb, 419);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7a30adcc-7521-4eb0-b0fc-7a29d16a5c18', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 128GB', 'Apple iPad Pro 11" M2, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi ვერსია.', 3727, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/tablet-34-0/800/600','https://picsum.photos/seed/tablet-34-1/800/600','https://picsum.photos/seed/tablet-34-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 201);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b9adf1d0-e0a7-4ba9-afd0-5fa2698335a8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 16GB/2TB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M3 Max, ოპერატიული: 16GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3707, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-155-0/800/600','https://picsum.photos/seed/laptop-155-1/800/600','https://picsum.photos/seed/laptop-155-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "16GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 85);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2ef53697-ea21-47e3-a3fc-4c62773a3d6e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Kona 2008', 'Hyundai Kona, 2008 წლის გამოშვება.
ფერი: შავი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 202,676 კმ.
აღჭურვილობა: ხის სალონი, პარკინგ სენსორები, ნავიგაცია, LED ფარები, კონდიციონერი.', 38052, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-24-0/800/600','https://picsum.photos/seed/car-24-1/800/600','https://picsum.photos/seed/car-24-2/800/600']::text[], '{"year": 2008, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 202676, "color": "შავი"}'::jsonb, 104);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('186cbc58-7678-4a31-9862-02363010902e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 16 Pro 256GB', 'Apple iPhone 16 Pro, მეხსიერება: 256GB, ფერი: მწვანე.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 4039, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-76-0/800/600','https://picsum.photos/seed/phone-76-1/800/600','https://picsum.photos/seed/phone-76-2/800/600']::text[], '{"storage": "256GB", "color": "მწვანე", "brand": "Apple iPhone"}'::jsonb, 268);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9473f9d3-56aa-4afd-804d-f1ae4e6a652a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 64GB/2TB SSD', 'ASUS ProArt StudioBook.
პროცესორი: Apple M2, ოპერატიული: 64GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5322, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-128-0/800/600','https://picsum.photos/seed/laptop-128-1/800/600','https://picsum.photos/seed/laptop-128-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "64GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 477);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('88c053f1-8e60-4161-824d-e7bf4785c060', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Tiguan 2024', 'Volkswagen Tiguan, 2024 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 202,347 კმ.
აღჭურვილობა: კრუიზ კონტროლი, პარკინგ სენსორები, მულტიმედია სისტემა, უკანა კამერა, ნავიგაცია, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 52767, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-153-0/800/600','https://picsum.photos/seed/car-153-1/800/600','https://picsum.photos/seed/car-153-2/800/600']::text[], '{"year": 2024, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 202347, "color": "წითელი"}'::jsonb, 274);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ab18d6a2-469a-40a0-80f5-122029728eca', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 370 კვ.მ, მიწა 1980 კვ.მ — წყნეთი', '2-სართულიანი სახლი წყნეთი-ში.
საცხოვრებელი ფართი: 370 კვ.მ, მიწის ნაკვეთი: 1980 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 389148, 'USD', 'good', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/house-41-0/800/600','https://picsum.photos/seed/house-41-1/800/600','https://picsum.photos/seed/house-41-2/800/600']::text[], '{"sqm_house": 370, "sqm_land": 1980, "floors": 2}'::jsonb, 345);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('338ff821-0b0d-46d8-b5eb-247acf49a4b4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 280 კვ.მ, მიწა 2964 კვ.მ — მუხრანი', '1-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 280 კვ.მ, მიწის ნაკვეთი: 2964 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 80820, 'USD', 'fair', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-54-0/800/600','https://picsum.photos/seed/house-54-1/800/600','https://picsum.photos/seed/house-54-2/800/600']::text[], '{"sqm_house": 280, "sqm_land": 2964, "floors": 1}'::jsonb, 350);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('43e9be45-5656-447f-9061-3b360877fc8e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 512GB', 'Lenovo Tab P12 Pro, მეხსიერება: 512GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi ვერსია.', 1134, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/tablet-55-0/800/600','https://picsum.photos/seed/tablet-55-1/800/600','https://picsum.photos/seed/tablet-55-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 139);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4fac5ef4-deae-49e7-859e-0107181b491f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9+ 128GB', 'Samsung Galaxy Tab S9+, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
კლავიატურის ქეისი მოყვება.', 3509, 'GEL', 'new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-20-0/800/600','https://picsum.photos/seed/tablet-20-1/800/600','https://picsum.photos/seed/tablet-20-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 224);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('af9f79bd-cf04-429c-a2fb-2d8b44b94362', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus RX 350 2012', 'Lexus RX 350, 2012 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 33,522 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ნავიგაცია, კრუიზ კონტროლი, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 170162, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-111-0/800/600','https://picsum.photos/seed/car-111-1/800/600','https://picsum.photos/seed/car-111-2/800/600']::text[], '{"year": 2012, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 33522, "color": "ვერცხლისფერი"}'::jsonb, 309);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b5366f12-aa62-4e59-b090-0361668eac4b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 293 კვ.მ, მიწა 1000 კვ.მ — ბათუმი გონიო', '3-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 293 კვ.მ, მიწის ნაკვეთი: 1000 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 152568, 'USD', 'fair', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-2-0/800/600','https://picsum.photos/seed/house-2-1/800/600','https://picsum.photos/seed/house-2-2/800/600']::text[], '{"sqm_house": 293, "sqm_land": 1000, "floors": 3}'::jsonb, 370);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c42b4d5c-cf23-49de-97f1-70033a741417', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 76 კვ.მ — ვერა', '2-ოთახიანი ბინა ვერა-ში, 76 კვადრატული მეტრი.
სართული: 3/4.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 192660, 'USD', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-44-0/800/600','https://picsum.photos/seed/apartment-44-1/800/600','https://picsum.photos/seed/apartment-44-2/800/600']::text[], '{"sqm": 76, "floor": 3, "total_floors": 4, "rooms": "2-ოთახიანი", "price_per_sqm": 2535}'::jsonb, 153);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cb84eb4b-e3e2-487e-8b52-f8250d27705f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 14", 16GB/2TB SSD', 'Apple MacBook Pro M3 14".
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 6266, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-120-0/800/600','https://picsum.photos/seed/laptop-120-1/800/600','https://picsum.photos/seed/laptop-120-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 22);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('140f693d-2461-4739-9be7-f3379371389c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Sportage 2017', 'Kia Sportage, 2017 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 206,891 კმ.
აღჭურვილობა: კონდიციონერი, კრუიზ კონტროლი, LED ფარები.', 108856, 'GEL', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-56-0/800/600','https://picsum.photos/seed/car-56-1/800/600','https://picsum.photos/seed/car-56-2/800/600']::text[], '{"year": 2017, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 206891, "color": "ლურჯი"}'::jsonb, 322);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0d38b18a-cb2d-4402-a409-7299532ae34c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods 3 — ლურჯი', 'Apple AirPods 3, ფერი: ლურჯი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 376, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/headphone-2-0/800/600','https://picsum.photos/seed/headphone-2-1/800/600','https://picsum.photos/seed/headphone-2-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 198);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('60a55788-4d8f-46ac-9d3e-48f69bfce994', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 64GB/1TB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3329, 'GEL', 'new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/laptop-116-0/800/600','https://picsum.photos/seed/laptop-116-1/800/600','https://picsum.photos/seed/laptop-116-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 324);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bff0b155-2495-41f7-98ae-113c2ba42a4a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 258 კვ.მ, მიწა 1368 კვ.მ — ბაგები', '3-სართულიანი სახლი ბაგები-ში.
საცხოვრებელი ფართი: 258 კვ.მ, მიწის ნაკვეთი: 1368 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 189966, 'USD', 'like_new', 'active', 'ბაგები', ARRAY['https://picsum.photos/seed/house-15-0/800/600','https://picsum.photos/seed/house-15-1/800/600','https://picsum.photos/seed/house-15-2/800/600']::text[], '{"sqm_house": 258, "sqm_land": 1368, "floors": 3}'::jsonb, 0);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('72055123-1a8a-48e2-bd3d-88f930bd586f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz S500 2020', 'Mercedes-Benz S500, 2020 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 92,079 კმ.
აღჭურვილობა: LED ფარები, გამათბობელი სავარძლები, ნავიგაცია, ტყავის სალონი, პანორამული ჭერი, ხის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 235672, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-117-0/800/600','https://picsum.photos/seed/car-117-1/800/600','https://picsum.photos/seed/car-117-2/800/600']::text[], '{"year": 2020, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 92079, "color": "წითელი"}'::jsonb, 466);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('878cb68f-b170-4119-a2c6-612fb2d493bc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 14 Ultra 64GB', 'Xiaomi 14 Ultra, მეხსიერება: 64GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3251, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-57-0/800/600','https://picsum.photos/seed/phone-57-1/800/600','https://picsum.photos/seed/phone-57-2/800/600']::text[], '{"storage": "64GB", "color": "ტიტანის ნაცრისფერი", "brand": "Xiaomi"}'::jsonb, 261);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7b42d931-9332-4bcd-8187-a637efe7c2ee', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 8GB/256GB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: Apple M1, ოპერატიული: 8GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3995, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-110-0/800/600','https://picsum.photos/seed/laptop-110-1/800/600','https://picsum.photos/seed/laptop-110-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "8GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 34);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('da6a714f-247a-4904-97a0-e3f71d2d5bc0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 8GB/256GB SSD', 'ASUS ProArt StudioBook.
პროცესორი: AMD Ryzen 9, ოპერატიული: 8GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4221, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-161-0/800/600','https://picsum.photos/seed/laptop-161-1/800/600','https://picsum.photos/seed/laptop-161-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "8GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 487);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ffc604c6-1089-4357-962c-10675fedf7cc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad 10th Gen 128GB', 'Apple iPad 10th Gen, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
Wi-Fi + Cellular ვერსია.', 1534, 'GEL', 'new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/tablet-63-0/800/600','https://picsum.photos/seed/tablet-63-1/800/600','https://picsum.photos/seed/tablet-63-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 458);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8b3012bb-6c06-4d5c-8c56-750a96550df6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 512GB', 'Apple iPhone 14, მეხსიერება: 512GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2361, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-14-0/800/600','https://picsum.photos/seed/phone-14-1/800/600','https://picsum.photos/seed/phone-14-2/800/600']::text[], '{"storage": "512GB", "color": "ლურჯი", "brand": "Apple iPhone"}'::jsonb, 458);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('237cd6bc-7ef4-46cb-af3c-85e0540e765a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru BRZ 2016', 'Subaru BRZ, 2016 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 109,627 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ნავიგაცია, გამათბობელი სავარძლები, ტყავის სალონი, უკანა კამერა, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 36544, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-106-0/800/600','https://picsum.photos/seed/car-106-1/800/600','https://picsum.photos/seed/car-106-2/800/600']::text[], '{"year": 2016, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 109627, "color": "მწვანე"}'::jsonb, 134);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f9cce5ca-776b-451d-accf-29221422d2e0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z6 III', 'Nikon Z6 III.
ახალი, დალუქული, ოფიციალური გარანტია.
კიტის ობიექტივით: 28-70mm.', 6078, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/camera-55-0/800/600','https://picsum.photos/seed/camera-55-1/800/600','https://picsum.photos/seed/camera-55-2/800/600']::text[], '{"shutter_count": 11971, "type": "camera"}'::jsonb, 493);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('db3c16ff-637e-405c-910a-8f93127626fa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 64GB', 'Samsung Galaxy Tab A9, მეხსიერება: 64GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
კლავიატურის ქეისი მოყვება.', 799, 'GEL', 'like_new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/tablet-0-0/800/600','https://picsum.photos/seed/tablet-0-1/800/600','https://picsum.photos/seed/tablet-0-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 495);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2605f9b5-25d5-4474-9406-3ee391f0767d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 32GB/1TB SSD', 'Acer Aspire 5.
პროცესორი: Intel Core i5, ოპერატიული: 32GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1259, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/laptop-176-0/800/600','https://picsum.photos/seed/laptop-176-1/800/600','https://picsum.photos/seed/laptop-176-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "32GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 142);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bcdd0f0c-e594-4c4a-890b-779b8bcd5054', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 128GB', 'Google Pixel 8 Pro, მეხსიერება: 128GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2299, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-46-0/800/600','https://picsum.photos/seed/phone-46-1/800/600','https://picsum.photos/seed/phone-46-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 222);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6e0e18ba-eb80-4020-98c9-be3294f424f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'GoPro HERO12 Black', 'GoPro HERO12 Black.
შატერის რაოდენობა: 68,662. კარგ მდგომარეობაში, სენსორი სუფთა.
ობიექტივი არ მოყვება (მხოლოდ body).', 875, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/camera-13-0/800/600','https://picsum.photos/seed/camera-13-1/800/600','https://picsum.photos/seed/camera-13-2/800/600']::text[], '{"shutter_count": 68662, "type": "camera"}'::jsonb, 72);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6ba9036b-ff56-40e2-8a65-78f35c82c046', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 16GB/2TB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 5007, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-27-0/800/600','https://picsum.photos/seed/laptop-27-1/800/600','https://picsum.photos/seed/laptop-27-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 482);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('95a42e39-edd5-411a-ab68-cc169832e04f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad Slim 3, 32GB/2TB SSD', 'Lenovo IdeaPad Slim 3.
პროცესორი: Apple M3 Max, ოპერატიული: 32GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 705, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-190-0/800/600','https://picsum.photos/seed/laptop-190-1/800/600','https://picsum.photos/seed/laptop-190-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "32GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 453);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('384ab6c0-b0f2-45f8-9ab1-6af026ac9c1c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 1TB', 'Google Pixel 8, მეხსიერება: 1TB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2784, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-15-0/800/600','https://picsum.photos/seed/phone-15-1/800/600','https://picsum.photos/seed/phone-15-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 493);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9cdb54c2-12b6-4168-830b-71a8c76d9a90', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru BRZ 2017', 'Subaru BRZ, 2017 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 17,932 კმ.
აღჭურვილობა: მულტიმედია სისტემა, პარკინგ სენსორები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 88011, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-36-0/800/600','https://picsum.photos/seed/car-36-1/800/600','https://picsum.photos/seed/car-36-2/800/600']::text[], '{"year": 2017, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 17932, "color": "თეთრი"}'::jsonb, 474);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f5a951c3-84f5-48bc-8760-4aaddb5e82cd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 25 კვ.მ — საბურთალო', 'სტუდიო ბინა საბურთალო-ში, 25 კვადრატული მეტრი.
სართული: 12/13.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 49925, 'USD', 'new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/apartment-74-0/800/600','https://picsum.photos/seed/apartment-74-1/800/600','https://picsum.photos/seed/apartment-74-2/800/600']::text[], '{"sqm": 25, "floor": 12, "total_floors": 13, "rooms": "სტუდიო", "price_per_sqm": 1997}'::jsonb, 450);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1db44043-1679-4d81-aee2-f637ada75773', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi 13C 512GB', 'Xiaomi Redmi 13C, მეხსიერება: 512GB, ფერი: შავი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 485, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-170-0/800/600','https://picsum.photos/seed/phone-170-1/800/600','https://picsum.photos/seed/phone-170-2/800/600']::text[], '{"storage": "512GB", "color": "შავი", "brand": "Xiaomi"}'::jsonb, 297);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('485da505-d0e6-46ba-99dd-836a1e77e60f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus IS 300 2014', 'Lexus IS 300, 2014 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 219,134 კმ.
აღჭურვილობა: ტყავის სალონი, კრუიზ კონტროლი, გამათბობელი სავარძლები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 210652, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-123-0/800/600','https://picsum.photos/seed/car-123-1/800/600','https://picsum.photos/seed/car-123-2/800/600']::text[], '{"year": 2014, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 219134, "color": "თეთრი"}'::jsonb, 240);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5c69994c-df2e-468a-a2a9-76bb63f12bff', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 59 კვ.მ — ბათუმი ცენტრი', '1-ოთახიანი ბინა ბათუმი ცენტრი-ში, 59 კვადრატული მეტრი.
სართული: 12/15.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 129328, 'USD', 'good', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-66-0/800/600','https://picsum.photos/seed/apartment-66-1/800/600','https://picsum.photos/seed/apartment-66-2/800/600']::text[], '{"sqm": 59, "floor": 12, "total_floors": 15, "rooms": "1-ოთახიანი", "price_per_sqm": 2192}'::jsonb, 239);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fed451c3-3444-4b00-bba9-b3a535f387be', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R8', 'Canon EOS R8.
შატერის რაოდენობა: 16,442. კარგ მდგომარეობაში, სენსორი სუფთა.
მეხსიერების ბარათი 128GB მოყვება.', 4245, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/camera-38-0/800/600','https://picsum.photos/seed/camera-38-1/800/600','https://picsum.photos/seed/camera-38-2/800/600']::text[], '{"shutter_count": 16442, "type": "camera"}'::jsonb, 229);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9362ab08-52f6-434f-b6a0-08b54e226de8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 64GB/256GB SSD', 'ASUS VivoBook 15.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1681, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-95-0/800/600','https://picsum.photos/seed/laptop-95-1/800/600','https://picsum.photos/seed/laptop-95-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 495);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('52a0cd3e-95c6-4a61-a819-f6159b52f05d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Nothing Ear (2) — ლურჯი', 'Nothing Ear (2), ფერი: ლურჯი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 450, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/headphone-38-0/800/600','https://picsum.photos/seed/headphone-38-1/800/600','https://picsum.photos/seed/headphone-38-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 460);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ea667f06-c55b-4da5-9a6e-7b6b9484ea38', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus RX 350 2016', 'Lexus RX 350, 2016 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 173,744 კმ.
აღჭურვილობა: უკანა კამერა, LED ფარები, ხის სალონი, კრუიზ კონტროლი, პარკინგ სენსორები.', 130536, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-115-0/800/600','https://picsum.photos/seed/car-115-1/800/600','https://picsum.photos/seed/car-115-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 173744, "color": "ნაცრისფერი"}'::jsonb, 275);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6c964348-4f6e-4756-8a41-002e72682bbf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A7 IV', 'Sony Alpha A7 IV.
შატერის რაოდენობა: 18,974. პროფესიონალურად მოვლილი.
კიტის ობიექტივით: 28-70mm.', 6154, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/camera-34-0/800/600','https://picsum.photos/seed/camera-34-1/800/600','https://picsum.photos/seed/camera-34-2/800/600']::text[], '{"shutter_count": 18974, "type": "camera"}'::jsonb, 388);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('063c320f-1965-4f43-99b7-f1ddc13cbabc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 51 კვ.მ — გლდანი', '1-ოთახიანი ბინა გლდანი-ში, 51 კვადრატული მეტრი.
სართული: 4/5.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 67320, 'USD', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-80-0/800/600','https://picsum.photos/seed/apartment-80-1/800/600','https://picsum.photos/seed/apartment-80-2/800/600']::text[], '{"sqm": 51, "floor": 4, "total_floors": 5, "rooms": "1-ოთახიანი", "price_per_sqm": 1320}'::jsonb, 9);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3dfa0221-fb84-42dd-a006-c0cfcf94b08f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z30', 'Nikon Z30.
შატერის რაოდენობა: 13,807. კორპუსზე მცირე კოსმეტიკური ცვეთა.
ობიექტივი არ მოყვება (მხოლოდ body).', 1711, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/camera-41-0/800/600','https://picsum.photos/seed/camera-41-1/800/600','https://picsum.photos/seed/camera-41-2/800/600']::text[], '{"shutter_count": 13807, "type": "camera"}'::jsonb, 417);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d5ad8eac-07ec-4f95-8f0d-168ea30c57dc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 8GB/256GB SSD', 'Dell Alienware m16.
პროცესორი: Apple M1, ოპერატიული: 8GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 6523, 'GEL', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-125-0/800/600','https://picsum.photos/seed/laptop-125-1/800/600','https://picsum.photos/seed/laptop-125-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "8GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 24);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a721e68e-c3bd-4e61-8d6b-bc9cd4392d05', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9688 კვ.მ — წყნეთი', 'მიწის ნაკვეთი წყნეთი-ში, 9688 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 355799, 'USD', 'good', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/land-12-0/800/600','https://picsum.photos/seed/land-12-1/800/600','https://picsum.photos/seed/land-12-2/800/600']::text[], '{"sqm": 9688, "purpose": "საცხოვრებელი"}'::jsonb, 35);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ef51075a-2924-4bb7-9885-5d1ded233a84', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 512GB', 'Google Pixel 7a, მეხსიერება: 512GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 842, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-113-0/800/600','https://picsum.photos/seed/phone-113-1/800/600','https://picsum.photos/seed/phone-113-2/800/600']::text[], '{"storage": "512GB", "color": "შავი", "brand": "Google Pixel"}'::jsonb, 251);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('56719e6f-2058-4518-aaff-09449767c851', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 6164 კვ.მ — მანგლისი', 'მიწის ნაკვეთი მანგლისი-ში, 6164 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 51559, 'USD', 'good', 'active', 'მანგლისი', ARRAY['https://picsum.photos/seed/land-17-0/800/600','https://picsum.photos/seed/land-17-1/800/600','https://picsum.photos/seed/land-17-2/800/600']::text[], '{"sqm": 6164, "purpose": "საცხოვრებელი"}'::jsonb, 228);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6a327eb9-f526-467d-ad23-b4b009e21412', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 7285 კვ.მ — კახეთი, წინანდალი', 'მიწის ნაკვეთი კახეთი, წინანდალი-ში, 7285 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 41762, 'USD', 'good', 'active', 'კახეთი, წინანდალი', ARRAY['https://picsum.photos/seed/land-23-0/800/600','https://picsum.photos/seed/land-23-1/800/600','https://picsum.photos/seed/land-23-2/800/600']::text[], '{"sqm": 7285, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 98);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b3ac452c-cbc1-4157-b328-9a2e5fe0ebc0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 8GB/256GB SSD', 'Acer Swift 5.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3468, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-154-0/800/600','https://picsum.photos/seed/laptop-154-1/800/600','https://picsum.photos/seed/laptop-154-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 13);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('60937cf9-02d2-42cc-b63b-e03a106bd957', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 232 კვ.მ, მიწა 2775 კვ.მ — ბათუმი გონიო', '1-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 232 კვ.მ, მიწის ნაკვეთი: 2775 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 179422, 'USD', 'good', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-56-0/800/600','https://picsum.photos/seed/house-56-1/800/600','https://picsum.photos/seed/house-56-2/800/600']::text[], '{"sqm_house": 232, "sqm_land": 2775, "floors": 1}'::jsonb, 499);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('183fa8e8-5370-4b67-9518-5c7a440c9b89', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO X6 Pro 128GB', 'Xiaomi POCO X6 Pro, მეხსიერება: 128GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 1299, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-180-0/800/600','https://picsum.photos/seed/phone-180-1/800/600','https://picsum.photos/seed/phone-180-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Xiaomi"}'::jsonb, 89);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4bea65cb-8336-433e-bab4-a1081620bf32', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 8GB/1TB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M1, ოპერატიული: 8GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4592, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-140-0/800/600','https://picsum.photos/seed/laptop-140-1/800/600','https://picsum.photos/seed/laptop-140-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "8GB", "ssd": "1TB SSD", "brand": "Apple MacBook"}'::jsonb, 400);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('720d6b03-0bc8-49b3-baf1-784a8d89110f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 81 კვ.მ — გლდანი', '2-ოთახიანი ბინა გლდანი-ში, 81 კვადრატული მეტრი.
სართული: 13/16.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მშვიდი უბანი, ბაღებთან ახლოს.', 87561, 'USD', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-97-0/800/600','https://picsum.photos/seed/apartment-97-1/800/600','https://picsum.photos/seed/apartment-97-2/800/600']::text[], '{"sqm": 81, "floor": 13, "total_floors": 16, "rooms": "2-ოთახიანი", "price_per_sqm": 1081}'::jsonb, 481);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8a58a1f2-d42c-4713-ba13-1fc6a7c158a0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort 45 — ვერცხლისფერი', 'Bose QuietComfort 45, ფერი: ვერცხლისფერი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 538, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/headphone-36-0/800/600','https://picsum.photos/seed/headphone-36-1/800/600','https://picsum.photos/seed/headphone-36-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 86);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0243dc2a-c4c6-43ec-9ae9-8f01ba7fa4ab', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 42 კვ.მ — ბათუმი ცენტრი', '1-ოთახიანი ბინა ბათუმი ცენტრი-ში, 42 კვადრატული მეტრი.
სართული: 1/3.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მშვიდი უბანი, ბაღებთან ახლოს.', 101388, 'USD', 'new', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-41-0/800/600','https://picsum.photos/seed/apartment-41-1/800/600','https://picsum.photos/seed/apartment-41-2/800/600']::text[], '{"sqm": 42, "floor": 1, "total_floors": 3, "rooms": "1-ოთახიანი", "price_per_sqm": 2414}'::jsonb, 394);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f0a78ea9-fa81-4d9a-be42-83ba946d0442', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Palisade 2023', 'Hyundai Palisade, 2023 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 2,422 კმ.
აღჭურვილობა: პარკინგ სენსორები, უკანა კამერა, კონდიციონერი.', 46386, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-31-0/800/600','https://picsum.photos/seed/car-31-1/800/600','https://picsum.photos/seed/car-31-2/800/600']::text[], '{"year": 2023, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 2422, "color": "მწვანე"}'::jsonb, 36);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1acd4570-dfbb-4e17-b322-6ce9c617d256', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Arteon 2024', 'Volkswagen Arteon, 2024 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 249,753 კმ.
აღჭურვილობა: ნავიგაცია, კრუიზ კონტროლი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 74839, 'GEL', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/car-8-0/800/600','https://picsum.photos/seed/car-8-1/800/600','https://picsum.photos/seed/car-8-2/800/600']::text[], '{"year": 2024, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 249753, "color": "წითელი"}'::jsonb, 459);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b04a5a85-e438-41f1-a788-b6f5235eb4f3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24+ 128GB', 'Samsung Galaxy S24+, მეხსიერება: 128GB, ფერი: იისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3999, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-33-0/800/600','https://picsum.photos/seed/phone-33-1/800/600','https://picsum.photos/seed/phone-33-2/800/600']::text[], '{"storage": "128GB", "color": "იისფერი", "brand": "Samsung Galaxy"}'::jsonb, 70);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b999510d-9d41-405d-81e0-bad6215d09bf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 16GB/1TB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 4066, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-90-0/800/600','https://picsum.photos/seed/laptop-90-1/800/600','https://picsum.photos/seed/laptop-90-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "1TB SSD", "brand": "Lenovo"}'::jsonb, 25);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9c06cfe9-b0bc-4a0c-bb62-0cb52eb6d025', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 320i 2010', 'BMW 320i, 2010 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 42,982 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, კონდიციონერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 67792, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-121-0/800/600','https://picsum.photos/seed/car-121-1/800/600','https://picsum.photos/seed/car-121-2/800/600']::text[], '{"year": 2010, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 42982, "color": "შავი"}'::jsonb, 316);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6613e6ab-2f61-4f31-9a91-fccf46c8b0c6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9750 კვ.მ — კახეთი, წინანდალი', 'მიწის ნაკვეთი კახეთი, წინანდალი-ში, 9750 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 214944, 'USD', 'good', 'active', 'კახეთი, წინანდალი', ARRAY['https://picsum.photos/seed/land-30-0/800/600','https://picsum.photos/seed/land-30-1/800/600','https://picsum.photos/seed/land-30-2/800/600']::text[], '{"sqm": 9750, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 309);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b373b6aa-393d-42a4-82a8-0922b4c4114f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'GoPro HERO12 Black', 'GoPro HERO12 Black.
შატერის რაოდენობა: 68,895. ყუთი და დამტენი მოყვება.
ობიექტივი არ მოყვება (მხოლოდ body).', 1020, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/camera-37-0/800/600','https://picsum.photos/seed/camera-37-1/800/600','https://picsum.photos/seed/camera-37-2/800/600']::text[], '{"shutter_count": 68895, "type": "camera"}'::jsonb, 275);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f78ad036-f2b5-4c3f-9883-2684712eeedf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-S20', 'Fujifilm X-S20.
შატერის რაოდენობა: 9,110. კარგ მდგომარეობაში, სენსორი სუფთა.
ჩანთა და დამატებითი ბატარეა მოყვება.', 1567, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/camera-44-0/800/600','https://picsum.photos/seed/camera-44-1/800/600','https://picsum.photos/seed/camera-44-2/800/600']::text[], '{"shutter_count": 9110, "type": "camera"}'::jsonb, 485);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f12cdc18-e62b-4080-be16-508f52fa21b6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 4196 კვ.მ — ბორჯომი', 'მიწის ნაკვეთი ბორჯომი-ში, 4196 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ვენახიანი ნაკვეთი, ნაყოფიერი ნიადაგი.', 124432, 'USD', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/land-5-0/800/600','https://picsum.photos/seed/land-5-1/800/600','https://picsum.photos/seed/land-5-2/800/600']::text[], '{"sqm": 4196, "purpose": "საცხოვრებელი"}'::jsonb, 139);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b832b03e-5fe5-4a44-9c65-bf03acba97eb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9+ 128GB', 'Samsung Galaxy Tab S9+, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
Wi-Fi + Cellular ვერსია.', 3241, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/tablet-53-0/800/600','https://picsum.photos/seed/tablet-53-1/800/600','https://picsum.photos/seed/tablet-53-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 256);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4912d9c6-8248-4fee-946a-91a54893a3bd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A6700', 'Sony Alpha A6700.
თითქმის ახალი, შატერის რაოდენობა: 4,165.
ჩანთა და დამატებითი ბატარეა მოყვება.', 2112, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/camera-4-0/800/600','https://picsum.photos/seed/camera-4-1/800/600','https://picsum.photos/seed/camera-4-2/800/600']::text[], '{"shutter_count": 4165, "type": "camera"}'::jsonb, 6);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8199c200-2f9e-4add-837f-44020718ff94', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 256GB', 'Google Pixel 7a, მეხსიერება: 256GB, ფერი: მწვანე.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 1462, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-197-0/800/600','https://picsum.photos/seed/phone-197-1/800/600','https://picsum.photos/seed/phone-197-2/800/600']::text[], '{"storage": "256GB", "color": "მწვანე", "brand": "Google Pixel"}'::jsonb, 230);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7d78e3cd-5c9b-46a6-b4a0-b23b87824fd5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 8GB/2TB SSD', 'HP Pavilion 15.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1899, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-52-0/800/600','https://picsum.photos/seed/laptop-52-1/800/600','https://picsum.photos/seed/laptop-52-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "2TB SSD", "brand": "HP"}'::jsonb, 306);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2675218c-ee8d-4338-8f4f-6acea1c684b0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 14 Pro 512GB', 'Xiaomi 14 Pro, მეხსიერება: 512GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1610, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-157-0/800/600','https://picsum.photos/seed/phone-157-1/800/600','https://picsum.photos/seed/phone-157-2/800/600']::text[], '{"storage": "512GB", "color": "თეთრი", "brand": "Xiaomi"}'::jsonb, 49);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('83789578-4338-43dc-97b0-2e95b8053cde', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A3 2024', 'Audi A3, 2024 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 121,426 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ნავიგაცია, მულტიმედია სისტემა, ტყავის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 123416, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-58-0/800/600','https://picsum.photos/seed/car-58-1/800/600','https://picsum.photos/seed/car-58-2/800/600']::text[], '{"year": 2024, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 121426, "color": "თეთრი"}'::jsonb, 71);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('944d6c3e-775a-49df-9a2d-2f57ee00aee1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 256GB', 'Google Pixel 8, მეხსიერება: 256GB, ფერი: შავი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2285, 'GEL', 'like_new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-102-0/800/600','https://picsum.photos/seed/phone-102-1/800/600','https://picsum.photos/seed/phone-102-2/800/600']::text[], '{"storage": "256GB", "color": "შავი", "brand": "Google Pixel"}'::jsonb, 124);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cd25375d-a458-4fa1-8e30-f4ab7f217719', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 128GB', 'Apple iPhone 14, მეხსიერება: 128GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1550, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-199-0/800/600','https://picsum.photos/seed/phone-199-1/800/600','https://picsum.photos/seed/phone-199-2/800/600']::text[], '{"storage": "128GB", "color": "თეთრი", "brand": "Apple iPhone"}'::jsonb, 325);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('08e03d84-3a52-4699-9c2c-7fb5d10717ff', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 8GB/512GB SSD', 'ASUS ProArt StudioBook.
პროცესორი: AMD Ryzen 9, ოპერატიული: 8GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 6906, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-188-0/800/600','https://picsum.photos/seed/laptop-188-1/800/600','https://picsum.photos/seed/laptop-188-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "8GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 143);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('40c192e4-9017-4d1e-a006-560bd7ffec40', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad mini 6 256GB', 'Apple iPad mini 6, მეხსიერება: 256GB.
ახალი, დალუქული ყუთით.
კლავიატურის ქეისი მოყვება.', 2350, 'GEL', 'new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/tablet-69-0/800/600','https://picsum.photos/seed/tablet-69-1/800/600','https://picsum.photos/seed/tablet-69-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 447);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ff5656df-e4dc-4001-b10b-2d619d70ba40', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 14 128GB', 'Xiaomi 14, მეხსიერება: 128GB, ფერი: ოქროსფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2024, 'GEL', 'new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-52-0/800/600','https://picsum.photos/seed/phone-52-1/800/600','https://picsum.photos/seed/phone-52-2/800/600']::text[], '{"storage": "128GB", "color": "ოქროსფერი", "brand": "Xiaomi"}'::jsonb, 460);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('af2ddcbc-6309-4c0f-acca-327b567f2d6e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad mini 6 128GB', 'Apple iPad mini 6, მეხსიერება: 128GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
სტილუსი მოყვება.', 2154, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/tablet-64-0/800/600','https://picsum.photos/seed/tablet-64-1/800/600','https://picsum.photos/seed/tablet-64-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 24);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('855ff74f-61d1-4839-aecf-cfacb0d1f2ee', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A8 2019', 'Audi A8, 2019 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 229,359 კმ.
აღჭურვილობა: LED ფარები, მულტიმედია სისტემა, პანორამული ჭერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 82900, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-7-0/800/600','https://picsum.photos/seed/car-7-1/800/600','https://picsum.photos/seed/car-7-2/800/600']::text[], '{"year": 2019, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 229359, "color": "შინდისფერი"}'::jsonb, 221);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e915b708-9809-445f-8736-1a666ec9e3d3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2011', 'Lexus ES 250, 2011 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 27,358 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კონდიციონერი, პარკინგ სენსორები, პანორამული ჭერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 173287, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/car-141-0/800/600','https://picsum.photos/seed/car-141-1/800/600','https://picsum.photos/seed/car-141-2/800/600']::text[], '{"year": 2011, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 27358, "color": "ნაცრისფერი"}'::jsonb, 319);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ed0ff65b-0cfe-40e3-adf0-89555cc2ca96', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi 13C 512GB', 'Xiaomi Redmi 13C, მეხსიერება: 512GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 503, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-5-0/800/600','https://picsum.photos/seed/phone-5-1/800/600','https://picsum.photos/seed/phone-5-2/800/600']::text[], '{"storage": "512GB", "color": "მწვანე", "brand": "Xiaomi"}'::jsonb, 147);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bd84cb63-7b48-46fe-a8b9-092fb5c5b794', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 40 კვ.მ — ისანი', 'სტუდიო ბინა ისანი-ში, 40 კვადრატული მეტრი.
სართული: 12/14.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 54960, 'USD', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-85-0/800/600','https://picsum.photos/seed/apartment-85-1/800/600','https://picsum.photos/seed/apartment-85-2/800/600']::text[], '{"sqm": 40, "floor": 12, "total_floors": 14, "rooms": "სტუდიო", "price_per_sqm": 1374}'::jsonb, 349);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('933408e6-cc30-4b3d-a525-02173e377260', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 16GB/256GB SSD', 'Acer Aspire 5.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1717, 'GEL', 'new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-89-0/800/600','https://picsum.photos/seed/laptop-89-1/800/600','https://picsum.photos/seed/laptop-89-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 464);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('310486ea-057c-4c1f-8dd3-fefff5df3223', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 Pro Max 64GB', 'Apple iPhone 15 Pro Max, მეხსიერება: 64GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 4105, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-40-0/800/600','https://picsum.photos/seed/phone-40-1/800/600','https://picsum.photos/seed/phone-40-2/800/600']::text[], '{"storage": "64GB", "color": "იისფერი", "brand": "Apple iPhone"}'::jsonb, 374);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('21fc8837-5d47-45f2-a010-98b2b53897e1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 128GB', 'Samsung Galaxy Tab A9, მეხსიერება: 128GB.
როგორც ახალი, კომპლექტი სრულია.
კლავიატურის ქეისი მოყვება.', 369, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/tablet-50-0/800/600','https://picsum.photos/seed/tablet-50-1/800/600','https://picsum.photos/seed/tablet-50-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 463);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('caf79582-5227-4e88-8c4e-471c0f2c9ccc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 2252 კვ.მ — კოჯორი', 'მიწის ნაკვეთი კოჯორი-ში, 2252 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ხედი მთებზე, წყაროს წყალი ახლოს.', 53802, 'USD', 'good', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/land-29-0/800/600','https://picsum.photos/seed/land-29-1/800/600','https://picsum.photos/seed/land-29-2/800/600']::text[], '{"sqm": 2252, "purpose": "საცხოვრებელი"}'::jsonb, 120);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1b78bc76-e028-4765-99ad-ae34896fbf7a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T Pro 512GB', 'Xiaomi 13T Pro, მეხსიერება: 512GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2063, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-38-0/800/600','https://picsum.photos/seed/phone-38-1/800/600','https://picsum.photos/seed/phone-38-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 408);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6a0d5046-588e-46ad-9a76-523237f2a090', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan X-Trail 2010', 'Nissan X-Trail, 2010 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 250,267 კმ.
აღჭურვილობა: ტყავის სალონი, ნავიგაცია, LED ფარები, კონდიციონერი, უკანა კამერა, ხის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 54359, 'GEL', 'like_new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-93-0/800/600','https://picsum.photos/seed/car-93-1/800/600','https://picsum.photos/seed/car-93-2/800/600']::text[], '{"year": 2010, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 250267, "color": "შინდისფერი"}'::jsonb, 326);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cd5cbdb5-1f57-4485-92f6-d75b85bd2ec2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A34 512GB', 'Samsung Galaxy A34, მეხსიერება: 512GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 434, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-47-0/800/600','https://picsum.photos/seed/phone-47-1/800/600','https://picsum.photos/seed/phone-47-2/800/600']::text[], '{"storage": "512GB", "color": "შავი", "brand": "Samsung Galaxy"}'::jsonb, 139);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('730e66f6-23c3-460d-a717-646bd881d784', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z8', 'Nikon Z8.
ახალი, დალუქული, ოფიციალური გარანტია.
ჩანთა და დამატებითი ბატარეა მოყვება.', 9231, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/camera-45-0/800/600','https://picsum.photos/seed/camera-45-1/800/600','https://picsum.photos/seed/camera-45-2/800/600']::text[], '{"shutter_count": 41549, "type": "camera"}'::jsonb, 453);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4c03b3ba-6f6e-48b7-b975-a9098c41877d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q7 2016', 'Audi Q7, 2016 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 267,500 კმ.
აღჭურვილობა: პანორამული ჭერი, უკანა კამერა, ხის სალონი, ტყავის სალონი.', 187067, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-133-0/800/600','https://picsum.photos/seed/car-133-1/800/600','https://picsum.photos/seed/car-133-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 267500, "color": "წითელი"}'::jsonb, 280);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3350933f-e26e-4268-a052-2085b838a063', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 129 კვ.მ — ისანი', '3-ოთახიანი ბინა ისანი-ში, 129 კვადრატული მეტრი.
სართული: 10/18.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 190275, 'USD', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-56-0/800/600','https://picsum.photos/seed/apartment-56-1/800/600','https://picsum.photos/seed/apartment-56-2/800/600']::text[], '{"sqm": 129, "floor": 10, "total_floors": 18, "rooms": "3-ოთახიანი", "price_per_sqm": 1475}'::jsonb, 47);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1b208423-0d2d-4c3c-ab0d-33a8e4781aad', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 8GB/512GB SSD', 'Lenovo Yoga 9i.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
დამტენი და ორიგინალი ყუთი მოყვება.', 4156, 'GEL', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-82-0/800/600','https://picsum.photos/seed/laptop-82-1/800/600','https://picsum.photos/seed/laptop-82-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 378);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('82aa447a-4920-40b0-b578-e0fb6b539524', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 104 კვ.მ — ვერა', '3-ოთახიანი ბინა ვერა-ში, 104 კვადრატული მეტრი.
სართული: 11/21.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 278096, 'USD', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-4-0/800/600','https://picsum.photos/seed/apartment-4-1/800/600','https://picsum.photos/seed/apartment-4-2/800/600']::text[], '{"sqm": 104, "floor": 11, "total_floors": 21, "rooms": "3-ოთახიანი", "price_per_sqm": 2674}'::jsonb, 337);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b5afe6bd-28b1-4050-877f-2220af5b2ea1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 Ultra 128GB', 'Samsung Galaxy Tab S9 Ultra, მეხსიერება: 128GB.
როგორც ახალი, კომპლექტი სრულია.
სტილუსი მოყვება.', 2343, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/tablet-49-0/800/600','https://picsum.photos/seed/tablet-49-1/800/600','https://picsum.photos/seed/tablet-49-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 144);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('174ff7d7-295d-470e-b98d-6eb145762fe2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 32GB/512GB SSD', 'HP Pavilion 15.
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 986, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-198-0/800/600','https://picsum.photos/seed/laptop-198-1/800/600','https://picsum.photos/seed/laptop-198-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 464);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e74771fd-419b-4c5b-914f-0404f7571792', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 99 კვ.მ — ნაძალადევი', '3-ოთახიანი ბინა ნაძალადევი-ში, 99 კვადრატული მეტრი.
სართული: 16/19.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 123453, 'USD', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-26-0/800/600','https://picsum.photos/seed/apartment-26-1/800/600','https://picsum.photos/seed/apartment-26-2/800/600']::text[], '{"sqm": 99, "floor": 16, "total_floors": 19, "rooms": "3-ოთახიანი", "price_per_sqm": 1247}'::jsonb, 426);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9ac2c88a-821d-453b-adff-720082782840', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 134 კვ.მ — გლდანი', '4-ოთახიანი ბინა გლდანი-ში, 134 კვადრატული მეტრი.
სართული: 2/5.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მშვიდი უბანი, ბაღებთან ახლოს.', 139762, 'USD', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-30-0/800/600','https://picsum.photos/seed/apartment-30-1/800/600','https://picsum.photos/seed/apartment-30-2/800/600']::text[], '{"sqm": 134, "floor": 2, "total_floors": 5, "rooms": "4-ოთახიანი", "price_per_sqm": 1043}'::jsonb, 153);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('130e1f5f-b190-4ab1-af99-c865fd5b686c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Note 2016', 'Nissan Note, 2016 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 24,558 კმ.
აღჭურვილობა: მულტიმედია სისტემა, გამათბობელი სავარძლები, უკანა კამერა.', 62686, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-152-0/800/600','https://picsum.photos/seed/car-152-1/800/600','https://picsum.photos/seed/car-152-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 24558, "color": "მწვანე"}'::jsonb, 122);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('009fcb40-99c2-4557-9301-96c1a7578b3a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 16 Pro 64GB', 'Apple iPhone 16 Pro, მეხსიერება: 64GB, ფერი: შავი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 4088, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/phone-88-0/800/600','https://picsum.photos/seed/phone-88-1/800/600','https://picsum.photos/seed/phone-88-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "Apple iPhone"}'::jsonb, 241);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('69cf5e37-71e5-4849-ac53-734125e41ae8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad mini 6 128GB', 'Apple iPad mini 6, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
სტილუსი მოყვება.', 2173, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/tablet-30-0/800/600','https://picsum.photos/seed/tablet-30-1/800/600','https://picsum.photos/seed/tablet-30-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('108dfdd1-43a3-4140-a9b3-699dae43b692', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — შავი', 'Apple AirPods Pro 2, ფერი: შავი.
ახალი, არ გახსნილა, სრული გარანტია.', 768, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-55-0/800/600','https://picsum.photos/seed/headphone-55-1/800/600','https://picsum.photos/seed/headphone-55-2/800/600']::text[], '{"color": "შავი", "type": "headphones"}'::jsonb, 138);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6b2bbd87-7603-4853-ad91-ec8acedab992', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 45 კვ.მ — საბურთალო', 'სტუდიო ბინა საბურთალო-ში, 45 კვადრატული მეტრი.
სართული: 14/18.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 96525, 'USD', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/apartment-13-0/800/600','https://picsum.photos/seed/apartment-13-1/800/600','https://picsum.photos/seed/apartment-13-2/800/600']::text[], '{"sqm": 45, "floor": 14, "total_floors": 18, "rooms": "სტუდიო", "price_per_sqm": 2145}'::jsonb, 289);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7b38e4d3-bcfd-4df2-a5eb-d3c986daabe9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy M14 256GB', 'Samsung Galaxy M14, მეხსიერება: 256GB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 383, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-130-0/800/600','https://picsum.photos/seed/phone-130-1/800/600','https://picsum.photos/seed/phone-130-2/800/600']::text[], '{"storage": "256GB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 61);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b8a8ea29-1fb6-4a32-8b4c-ff632afd9da1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 8GB/256GB SSD', 'Dell Inspiron 15.
პროცესორი: Apple M1, ოპერატიული: 8GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 787, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-34-0/800/600','https://picsum.photos/seed/laptop-34-1/800/600','https://picsum.photos/seed/laptop-34-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "8GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 241);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a6936894-728a-49f0-9f08-ccac071e46ec', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Omen 16, 16GB/256GB SSD', 'HP Omen 16.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3935, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-146-0/800/600','https://picsum.photos/seed/laptop-146-1/800/600','https://picsum.photos/seed/laptop-146-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 87);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1fbc9f0b-e1c9-4017-9c14-eeb02f192398', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A7 IV', 'Sony Alpha A7 IV.
შატერის რაოდენობა: 8,075. კარგ მდგომარეობაში, სენსორი სუფთა.
კიტის ობიექტივით: 28-70mm.', 6350, 'GEL', 'like_new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/camera-30-0/800/600','https://picsum.photos/seed/camera-30-1/800/600','https://picsum.photos/seed/camera-30-2/800/600']::text[], '{"shutter_count": 8075, "type": "camera"}'::jsonb, 439);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4ee495d6-20b2-475c-89d0-9f039b0c9c2b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 8GB/256GB SSD', 'ASUS VivoBook 15.
პროცესორი: AMD Ryzen 5, ოპერატიული: 8GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1393, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-86-0/800/600','https://picsum.photos/seed/laptop-86-1/800/600','https://picsum.photos/seed/laptop-86-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "8GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 283);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cad7d85b-9c93-4b6c-a577-6aa73865679c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 678, 'GEL', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-159-0/800/600','https://picsum.photos/seed/phone-159-1/800/600','https://picsum.photos/seed/phone-159-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 244);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c35244bc-dfc3-47c1-be6b-ed5919780f92', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 512GB', 'Google Pixel 7a, მეხსიერება: 512GB, ფერი: თეთრი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1616, 'GEL', 'like_new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/phone-128-0/800/600','https://picsum.photos/seed/phone-128-1/800/600','https://picsum.photos/seed/phone-128-2/800/600']::text[], '{"storage": "512GB", "color": "თეთრი", "brand": "Google Pixel"}'::jsonb, 384);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b300301a-2e8f-4420-af4b-68973975bcae', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — მწვანე', 'Apple AirPods Max, ფერი: მწვანე.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 1681, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/headphone-37-0/800/600','https://picsum.photos/seed/headphone-37-1/800/600','https://picsum.photos/seed/headphone-37-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 222);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7f0aa3e1-37d5-483a-8a0d-57cb3c7a1100', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T Pro 128GB', 'Xiaomi 13T Pro, მეხსიერება: 128GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1751, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-97-0/800/600','https://picsum.photos/seed/phone-97-1/800/600','https://picsum.photos/seed/phone-97-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Xiaomi"}'::jsonb, 435);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5c20dad8-fe52-4510-a4f7-83d4cc446875', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Tucson 2016', 'Hyundai Tucson, 2016 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 218,230 კმ.
აღჭურვილობა: პანორამული ჭერი, კონდიციონერი, ხის სალონი, ნავიგაცია, მულტიმედია სისტემა, უკანა კამერა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 77224, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-127-0/800/600','https://picsum.photos/seed/car-127-1/800/600','https://picsum.photos/seed/car-127-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 218230, "color": "ნაცრისფერი"}'::jsonb, 164);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b516b4b7-a464-4ff5-94d6-05f9d485c39a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 144 კვ.მ, მიწა 1057 კვ.მ — კოჯორი', '2-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 144 კვ.მ, მიწის ნაკვეთი: 1057 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 189866, 'USD', 'good', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-24-0/800/600','https://picsum.photos/seed/house-24-1/800/600','https://picsum.photos/seed/house-24-2/800/600']::text[], '{"sqm_house": 144, "sqm_land": 1057, "floors": 2}'::jsonb, 34);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('736a8e79-50eb-4c9e-870b-e7451a4b9fc1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 7781 კვ.მ — გონიო', 'მიწის ნაკვეთი გონიო-ში, 7781 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ხედი მთებზე, წყაროს წყალი ახლოს.', 567680, 'USD', 'good', 'active', 'გონიო', ARRAY['https://picsum.photos/seed/land-19-0/800/600','https://picsum.photos/seed/land-19-1/800/600','https://picsum.photos/seed/land-19-2/800/600']::text[], '{"sqm": 7781, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 212);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d37a2cd8-f80d-4d61-aaf1-11eda11ee2a3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 512GB', 'Google Pixel 7a, მეხსიერება: 512GB, ფერი: შავი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 1360, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-87-0/800/600','https://picsum.photos/seed/phone-87-1/800/600','https://picsum.photos/seed/phone-87-2/800/600']::text[], '{"storage": "512GB", "color": "შავი", "brand": "Google Pixel"}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c5bd1a29-b581-44c6-9daf-76c5ffe31b3c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz E220d 2018', 'Mercedes-Benz E220d, 2018 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 10,896 კმ.
აღჭურვილობა: ნავიგაცია, ხის სალონი, LED ფარები, პარკინგ სენსორები, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 87282, 'GEL', 'like_new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-64-0/800/600','https://picsum.photos/seed/car-64-1/800/600','https://picsum.photos/seed/car-64-2/800/600']::text[], '{"year": 2018, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 10896, "color": "თეთრი"}'::jsonb, 126);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('94fdcbf3-53d6-45ae-ae0b-59e33408aac3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 64GB/256GB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i9, ოპერატიული: 64GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2779, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-38-0/800/600','https://picsum.photos/seed/laptop-38-1/800/600','https://picsum.photos/seed/laptop-38-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "64GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 407);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('31bb121c-9004-464d-8096-769514e7fe87', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 256GB', 'Samsung Galaxy S24, მეხსიერება: 256GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3757, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/phone-92-0/800/600','https://picsum.photos/seed/phone-92-1/800/600','https://picsum.photos/seed/phone-92-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "Samsung Galaxy"}'::jsonb, 128);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('addbda76-074f-41c0-9179-69949373a61b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 64GB', 'Huawei P60 Pro, მეხსიერება: 64GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 3096, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-96-0/800/600','https://picsum.photos/seed/phone-96-1/800/600','https://picsum.photos/seed/phone-96-2/800/600']::text[], '{"storage": "64GB", "color": "ლურჯი", "brand": "Huawei"}'::jsonb, 130);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6b06ea39-d868-4d4b-9550-609f545f8cdd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 354 კვ.მ, მიწა 2835 კვ.მ — კოჯორი', '2-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 354 კვ.მ, მიწის ნაკვეთი: 2835 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 166142, 'USD', 'fair', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-37-0/800/600','https://picsum.photos/seed/house-37-1/800/600','https://picsum.photos/seed/house-37-2/800/600']::text[], '{"sqm_house": 354, "sqm_land": 2835, "floors": 2}'::jsonb, 312);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('968b6e7e-89ec-4436-a6d3-b5caf77bbf1b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 330e 2023', 'BMW 330e, 2023 წლის გამოშვება.
ფერი: შავი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 54,687 კმ.
აღჭურვილობა: პარკინგ სენსორები, მულტიმედია სისტემა, ტყავის სალონი, უკანა კამერა, ხის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 165048, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-104-0/800/600','https://picsum.photos/seed/car-104-1/800/600','https://picsum.photos/seed/car-104-2/800/600']::text[], '{"year": 2023, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 54687, "color": "შავი"}'::jsonb, 498);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d127b049-f141-49c9-9119-a5191ea3b4c6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Santa Fe 2014', 'Hyundai Santa Fe, 2014 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 145,651 კმ.
აღჭურვილობა: მულტიმედია სისტემა, ხის სალონი, ტყავის სალონი, პარკინგ სენსორები, უკანა კამერა.', 113553, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-137-0/800/600','https://picsum.photos/seed/car-137-1/800/600','https://picsum.photos/seed/car-137-2/800/600']::text[], '{"year": 2014, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 145651, "color": "წითელი"}'::jsonb, 364);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('266d5ce3-cf81-455f-8cd5-597218b311c8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7 Pro 256GB', 'Google Pixel 7 Pro, მეხსიერება: 256GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 2757, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/phone-77-0/800/600','https://picsum.photos/seed/phone-77-1/800/600','https://picsum.photos/seed/phone-77-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 150);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e7aeb599-ac3c-4dae-9257-b102674b3a67', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Passat 2022', 'Volkswagen Passat, 2022 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 79,365 კმ.
აღჭურვილობა: მულტიმედია სისტემა, გამათბობელი სავარძლები, პარკინგ სენსორები, კონდიციონერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 47058, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-45-0/800/600','https://picsum.photos/seed/car-45-1/800/600','https://picsum.photos/seed/car-45-2/800/600']::text[], '{"year": 2022, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 79365, "color": "თეთრი"}'::jsonb, 36);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2ae00917-6dea-4b75-a4e5-ef337aa5ed22', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Santa Fe 2023', 'Hyundai Santa Fe, 2023 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 105,868 კმ.
აღჭურვილობა: ტყავის სალონი, პარკინგ სენსორები, ხის სალონი, პანორამული ჭერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 22777, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/car-33-0/800/600','https://picsum.photos/seed/car-33-1/800/600','https://picsum.photos/seed/car-33-2/800/600']::text[], '{"year": 2023, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 105868, "color": "მწვანე"}'::jsonb, 481);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('222c4bb7-a6c2-49a4-a208-f71fcb62fa9c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort 45 — მწვანე', 'Bose QuietComfort 45, ფერი: მწვანე.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 633, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/headphone-25-0/800/600','https://picsum.photos/seed/headphone-25-1/800/600','https://picsum.photos/seed/headphone-25-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 370);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('676fa7c0-a73d-4112-952b-37ef7b21ae4b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 520d 2012', 'BMW 520d, 2012 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 62,432 კმ.
აღჭურვილობა: კრუიზ კონტროლი, მულტიმედია სისტემა, LED ფარები, პანორამული ჭერი, უკანა კამერა, ხის სალონი.', 184848, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-37-0/800/600','https://picsum.photos/seed/car-37-1/800/600','https://picsum.photos/seed/car-37-2/800/600']::text[], '{"year": 2012, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 62432, "color": "ლურჯი"}'::jsonb, 179);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a8d378b0-b98b-432c-97ba-dd641f84b965', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 127 კვ.მ — ვერა', '4-ოთახიანი ბინა ვერა-ში, 127 კვადრატული მეტრი.
სართული: 9/15.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 485648, 'USD', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-89-0/800/600','https://picsum.photos/seed/apartment-89-1/800/600','https://picsum.photos/seed/apartment-89-2/800/600']::text[], '{"sqm": 127, "floor": 9, "total_floors": 15, "rooms": "4-ოთახიანი", "price_per_sqm": 3824}'::jsonb, 499);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ff6c0e08-3d13-4b6d-a568-2b2578f061fd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 64GB/256GB SSD', 'ASUS ProArt StudioBook.
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5052, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-48-0/800/600','https://picsum.photos/seed/laptop-48-1/800/600','https://picsum.photos/seed/laptop-48-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 290);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2688079e-f491-44fd-8e36-3aa96bd0a761', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 124 კვ.მ — ვაკე', '3-ოთახიანი ბინა ვაკე-ში, 124 კვადრატული მეტრი.
სართული: 1/7.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 409076, 'USD', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-46-0/800/600','https://picsum.photos/seed/apartment-46-1/800/600','https://picsum.photos/seed/apartment-46-2/800/600']::text[], '{"sqm": 124, "floor": 1, "total_floors": 7, "rooms": "3-ოთახიანი", "price_per_sqm": 3299}'::jsonb, 180);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d3ec1acf-3f9f-4035-a29a-036eee07d7f9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz C200 2015', 'Mercedes-Benz C200, 2015 წლის გამოშვება.
ფერი: მწვანე, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 186,100 კმ.
აღჭურვილობა: კონდიციონერი, მულტიმედია სისტემა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 166521, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-143-0/800/600','https://picsum.photos/seed/car-143-1/800/600','https://picsum.photos/seed/car-143-2/800/600']::text[], '{"year": 2015, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 186100, "color": "მწვანე"}'::jsonb, 270);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('56b2bd4e-abdf-46d9-84aa-54d8c4704fcd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 58 კვ.მ — ვაკე', '2-ოთახიანი ბინა ვაკე-ში, 58 კვადრატული მეტრი.
სართული: 20/24.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 182120, 'USD', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-14-0/800/600','https://picsum.photos/seed/apartment-14-1/800/600','https://picsum.photos/seed/apartment-14-2/800/600']::text[], '{"sqm": 58, "floor": 20, "total_floors": 24, "rooms": "2-ოთახიანი", "price_per_sqm": 3140}'::jsonb, 69);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('65617358-291a-4104-acff-e858061fe669', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'DJI Osmo Action 4', 'DJI Osmo Action 4.
შატერის რაოდენობა: 23,596. კარგ მდგომარეობაში, სენსორი სუფთა.
ჩანთა და დამატებითი ბატარეა მოყვება.', 378, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/camera-11-0/800/600','https://picsum.photos/seed/camera-11-1/800/600','https://picsum.photos/seed/camera-11-2/800/600']::text[], '{"shutter_count": 23596, "type": "camera"}'::jsonb, 316);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('183a5163-cd1f-45a5-9073-d318f8f8d4dc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Touareg 2015', 'Volkswagen Touareg, 2015 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 152,022 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ხის სალონი, მულტიმედია სისტემა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 23679, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-118-0/800/600','https://picsum.photos/seed/car-118-1/800/600','https://picsum.photos/seed/car-118-2/800/600']::text[], '{"year": 2015, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 152022, "color": "მწვანე"}'::jsonb, 205);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('75e80269-80d2-4858-84c9-3ca244f7dccb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 32GB/2TB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M3 Max, ოპერატიული: 32GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 6136, 'GEL', 'new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-19-0/800/600','https://picsum.photos/seed/laptop-19-1/800/600','https://picsum.photos/seed/laptop-19-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "32GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 477);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1aacd60c-b036-4cb2-aaa7-6b7d4c37b27f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 64GB/512GB SSD', 'ASUS VivoBook 15.
პროცესორი: AMD Ryzen 7, ოპერატიული: 64GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1755, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-40-0/800/600','https://picsum.photos/seed/laptop-40-1/800/600','https://picsum.photos/seed/laptop-40-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "64GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 35);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c5a36389-1f77-49fc-9536-1a490f76bf47', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 108 კვ.მ — დიდუბე', '3-ოთახიანი ბინა დიდუბე-ში, 108 კვადრატული მეტრი.
სართული: 7/10.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 160488, 'USD', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-61-0/800/600','https://picsum.photos/seed/apartment-61-1/800/600','https://picsum.photos/seed/apartment-61-2/800/600']::text[], '{"sqm": 108, "floor": 7, "total_floors": 10, "rooms": "3-ოთახიანი", "price_per_sqm": 1486}'::jsonb, 119);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f24e2ff9-f6e7-47fd-b6e8-b73bc189a02d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 256GB', 'Apple iPad Pro 11" M2, მეხსიერება: 256GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi ვერსია.', 1786, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/tablet-31-0/800/600','https://picsum.photos/seed/tablet-31-1/800/600','https://picsum.photos/seed/tablet-31-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 430);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('75cff38c-52fc-402b-8fd2-73bba566f449', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort 45 — ვერცხლისფერი', 'Bose QuietComfort 45, ფერი: ვერცხლისფერი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 729, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/headphone-42-0/800/600','https://picsum.photos/seed/headphone-42-1/800/600','https://picsum.photos/seed/headphone-42-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 68);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5af593e2-872c-46b0-9c78-e11023d840d3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Forester 2015', 'Subaru Forester, 2015 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 202,867 კმ.
აღჭურვილობა: LED ფარები, ნავიგაცია, მულტიმედია სისტემა, კონდიციონერი, უკანა კამერა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 103863, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-49-0/800/600','https://picsum.photos/seed/car-49-1/800/600','https://picsum.photos/seed/car-49-2/800/600']::text[], '{"year": 2015, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 202867, "color": "ვერცხლისფერი"}'::jsonb, 96);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1f7a8a7f-2c01-4dc7-b90e-d0ea7fc23c72', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO X6 Pro 64GB', 'Xiaomi POCO X6 Pro, მეხსიერება: 64GB, ფერი: ტიტანის ნაცრისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1280, 'GEL', 'like_new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/phone-64-0/800/600','https://picsum.photos/seed/phone-64-1/800/600','https://picsum.photos/seed/phone-64-2/800/600']::text[], '{"storage": "64GB", "color": "ტიტანის ნაცრისფერი", "brand": "Xiaomi"}'::jsonb, 135);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('653c6111-de2b-4069-9ee6-6cb932d6a585', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 2695 კვ.მ — ბორჯომი', 'მიწის ნაკვეთი ბორჯომი-ში, 2695 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ვენახიანი ნაკვეთი, ნაყოფიერი ნიადაგი.', 76137, 'USD', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/land-28-0/800/600','https://picsum.photos/seed/land-28-1/800/600','https://picsum.photos/seed/land-28-2/800/600']::text[], '{"sqm": 2695, "purpose": "საცხოვრებელი"}'::jsonb, 451);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('412f7655-b4ab-4e0f-8930-06ad9a070215', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Note 2013', 'Nissan Note, 2013 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 235,941 კმ.
აღჭურვილობა: ნავიგაცია, პანორამული ჭერი, ტყავის სალონი, მულტიმედია სისტემა, კრუიზ კონტროლი, უკანა კამერა.', 117818, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-47-0/800/600','https://picsum.photos/seed/car-47-1/800/600','https://picsum.photos/seed/car-47-2/800/600']::text[], '{"year": 2013, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 235941, "color": "წითელი"}'::jsonb, 27);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('549049c7-5ee1-44ba-8b25-191fbc240749', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad T14s, 32GB/2TB SSD', 'Lenovo ThinkPad T14s.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2785, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/laptop-132-0/800/600','https://picsum.photos/seed/laptop-132-1/800/600','https://picsum.photos/seed/laptop-132-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 295);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0c7306c8-a5ca-42fd-b918-649dbc3e23b6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 Pro Max 64GB', 'Apple iPhone 14 Pro Max, მეხსიერება: 64GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2233, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-55-0/800/600','https://picsum.photos/seed/phone-55-1/800/600','https://picsum.photos/seed/phone-55-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Apple iPhone"}'::jsonb, 395);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('10f24d65-e00f-4a57-9285-d0d8d8804312', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 66,268. პროფესიონალურად მოვლილი.
ობიექტივი არ მოყვება (მხოლოდ body).', 4332, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/camera-24-0/800/600','https://picsum.photos/seed/camera-24-1/800/600','https://picsum.photos/seed/camera-24-2/800/600']::text[], '{"shutter_count": 66268, "type": "camera"}'::jsonb, 417);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9f47a8fd-3cc2-4f65-ba25-c49a7b6f2ce0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 64GB/512GB SSD', 'Acer Aspire 5.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1372, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-109-0/800/600','https://picsum.photos/seed/laptop-109-1/800/600','https://picsum.photos/seed/laptop-109-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "512GB SSD", "brand": "Acer"}'::jsonb, 478);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d61c6cf2-f5fa-4a2d-bf68-84d1d25b2822', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Nitro 5, 32GB/256GB SSD', 'Acer Nitro 5.
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2951, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-126-0/800/600','https://picsum.photos/seed/laptop-126-1/800/600','https://picsum.photos/seed/laptop-126-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 280);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('63ab4274-2ab7-4501-9849-98669f947069', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 114 კვ.მ — ვაკე', '3-ოთახიანი ბინა ვაკე-ში, 114 კვადრატული მეტრი.
სართული: 10/16.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 285570, 'USD', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-67-0/800/600','https://picsum.photos/seed/apartment-67-1/800/600','https://picsum.photos/seed/apartment-67-2/800/600']::text[], '{"sqm": 114, "floor": 10, "total_floors": 16, "rooms": "3-ოთახიანი", "price_per_sqm": 2505}'::jsonb, 416);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b3740e1a-8863-406b-9bde-227209f98425', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai i30 2016', 'Hyundai i30, 2016 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 199,572 კმ.
აღჭურვილობა: ხის სალონი, მულტიმედია სისტემა, ნავიგაცია, LED ფარები, კონდიციონერი, უკანა კამერა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 111799, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-19-0/800/600','https://picsum.photos/seed/car-19-1/800/600','https://picsum.photos/seed/car-19-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 199572, "color": "წითელი"}'::jsonb, 247);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('25be7e9b-3341-41e5-b122-ddb155970abc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A6700', 'Sony Alpha A6700.
შატერის რაოდენობა: 35,839. კარგ მდგომარეობაში, სენსორი სუფთა.
მეხსიერების ბარათი 128GB მოყვება.', 3868, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/camera-52-0/800/600','https://picsum.photos/seed/camera-52-1/800/600','https://picsum.photos/seed/camera-52-2/800/600']::text[], '{"shutter_count": 35839, "type": "camera"}'::jsonb, 33);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b2415455-d5a6-48ef-8dde-b5f3e0ce3d1b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 6829 კვ.მ — წყნეთი', 'მიწის ნაკვეთი წყნეთი-ში, 6829 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 125814, 'USD', 'good', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/land-25-0/800/600','https://picsum.photos/seed/land-25-1/800/600','https://picsum.photos/seed/land-25-2/800/600']::text[], '{"sqm": 6829, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 373);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('31c0c423-75cc-44bc-bf08-c22f9aa8d95a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLA 200 2014', 'Mercedes-Benz GLA 200, 2014 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 127,256 კმ.
აღჭურვილობა: ხის სალონი, კონდიციონერი, გამათბობელი სავარძლები.', 48074, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/car-53-0/800/600','https://picsum.photos/seed/car-53-1/800/600','https://picsum.photos/seed/car-53-2/800/600']::text[], '{"year": 2014, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 127256, "color": "წითელი"}'::jsonb, 29);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bda90ed4-0162-462d-855a-7a35ba367698', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24+ 1TB', 'Samsung Galaxy S24+, მეხსიერება: 1TB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2751, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-22-0/800/600','https://picsum.photos/seed/phone-22-1/800/600','https://picsum.photos/seed/phone-22-2/800/600']::text[], '{"storage": "1TB", "color": "თეთრი", "brand": "Samsung Galaxy"}'::jsonb, 259);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1c2e85c5-754d-4dec-8403-d92874c1a9e3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 62 კვ.მ — ნაძალადევი', '2-ოთახიანი ბინა ნაძალადევი-ში, 62 კვადრატული მეტრი.
სართული: 18/24.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მშვიდი უბანი, ბაღებთან ახლოს.', 83576, 'USD', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-28-0/800/600','https://picsum.photos/seed/apartment-28-1/800/600','https://picsum.photos/seed/apartment-28-2/800/600']::text[], '{"sqm": 62, "floor": 18, "total_floors": 24, "rooms": "2-ოთახიანი", "price_per_sqm": 1348}'::jsonb, 283);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9f24bf73-753b-4ab1-a52a-776db8953e66', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 256GB', 'OnePlus Nord CE 3, მეხსიერება: 256GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 680, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-41-0/800/600','https://picsum.photos/seed/phone-41-1/800/600','https://picsum.photos/seed/phone-41-2/800/600']::text[], '{"storage": "256GB", "color": "ტიტანის ნაცრისფერი", "brand": "OnePlus"}'::jsonb, 334);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b373ef0d-ede0-4627-971f-f50e51d2273d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 6149 კვ.მ — საგურამო', 'მიწის ნაკვეთი საგურამო-ში, 6149 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 93864, 'USD', 'good', 'active', 'საგურამო', ARRAY['https://picsum.photos/seed/land-21-0/800/600','https://picsum.photos/seed/land-21-1/800/600','https://picsum.photos/seed/land-21-2/800/600']::text[], '{"sqm": 6149, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 227);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2dc78ce9-f404-41df-99a3-d597a514d1e0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Palisade 2015', 'Hyundai Palisade, 2015 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 117,748 კმ.
აღჭურვილობა: უკანა კამერა, კონდიციონერი, მულტიმედია სისტემა, პანორამული ჭერი, ტყავის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 114658, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-96-0/800/600','https://picsum.photos/seed/car-96-1/800/600','https://picsum.photos/seed/car-96-2/800/600']::text[], '{"year": 2015, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 117748, "color": "შინდისფერი"}'::jsonb, 488);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('330d61f9-3e8f-41e7-9910-dc61dbc0e90f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW M3 2015', 'BMW M3, 2015 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 5,630 კმ.
აღჭურვილობა: მულტიმედია სისტემა, LED ფარები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 61831, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-171-0/800/600','https://picsum.photos/seed/car-171-1/800/600','https://picsum.photos/seed/car-171-2/800/600']::text[], '{"year": 2015, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 5630, "color": "ნაცრისფერი"}'::jsonb, 103);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ab096427-832e-46c8-8986-8e9920311f93', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9604 კვ.მ — გონიო', 'მიწის ნაკვეთი გონიო-ში, 9604 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 619663, 'USD', 'good', 'active', 'გონიო', ARRAY['https://picsum.photos/seed/land-34-0/800/600','https://picsum.photos/seed/land-34-1/800/600','https://picsum.photos/seed/land-34-2/800/600']::text[], '{"sqm": 9604, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 312);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bd129cfe-518e-4db5-a46a-8dd99cd9876b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW M3 2021', 'BMW M3, 2021 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 29,281 კმ.
აღჭურვილობა: LED ფარები, კრუიზ კონტროლი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 147112, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-100-0/800/600','https://picsum.photos/seed/car-100-1/800/600','https://picsum.photos/seed/car-100-2/800/600']::text[], '{"year": 2021, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 29281, "color": "შავი"}'::jsonb, 14);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('145119a1-1210-489f-8926-196c80c86684', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 113 კვ.მ — ბათუმი ცენტრი', '4-ოთახიანი ბინა ბათუმი ცენტრი-ში, 113 კვადრატული მეტრი.
სართული: 7/9.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 165658, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-49-0/800/600','https://picsum.photos/seed/apartment-49-1/800/600','https://picsum.photos/seed/apartment-49-2/800/600']::text[], '{"sqm": 113, "floor": 7, "total_floors": 9, "rooms": "4-ოთახიანი", "price_per_sqm": 1466}'::jsonb, 6);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fcb1cd27-f96d-4b62-a403-bff1b4a3c0d0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 98 კვ.მ — ბათუმი ახალი ბულვარი', '3-ოთახიანი ბინა ბათუმი ახალი ბულვარი-ში, 98 კვადრატული მეტრი.
სართული: 12/18.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 258818, 'USD', 'new', 'active', 'ბათუმი ახალი ბულვარი', ARRAY['https://picsum.photos/seed/apartment-86-0/800/600','https://picsum.photos/seed/apartment-86-1/800/600','https://picsum.photos/seed/apartment-86-2/800/600']::text[], '{"sqm": 98, "floor": 12, "total_floors": 18, "rooms": "3-ოთახიანი", "price_per_sqm": 2641}'::jsonb, 342);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('98a51c19-4bb4-48d8-882e-a0a5535b256a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 8444 კვ.მ — ნატახტარი', 'მიწის ნაკვეთი ნატახტარი-ში, 8444 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ხედი მთებზე, წყაროს წყალი ახლოს.', 76002, 'USD', 'good', 'active', 'ნატახტარი', ARRAY['https://picsum.photos/seed/land-39-0/800/600','https://picsum.photos/seed/land-39-1/800/600','https://picsum.photos/seed/land-39-2/800/600']::text[], '{"sqm": 8444, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 103);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3108636a-b382-4579-890d-bbe00f2d57c6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Stinger 2013', 'Kia Stinger, 2013 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 70,696 კმ.
აღჭურვილობა: უკანა კამერა, ტყავის სალონი, LED ფარები, ხის სალონი, პანორამული ჭერი, კრუიზ კონტროლი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 68782, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-190-0/800/600','https://picsum.photos/seed/car-190-1/800/600','https://picsum.photos/seed/car-190-2/800/600']::text[], '{"year": 2013, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 70696, "color": "შინდისფერი"}'::jsonb, 358);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('678d2244-b7ce-41ef-9850-a197121285b8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 16GB/256GB SSD', 'ASUS ROG Strix G16.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3653, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-13-0/800/600','https://picsum.photos/seed/laptop-13-1/800/600','https://picsum.photos/seed/laptop-13-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 386);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('02c2d0e3-529b-4ba6-ae45-3108e50f1027', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 312 კვ.მ, მიწა 2064 კვ.მ — ბათუმი კვარიათი', '1-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 312 კვ.მ, მიწის ნაკვეთი: 2064 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 118093, 'USD', 'fair', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-42-0/800/600','https://picsum.photos/seed/house-42-1/800/600','https://picsum.photos/seed/house-42-2/800/600']::text[], '{"sqm_house": 312, "sqm_land": 2064, "floors": 1}'::jsonb, 450);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d2b9286f-b475-4edd-9775-dca81c903089', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Camry 2013', 'Toyota Camry, 2013 წლის გამოშვება.
ფერი: შავი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 249,845 კმ.
აღჭურვილობა: მულტიმედია სისტემა, პანორამული ჭერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 117750, 'GEL', 'fair', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/car-102-0/800/600','https://picsum.photos/seed/car-102-1/800/600','https://picsum.photos/seed/car-102-2/800/600']::text[], '{"year": 2013, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 249845, "color": "შავი"}'::jsonb, 483);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5c6b2380-26dd-43db-9662-b5d5e10de0a3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q3 2016', 'Audi Q3, 2016 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 202,941 კმ.
აღჭურვილობა: უკანა კამერა, პანორამული ჭერი, ხის სალონი, ნავიგაცია, კრუიზ კონტროლი, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 243259, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-188-0/800/600','https://picsum.photos/seed/car-188-1/800/600','https://picsum.photos/seed/car-188-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 202941, "color": "შინდისფერი"}'::jsonb, 286);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1d6c7392-501b-4cdc-8d5d-915ebadb8a81', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 154 კვ.მ, მიწა 2134 კვ.მ — კოჯორი', '3-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 154 კვ.მ, მიწის ნაკვეთი: 2134 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 60149, 'USD', 'fair', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-8-0/800/600','https://picsum.photos/seed/house-8-1/800/600','https://picsum.photos/seed/house-8-2/800/600']::text[], '{"sqm_house": 154, "sqm_land": 2134, "floors": 3}'::jsonb, 223);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7f18ddc4-bbaa-45f4-9c66-f3c8b928f257', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 351 კვ.მ, მიწა 590 კვ.მ — ოქროყანა', '3-სართულიანი სახლი ოქროყანა-ში.
საცხოვრებელი ფართი: 351 კვ.მ, მიწის ნაკვეთი: 590 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 418735, 'USD', 'fair', 'active', 'ოქროყანა', ARRAY['https://picsum.photos/seed/house-22-0/800/600','https://picsum.photos/seed/house-22-1/800/600','https://picsum.photos/seed/house-22-2/800/600']::text[], '{"sqm_house": 351, "sqm_land": 590, "floors": 3}'::jsonb, 104);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('53408f76-1c65-44e8-b201-277e2984e548', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 64GB/256GB SSD', 'Dell Latitude 5540.
პროცესორი: AMD Ryzen 7, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3433, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-6-0/800/600','https://picsum.photos/seed/laptop-6-1/800/600','https://picsum.photos/seed/laptop-6-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "64GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 205);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ba77cd71-861b-460c-ba5f-a8c69226f927', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad 10th Gen 256GB', 'Apple iPad 10th Gen, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
კლავიატურის ქეისი მოყვება.', 954, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-26-0/800/600','https://picsum.photos/seed/tablet-26-1/800/600','https://picsum.photos/seed/tablet-26-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 187);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6d1cb23f-b49a-404a-b7be-67884fa646f2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 5416 კვ.მ — მანგლისი', 'მიწის ნაკვეთი მანგლისი-ში, 5416 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 12588, 'USD', 'good', 'active', 'მანგლისი', ARRAY['https://picsum.photos/seed/land-1-0/800/600','https://picsum.photos/seed/land-1-1/800/600','https://picsum.photos/seed/land-1-2/800/600']::text[], '{"sqm": 5416, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 51);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b6902611-dd1a-4dbe-bd35-13c2addc3be0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 16GB/512GB SSD', 'Acer Aspire 5.
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1511, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-50-0/800/600','https://picsum.photos/seed/laptop-50-1/800/600','https://picsum.photos/seed/laptop-50-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "512GB SSD", "brand": "Acer"}'::jsonb, 3);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('14a5e3e7-3b94-40be-a298-aa5cbaaae6c3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Outback 2009', 'Subaru Outback, 2009 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 131,770 კმ.
აღჭურვილობა: ნავიგაცია, პარკინგ სენსორები, LED ფარები, პანორამული ჭერი, მულტიმედია სისტემა, ხის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 114675, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-26-0/800/600','https://picsum.photos/seed/car-26-1/800/600','https://picsum.photos/seed/car-26-2/800/600']::text[], '{"year": 2009, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 131770, "color": "შავი"}'::jsonb, 400);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d3cc39fb-96fe-44e1-a0bc-880789cc01d6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S23 512GB', 'Samsung Galaxy S23, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2368, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/phone-111-0/800/600','https://picsum.photos/seed/phone-111-1/800/600','https://picsum.photos/seed/phone-111-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "Samsung Galaxy"}'::jsonb, 416);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6fcb22de-9378-4ebe-82b4-7a7044dbdf6c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Forester 2009', 'Subaru Forester, 2009 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 270,635 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ხის სალონი, პარკინგ სენსორები, ნავიგაცია.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 107360, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/car-79-0/800/600','https://picsum.photos/seed/car-79-1/800/600','https://picsum.photos/seed/car-79-2/800/600']::text[], '{"year": 2009, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 270635, "color": "შავი"}'::jsonb, 364);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7b0836bf-afd2-4f9a-b314-45cfaff9b92f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Omen 16, 16GB/256GB SSD', 'HP Omen 16.
პროცესორი: Intel Core i7, ოპერატიული: 16GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5300, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-97-0/800/600','https://picsum.photos/seed/laptop-97-1/800/600','https://picsum.photos/seed/laptop-97-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "16GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 322);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3e9900be-a99d-408d-bdc0-18076f649305', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Impreza 2013', 'Subaru Impreza, 2013 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 199,386 კმ.
აღჭურვილობა: კონდიციონერი, ნავიგაცია, კრუიზ კონტროლი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 95874, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-163-0/800/600','https://picsum.photos/seed/car-163-1/800/600','https://picsum.photos/seed/car-163-2/800/600']::text[], '{"year": 2013, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 199386, "color": "ნაცრისფერი"}'::jsonb, 233);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('32651374-a33e-4845-9d7b-cd9eac28a408', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 64GB/512GB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i9, ოპერატიული: 64GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 2223, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-184-0/800/600','https://picsum.photos/seed/laptop-184-1/800/600','https://picsum.photos/seed/laptop-184-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "64GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 331);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a5c8016f-94b2-47c8-9feb-da3083447635', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Omen 16, 8GB/1TB SSD', 'HP Omen 16.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
დამტენი და ორიგინალი ყუთი მოყვება.', 4169, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-185-0/800/600','https://picsum.photos/seed/laptop-185-1/800/600','https://picsum.photos/seed/laptop-185-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 63);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('af7ab663-3475-4a2f-b0ed-4b3c9643290a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 152 კვ.მ — გლდანი', '4-ოთახიანი ბინა გლდანი-ში, 152 კვადრატული მეტრი.
სართული: 17/20.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 132088, 'USD', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-7-0/800/600','https://picsum.photos/seed/apartment-7-1/800/600','https://picsum.photos/seed/apartment-7-2/800/600']::text[], '{"sqm": 152, "floor": 17, "total_floors": 20, "rooms": "4-ოთახიანი", "price_per_sqm": 869}'::jsonb, 306);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('21546d77-49b3-44b5-8d80-1df99fbf093e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Omen 16, 64GB/256GB SSD', 'HP Omen 16.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 2743, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-170-0/800/600','https://picsum.photos/seed/laptop-170-1/800/600','https://picsum.photos/seed/laptop-170-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 448);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bc0f5fc9-757e-4b59-bdfd-2b826af60697', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Arteon 2016', 'Volkswagen Arteon, 2016 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 113,445 კმ.
აღჭურვილობა: პარკინგ სენსორები, LED ფარები, პანორამული ჭერი, უკანა კამერა, ნავიგაცია.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 74647, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-164-0/800/600','https://picsum.photos/seed/car-164-1/800/600','https://picsum.photos/seed/car-164-2/800/600']::text[], '{"year": 2016, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 113445, "color": "წითელი"}'::jsonb, 411);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('89754caf-0c4f-4461-ac4d-2fc03abc04aa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 8GB/512GB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M3 Max, ოპერატიული: 8GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1877, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-168-0/800/600','https://picsum.photos/seed/laptop-168-1/800/600','https://picsum.photos/seed/laptop-168-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "8GB", "ssd": "512GB SSD", "brand": "Apple MacBook"}'::jsonb, 228);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a15a7bde-b656-40b3-9fa4-913f969133ca', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 64GB/2TB SSD', 'Acer Swift 5.
პროცესორი: Intel Core i9, ოპერატიული: 64GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3267, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-4-0/800/600','https://picsum.photos/seed/laptop-4-1/800/600','https://picsum.photos/seed/laptop-4-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "64GB", "ssd": "2TB SSD", "brand": "Acer"}'::jsonb, 427);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0536f2ca-e10e-49e0-b50a-6b3c90a2fa98', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad 5, 8GB/512GB SSD', 'Lenovo IdeaPad 5.
პროცესორი: Apple M1, ოპერატიული: 8GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1662, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/laptop-130-0/800/600','https://picsum.photos/seed/laptop-130-1/800/600','https://picsum.photos/seed/laptop-130-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "8GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 427);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2c8482c7-561a-409b-b6c3-ce4db3c30d67', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 643, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-12-0/800/600','https://picsum.photos/seed/phone-12-1/800/600','https://picsum.photos/seed/phone-12-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 187);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('258de339-9429-4407-9622-5c0369659881', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS TUF Gaming A15, 8GB/2TB SSD', 'ASUS TUF Gaming A15.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1789, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-37-0/800/600','https://picsum.photos/seed/laptop-37-1/800/600','https://picsum.photos/seed/laptop-37-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 143);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2bd52505-c772-41d4-becf-41036ba7abae', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 1TB', 'Huawei Nova 12, მეხსიერება: 1TB, ფერი: მწვანე.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1113, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-110-0/800/600','https://picsum.photos/seed/phone-110-1/800/600','https://picsum.photos/seed/phone-110-2/800/600']::text[], '{"storage": "1TB", "color": "მწვანე", "brand": "Huawei"}'::jsonb, 199);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4b9b0710-5250-4382-a038-3a919687318c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Omen 16, 8GB/256GB SSD', 'HP Omen 16.
პროცესორი: AMD Ryzen 5, ოპერატიული: 8GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 4343, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-199-0/800/600','https://picsum.photos/seed/laptop-199-1/800/600','https://picsum.photos/seed/laptop-199-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "8GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 293);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9fd44e68-6087-45e8-a67d-85ac593bd2c8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Nitro 5, 32GB/1TB SSD', 'Acer Nitro 5.
პროცესორი: Apple M2, ოპერატიული: 32GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2013, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-164-0/800/600','https://picsum.photos/seed/laptop-164-1/800/600','https://picsum.photos/seed/laptop-164-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "32GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 32);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('44884359-97aa-4662-b655-8f0cc378c4e4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A3 2014', 'Audi A3, 2014 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 58,888 კმ.
აღჭურვილობა: ნავიგაცია, უკანა კამერა, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 146966, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-194-0/800/600','https://picsum.photos/seed/car-194-1/800/600','https://picsum.photos/seed/car-194-2/800/600']::text[], '{"year": 2014, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 58888, "color": "ნაცრისფერი"}'::jsonb, 356);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1d750c49-077d-4c69-b7ca-9cb2459960a2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 16GB/2TB SSD', 'Dell Alienware m16.
პროცესორი: AMD Ryzen 7, ოპერატიული: 16GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 5087, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-8-0/800/600','https://picsum.photos/seed/laptop-8-1/800/600','https://picsum.photos/seed/laptop-8-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "16GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 197);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a18252cb-daff-4b40-8401-0dbccaf1209a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 16GB/256GB SSD', 'Acer Swift 5.
პროცესორი: AMD Ryzen 7, ოპერატიული: 16GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 3622, 'GEL', 'new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-3-0/800/600','https://picsum.photos/seed/laptop-3-1/800/600','https://picsum.photos/seed/laptop-3-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "16GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 43);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1dc97115-5d52-48de-a64e-59b496c97eb1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 327 კვ.მ, მიწა 2761 კვ.მ — შინდისი', '2-სართულიანი სახლი შინდისი-ში.
საცხოვრებელი ფართი: 327 კვ.მ, მიწის ნაკვეთი: 2761 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 117958, 'USD', 'like_new', 'active', 'შინდისი', ARRAY['https://picsum.photos/seed/house-52-0/800/600','https://picsum.photos/seed/house-52-1/800/600','https://picsum.photos/seed/house-52-2/800/600']::text[], '{"sqm_house": 327, "sqm_land": 2761, "floors": 2}'::jsonb, 231);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('df61492a-f6d4-4404-a084-768e798386b5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T Pro 512GB', 'Xiaomi 13T Pro, მეხსიერება: 512GB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1697, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-95-0/800/600','https://picsum.photos/seed/phone-95-1/800/600','https://picsum.photos/seed/phone-95-2/800/600']::text[], '{"storage": "512GB", "color": "ოქროსფერი", "brand": "Xiaomi"}'::jsonb, 200);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a23a1146-d5eb-422e-9eb5-8bd3ac37dfc6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus IS 300 2024', 'Lexus IS 300, 2024 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 141,890 კმ.
აღჭურვილობა: კრუიზ კონტროლი, მულტიმედია სისტემა.', 107628, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-68-0/800/600','https://picsum.photos/seed/car-68-1/800/600','https://picsum.photos/seed/car-68-2/800/600']::text[], '{"year": 2024, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 141890, "color": "შინდისფერი"}'::jsonb, 448);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('871fae7b-3028-4aa3-a7a1-dcf14a0aaea7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 130 კვ.მ — ვერა', '4-ოთახიანი ბინა ვერა-ში, 130 კვადრატული მეტრი.
სართული: 1/1.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 505310, 'USD', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-47-0/800/600','https://picsum.photos/seed/apartment-47-1/800/600','https://picsum.photos/seed/apartment-47-2/800/600']::text[], '{"sqm": 130, "floor": 1, "total_floors": 1, "rooms": "4-ოთახიანი", "price_per_sqm": 3887}'::jsonb, 376);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7c22a270-fe76-4aac-ad6b-b2f52b57c72e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S23 Ultra 1TB', 'Samsung Galaxy S23 Ultra, მეხსიერება: 1TB, ფერი: ლურჯი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2573, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-162-0/800/600','https://picsum.photos/seed/phone-162-1/800/600','https://picsum.photos/seed/phone-162-2/800/600']::text[], '{"storage": "1TB", "color": "ლურჯი", "brand": "Samsung Galaxy"}'::jsonb, 194);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('27384942-a1d6-4c92-ae15-540378bcc14d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 707, 'GEL', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-106-0/800/600','https://picsum.photos/seed/phone-106-1/800/600','https://picsum.photos/seed/phone-106-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 409);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0e3d2beb-df6d-478c-9a01-8710cd8cfb0e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A3 2017', 'Audi A3, 2017 წლის გამოშვება.
ფერი: შავი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 37,430 კმ.
აღჭურვილობა: უკანა კამერა, ხის სალონი, მულტიმედია სისტემა, კრუიზ კონტროლი, პანორამული ჭერი, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 199829, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-48-0/800/600','https://picsum.photos/seed/car-48-1/800/600','https://picsum.photos/seed/car-48-2/800/600']::text[], '{"year": 2017, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 37430, "color": "შავი"}'::jsonb, 257);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e7d541d4-a88d-478b-8de0-f37fb42fdbd9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi 13C 512GB', 'Xiaomi Redmi 13C, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 331, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-1-0/800/600','https://picsum.photos/seed/phone-1-1/800/600','https://picsum.photos/seed/phone-1-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "Xiaomi"}'::jsonb, 112);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('90a26ef2-e384-4fc5-a41d-37a144b670b0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 14 Ultra 64GB', 'Xiaomi 14 Ultra, მეხსიერება: 64GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 3128, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-163-0/800/600','https://picsum.photos/seed/phone-163-1/800/600','https://picsum.photos/seed/phone-163-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Xiaomi"}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('18a74a94-1b6c-4add-a19c-e0e427e89bbc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 16GB/512GB SSD', 'HP Pavilion 15.
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
დამტენი და ორიგინალი ყუთი მოყვება.', 1749, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-1-0/800/600','https://picsum.photos/seed/laptop-1-1/800/600','https://picsum.photos/seed/laptop-1-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 278);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7650c67c-5a69-4bd2-a839-c2c9b484616f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus NX 300 2013', 'Lexus NX 300, 2013 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 156,793 კმ.
აღჭურვილობა: LED ფარები, უკანა კამერა, კრუიზ კონტროლი, ნავიგაცია.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 178945, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-155-0/800/600','https://picsum.photos/seed/car-155-1/800/600','https://picsum.photos/seed/car-155-2/800/600']::text[], '{"year": 2013, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 156793, "color": "შინდისფერი"}'::jsonb, 316);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f3de45b0-649f-4aaa-80c4-f9f3622fb04c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 36 კვ.მ — ისანი', 'სტუდიო ბინა ისანი-ში, 36 კვადრატული მეტრი.
სართული: 6/13.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 45756, 'USD', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-37-0/800/600','https://picsum.photos/seed/apartment-37-1/800/600','https://picsum.photos/seed/apartment-37-2/800/600']::text[], '{"sqm": 36, "floor": 6, "total_floors": 13, "rooms": "სტუდიო", "price_per_sqm": 1271}'::jsonb, 40);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d5b13cb7-5b68-4ed8-87e4-1e41d452cad1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 32GB/1TB SSD', 'Lenovo Yoga 9i.
პროცესორი: Apple M3 Max, ოპერატიული: 32GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3135, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-78-0/800/600','https://picsum.photos/seed/laptop-78-1/800/600','https://picsum.photos/seed/laptop-78-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "32GB", "ssd": "1TB SSD", "brand": "Lenovo"}'::jsonb, 117);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0b70750f-3e94-46b6-b4e0-101bc353a4e1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 32GB/512GB SSD', 'ASUS VivoBook 15.
პროცესორი: Apple M1, ოპერატიული: 32GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1038, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-77-0/800/600','https://picsum.photos/seed/laptop-77-1/800/600','https://picsum.photos/seed/laptop-77-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "32GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 227);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('10c4f10b-7db5-4fa6-bd7a-f6b48bf566ce', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T 64GB', 'Xiaomi 13T, მეხსიერება: 64GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1372, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-35-0/800/600','https://picsum.photos/seed/phone-35-1/800/600','https://picsum.photos/seed/phone-35-2/800/600']::text[], '{"storage": "64GB", "color": "ვარდისფერი", "brand": "Xiaomi"}'::jsonb, 480);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6de23057-b25e-4ef0-b33f-2863ffae43ef', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 256GB', 'OnePlus Nord 3, მეხსიერება: 256GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1244, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-155-0/800/600','https://picsum.photos/seed/phone-155-1/800/600','https://picsum.photos/seed/phone-155-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 385);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('635196b9-debb-451c-a700-c3bb0432f581', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 16GB/2TB SSD', 'Dell Latitude 5540.
პროცესორი: Apple M3 Max, ოპერატიული: 16GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3263, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-21-0/800/600','https://picsum.photos/seed/laptop-21-1/800/600','https://picsum.photos/seed/laptop-21-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "16GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 421);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('aaf1dbbc-3012-45ec-94a8-d6929f8c66e2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 45 კვ.მ — დიდუბე', '1-ოთახიანი ბინა დიდუბე-ში, 45 კვადრატული მეტრი.
სართული: 15/16.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 64665, 'USD', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-32-0/800/600','https://picsum.photos/seed/apartment-32-1/800/600','https://picsum.photos/seed/apartment-32-2/800/600']::text[], '{"sqm": 45, "floor": 15, "total_floors": 16, "rooms": "1-ოთახიანი", "price_per_sqm": 1437}'::jsonb, 400);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('54b5605c-1792-4276-a2b1-05d03d19c4a6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q7 2016', 'Audi Q7, 2016 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 12,092 კმ.
აღჭურვილობა: ნავიგაცია, კრუიზ კონტროლი, მულტიმედია სისტემა, გამათბობელი სავარძლები.', 247045, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-55-0/800/600','https://picsum.photos/seed/car-55-1/800/600','https://picsum.photos/seed/car-55-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 12092, "color": "ლურჯი"}'::jsonb, 194);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('70edd3ba-dc1c-4d5f-87a8-08babd75435d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 257 კვ.მ, მიწა 1084 კვ.მ — მუხრანი', '3-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 257 კვ.მ, მიწის ნაკვეთი: 1084 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 76777, 'USD', 'like_new', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-36-0/800/600','https://picsum.photos/seed/house-36-1/800/600','https://picsum.photos/seed/house-36-2/800/600']::text[], '{"sqm_house": 257, "sqm_land": 1084, "floors": 3}'::jsonb, 462);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ca907d8e-a053-4195-aee4-e1423acf7757', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 109 კვ.მ, მიწა 2110 კვ.მ — წავკისი', '3-სართულიანი სახლი წავკისი-ში.
საცხოვრებელი ფართი: 109 კვ.მ, მიწის ნაკვეთი: 2110 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 312344, 'USD', 'fair', 'active', 'წავკისი', ARRAY['https://picsum.photos/seed/house-50-0/800/600','https://picsum.photos/seed/house-50-1/800/600','https://picsum.photos/seed/house-50-2/800/600']::text[], '{"sqm_house": 109, "sqm_land": 2110, "floors": 3}'::jsonb, 324);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('62a78caa-67be-41fb-b673-a0befeb5ab43', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 Pro 1TB', 'Apple iPhone 15 Pro, მეხსიერება: 1TB, ფერი: ტიტანის ნაცრისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3079, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-62-0/800/600','https://picsum.photos/seed/phone-62-1/800/600','https://picsum.photos/seed/phone-62-2/800/600']::text[], '{"storage": "1TB", "color": "ტიტანის ნაცრისფერი", "brand": "Apple iPhone"}'::jsonb, 21);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1b89c6bf-eddb-462b-aed9-f42bb0292159', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 14 Ultra 512GB', 'Xiaomi 14 Ultra, მეხსიერება: 512GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 3085, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-143-0/800/600','https://picsum.photos/seed/phone-143-1/800/600','https://picsum.photos/seed/phone-143-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 286);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dc63e848-792e-4997-b617-0caf816699b7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 1TB', 'Huawei Nova 12, მეხსიერება: 1TB, ფერი: თეთრი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 866, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-168-0/800/600','https://picsum.photos/seed/phone-168-1/800/600','https://picsum.photos/seed/phone-168-2/800/600']::text[], '{"storage": "1TB", "color": "თეთრი", "brand": "Huawei"}'::jsonb, 291);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('33a21dc0-e3c7-427a-bd7a-1a0f688444a1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 53 კვ.მ — ისანი', '1-ოთახიანი ბინა ისანი-ში, 53 კვადრატული მეტრი.
სართული: 1/4.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 62805, 'USD', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-53-0/800/600','https://picsum.photos/seed/apartment-53-1/800/600','https://picsum.photos/seed/apartment-53-2/800/600']::text[], '{"sqm": 53, "floor": 1, "total_floors": 4, "rooms": "1-ოთახიანი", "price_per_sqm": 1185}'::jsonb, 347);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('95b70eed-e195-407a-9cd3-958dfd39fb6b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLE 350 2014', 'Mercedes-Benz GLE 350, 2014 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 186,574 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კონდიციონერი, გამათბობელი სავარძლები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 108402, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/car-76-0/800/600','https://picsum.photos/seed/car-76-1/800/600','https://picsum.photos/seed/car-76-2/800/600']::text[], '{"year": 2014, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 186574, "color": "თეთრი"}'::jsonb, 128);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('142c84d8-2cfd-46d9-ad5f-81e055a25dbc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 36 კვ.მ — ბათუმი ცენტრი', 'სტუდიო ბინა ბათუმი ცენტრი-ში, 36 კვადრატული მეტრი.
სართული: 4/9.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 49644, 'USD', 'new', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-90-0/800/600','https://picsum.photos/seed/apartment-90-1/800/600','https://picsum.photos/seed/apartment-90-2/800/600']::text[], '{"sqm": 36, "floor": 4, "total_floors": 9, "rooms": "სტუდიო", "price_per_sqm": 1379}'::jsonb, 242);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c6254afd-87b7-4042-a0dd-b9d655ed9028', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Accent 2015', 'Hyundai Accent, 2015 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 71,900 კმ.
აღჭურვილობა: პანორამული ჭერი, ტყავის სალონი, ხის სალონი, კონდიციონერი, მულტიმედია სისტემა, გამათბობელი სავარძლები.', 118119, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-63-0/800/600','https://picsum.photos/seed/car-63-1/800/600','https://picsum.photos/seed/car-63-2/800/600']::text[], '{"year": 2015, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 71900, "color": "ვერცხლისფერი"}'::jsonb, 166);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f9d064bb-bd8e-4772-b6e0-38afa9eeb972', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A34 512GB', 'Samsung Galaxy A34, მეხსიერება: 512GB, ფერი: ლურჯი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 452, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-28-0/800/600','https://picsum.photos/seed/phone-28-1/800/600','https://picsum.photos/seed/phone-28-2/800/600']::text[], '{"storage": "512GB", "color": "ლურჯი", "brand": "Samsung Galaxy"}'::jsonb, 16);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7eb8863a-7cb5-43d6-9834-22a3f1ac64e4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 16GB/256GB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: Intel Core i7, ოპერატიული: 16GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5273, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-59-0/800/600','https://picsum.photos/seed/laptop-59-1/800/600','https://picsum.photos/seed/laptop-59-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "16GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 84);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('068c22a2-344e-4fb4-9f53-ca741e91800e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 236 კვ.მ, მიწა 1110 კვ.მ — კოჯორი', '2-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 236 კვ.მ, მიწის ნაკვეთი: 1110 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 102396, 'USD', 'like_new', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-51-0/800/600','https://picsum.photos/seed/house-51-1/800/600','https://picsum.photos/seed/house-51-2/800/600']::text[], '{"sqm_house": 236, "sqm_land": 1110, "floors": 2}'::jsonb, 27);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1a47c8b5-e954-45d8-9d76-530cf8403983', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 151 კვ.მ — ვაკე', '4-ოთახიანი ბინა ვაკე-ში, 151 კვადრატული მეტრი.
სართული: 9/13.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 536956, 'USD', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-96-0/800/600','https://picsum.photos/seed/apartment-96-1/800/600','https://picsum.photos/seed/apartment-96-2/800/600']::text[], '{"sqm": 151, "floor": 9, "total_floors": 13, "rooms": "4-ოთახიანი", "price_per_sqm": 3556}'::jsonb, 187);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d63d54be-c06d-4ca9-aba6-57b4bd723024', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM5 — თეთრი', 'Sony WH-1000XM5, ფერი: თეთრი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 636, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-60-0/800/600','https://picsum.photos/seed/headphone-60-1/800/600','https://picsum.photos/seed/headphone-60-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 258);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('eeae6551-630e-476f-b4e7-9b7523acf2e6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R50', 'Canon EOS R50.
ახალი, დალუქული, ოფიციალური გარანტია.
ჩანთა და დამატებითი ბატარეა მოყვება.', 2626, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/camera-1-0/800/600','https://picsum.photos/seed/camera-1-1/800/600','https://picsum.photos/seed/camera-1-2/800/600']::text[], '{"shutter_count": 63090, "type": "camera"}'::jsonb, 311);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9164c977-6d09-4569-8c37-7dc8c9fa6ebd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 64GB', 'OnePlus Nord CE 3, მეხსიერება: 64GB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 527, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-114-0/800/600','https://picsum.photos/seed/phone-114-1/800/600','https://picsum.photos/seed/phone-114-2/800/600']::text[], '{"storage": "64GB", "color": "იისფერი", "brand": "OnePlus"}'::jsonb, 462);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('daf4292f-0a8e-4fa0-a140-8bd7afb0119a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 256GB', 'Huawei P60 Pro, მეხსიერება: 256GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 2794, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-147-0/800/600','https://picsum.photos/seed/phone-147-1/800/600','https://picsum.photos/seed/phone-147-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Huawei"}'::jsonb, 469);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('92e92f3c-d88e-4839-81cc-b8d4c9278a16', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 16GB/512GB SSD', 'Acer Swift 5.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3439, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-12-0/800/600','https://picsum.photos/seed/laptop-12-1/800/600','https://picsum.photos/seed/laptop-12-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "512GB SSD", "brand": "Acer"}'::jsonb, 135);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6932b325-07a4-4ef1-aac2-a162c09b32d2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1206 კვ.მ — მანგლისი', 'მიწის ნაკვეთი მანგლისი-ში, 1206 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 3429, 'USD', 'good', 'active', 'მანგლისი', ARRAY['https://picsum.photos/seed/land-31-0/800/600','https://picsum.photos/seed/land-31-1/800/600','https://picsum.photos/seed/land-31-2/800/600']::text[], '{"sqm": 1206, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 259);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('26d4a9cd-1e73-415b-a01c-f5eee4c7d9da', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Outback 2016', 'Subaru Outback, 2016 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 7,004 კმ.
აღჭურვილობა: LED ფარები, კრუიზ კონტროლი, ნავიგაცია, მულტიმედია სისტემა, გამათბობელი სავარძლები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 109116, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-25-0/800/600','https://picsum.photos/seed/car-25-1/800/600','https://picsum.photos/seed/car-25-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 7004, "color": "წითელი"}'::jsonb, 196);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f3f32ace-5fb4-47d7-9db1-6e1b7220af9d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP ProBook 450, 8GB/1TB SSD', 'HP ProBook 450.
პროცესორი: Intel Core i5, ოპერატიული: 8GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2657, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-194-0/800/600','https://picsum.photos/seed/laptop-194-1/800/600','https://picsum.photos/seed/laptop-194-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "8GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 328);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('91138370-6116-4187-bcb7-cde65f8725e3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R6 Mark II', 'Canon EOS R6 Mark II.
შატერის რაოდენობა: 41,959. კორპუსზე მცირე კოსმეტიკური ცვეთა.
კიტის ობიექტივით: 28-70mm.', 6381, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/camera-6-0/800/600','https://picsum.photos/seed/camera-6-1/800/600','https://picsum.photos/seed/camera-6-2/800/600']::text[], '{"shutter_count": 41959, "type": "camera"}'::jsonb, 117);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d3e18ff2-4d51-43d7-91ff-ca785fad5110', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 137 კვ.მ, მიწა 1686 კვ.მ — ოქროყანა', '2-სართულიანი სახლი ოქროყანა-ში.
საცხოვრებელი ფართი: 137 კვ.მ, მიწის ნაკვეთი: 1686 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 321032, 'USD', 'fair', 'active', 'ოქროყანა', ARRAY['https://picsum.photos/seed/house-33-0/800/600','https://picsum.photos/seed/house-33-1/800/600','https://picsum.photos/seed/house-33-2/800/600']::text[], '{"sqm_house": 137, "sqm_land": 1686, "floors": 2}'::jsonb, 287);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('eb3a79b1-df87-418f-8241-f2163d73a268', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 64GB', 'Lenovo Tab P12 Pro, მეხსიერება: 64GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi ვერსია.', 1886, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/tablet-66-0/800/600','https://picsum.photos/seed/tablet-66-1/800/600','https://picsum.photos/seed/tablet-66-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 264);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('655cf73a-f28a-4756-946b-a121cd3abc21', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 256GB', 'Apple iPad Pro 11" M2, მეხსიერება: 256GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi ვერსია.', 3657, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/tablet-6-0/800/600','https://picsum.photos/seed/tablet-6-1/800/600','https://picsum.photos/seed/tablet-6-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 102);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('813defb9-02d9-45f9-bdf9-603245d8f46a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A34 64GB', 'Samsung Galaxy A34, მეხსიერება: 64GB, ფერი: იისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 537, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-19-0/800/600','https://picsum.photos/seed/phone-19-1/800/600','https://picsum.photos/seed/phone-19-2/800/600']::text[], '{"storage": "64GB", "color": "იისფერი", "brand": "Samsung Galaxy"}'::jsonb, 321);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('45933899-bdef-4d8e-9094-ee88d2beff54', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q5 2018', 'Audi Q5, 2018 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 74,134 კმ.
აღჭურვილობა: კონდიციონერი, ტყავის სალონი, LED ფარები, კრუიზ კონტროლი, მულტიმედია სისტემა.', 93665, 'GEL', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-34-0/800/600','https://picsum.photos/seed/car-34-1/800/600','https://picsum.photos/seed/car-34-2/800/600']::text[], '{"year": 2018, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 74134, "color": "წითელი"}'::jsonb, 486);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('692cca4a-225f-4943-84bf-4f3204608e54', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 64GB/256GB SSD', 'Lenovo Yoga 9i.
პროცესორი: Intel Core i7, ოპერატიული: 64GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3136, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-69-0/800/600','https://picsum.photos/seed/laptop-69-1/800/600','https://picsum.photos/seed/laptop-69-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "64GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 81);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0b5f76d3-90d0-4838-a335-2ea633c618d5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 256GB', 'Google Pixel 7a, მეხსიერება: 256GB, ფერი: ლურჯი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 991, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-109-0/800/600','https://picsum.photos/seed/phone-109-1/800/600','https://picsum.photos/seed/phone-109-2/800/600']::text[], '{"storage": "256GB", "color": "ლურჯი", "brand": "Google Pixel"}'::jsonb, 9);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cc61382d-22a7-4a6d-859a-4391caccfb49', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP EliteBook 840, 64GB/256GB SSD', 'HP EliteBook 840.
პროცესორი: AMD Ryzen 7, ოპერატიული: 64GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 4266, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-46-0/800/600','https://picsum.photos/seed/laptop-46-1/800/600','https://picsum.photos/seed/laptop-46-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "64GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 325);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b0327a67-161b-429a-8dae-047a0af098a7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S23 Ultra 128GB', 'Samsung Galaxy S23 Ultra, მეხსიერება: 128GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 3378, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-174-0/800/600','https://picsum.photos/seed/phone-174-1/800/600','https://picsum.photos/seed/phone-174-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Samsung Galaxy"}'::jsonb, 19);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('251c28ec-f37d-48fc-8f9f-8636a835ade0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 7340 კვ.მ — გონიო', 'მიწის ნაკვეთი გონიო-ში, 7340 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ვენახიანი ნაკვეთი, ნაყოფიერი ნიადაგი.', 408838, 'USD', 'good', 'active', 'გონიო', ARRAY['https://picsum.photos/seed/land-2-0/800/600','https://picsum.photos/seed/land-2-1/800/600','https://picsum.photos/seed/land-2-2/800/600']::text[], '{"sqm": 7340, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 354);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4af8b5b5-5d39-484d-97b6-3ae351209b3a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ZenBook 14, 8GB/512GB SSD', 'ASUS ZenBook 14.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2108, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-103-0/800/600','https://picsum.photos/seed/laptop-103-1/800/600','https://picsum.photos/seed/laptop-103-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 228);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f9a5880a-4f12-4887-a1fc-676db6b8dc3f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 128GB', 'Google Pixel 6a, მეხსიერება: 128GB, ფერი: იისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1079, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-13-0/800/600','https://picsum.photos/seed/phone-13-1/800/600','https://picsum.photos/seed/phone-13-2/800/600']::text[], '{"storage": "128GB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 408);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b2007e85-290a-4521-8e1f-414019647984', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Tucson 2013', 'Hyundai Tucson, 2013 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 3,552 კმ.
აღჭურვილობა: კრუიზ კონტროლი, პარკინგ სენსორები.', 108706, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-182-0/800/600','https://picsum.photos/seed/car-182-1/800/600','https://picsum.photos/seed/car-182-2/800/600']::text[], '{"year": 2013, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 3552, "color": "თეთრი"}'::jsonb, 245);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a278a638-0187-4239-8808-829c8714bc63', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 179 კვ.მ — ისანი', '4-ოთახიანი ბინა ისანი-ში, 179 კვადრატული მეტრი.
სართული: 3/7.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 216948, 'USD', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-84-0/800/600','https://picsum.photos/seed/apartment-84-1/800/600','https://picsum.photos/seed/apartment-84-2/800/600']::text[], '{"sqm": 179, "floor": 3, "total_floors": 7, "rooms": "4-ოთახიანი", "price_per_sqm": 1212}'::jsonb, 87);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('305b9b89-1884-4f7a-88d6-302e76389faf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 45 კვ.მ — სოლოლაკი', 'სტუდიო ბინა სოლოლაკი-ში, 45 კვადრატული მეტრი.
სართული: 14/14.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მშვიდი უბანი, ბაღებთან ახლოს.', 126810, 'USD', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-40-0/800/600','https://picsum.photos/seed/apartment-40-1/800/600','https://picsum.photos/seed/apartment-40-2/800/600']::text[], '{"sqm": 45, "floor": 14, "total_floors": 14, "rooms": "სტუდიო", "price_per_sqm": 2818}'::jsonb, 346);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dd90f0d7-1ea4-4582-a2ff-199df1362054', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 256GB', 'Huawei Mate 60, მეხსიერება: 256GB, ფერი: იისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3722, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-58-0/800/600','https://picsum.photos/seed/phone-58-1/800/600','https://picsum.photos/seed/phone-58-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Huawei"}'::jsonb, 463);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a5b1b9bd-7c96-413c-b1ee-52522cc25dc4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Accent 2021', 'Hyundai Accent, 2021 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 274,036 კმ.
აღჭურვილობა: კონდიციონერი, პანორამული ჭერი, კრუიზ კონტროლი, ნავიგაცია, გამათბობელი სავარძლები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 69396, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-145-0/800/600','https://picsum.photos/seed/car-145-1/800/600','https://picsum.photos/seed/car-145-2/800/600']::text[], '{"year": 2021, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 274036, "color": "მწვანე"}'::jsonb, 332);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5ee9dba7-48cf-4136-a865-0963b0971653', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A3 2018', 'Audi A3, 2018 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 74,274 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ტყავის სალონი, პანორამული ჭერი, კრუიზ კონტროლი, ხის სალონი.', 26459, 'GEL', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-109-0/800/600','https://picsum.photos/seed/car-109-1/800/600','https://picsum.photos/seed/car-109-2/800/600']::text[], '{"year": 2018, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 74274, "color": "ლურჯი"}'::jsonb, 427);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d9a6ece4-48f4-4462-bef2-221ad1694f9e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 62 კვ.მ — ბათუმი ცენტრი', '2-ოთახიანი ბინა ბათუმი ცენტრი-ში, 62 კვადრატული მეტრი.
სართული: 6/12.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 117676, 'USD', 'like_new', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-19-0/800/600','https://picsum.photos/seed/apartment-19-1/800/600','https://picsum.photos/seed/apartment-19-2/800/600']::text[], '{"sqm": 62, "floor": 6, "total_floors": 12, "rooms": "2-ოთახიანი", "price_per_sqm": 1898}'::jsonb, 60);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('495d3f66-cca5-405c-8fcb-65f0697ccfed', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 12.9" M2 128GB', 'Apple iPad Pro 12.9" M2, მეხსიერება: 128GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
სტილუსი მოყვება.', 3786, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/tablet-56-0/800/600','https://picsum.photos/seed/tablet-56-1/800/600','https://picsum.photos/seed/tablet-56-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 452);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f5b5bb14-7148-4949-849a-c23f6b720faa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 64GB/512GB SSD', 'Dell Alienware m16.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
დამტენი და ორიგინალი ყუთი მოყვება.', 7874, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/laptop-43-0/800/600','https://picsum.photos/seed/laptop-43-1/800/600','https://picsum.photos/seed/laptop-43-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 460);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('edf0246c-067f-48fb-be62-6e94a155681f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen T-Roc 2015', 'Volkswagen T-Roc, 2015 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 11,399 კმ.
აღჭურვილობა: კონდიციონერი, ტყავის სალონი.', 91445, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-189-0/800/600','https://picsum.photos/seed/car-189-1/800/600','https://picsum.photos/seed/car-189-2/800/600']::text[], '{"year": 2015, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 11399, "color": "ნაცრისფერი"}'::jsonb, 15);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('767adaab-d7d1-462a-b2f1-0f79dba4e135', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz A200 2016', 'Mercedes-Benz A200, 2016 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 122,693 კმ.
აღჭურვილობა: ტყავის სალონი, მულტიმედია სისტემა, კონდიციონერი, ნავიგაცია, გამათბობელი სავარძლები, პარკინგ სენსორები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 61415, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-90-0/800/600','https://picsum.photos/seed/car-90-1/800/600','https://picsum.photos/seed/car-90-2/800/600']::text[], '{"year": 2016, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 122693, "color": "შინდისფერი"}'::jsonb, 369);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7aa013d6-6c11-4ff7-b0a6-4d5212653f28', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz S500 2012', 'Mercedes-Benz S500, 2012 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 66,974 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კრუიზ კონტროლი.', 104553, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-44-0/800/600','https://picsum.photos/seed/car-44-1/800/600','https://picsum.photos/seed/car-44-2/800/600']::text[], '{"year": 2012, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 66974, "color": "თეთრი"}'::jsonb, 298);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('31c2537f-f2ab-4b07-905a-2d5c2f75a694', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 Ultra 1TB', 'Samsung Galaxy S24 Ultra, მეხსიერება: 1TB, ფერი: ოქროსფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 4792, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-165-0/800/600','https://picsum.photos/seed/phone-165-1/800/600','https://picsum.photos/seed/phone-165-2/800/600']::text[], '{"storage": "1TB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 20);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5954ba9b-816f-4ac2-8dd4-aa115ee95379', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 256GB', 'Samsung Galaxy Tab S9, მეხსიერება: 256GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi ვერსია.', 1790, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/tablet-43-0/800/600','https://picsum.photos/seed/tablet-43-1/800/600','https://picsum.photos/seed/tablet-43-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 49);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b020470c-e865-4baa-8286-fc51f3597389', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Predator Helios 16, 64GB/1TB SSD', 'Acer Predator Helios 16.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 6278, 'GEL', 'new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-111-0/800/600','https://picsum.photos/seed/laptop-111-1/800/600','https://picsum.photos/seed/laptop-111-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 166);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1a978c0e-353f-42b6-bf7e-f4341c830117', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z6 III', 'Nikon Z6 III.
შატერის რაოდენობა: 44,656. კარგ მდგომარეობაში, სენსორი სუფთა.
კიტის ობიექტივით: 28-70mm.', 3477, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/camera-39-0/800/600','https://picsum.photos/seed/camera-39-1/800/600','https://picsum.photos/seed/camera-39-2/800/600']::text[], '{"shutter_count": 44656, "type": "camera"}'::jsonb, 14);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('29c4fb50-1d7c-4281-aafc-238caa5c44a6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Patrol 2020', 'Nissan Patrol, 2020 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 5,977 კმ.
აღჭურვილობა: პარკინგ სენსორები, კრუიზ კონტროლი, ხის სალონი, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 52768, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-134-0/800/600','https://picsum.photos/seed/car-134-1/800/600','https://picsum.photos/seed/car-134-2/800/600']::text[], '{"year": 2020, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 5977, "color": "შავი"}'::jsonb, 53);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('46d2773f-2af3-477e-8b04-c2b68a8b2453', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A8 2015', 'Audi A8, 2015 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 187,000 კმ.
აღჭურვილობა: კონდიციონერი, ტყავის სალონი, პანორამული ჭერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 208501, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-179-0/800/600','https://picsum.photos/seed/car-179-1/800/600','https://picsum.photos/seed/car-179-2/800/600']::text[], '{"year": 2015, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 187000, "color": "წითელი"}'::jsonb, 434);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7bc4803b-fdf9-4450-827a-47d84833ed42', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — ლურჯი', 'Apple AirPods Max, ფერი: ლურჯი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 1862, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/headphone-46-0/800/600','https://picsum.photos/seed/headphone-46-1/800/600','https://picsum.photos/seed/headphone-46-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 293);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0ca63bff-8710-4f73-8f4b-759940c56af3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Land Cruiser 2011', 'Toyota Land Cruiser, 2011 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 69,302 კმ.
აღჭურვილობა: კონდიციონერი, ტყავის სალონი, კრუიზ კონტროლი, LED ფარები, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 81976, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-99-0/800/600','https://picsum.photos/seed/car-99-1/800/600','https://picsum.photos/seed/car-99-2/800/600']::text[], '{"year": 2011, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 69302, "color": "შინდისფერი"}'::jsonb, 401);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5112f5e8-012d-4ec0-818e-367475cb983e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Outback 2016', 'Subaru Outback, 2016 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 220,244 კმ.
აღჭურვილობა: კონდიციონერი, ტყავის სალონი, ხის სალონი.', 92557, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/car-84-0/800/600','https://picsum.photos/seed/car-84-1/800/600','https://picsum.photos/seed/car-84-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 220244, "color": "ვერცხლისფერი"}'::jsonb, 246);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7349c02f-e4bb-462d-b701-491e940154ac', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 13 1TB', 'Apple iPhone 13, მეხსიერება: 1TB, ფერი: ლურჯი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 1928, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-125-0/800/600','https://picsum.photos/seed/phone-125-1/800/600','https://picsum.photos/seed/phone-125-2/800/600']::text[], '{"storage": "1TB", "color": "ლურჯი", "brand": "Apple iPhone"}'::jsonb, 313);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3595ef0c-e742-493d-9049-2984f314f8e2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Polo 2020', 'Volkswagen Polo, 2020 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 52,289 კმ.
აღჭურვილობა: ხის სალონი, მულტიმედია სისტემა, ნავიგაცია, პარკინგ სენსორები.', 16459, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-61-0/800/600','https://picsum.photos/seed/car-61-1/800/600','https://picsum.photos/seed/car-61-2/800/600']::text[], '{"year": 2020, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 52289, "color": "ნაცრისფერი"}'::jsonb, 66);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9a7c42e4-82db-4deb-afb0-37574cc07f43', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Predator Helios 16, 16GB/2TB SSD', 'Acer Predator Helios 16.
პროცესორი: Apple M3 Max, ოპერატიული: 16GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 5123, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-28-0/800/600','https://picsum.photos/seed/laptop-28-1/800/600','https://picsum.photos/seed/laptop-28-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "16GB", "ssd": "2TB SSD", "brand": "Acer"}'::jsonb, 323);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d7047863-24a2-49fb-a419-57bd6a5a114c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Tucson 2016', 'Hyundai Tucson, 2016 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 223,632 კმ.
აღჭურვილობა: კონდიციონერი, ნავიგაცია, გამათბობელი სავარძლები, უკანა კამერა, ტყავის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 8692, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-32-0/800/600','https://picsum.photos/seed/car-32-1/800/600','https://picsum.photos/seed/car-32-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 223632, "color": "თეთრი"}'::jsonb, 245);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d35988c5-6b2f-489a-987b-bd415a03c7e0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A14 1TB', 'Samsung Galaxy A14, მეხსიერება: 1TB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 373, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-50-0/800/600','https://picsum.photos/seed/phone-50-1/800/600','https://picsum.photos/seed/phone-50-2/800/600']::text[], '{"storage": "1TB", "color": "ტიტანის ნაცრისფერი", "brand": "Samsung Galaxy"}'::jsonb, 184);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b7c2aa13-d2da-41a0-8563-62a45fe99231', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 197 კვ.მ — ბათუმი ცენტრი', '4-ოთახიანი ბინა ბათუმი ცენტრი-ში, 197 კვადრატული მეტრი.
სართული: 19/21.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მშვიდი უბანი, ბაღებთან ახლოს.', 466299, 'USD', 'new', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-70-0/800/600','https://picsum.photos/seed/apartment-70-1/800/600','https://picsum.photos/seed/apartment-70-2/800/600']::text[], '{"sqm": 197, "floor": 19, "total_floors": 21, "rooms": "4-ოთახიანი", "price_per_sqm": 2367}'::jsonb, 154);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f96891ad-47fd-454b-932b-fe17b647af31', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 64GB', 'Huawei Mate 60, მეხსიერება: 64GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 3273, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/phone-51-0/800/600','https://picsum.photos/seed/phone-51-1/800/600','https://picsum.photos/seed/phone-51-2/800/600']::text[], '{"storage": "64GB", "color": "ლურჯი", "brand": "Huawei"}'::jsonb, 93);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c29edb55-a415-463a-a0f6-43e3c761b785', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 64GB', 'Google Pixel 6a, მეხსიერება: 64GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1071, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-86-0/800/600','https://picsum.photos/seed/phone-86-1/800/600','https://picsum.photos/seed/phone-86-2/800/600']::text[], '{"storage": "64GB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 261);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('296370d0-fd5d-4f88-bd5e-142057817be0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 8GB/2TB SSD', 'ASUS VivoBook 15.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 879, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-137-0/800/600','https://picsum.photos/seed/laptop-137-1/800/600','https://picsum.photos/seed/laptop-137-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 282);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f3ddc69d-11ba-4e92-a34e-7bac76a1bdcc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Air M1 64GB', 'Apple iPad Air M1, მეხსიერება: 64GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
კლავიატურის ქეისი მოყვება.', 1662, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/tablet-28-0/800/600','https://picsum.photos/seed/tablet-28-1/800/600','https://picsum.photos/seed/tablet-28-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 43);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('de73e7cc-74cf-4757-87b4-6cc11a11499c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'DJI Osmo Action 4', 'DJI Osmo Action 4.
შატერის რაოდენობა: 22,591. კორპუსზე მცირე კოსმეტიკური ცვეთა.
ჩანთა და დამატებითი ბატარეა მოყვება.', 406, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/camera-19-0/800/600','https://picsum.photos/seed/camera-19-1/800/600','https://picsum.photos/seed/camera-19-2/800/600']::text[], '{"shutter_count": 22591, "type": "camera"}'::jsonb, 289);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8c7b1948-0d37-4661-aa9d-190ac3f97679', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Beats Studio Pro — ლურჯი', 'Beats Studio Pro, ფერი: ლურჯი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 835, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/headphone-26-0/800/600','https://picsum.photos/seed/headphone-26-1/800/600','https://picsum.photos/seed/headphone-26-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 305);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f639b6fa-a354-464e-bafb-c94402560d44', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 90 კვ.მ — ქუთაისი ცენტრი', '3-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 90 კვადრატული მეტრი.
სართული: 18/20.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 119520, 'USD', 'good', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-29-0/800/600','https://picsum.photos/seed/apartment-29-1/800/600','https://picsum.photos/seed/apartment-29-2/800/600']::text[], '{"sqm": 90, "floor": 18, "total_floors": 20, "rooms": "3-ოთახიანი", "price_per_sqm": 1328}'::jsonb, 120);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d6e86478-bf90-4406-9f8a-62069ecd8101', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru XV 2017', 'Subaru XV, 2017 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 42,262 კმ.
აღჭურვილობა: LED ფარები, გამათბობელი სავარძლები, უკანა კამერა, კონდიციონერი, პანორამული ჭერი.', 65119, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-103-0/800/600','https://picsum.photos/seed/car-103-1/800/600','https://picsum.photos/seed/car-103-2/800/600']::text[], '{"year": 2017, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 42262, "color": "თეთრი"}'::jsonb, 364);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('587579a3-aa1f-4aca-a233-c5525d01d1f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Passat 2020', 'Volkswagen Passat, 2020 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 191,328 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, პანორამული ჭერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 16255, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-107-0/800/600','https://picsum.photos/seed/car-107-1/800/600','https://picsum.photos/seed/car-107-2/800/600']::text[], '{"year": 2020, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 191328, "color": "თეთრი"}'::jsonb, 93);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('68624ee4-0254-4a39-ba89-dd3ebf80392c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Sorento 2011', 'Kia Sorento, 2011 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 222,003 კმ.
აღჭურვილობა: ხის სალონი, კრუიზ კონტროლი, LED ფარები, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 106490, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-80-0/800/600','https://picsum.photos/seed/car-80-1/800/600','https://picsum.photos/seed/car-80-2/800/600']::text[], '{"year": 2011, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 222003, "color": "ლურჯი"}'::jsonb, 35);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c91fd9e9-e369-4937-9cc6-09c1e981647d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — თეთრი', 'JBL Tune 770NC, ფერი: თეთრი.
ახალი, არ გახსნილა, სრული გარანტია.', 290, 'GEL', 'new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/headphone-40-0/800/600','https://picsum.photos/seed/headphone-40-1/800/600','https://picsum.photos/seed/headphone-40-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 418);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3331182d-79b7-4aef-9748-9d6228effc34', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 64GB', 'Google Pixel 8 Pro, მეხსიერება: 64GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2956, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-105-0/800/600','https://picsum.photos/seed/phone-105-1/800/600','https://picsum.photos/seed/phone-105-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Google Pixel"}'::jsonb, 233);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a1a8b606-2825-406c-946a-226cfe6d9181', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 256GB', 'Lenovo Tab P12 Pro, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
Wi-Fi + Cellular ვერსია.', 1116, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/tablet-3-0/800/600','https://picsum.photos/seed/tablet-3-1/800/600','https://picsum.photos/seed/tablet-3-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 84);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('17599908-7d0c-4c46-b5cb-6b7e4a6608e0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z6 III', 'Nikon Z6 III.
შატერის რაოდენობა: 11,611. პროფესიონალურად მოვლილი.
კიტის ობიექტივით: 28-70mm.', 3075, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/camera-48-0/800/600','https://picsum.photos/seed/camera-48-1/800/600','https://picsum.photos/seed/camera-48-2/800/600']::text[], '{"shutter_count": 11611, "type": "camera"}'::jsonb, 52);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6edc2a74-b311-400b-8771-ebbee0305e6c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R8', 'Canon EOS R8.
შატერის რაოდენობა: 49,471. კარგ მდგომარეობაში, სენსორი სუფთა.
მეხსიერების ბარათი 128GB მოყვება.', 4394, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/camera-10-0/800/600','https://picsum.photos/seed/camera-10-1/800/600','https://picsum.photos/seed/camera-10-2/800/600']::text[], '{"shutter_count": 49471, "type": "camera"}'::jsonb, 111);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1ce5f54d-d30e-465f-a616-e832b2cb89c5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 256GB', 'Samsung Galaxy Tab A9, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
კლავიატურის ქეისი მოყვება.', 407, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/tablet-37-0/800/600','https://picsum.photos/seed/tablet-37-1/800/600','https://picsum.photos/seed/tablet-37-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 449);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('16b8549f-ed59-4916-b88e-edfdd0c87183', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 27,819. კარგ მდგომარეობაში, სენსორი სუფთა.
ობიექტივი არ მოყვება (მხოლოდ body).', 4581, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/camera-36-0/800/600','https://picsum.photos/seed/camera-36-1/800/600','https://picsum.photos/seed/camera-36-2/800/600']::text[], '{"shutter_count": 27819, "type": "camera"}'::jsonb, 266);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('104d2d62-81a2-4e28-add4-b62b8050eb64', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad Slim 3, 16GB/256GB SSD', 'Lenovo IdeaPad Slim 3.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1476, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-29-0/800/600','https://picsum.photos/seed/laptop-29-1/800/600','https://picsum.photos/seed/laptop-29-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 323);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f7824b8a-432c-4772-a01a-fb2c30504e2c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 34 კვ.მ — დიდუბე', 'სტუდიო ბინა დიდუბე-ში, 34 კვადრატული მეტრი.
სართული: 15/21.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 31552, 'USD', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-8-0/800/600','https://picsum.photos/seed/apartment-8-1/800/600','https://picsum.photos/seed/apartment-8-2/800/600']::text[], '{"sqm": 34, "floor": 15, "total_floors": 21, "rooms": "სტუდიო", "price_per_sqm": 928}'::jsonb, 475);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('57028bbe-b534-4927-95de-3fdec60fbb01', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 378 კვ.მ, მიწა 770 კვ.მ — შინდისი', '2-სართულიანი სახლი შინდისი-ში.
საცხოვრებელი ფართი: 378 კვ.მ, მიწის ნაკვეთი: 770 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 77965, 'USD', 'like_new', 'active', 'შინდისი', ARRAY['https://picsum.photos/seed/house-17-0/800/600','https://picsum.photos/seed/house-17-1/800/600','https://picsum.photos/seed/house-17-2/800/600']::text[], '{"sqm_house": 378, "sqm_land": 770, "floors": 2}'::jsonb, 331);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fa9d5dde-fb59-4d20-86a7-c23594f2ee2b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Nitro 5, 64GB/256GB SSD', 'Acer Nitro 5.
პროცესორი: Apple M2, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2577, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-73-0/800/600','https://picsum.photos/seed/laptop-73-1/800/600','https://picsum.photos/seed/laptop-73-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "64GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 133);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2cbce657-f570-46bd-8653-c848ec13d3e9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 1TB', 'OnePlus 12, მეხსიერება: 1TB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2863, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-135-0/800/600','https://picsum.photos/seed/phone-135-1/800/600','https://picsum.photos/seed/phone-135-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 132);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('791ecdff-f5f7-4dd5-a086-ebe33cd519c3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Yaris 2009', 'Toyota Yaris, 2009 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 60,076 კმ.
აღჭურვილობა: ნავიგაცია, პარკინგ სენსორები, მულტიმედია სისტემა, პანორამული ჭერი, კონდიციონერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 98533, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-66-0/800/600','https://picsum.photos/seed/car-66-1/800/600','https://picsum.photos/seed/car-66-2/800/600']::text[], '{"year": 2009, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 60076, "color": "ნაცრისფერი"}'::jsonb, 225);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0eb1315e-a851-4a31-9510-ae30b2308dfe', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A54 64GB', 'Samsung Galaxy A54, მეხსიერება: 64GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 727, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-81-0/800/600','https://picsum.photos/seed/phone-81-1/800/600','https://picsum.photos/seed/phone-81-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "Samsung Galaxy"}'::jsonb, 401);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('035725e0-1dfc-4b93-9176-118529fe7fc9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 Pro+ 256GB', 'Xiaomi Redmi Note 13 Pro+, მეხსიერება: 256GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 929, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-137-0/800/600','https://picsum.photos/seed/phone-137-1/800/600','https://picsum.photos/seed/phone-137-2/800/600']::text[], '{"storage": "256GB", "color": "ლურჯი", "brand": "Xiaomi"}'::jsonb, 282);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6e3ebaa2-9369-429f-a18f-836b363d31fb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Seltos 2013', 'Kia Seltos, 2013 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 207,246 კმ.
აღჭურვილობა: ხის სალონი, გამათბობელი სავარძლები, ტყავის სალონი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 105357, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/car-148-0/800/600','https://picsum.photos/seed/car-148-1/800/600','https://picsum.photos/seed/car-148-2/800/600']::text[], '{"year": 2013, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 207246, "color": "წითელი"}'::jsonb, 385);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('32b0a32e-bb1d-4e2e-a860-da4e2f9084a3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Qashqai 2015', 'Nissan Qashqai, 2015 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 75,313 კმ.
აღჭურვილობა: კონდიციონერი, LED ფარები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 17092, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-75-0/800/600','https://picsum.photos/seed/car-75-1/800/600','https://picsum.photos/seed/car-75-2/800/600']::text[], '{"year": 2015, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 75313, "color": "ნაცრისფერი"}'::jsonb, 466);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('45f257cc-d5ee-4ea9-8961-063e88ef9278', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 107 კვ.მ — ვაკე', '3-ოთახიანი ბინა ვაკე-ში, 107 კვადრატული მეტრი.
სართული: 9/19.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 287081, 'USD', 'new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/apartment-76-0/800/600','https://picsum.photos/seed/apartment-76-1/800/600','https://picsum.photos/seed/apartment-76-2/800/600']::text[], '{"sqm": 107, "floor": 9, "total_floors": 19, "rooms": "3-ოთახიანი", "price_per_sqm": 2683}'::jsonb, 425);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c1a4ebac-3b61-41b2-b363-d45da91bb8f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 32GB/256GB SSD', 'ASUS VivoBook 15.
პროცესორი: Intel Core i7, ოპერატიული: 32GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 1940, 'GEL', 'new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-25-0/800/600','https://picsum.photos/seed/laptop-25-1/800/600','https://picsum.photos/seed/laptop-25-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "32GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 256);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a6b35d56-cb20-4e58-a1f1-47c1a1d44204', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 84 კვ.მ — ბათუმი ახალი ბულვარი', '2-ოთახიანი ბინა ბათუმი ახალი ბულვარი-ში, 84 კვადრატული მეტრი.
სართული: 4/5.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მშვიდი უბანი, ბაღებთან ახლოს.', 253260, 'USD', 'like_new', 'active', 'ბათუმი ახალი ბულვარი', ARRAY['https://picsum.photos/seed/apartment-35-0/800/600','https://picsum.photos/seed/apartment-35-1/800/600','https://picsum.photos/seed/apartment-35-2/800/600']::text[], '{"sqm": 84, "floor": 4, "total_floors": 5, "rooms": "2-ოთახიანი", "price_per_sqm": 3015}'::jsonb, 230);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cdaef732-4221-4811-96e8-6f86f437d721', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — ლურჯი', 'Apple AirPods Max, ფერი: ლურჯი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 1978, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/headphone-43-0/800/600','https://picsum.photos/seed/headphone-43-1/800/600','https://picsum.photos/seed/headphone-43-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 133);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a60efb66-7a71-41d7-9925-eb4181428baf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 44 კვ.მ — საბურთალო', 'სტუდიო ბინა საბურთალო-ში, 44 კვადრატული მეტრი.
სართული: 7/15.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 53240, 'USD', 'new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/apartment-12-0/800/600','https://picsum.photos/seed/apartment-12-1/800/600','https://picsum.photos/seed/apartment-12-2/800/600']::text[], '{"sqm": 44, "floor": 7, "total_floors": 15, "rooms": "სტუდიო", "price_per_sqm": 1210}'::jsonb, 358);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7956acf2-06d0-49a8-a58c-31ec971477f0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 64GB/512GB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 3847, 'GEL', 'new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-85-0/800/600','https://picsum.photos/seed/laptop-85-1/800/600','https://picsum.photos/seed/laptop-85-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 375);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0f85993f-86d3-4f8e-8c30-964e06c5f405', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 39 კვ.მ — ბათუმი ცენტრი', '1-ოთახიანი ბინა ბათუმი ცენტრი-ში, 39 კვადრატული მეტრი.
სართული: 19/24.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მშვიდი უბანი, ბაღებთან ახლოს.', 97851, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-72-0/800/600','https://picsum.photos/seed/apartment-72-1/800/600','https://picsum.photos/seed/apartment-72-2/800/600']::text[], '{"sqm": 39, "floor": 19, "total_floors": 24, "rooms": "1-ოთახიანი", "price_per_sqm": 2509}'::jsonb, 358);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a13c06ab-0fc8-4e8a-a2b2-dceb07dedf8f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 8486 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 8486 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 66580, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-11-0/800/600','https://picsum.photos/seed/land-11-1/800/600','https://picsum.photos/seed/land-11-2/800/600']::text[], '{"sqm": 8486, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 448);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('66bcf81d-7abe-4d71-b6a5-b47de1d64a51', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 Pro+ 128GB', 'Xiaomi Redmi Note 13 Pro+, მეხსიერება: 128GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1145, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-21-0/800/600','https://picsum.photos/seed/phone-21-1/800/600','https://picsum.photos/seed/phone-21-2/800/600']::text[], '{"storage": "128GB", "color": "თეთრი", "brand": "Xiaomi"}'::jsonb, 241);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c9b02b7e-3ffa-4c03-a70b-8efdbbdf1e94', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 312 კვ.მ, მიწა 596 კვ.მ — მუხრანი', '3-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 312 კვ.მ, მიწის ნაკვეთი: 596 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 110679, 'USD', 'new', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-3-0/800/600','https://picsum.photos/seed/house-3-1/800/600','https://picsum.photos/seed/house-3-2/800/600']::text[], '{"sqm_house": 312, "sqm_land": 596, "floors": 3}'::jsonb, 161);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7b0a8ed9-f32e-4e0b-8a05-4247b61f6495', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Yaris 2014', 'Toyota Yaris, 2014 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 62,681 კმ.
აღჭურვილობა: პანორამული ჭერი, ნავიგაცია, უკანა კამერა, კონდიციონერი, ტყავის სალონი, LED ფარები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 27826, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/car-1-0/800/600','https://picsum.photos/seed/car-1-1/800/600','https://picsum.photos/seed/car-1-2/800/600']::text[], '{"year": 2014, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 62681, "color": "თეთრი"}'::jsonb, 312);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c3bd6190-5bf1-48fd-b781-a2f9283a2062', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 Pro 64GB', 'Apple iPhone 14 Pro, მეხსიერება: 64GB, ფერი: შავი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 2732, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-32-0/800/600','https://picsum.photos/seed/phone-32-1/800/600','https://picsum.photos/seed/phone-32-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "Apple iPhone"}'::jsonb, 64);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b1743633-adbf-43a6-9659-08c63acac632', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 60 კვ.მ — დიდუბე', '2-ოთახიანი ბინა დიდუბე-ში, 60 კვადრატული მეტრი.
სართული: 20/30.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 68760, 'USD', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-78-0/800/600','https://picsum.photos/seed/apartment-78-1/800/600','https://picsum.photos/seed/apartment-78-2/800/600']::text[], '{"sqm": 60, "floor": 20, "total_floors": 30, "rooms": "2-ოთახიანი", "price_per_sqm": 1146}'::jsonb, 287);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('be6eda9c-fdb8-43ed-b9d1-eecfe868f65c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 319 კვ.მ, მიწა 818 კვ.მ — მუხრანი', '2-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 319 კვ.მ, მიწის ნაკვეთი: 818 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 59313, 'USD', 'fair', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-10-0/800/600','https://picsum.photos/seed/house-10-1/800/600','https://picsum.photos/seed/house-10-2/800/600']::text[], '{"sqm_house": 319, "sqm_land": 818, "floors": 2}'::jsonb, 476);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8006d5ad-c10a-4ead-94c2-08bda4c2bce4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP ProBook 450, 8GB/1TB SSD', 'HP ProBook 450.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 995, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-169-0/800/600','https://picsum.photos/seed/laptop-169-1/800/600','https://picsum.photos/seed/laptop-169-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 77);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('20ae0dd6-c950-4684-bcf8-25b33c9c05cd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 13T 128GB', 'Xiaomi 13T, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1219, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-198-0/800/600','https://picsum.photos/seed/phone-198-1/800/600','https://picsum.photos/seed/phone-198-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "Xiaomi"}'::jsonb, 248);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f8c89471-cdd7-4d2d-b13b-195024e60d9e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Nothing Ear (2) — ვერცხლისფერი', 'Nothing Ear (2), ფერი: ვერცხლისფერი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 261, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/headphone-58-0/800/600','https://picsum.photos/seed/headphone-58-1/800/600','https://picsum.photos/seed/headphone-58-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 362);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8569d7dd-de8b-45ea-bf20-934aeb7452fe', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota C-HR 2014', 'Toyota C-HR, 2014 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 272,367 კმ.
აღჭურვილობა: ნავიგაცია, კრუიზ კონტროლი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 97851, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/car-17-0/800/600','https://picsum.photos/seed/car-17-1/800/600','https://picsum.photos/seed/car-17-2/800/600']::text[], '{"year": 2014, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 272367, "color": "ვერცხლისფერი"}'::jsonb, 87);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9eeb1355-ea24-42bc-b4ba-f644aa078ffd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM4 — ვერცხლისფერი', 'Sony WH-1000XM4, ფერი: ვერცხლისფერი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 618, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/headphone-35-0/800/600','https://picsum.photos/seed/headphone-35-1/800/600','https://picsum.photos/seed/headphone-35-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 115);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('955b05c1-ec3c-4856-ba8f-79c18d57ee79', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 512GB', 'OnePlus Nord 3, მეხსიერება: 512GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1347, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-45-0/800/600','https://picsum.photos/seed/phone-45-1/800/600','https://picsum.photos/seed/phone-45-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 310);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('85632423-3e56-4aac-b8e0-0b344b60862d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 512GB', 'Huawei Mate 60, მეხსიერება: 512GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2697, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-71-0/800/600','https://picsum.photos/seed/phone-71-1/800/600','https://picsum.photos/seed/phone-71-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "Huawei"}'::jsonb, 411);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d94e198c-2055-43f3-bcab-9267f0f7238b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Juke 2016', 'Nissan Juke, 2016 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 151,707 კმ.
აღჭურვილობა: ხის სალონი, პარკინგ სენსორები, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 118798, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-74-0/800/600','https://picsum.photos/seed/car-74-1/800/600','https://picsum.photos/seed/car-74-2/800/600']::text[], '{"year": 2016, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 151707, "color": "თეთრი"}'::jsonb, 190);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d320c6f4-39c1-4f13-9f3a-3f9bd2a19fdd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 122 კვ.მ — დიდუბე', '4-ოთახიანი ბინა დიდუბე-ში, 122 კვადრატული მეტრი.
სართული: 13/18.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 127124, 'USD', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-43-0/800/600','https://picsum.photos/seed/apartment-43-1/800/600','https://picsum.photos/seed/apartment-43-2/800/600']::text[], '{"sqm": 122, "floor": 13, "total_floors": 18, "rooms": "4-ოთახიანი", "price_per_sqm": 1042}'::jsonb, 283);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d97957a4-5389-40ef-bcd2-d4aeaf290dc7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 520d 2014', 'BMW 520d, 2014 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 108,913 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ტყავის სალონი.', 140097, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-29-0/800/600','https://picsum.photos/seed/car-29-1/800/600','https://picsum.photos/seed/car-29-2/800/600']::text[], '{"year": 2014, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 108913, "color": "ვერცხლისფერი"}'::jsonb, 468);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e8e269b4-a1c0-4481-b846-660a7c308aa3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 14", 64GB/512GB SSD', 'Apple MacBook Pro M3 14".
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 6264, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-165-0/800/600','https://picsum.photos/seed/laptop-165-1/800/600','https://picsum.photos/seed/laptop-165-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "512GB SSD", "brand": "Apple MacBook"}'::jsonb, 161);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b0d786bf-c5a1-41bd-8760-fbaf813d0311', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO X6 Pro 256GB', 'Xiaomi POCO X6 Pro, მეხსიერება: 256GB, ფერი: ლურჯი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1073, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-179-0/800/600','https://picsum.photos/seed/phone-179-1/800/600','https://picsum.photos/seed/phone-179-2/800/600']::text[], '{"storage": "256GB", "color": "ლურჯი", "brand": "Xiaomi"}'::jsonb, 175);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4bf8f09f-1644-434a-a536-ad42bfb1c99f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru BRZ 2020', 'Subaru BRZ, 2020 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 253,854 კმ.
აღჭურვილობა: ნავიგაცია, ტყავის სალონი, ხის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 67932, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-2-0/800/600','https://picsum.photos/seed/car-2-1/800/600','https://picsum.photos/seed/car-2-2/800/600']::text[], '{"year": 2020, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 253854, "color": "შავი"}'::jsonb, 284);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('82217f53-1357-4ba2-bd51-5d4f23d3286a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — ლურჯი', 'JBL Tune 770NC, ფერი: ლურჯი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 145, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/headphone-41-0/800/600','https://picsum.photos/seed/headphone-41-1/800/600','https://picsum.photos/seed/headphone-41-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 136);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('39e82de4-ef54-4d8d-89d0-fde69760891d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Patrol 2023', 'Nissan Patrol, 2023 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 166,017 კმ.
აღჭურვილობა: კონდიციონერი, მულტიმედია სისტემა, პანორამული ჭერი, გამათბობელი სავარძლები, ნავიგაცია, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 63914, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/car-77-0/800/600','https://picsum.photos/seed/car-77-1/800/600','https://picsum.photos/seed/car-77-2/800/600']::text[], '{"year": 2023, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 166017, "color": "ვერცხლისფერი"}'::jsonb, 379);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('218b8e68-0129-4606-97e5-127acd98af50', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 64GB/2TB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3684, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-150-0/800/600','https://picsum.photos/seed/laptop-150-1/800/600','https://picsum.photos/seed/laptop-150-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 187);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('efd8ae0b-5fd1-4167-8160-3afef454e4b5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2014', 'Lexus ES 250, 2014 წლის გამოშვება.
ფერი: შავი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 251,022 კმ.
აღჭურვილობა: კრუიზ კონტროლი, LED ფარები, პანორამული ჭერი, მულტიმედია სისტემა, კონდიციონერი, ნავიგაცია.', 214667, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-114-0/800/600','https://picsum.photos/seed/car-114-1/800/600','https://picsum.photos/seed/car-114-2/800/600']::text[], '{"year": 2014, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 251022, "color": "შავი"}'::jsonb, 478);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e44ca096-b558-45fb-8d6a-cbca2b332987', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Juke 2016', 'Nissan Juke, 2016 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 199,211 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, პანორამული ჭერი, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 20852, 'GEL', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-9-0/800/600','https://picsum.photos/seed/car-9-1/800/600','https://picsum.photos/seed/car-9-2/800/600']::text[], '{"year": 2016, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 199211, "color": "ვერცხლისფერი"}'::jsonb, 365);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8ad60fc3-2107-426a-8972-3f9a5aabe4f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru XV 2009', 'Subaru XV, 2009 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 106,295 კმ.
აღჭურვილობა: პანორამული ჭერი, გამათბობელი სავარძლები, კონდიციონერი, LED ფარები.', 96178, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-12-0/800/600','https://picsum.photos/seed/car-12-1/800/600','https://picsum.photos/seed/car-12-2/800/600']::text[], '{"year": 2009, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 106295, "color": "ნაცრისფერი"}'::jsonb, 215);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('06ae09ab-0901-4b36-a684-136416d50d94', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ZenBook 14, 8GB/1TB SSD', 'ASUS ZenBook 14.
პროცესორი: Intel Core i9, ოპერატიული: 8GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2993, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/laptop-68-0/800/600','https://picsum.photos/seed/laptop-68-1/800/600','https://picsum.photos/seed/laptop-68-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "8GB", "ssd": "1TB SSD", "brand": "ASUS"}'::jsonb, 301);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5b8883c4-53ca-4346-950c-3b14844f7d21', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Huawei MatePad Pro 256GB', 'Huawei MatePad Pro, მეხსიერება: 256GB.
როგორც ახალი, კომპლექტი სრულია.
სტილუსი მოყვება.', 2485, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/tablet-44-0/800/600','https://picsum.photos/seed/tablet-44-1/800/600','https://picsum.photos/seed/tablet-44-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 273);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0cee7268-1e33-4a54-9608-38116e04a2db', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 32GB/1TB SSD', 'Acer Aspire 5.
პროცესორი: Intel Core i9, ოპერატიული: 32GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 808, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-121-0/800/600','https://picsum.photos/seed/laptop-121-1/800/600','https://picsum.photos/seed/laptop-121-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "32GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 77);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dc9b614f-a8ae-494d-b7c8-42f75bd8d96c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A34 64GB', 'Samsung Galaxy A34, მეხსიერება: 64GB, ფერი: თეთრი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 651, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-152-0/800/600','https://picsum.photos/seed/phone-152-1/800/600','https://picsum.photos/seed/phone-152-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Samsung Galaxy"}'::jsonb, 32);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4f634014-e1a7-4db8-b5c6-5eb4e057fa15', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 128GB', 'OnePlus 12, მეხსიერება: 128GB, ფერი: თეთრი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2628, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-73-0/800/600','https://picsum.photos/seed/phone-73-1/800/600','https://picsum.photos/seed/phone-73-2/800/600']::text[], '{"storage": "128GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 420);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f7ca12e2-b5ed-4136-a24f-6f28933247f0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 320i 2020', 'BMW 320i, 2020 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 35,294 კმ.
აღჭურვილობა: პარკინგ სენსორები, LED ფარები, ნავიგაცია.', 129549, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-173-0/800/600','https://picsum.photos/seed/car-173-1/800/600','https://picsum.photos/seed/car-173-2/800/600']::text[], '{"year": 2020, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 35294, "color": "შინდისფერი"}'::jsonb, 268);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('14384632-8e09-49dc-a3cb-603d92895c7a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Air M1 64GB', 'Apple iPad Air M1, მეხსიერება: 64GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi + Cellular ვერსია.', 1235, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/tablet-1-0/800/600','https://picsum.photos/seed/tablet-1-1/800/600','https://picsum.photos/seed/tablet-1-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 459);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3eec40e7-2bdb-4ff5-93ae-527cf8b38400', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sennheiser Momentum 4 — ვერცხლისფერი', 'Sennheiser Momentum 4, ფერი: ვერცხლისფერი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 836, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/headphone-10-0/800/600','https://picsum.photos/seed/headphone-10-1/800/600','https://picsum.photos/seed/headphone-10-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 479);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('997c9830-900b-4af6-b4f9-ec8679d7011b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — ლურჯი', 'Apple AirPods Pro 2, ფერი: ლურჯი.
ახალი, არ გახსნილა, სრული გარანტია.', 685, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/headphone-33-0/800/600','https://picsum.photos/seed/headphone-33-1/800/600','https://picsum.photos/seed/headphone-33-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 338);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0e217b91-6ac1-4f15-a318-b3776afa837d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 12 64GB', 'Apple iPhone 12, მეხსიერება: 64GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 993, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-89-0/800/600','https://picsum.photos/seed/phone-89-1/800/600','https://picsum.photos/seed/phone-89-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Apple iPhone"}'::jsonb, 175);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cf86668a-3327-4489-a610-e8a262a6a874', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z30', 'Nikon Z30.
შატერის რაოდენობა: 42,893. კარგ მდგომარეობაში, სენსორი სუფთა.
ობიექტივი არ მოყვება (მხოლოდ body).', 2120, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/camera-28-0/800/600','https://picsum.photos/seed/camera-28-1/800/600','https://picsum.photos/seed/camera-28-2/800/600']::text[], '{"shutter_count": 42893, "type": "camera"}'::jsonb, 270);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9c5353ad-58b9-487c-9591-aa4a29483026', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 512GB', 'Apple iPhone 15, მეხსიერება: 512GB, ფერი: მწვანე.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2216, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-90-0/800/600','https://picsum.photos/seed/phone-90-1/800/600','https://picsum.photos/seed/phone-90-2/800/600']::text[], '{"storage": "512GB", "color": "მწვანე", "brand": "Apple iPhone"}'::jsonb, 4);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('527763a0-8731-494c-a5d7-539e2b45d160', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 102 კვ.მ — ნაძალადევი', '3-ოთახიანი ბინა ნაძალადევი-ში, 102 კვადრატული მეტრი.
სართული: 11/12.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მშვიდი უბანი, ბაღებთან ახლოს.', 128112, 'USD', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-25-0/800/600','https://picsum.photos/seed/apartment-25-1/800/600','https://picsum.photos/seed/apartment-25-2/800/600']::text[], '{"sqm": 102, "floor": 11, "total_floors": 12, "rooms": "3-ოთახიანი", "price_per_sqm": 1256}'::jsonb, 169);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fa403bdb-7791-49f9-ac34-abba248f9842', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 8GB/2TB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: Intel Core i9, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2997, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-189-0/800/600','https://picsum.photos/seed/laptop-189-1/800/600','https://picsum.photos/seed/laptop-189-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "8GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 53);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3c5dade6-a2fa-41bb-aed6-b1b1cf6e0c69', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 93 კვ.მ — საბურთალო', '3-ოთახიანი ბინა საბურთალო-ში, 93 კვადრატული მეტრი.
სართული: 20/21.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 224037, 'USD', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/apartment-91-0/800/600','https://picsum.photos/seed/apartment-91-1/800/600','https://picsum.photos/seed/apartment-91-2/800/600']::text[], '{"sqm": 93, "floor": 20, "total_floors": 21, "rooms": "3-ოთახიანი", "price_per_sqm": 2409}'::jsonb, 408);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f3c6da92-4cb8-4ab4-8807-e2ebb22f0f91', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Stinger 2011', 'Kia Stinger, 2011 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 204,434 კმ.
აღჭურვილობა: ნავიგაცია, კრუიზ კონტროლი, ტყავის სალონი, LED ფარები, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 93693, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-170-0/800/600','https://picsum.photos/seed/car-170-1/800/600','https://picsum.photos/seed/car-170-2/800/600']::text[], '{"year": 2011, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 204434, "color": "შინდისფერი"}'::jsonb, 493);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4c7172c4-d3dc-4c4a-9138-4ff168ff26ee', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'GoPro HERO12 Black', 'GoPro HERO12 Black.
შატერის რაოდენობა: 63,126. კარგ მდგომარეობაში, სენსორი სუფთა.
ჩანთა და დამატებითი ბატარეა მოყვება.', 1154, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/camera-26-0/800/600','https://picsum.photos/seed/camera-26-1/800/600','https://picsum.photos/seed/camera-26-2/800/600']::text[], '{"shutter_count": 63126, "type": "camera"}'::jsonb, 249);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9882aaa8-1f4c-492a-a43e-2563097d97bc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A3 2011', 'Audi A3, 2011 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 176,933 კმ.
აღჭურვილობა: ხის სალონი, კრუიზ კონტროლი, ნავიგაცია.', 199294, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-83-0/800/600','https://picsum.photos/seed/car-83-1/800/600','https://picsum.photos/seed/car-83-2/800/600']::text[], '{"year": 2011, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 176933, "color": "წითელი"}'::jsonb, 70);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1ca05b4a-dbb6-4264-a748-092b6527d2f9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R50', 'Canon EOS R50.
შატერის რაოდენობა: 55,368. ყუთი და დამტენი მოყვება.
ობიექტივი არ მოყვება (მხოლოდ body).', 1433, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/camera-59-0/800/600','https://picsum.photos/seed/camera-59-1/800/600','https://picsum.photos/seed/camera-59-2/800/600']::text[], '{"shutter_count": 55368, "type": "camera"}'::jsonb, 291);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2362f7a3-f11d-49c6-a26f-1282b312fdd3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Outback 2014', 'Subaru Outback, 2014 წლის გამოშვება.
ფერი: მწვანე, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 107,103 კმ.
აღჭურვილობა: კრუიზ კონტროლი, გამათბობელი სავარძლები.', 94597, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-87-0/800/600','https://picsum.photos/seed/car-87-1/800/600','https://picsum.photos/seed/car-87-2/800/600']::text[], '{"year": 2014, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 107103, "color": "მწვანე"}'::jsonb, 294);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c01484c8-b188-4419-90ef-1693765708ac', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Cerato 2023', 'Kia Cerato, 2023 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 53,452 კმ.
აღჭურვილობა: კონდიციონერი, უკანა კამერა.', 35993, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-69-0/800/600','https://picsum.photos/seed/car-69-1/800/600','https://picsum.photos/seed/car-69-2/800/600']::text[], '{"year": 2023, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 53452, "color": "მწვანე"}'::jsonb, 270);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5a68d11a-3771-4d6b-ad67-396d1698a522', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 32GB/256GB SSD', 'Acer Swift 5.
პროცესორი: Intel Core i9, ოპერატიული: 32GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 2699, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-93-0/800/600','https://picsum.photos/seed/laptop-93-1/800/600','https://picsum.photos/seed/laptop-93-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "32GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 131);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('37bd62f6-b78e-44d6-ab8b-7505fa7a0aed', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 740i 2010', 'BMW 740i, 2010 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 256,960 კმ.
აღჭურვილობა: მულტიმედია სისტემა, უკანა კამერა.', 125631, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/car-27-0/800/600','https://picsum.photos/seed/car-27-1/800/600','https://picsum.photos/seed/car-27-2/800/600']::text[], '{"year": 2010, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 256960, "color": "მწვანე"}'::jsonb, 311);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('56055616-2185-4fa0-88b2-5705703fc769', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 16GB/2TB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i7, ოპერატიული: 16GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1834, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-104-0/800/600','https://picsum.photos/seed/laptop-104-1/800/600','https://picsum.photos/seed/laptop-104-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "16GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 473);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2947f649-933e-4f42-8755-169654d0ba64', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 14", 16GB/256GB SSD', 'Apple MacBook Pro M3 14".
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 5547, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-186-0/800/600','https://picsum.photos/seed/laptop-186-1/800/600','https://picsum.photos/seed/laptop-186-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 215);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5852a1d8-2ac4-4fef-bd2d-d5a9d4caaec6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Hilux 2018', 'Toyota Hilux, 2018 წლის გამოშვება.
ფერი: თეთრი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 223,293 კმ.
აღჭურვილობა: LED ფარები, ნავიგაცია, პანორამული ჭერი, პარკინგ სენსორები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 34001, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-59-0/800/600','https://picsum.photos/seed/car-59-1/800/600','https://picsum.photos/seed/car-59-2/800/600']::text[], '{"year": 2018, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 223293, "color": "თეთრი"}'::jsonb, 31);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f0b387ab-bc91-4009-a363-b746f5ae65a2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Nothing Ear (2) — შავი', 'Nothing Ear (2), ფერი: შავი.
ახალი, არ გახსნილა, სრული გარანტია.', 379, 'GEL', 'new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/headphone-39-0/800/600','https://picsum.photos/seed/headphone-39-1/800/600','https://picsum.photos/seed/headphone-39-2/800/600']::text[], '{"color": "შავი", "type": "headphones"}'::jsonb, 0);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('450b8403-edaf-4811-8b93-938828d07292', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru Outback 2011', 'Subaru Outback, 2011 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 194,285 კმ.
აღჭურვილობა: პანორამული ჭერი, ხის სალონი, ნავიგაცია, LED ფარები, კონდიციონერი, გამათბობელი სავარძლები.', 20987, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-116-0/800/600','https://picsum.photos/seed/car-116-1/800/600','https://picsum.photos/seed/car-116-2/800/600']::text[], '{"year": 2011, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 194285, "color": "ნაცრისფერი"}'::jsonb, 418);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('21bb8c4a-d572-479a-9287-50af375fb041', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus IS 300 2010', 'Lexus IS 300, 2010 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 91,481 კმ.
აღჭურვილობა: უკანა კამერა, მულტიმედია სისტემა, პანორამული ჭერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 219138, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/car-50-0/800/600','https://picsum.photos/seed/car-50-1/800/600','https://picsum.photos/seed/car-50-2/800/600']::text[], '{"year": 2010, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 91481, "color": "წითელი"}'::jsonb, 391);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('251b128f-6eb4-46a6-ba34-e75ff1daa360', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12R 256GB', 'OnePlus 12R, მეხსიერება: 256GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2143, 'GEL', 'like_new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-136-0/800/600','https://picsum.photos/seed/phone-136-1/800/600','https://picsum.photos/seed/phone-136-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 23);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fa9a9f1a-2681-4b39-8884-96bb74ddfb51', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz S500 2016', 'Mercedes-Benz S500, 2016 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 10,086 კმ.
აღჭურვილობა: პარკინგ სენსორები, უკანა კამერა, მულტიმედია სისტემა, ტყავის სალონი, პანორამული ჭერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 168618, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-176-0/800/600','https://picsum.photos/seed/car-176-1/800/600','https://picsum.photos/seed/car-176-2/800/600']::text[], '{"year": 2016, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 10086, "color": "თეთრი"}'::jsonb, 29);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('570e6bee-e469-4ae9-a5c3-1b44f90bd125', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Qashqai 2009', 'Nissan Qashqai, 2009 წლის გამოშვება.
ფერი: შავი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 148,180 კმ.
აღჭურვილობა: მულტიმედია სისტემა, ნავიგაცია.', 47495, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-97-0/800/600','https://picsum.photos/seed/car-97-1/800/600','https://picsum.photos/seed/car-97-2/800/600']::text[], '{"year": 2009, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 148180, "color": "შავი"}'::jsonb, 488);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('22ba7ac9-bdbb-4b2d-801b-d1b8fc5900bb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 159 კვ.მ — ვერა', '4-ოთახიანი ბინა ვერა-ში, 159 კვადრატული მეტრი.
სართული: 13/21.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 744756, 'USD', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-98-0/800/600','https://picsum.photos/seed/apartment-98-1/800/600','https://picsum.photos/seed/apartment-98-2/800/600']::text[], '{"sqm": 159, "floor": 13, "total_floors": 21, "rooms": "4-ოთახიანი", "price_per_sqm": 4684}'::jsonb, 408);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f40205ca-6c4c-4b6f-bb11-438887ff5190', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 357 კვ.მ, მიწა 2444 კვ.მ — მუხრანი', '2-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 357 კვ.მ, მიწის ნაკვეთი: 2444 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 94660, 'USD', 'fair', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-38-0/800/600','https://picsum.photos/seed/house-38-1/800/600','https://picsum.photos/seed/house-38-2/800/600']::text[], '{"sqm_house": 357, "sqm_land": 2444, "floors": 2}'::jsonb, 169);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3e7f9b05-e381-4b9f-a234-1b56e79af570', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad 5, 64GB/1TB SSD', 'Lenovo IdeaPad 5.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 1TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1413, 'GEL', 'new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-53-0/800/600','https://picsum.photos/seed/laptop-53-1/800/600','https://picsum.photos/seed/laptop-53-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "1TB SSD", "brand": "Lenovo"}'::jsonb, 188);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('910e6274-05b1-496d-a882-31c7f69dd538', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO F6 1TB', 'Xiaomi POCO F6, მეხსიერება: 1TB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1257, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-72-0/800/600','https://picsum.photos/seed/phone-72-1/800/600','https://picsum.photos/seed/phone-72-2/800/600']::text[], '{"storage": "1TB", "color": "იისფერი", "brand": "Xiaomi"}'::jsonb, 271);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b4e332d8-4525-47a6-8664-0873613b8533', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 58 კვ.მ — ბათუმი ცენტრი', '2-ოთახიანი ბინა ბათუმი ცენტრი-ში, 58 კვადრატული მეტრი.
სართული: 9/14.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 152946, 'USD', 'like_new', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-77-0/800/600','https://picsum.photos/seed/apartment-77-1/800/600','https://picsum.photos/seed/apartment-77-2/800/600']::text[], '{"sqm": 58, "floor": 9, "total_floors": 14, "rooms": "2-ოთახიანი", "price_per_sqm": 2637}'::jsonb, 442);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8a9fa6f0-4f0e-407b-9e07-8bd72cb35607', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 6,247. პროფესიონალურად მოვლილი.
ობიექტივი არ მოყვება (მხოლოდ body).', 4521, 'GEL', 'like_new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/camera-25-0/800/600','https://picsum.photos/seed/camera-25-1/800/600','https://picsum.photos/seed/camera-25-2/800/600']::text[], '{"shutter_count": 6247, "type": "camera"}'::jsonb, 489);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('278e08ed-d1da-4e17-835d-be7e9d9cb09b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A7C II', 'Sony Alpha A7C II.
შატერის რაოდენობა: 39,586. პროფესიონალურად მოვლილი.
კიტის ობიექტივით: 28-70mm.', 2858, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/camera-58-0/800/600','https://picsum.photos/seed/camera-58-1/800/600','https://picsum.photos/seed/camera-58-2/800/600']::text[], '{"shutter_count": 39586, "type": "camera"}'::jsonb, 333);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d572c33b-205d-4d6f-a05f-08d5977fbdd3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 241 კვ.მ, მიწა 2884 კვ.მ — ბათუმი გონიო', '2-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 241 კვ.მ, მიწის ნაკვეთი: 2884 კვ.მ.
სრული რემონტით, ცენტრალური გათბობა, საუნა და აუზი.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 213920, 'USD', 'new', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-46-0/800/600','https://picsum.photos/seed/house-46-1/800/600','https://picsum.photos/seed/house-46-2/800/600']::text[], '{"sqm_house": 241, "sqm_land": 2884, "floors": 2}'::jsonb, 282);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('dbf4d95a-b519-4a8a-b39e-8df0b245abe9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Corolla 2011', 'Toyota Corolla, 2011 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 279,931 კმ.
აღჭურვილობა: პანორამული ჭერი, ნავიგაცია.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 116648, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-191-0/800/600','https://picsum.photos/seed/car-191-1/800/600','https://picsum.photos/seed/car-191-2/800/600']::text[], '{"year": 2011, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 279931, "color": "თეთრი"}'::jsonb, 59);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2e0ebdf9-b5e2-47ad-9fcb-4ba016b78c5e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi 14 Ultra 1TB', 'Xiaomi 14 Ultra, მეხსიერება: 1TB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 2062, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-160-0/800/600','https://picsum.photos/seed/phone-160-1/800/600','https://picsum.photos/seed/phone-160-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "Xiaomi"}'::jsonb, 350);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1e4164e2-b781-480f-a497-433ed98e5086', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 113 კვ.მ — დიდუბე', '4-ოთახიანი ბინა დიდუბე-ში, 113 კვადრატული მეტრი.
სართული: 19/26.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 174811, 'USD', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-0-0/800/600','https://picsum.photos/seed/apartment-0-1/800/600','https://picsum.photos/seed/apartment-0-2/800/600']::text[], '{"sqm": 113, "floor": 19, "total_floors": 26, "rooms": "4-ოთახიანი", "price_per_sqm": 1547}'::jsonb, 48);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0be39c4b-47f3-4568-8176-4fb8e570d447', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad T14s, 8GB/2TB SSD', 'Lenovo ThinkPad T14s.
პროცესორი: Intel Core i7, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2312, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-112-0/800/600','https://picsum.photos/seed/laptop-112-1/800/600','https://picsum.photos/seed/laptop-112-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "8GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 171);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9aa41cd0-9acc-4860-b468-8d26aae01be7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi A4 2021', 'Audi A4, 2021 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 140,746 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ხის სალონი, ნავიგაცია, უკანა კამერა, LED ფარები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 187616, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-4-0/800/600','https://picsum.photos/seed/car-4-1/800/600','https://picsum.photos/seed/car-4-2/800/600']::text[], '{"year": 2021, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 140746, "color": "ნაცრისფერი"}'::jsonb, 113);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3f901843-314c-4aa1-affd-3abfa646985d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 256GB', 'OnePlus Nord 3, მეხსიერება: 256GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1164, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-195-0/800/600','https://picsum.photos/seed/phone-195-1/800/600','https://picsum.photos/seed/phone-195-2/800/600']::text[], '{"storage": "256GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 421);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9b5a17c1-4e95-47bc-849f-c1f363b9f144', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 8GB/512GB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: Intel Core i5, ოპერატიული: 8GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3619, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-105-0/800/600','https://picsum.photos/seed/laptop-105-1/800/600','https://picsum.photos/seed/laptop-105-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "8GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 498);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a08ebab3-b364-439b-88f2-f688abb19766', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 16GB/2TB SSD', 'ASUS VivoBook 15.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1500, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-22-0/800/600','https://picsum.photos/seed/laptop-22-1/800/600','https://picsum.photos/seed/laptop-22-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 252);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('702780a5-363a-4ec1-bd51-7d3ba30d4752', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz GLE 350 2023', 'Mercedes-Benz GLE 350, 2023 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 112,429 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კონდიციონერი, უკანა კამერა, კრუიზ კონტროლი, პარკინგ სენსორები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 62247, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-185-0/800/600','https://picsum.photos/seed/car-185-1/800/600','https://picsum.photos/seed/car-185-2/800/600']::text[], '{"year": 2023, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 112429, "color": "ლურჯი"}'::jsonb, 391);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d6e594b4-345b-406c-bdca-ca4b8f1945c8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 64GB/2TB SSD', 'ASUS VivoBook 15.
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1145, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-0-0/800/600','https://picsum.photos/seed/laptop-0-1/800/600','https://picsum.photos/seed/laptop-0-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 280);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('59c9cdca-84ec-4e1a-bcfb-3de32fe78616', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Nitro 5, 64GB/256GB SSD', 'Acer Nitro 5.
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3077, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-87-0/800/600','https://picsum.photos/seed/laptop-87-1/800/600','https://picsum.photos/seed/laptop-87-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 358);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('520186f2-5a97-413f-85dc-83e4c3b045cc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Golf 2021', 'Volkswagen Golf, 2021 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 139,697 კმ.
აღჭურვილობა: პარკინგ სენსორები, ნავიგაცია, გამათბობელი სავარძლები, პანორამული ჭერი, კრუიზ კონტროლი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 7902, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/car-129-0/800/600','https://picsum.photos/seed/car-129-1/800/600','https://picsum.photos/seed/car-129-2/800/600']::text[], '{"year": 2021, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 139697, "color": "ნაცრისფერი"}'::jsonb, 100);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('25f6b148-d429-4b1c-aa95-74f048cec952', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 41 კვ.მ — სოლოლაკი', '1-ოთახიანი ბინა სოლოლაკი-ში, 41 კვადრატული მეტრი.
სართული: 12/12.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 161745, 'USD', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-39-0/800/600','https://picsum.photos/seed/apartment-39-1/800/600','https://picsum.photos/seed/apartment-39-2/800/600']::text[], '{"sqm": 41, "floor": 12, "total_floors": 12, "rooms": "1-ოთახიანი", "price_per_sqm": 3945}'::jsonb, 49);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('76113b70-4920-449e-afa4-1ff201dddcc9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 128GB', 'OnePlus Nord CE 3, მეხსიერება: 128GB, ფერი: შავი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 849, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-148-0/800/600','https://picsum.photos/seed/phone-148-1/800/600','https://picsum.photos/seed/phone-148-2/800/600']::text[], '{"storage": "128GB", "color": "შავი", "brand": "OnePlus"}'::jsonb, 412);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0d40fedc-325f-4def-a3d3-1ce575546322', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 69 კვ.მ — ქუთაისი ცენტრი', '2-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 69 კვადრატული მეტრი.
სართული: 15/17.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 88251, 'USD', 'new', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-87-0/800/600','https://picsum.photos/seed/apartment-87-1/800/600','https://picsum.photos/seed/apartment-87-2/800/600']::text[], '{"sqm": 69, "floor": 15, "total_floors": 17, "rooms": "2-ოთახიანი", "price_per_sqm": 1279}'::jsonb, 310);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fa3f7037-53b0-406e-b381-501053225495', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 64GB', 'Xiaomi Pad 6, მეხსიერება: 64GB.
ახალი, დალუქული ყუთით.
კლავიატურის ქეისი მოყვება.', 1090, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/tablet-59-0/800/600','https://picsum.photos/seed/tablet-59-1/800/600','https://picsum.photos/seed/tablet-59-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 387);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('72bcb6b1-8301-43ed-a055-f4b637bf3523', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q7 2016', 'Audi Q7, 2016 წლის გამოშვება.
ფერი: შავი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 109,104 კმ.
აღჭურვილობა: პანორამული ჭერი, გამათბობელი სავარძლები.', 132765, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/car-154-0/800/600','https://picsum.photos/seed/car-154-1/800/600','https://picsum.photos/seed/car-154-2/800/600']::text[], '{"year": 2016, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 109104, "color": "შავი"}'::jsonb, 472);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0e70c0a4-045f-4d1b-b3f5-c468b5bc04a6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 1TB', 'Google Pixel 8, მეხსიერება: 1TB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2307, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-104-0/800/600','https://picsum.photos/seed/phone-104-1/800/600','https://picsum.photos/seed/phone-104-2/800/600']::text[], '{"storage": "1TB", "color": "ოქროსფერი", "brand": "Google Pixel"}'::jsonb, 365);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7799903f-2897-4c0d-af53-e6d4230f4f70', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 189 კვ.მ, მიწა 2570 კვ.მ — საგურამო', '3-სართულიანი სახლი საგურამო-ში.
საცხოვრებელი ფართი: 189 კვ.მ, მიწის ნაკვეთი: 2570 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 85071, 'USD', 'good', 'active', 'საგურამო', ARRAY['https://picsum.photos/seed/house-29-0/800/600','https://picsum.photos/seed/house-29-1/800/600','https://picsum.photos/seed/house-29-2/800/600']::text[], '{"sqm_house": 189, "sqm_land": 2570, "floors": 3}'::jsonb, 210);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('08764da0-e52a-4b6a-9370-ec4431590a74', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 39 კვ.მ — ნაძალადევი', '1-ოთახიანი ბინა ნაძალადევი-ში, 39 კვადრატული მეტრი.
სართული: 7/12.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მშვიდი უბანი, ბაღებთან ახლოს.', 45396, 'USD', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-27-0/800/600','https://picsum.photos/seed/apartment-27-1/800/600','https://picsum.photos/seed/apartment-27-2/800/600']::text[], '{"sqm": 39, "floor": 7, "total_floors": 12, "rooms": "1-ოთახიანი", "price_per_sqm": 1164}'::jsonb, 238);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f03111f9-9003-4d57-8453-4156fdf40508', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 64GB', 'Google Pixel 6a, მეხსიერება: 64GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1064, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-44-0/800/600','https://picsum.photos/seed/phone-44-1/800/600','https://picsum.photos/seed/phone-44-2/800/600']::text[], '{"storage": "64GB", "color": "თეთრი", "brand": "Google Pixel"}'::jsonb, 375);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0a4e41d9-ae15-425d-8e70-fcf41808f87a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 59,430. ყუთი და დამტენი მოყვება.
კიტის ობიექტივით: 28-70mm.', 3996, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/camera-40-0/800/600','https://picsum.photos/seed/camera-40-1/800/600','https://picsum.photos/seed/camera-40-2/800/600']::text[], '{"shutter_count": 59430, "type": "camera"}'::jsonb, 408);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1e766f72-0929-46fc-8e11-619ef493aa00', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — ვერცხლისფერი', 'Apple AirPods Max, ფერი: ვერცხლისფერი.
ახალი, არ გახსნილა, სრული გარანტია.', 1652, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/headphone-34-0/800/600','https://picsum.photos/seed/headphone-34-1/800/600','https://picsum.photos/seed/headphone-34-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 460);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d22dd383-3480-4051-8be7-46468f2f54b3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Xiaomi Buds 4 Pro — ვერცხლისფერი', 'Xiaomi Buds 4 Pro, ფერი: ვერცხლისფერი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 182, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/headphone-59-0/800/600','https://picsum.photos/seed/headphone-59-1/800/600','https://picsum.photos/seed/headphone-59-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 402);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1eb4b788-af5d-44a2-bbaa-afd98485a44d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 128GB', 'Xiaomi Pad 6, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
სტილუსი მოყვება.', 1335, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/tablet-68-0/800/600','https://picsum.photos/seed/tablet-68-1/800/600','https://picsum.photos/seed/tablet-68-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 488);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1046c8dd-b91f-4a45-be78-a0f116bcbd9e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 14", 8GB/256GB SSD', 'Apple MacBook Pro M3 14".
პროცესორი: Apple M3 Max, ოპერატიული: 8GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 7029, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-157-0/800/600','https://picsum.photos/seed/laptop-157-1/800/600','https://picsum.photos/seed/laptop-157-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "8GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 157);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c5236375-0a47-42b3-83e7-09715f563577', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 244 კვ.მ, მიწა 2296 კვ.მ — დიღომი', '2-სართულიანი სახლი დიღომი-ში.
საცხოვრებელი ფართი: 244 კვ.მ, მიწის ნაკვეთი: 2296 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 135044, 'USD', 'fair', 'active', 'დიღომი', ARRAY['https://picsum.photos/seed/house-27-0/800/600','https://picsum.photos/seed/house-27-1/800/600','https://picsum.photos/seed/house-27-2/800/600']::text[], '{"sqm_house": 244, "sqm_land": 2296, "floors": 2}'::jsonb, 23);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('102584b1-108e-4768-9a77-81d81d711b82', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 32 კვ.მ — ნაძალადევი', 'სტუდიო ბინა ნაძალადევი-ში, 32 კვადრატული მეტრი.
სართული: 8/10.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
მშვიდი უბანი, ბაღებთან ახლოს.', 49888, 'USD', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-22-0/800/600','https://picsum.photos/seed/apartment-22-1/800/600','https://picsum.photos/seed/apartment-22-2/800/600']::text[], '{"sqm": 32, "floor": 8, "total_floors": 10, "rooms": "სტუდიო", "price_per_sqm": 1559}'::jsonb, 133);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('332bb577-34c3-4e39-b556-63c7502f312d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WF-1000XM5 — თეთრი', 'Sony WF-1000XM5, ფერი: თეთრი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 779, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/headphone-28-0/800/600','https://picsum.photos/seed/headphone-28-1/800/600','https://picsum.photos/seed/headphone-28-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 450);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f398d0e1-ac5b-4544-a203-a796fbe70366', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 200 კვ.მ — ისანი', '4-ოთახიანი ბინა ისანი-ში, 200 კვადრატული მეტრი.
სართული: 9/15.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 161800, 'USD', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-92-0/800/600','https://picsum.photos/seed/apartment-92-1/800/600','https://picsum.photos/seed/apartment-92-2/800/600']::text[], '{"sqm": 200, "floor": 9, "total_floors": 15, "rooms": "4-ოთახიანი", "price_per_sqm": 809}'::jsonb, 454);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fc116df1-6221-410e-8152-3bdc44d999fa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Xiaomi Buds 4 Pro — თეთრი', 'Xiaomi Buds 4 Pro, ფერი: თეთრი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 392, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/headphone-22-0/800/600','https://picsum.photos/seed/headphone-22-1/800/600','https://picsum.photos/seed/headphone-22-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 19);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c9e08a5b-74af-45dd-83bf-3707913291f2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 32GB/512GB SSD', 'Acer Aspire 5.
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1661, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-163-0/800/600','https://picsum.photos/seed/laptop-163-1/800/600','https://picsum.photos/seed/laptop-163-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "512GB SSD", "brand": "Acer"}'::jsonb, 404);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('406b3cf4-3dd8-471f-8d12-5761eaafac60', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru BRZ 2013', 'Subaru BRZ, 2013 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 258,544 კმ.
აღჭურვილობა: კონდიციონერი, LED ფარები, კრუიზ კონტროლი.', 39738, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-199-0/800/600','https://picsum.photos/seed/car-199-1/800/600','https://picsum.photos/seed/car-199-2/800/600']::text[], '{"year": 2013, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 258544, "color": "ლურჯი"}'::jsonb, 366);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0a40a95c-c328-46f6-a098-dbd895adf0a0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 6190 კვ.მ — კოჯორი', 'მიწის ნაკვეთი კოჯორი-ში, 6190 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 192885, 'USD', 'good', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/land-38-0/800/600','https://picsum.photos/seed/land-38-1/800/600','https://picsum.photos/seed/land-38-2/800/600']::text[], '{"sqm": 6190, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 29);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9e04a04f-d814-4536-87bb-8832515cb054', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 264 კვ.მ, მიწა 965 კვ.მ — დიღომი', '1-სართულიანი სახლი დიღომი-ში.
საცხოვრებელი ფართი: 264 კვ.მ, მიწის ნაკვეთი: 965 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 327997, 'USD', 'fair', 'active', 'დიღომი', ARRAY['https://picsum.photos/seed/house-21-0/800/600','https://picsum.photos/seed/house-21-1/800/600','https://picsum.photos/seed/house-21-2/800/600']::text[], '{"sqm_house": 264, "sqm_land": 965, "floors": 1}'::jsonb, 262);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('69d409b6-6b0e-4cfd-9ff8-17c3d6a7dac9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 294 კვ.მ, მიწა 701 კვ.მ — ოქროყანა', '2-სართულიანი სახლი ოქროყანა-ში.
საცხოვრებელი ფართი: 294 კვ.მ, მიწის ნაკვეთი: 701 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
ხეხილის ბაღი, ავტოფარეხი 2 მანქანაზე.', 153186, 'USD', 'fair', 'active', 'ოქროყანა', ARRAY['https://picsum.photos/seed/house-5-0/800/600','https://picsum.photos/seed/house-5-1/800/600','https://picsum.photos/seed/house-5-2/800/600']::text[], '{"sqm_house": 294, "sqm_land": 701, "floors": 2}'::jsonb, 354);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e31991e9-bd1b-4e05-ae1f-2f4489b317f9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 Pro 128GB', 'Apple iPhone 15 Pro, მეხსიერება: 128GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2242, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/phone-151-0/800/600','https://picsum.photos/seed/phone-151-1/800/600','https://picsum.photos/seed/phone-151-2/800/600']::text[], '{"storage": "128GB", "color": "თეთრი", "brand": "Apple iPhone"}'::jsonb, 462);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c5ff3db2-1a8e-4202-8b65-f3131540e5b5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sennheiser Momentum 4 — მწვანე', 'Sennheiser Momentum 4, ფერი: მწვანე.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 504, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/headphone-9-0/800/600','https://picsum.photos/seed/headphone-9-1/800/600','https://picsum.photos/seed/headphone-9-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 410);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f355beff-8aa4-4c54-afa0-bdac16fcbb59', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Predator Helios 16, 16GB/256GB SSD', 'Acer Predator Helios 16.
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4108, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-142-0/800/600','https://picsum.photos/seed/laptop-142-1/800/600','https://picsum.photos/seed/laptop-142-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "256GB SSD", "brand": "Acer"}'::jsonb, 44);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3432c0f6-3908-4546-b5e3-9f70a6e9f9a5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 64GB/512GB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5876, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-101-0/800/600','https://picsum.photos/seed/laptop-101-1/800/600','https://picsum.photos/seed/laptop-101-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "512GB SSD", "brand": "Apple MacBook"}'::jsonb, 203);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1d221057-bb0c-4d11-ad60-978dbb86ce85', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 128GB', 'Lenovo Tab P12 Pro, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
სტილუსი მოყვება.', 2151, 'GEL', 'like_new', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/tablet-27-0/800/600','https://picsum.photos/seed/tablet-27-1/800/600','https://picsum.photos/seed/tablet-27-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 222);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5d8359aa-78cd-444d-a146-bddddb4b74d9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Omen 16, 16GB/2TB SSD', 'HP Omen 16.
პროცესორი: Intel Core i5, ოპერატიული: 16GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4585, 'GEL', 'good', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-118-0/800/600','https://picsum.photos/seed/laptop-118-1/800/600','https://picsum.photos/seed/laptop-118-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "16GB", "ssd": "2TB SSD", "brand": "HP"}'::jsonb, 82);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5aa1a92a-c67f-4a70-a8cd-c35f83af7fe4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP EliteBook 840, 32GB/256GB SSD', 'HP EliteBook 840.
პროცესორი: Intel Core i9, ოპერატიული: 32GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 2355, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-39-0/800/600','https://picsum.photos/seed/laptop-39-1/800/600','https://picsum.photos/seed/laptop-39-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "32GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 145);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('db09d09c-363b-474a-a629-22bae4d06bea', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 64GB/256GB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1960, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-33-0/800/600','https://picsum.photos/seed/laptop-33-1/800/600','https://picsum.photos/seed/laptop-33-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 263);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2c81883c-a0bb-45c9-8a95-dcbcf5ee17ed', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1011 კვ.მ — კახეთი, სიღნაღი', 'მიწის ნაკვეთი კახეთი, სიღნაღი-ში, 1011 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 12684, 'USD', 'good', 'active', 'კახეთი, სიღნაღი', ARRAY['https://picsum.photos/seed/land-8-0/800/600','https://picsum.photos/seed/land-8-1/800/600','https://picsum.photos/seed/land-8-2/800/600']::text[], '{"sqm": 1011, "purpose": "კომერციული"}'::jsonb, 474);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ed8d68dd-34f3-4d81-b07f-d249bd11a67b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7 Pro 256GB', 'Google Pixel 7 Pro, მეხსიერება: 256GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1611, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-75-0/800/600','https://picsum.photos/seed/phone-75-1/800/600','https://picsum.photos/seed/phone-75-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 235);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('45669258-3ea7-47d1-8738-079f35572346', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 16GB/256GB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M3, ოპერატიული: 16GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1977, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-72-0/800/600','https://picsum.photos/seed/laptop-72-1/800/600','https://picsum.photos/seed/laptop-72-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "16GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 215);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('16441b08-2f4a-4769-b7d6-485c620adfc8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A6700', 'Sony Alpha A6700.
შატერის რაოდენობა: 72,183. კარგ მდგომარეობაში, სენსორი სუფთა.
კიტის ობიექტივით: 28-70mm.', 3826, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/camera-0-0/800/600','https://picsum.photos/seed/camera-0-1/800/600','https://picsum.photos/seed/camera-0-2/800/600']::text[], '{"shutter_count": 72183, "type": "camera"}'::jsonb, 82);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('41072a74-e878-41c1-9ee7-9f237059b6d1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9358 კვ.მ — წყნეთი', 'მიწის ნაკვეთი წყნეთი-ში, 9358 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 335847, 'USD', 'good', 'active', 'წყნეთი', ARRAY['https://picsum.photos/seed/land-18-0/800/600','https://picsum.photos/seed/land-18-1/800/600','https://picsum.photos/seed/land-18-2/800/600']::text[], '{"sqm": 9358, "purpose": "კომერციული"}'::jsonb, 156);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('493f28f4-a286-45e0-8c94-f839df6ce413', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Juke 2018', 'Nissan Juke, 2018 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 186,433 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ტყავის სალონი, უკანა კამერა, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 64573, 'GEL', 'like_new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-105-0/800/600','https://picsum.photos/seed/car-105-1/800/600','https://picsum.photos/seed/car-105-2/800/600']::text[], '{"year": 2018, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 186433, "color": "ლურჯი"}'::jsonb, 207);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('39cd49d5-c7cb-4811-9d1a-e83d8ba08012', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Palisade 2013', 'Hyundai Palisade, 2013 წლის გამოშვება.
ფერი: შავი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 215,814 კმ.
აღჭურვილობა: კრუიზ კონტროლი, LED ფარები, ტყავის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 58686, 'GEL', 'fair', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-167-0/800/600','https://picsum.photos/seed/car-167-1/800/600','https://picsum.photos/seed/car-167-2/800/600']::text[], '{"year": 2013, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 215814, "color": "შავი"}'::jsonb, 14);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4a5a3660-7530-4ee8-9063-65a6be867657', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 270 კვ.მ, მიწა 2711 კვ.მ — მუხრანი', '3-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 270 კვ.მ, მიწის ნაკვეთი: 2711 კვ.მ.
კარგ მდგომარეობაში, ეზო მოწესრიგებული.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 59642, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-28-0/800/600','https://picsum.photos/seed/house-28-1/800/600','https://picsum.photos/seed/house-28-2/800/600']::text[], '{"sqm_house": 270, "sqm_land": 2711, "floors": 3}'::jsonb, 40);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('46915997-0065-49fe-a134-51ec1a2b1d03', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A6700', 'Sony Alpha A6700.
თითქმის ახალი, შატერის რაოდენობა: 929.
მეხსიერების ბარათი 128GB მოყვება.', 3361, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/camera-46-0/800/600','https://picsum.photos/seed/camera-46-1/800/600','https://picsum.photos/seed/camera-46-2/800/600']::text[], '{"shutter_count": 929, "type": "camera"}'::jsonb, 354);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ef25c1c4-42c6-4971-a85e-61a44e9c3836', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'DJI Osmo Action 4', 'DJI Osmo Action 4.
შატერის რაოდენობა: 62,173. ყუთი და დამტენი მოყვება.
კიტის ობიექტივით: 28-70mm.', 641, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/camera-16-0/800/600','https://picsum.photos/seed/camera-16-1/800/600','https://picsum.photos/seed/camera-16-2/800/600']::text[], '{"shutter_count": 62173, "type": "camera"}'::jsonb, 449);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ee459335-ce1f-465c-9028-0df80eaca2a5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Mercedes-Benz CLA 250 2018', 'Mercedes-Benz CLA 250, 2018 წლის გამოშვება.
ფერი: შავი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 176,460 კმ.
აღჭურვილობა: პანორამული ჭერი, გამათბობელი სავარძლები, LED ფარები, ნავიგაცია.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 245931, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/car-30-0/800/600','https://picsum.photos/seed/car-30-1/800/600','https://picsum.photos/seed/car-30-2/800/600']::text[], '{"year": 2018, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 176460, "color": "შავი"}'::jsonb, 22);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a4a09760-52fd-4ac7-9511-662e03824176', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S23 Ultra 256GB', 'Samsung Galaxy S23 Ultra, მეხსიერება: 256GB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 3922, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-173-0/800/600','https://picsum.photos/seed/phone-173-1/800/600','https://picsum.photos/seed/phone-173-2/800/600']::text[], '{"storage": "256GB", "color": "ლურჯი", "brand": "Samsung Galaxy"}'::jsonb, 232);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8e881c70-cc32-48bf-bcd1-7479b7bc1d0d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 82 კვ.მ — ნაძალადევი', '3-ოთახიანი ბინა ნაძალადევი-ში, 82 კვადრატული მეტრი.
სართული: 17/17.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 108404, 'USD', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-5-0/800/600','https://picsum.photos/seed/apartment-5-1/800/600','https://picsum.photos/seed/apartment-5-2/800/600']::text[], '{"sqm": 82, "floor": 17, "total_floors": 17, "rooms": "3-ოთახიანი", "price_per_sqm": 1322}'::jsonb, 302);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4efa292c-f1af-400a-b1ac-23ebeb0e56d0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 1TB', 'OnePlus Nord CE 3, მეხსიერება: 1TB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 507, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-193-0/800/600','https://picsum.photos/seed/phone-193-1/800/600','https://picsum.photos/seed/phone-193-2/800/600']::text[], '{"storage": "1TB", "color": "შავი", "brand": "OnePlus"}'::jsonb, 357);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f813b2ab-fa49-4e19-afd3-f3a2a366d504', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 74 კვ.მ — დიდუბე', '2-ოთახიანი ბინა დიდუბე-ში, 74 კვადრატული მეტრი.
სართული: 17/19.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 146742, 'USD', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/apartment-9-0/800/600','https://picsum.photos/seed/apartment-9-1/800/600','https://picsum.photos/seed/apartment-9-2/800/600']::text[], '{"sqm": 74, "floor": 17, "total_floors": 19, "rooms": "2-ოთახიანი", "price_per_sqm": 1983}'::jsonb, 37);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8ffba527-60a8-4fda-b5e3-e1d567b5e701', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 43 კვ.მ — სოლოლაკი', '1-ოთახიანი ბინა სოლოლაკი-ში, 43 კვადრატული მეტრი.
სართული: 17/25.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 166281, 'USD', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-79-0/800/600','https://picsum.photos/seed/apartment-79-1/800/600','https://picsum.photos/seed/apartment-79-2/800/600']::text[], '{"sqm": 43, "floor": 17, "total_floors": 25, "rooms": "1-ოთახიანი", "price_per_sqm": 3867}'::jsonb, 372);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d8676c2a-2c68-4ce5-aa9e-944f64da5728', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A14 1TB', 'Samsung Galaxy A14, მეხსიერება: 1TB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 273, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-83-0/800/600','https://picsum.photos/seed/phone-83-1/800/600','https://picsum.photos/seed/phone-83-2/800/600']::text[], '{"storage": "1TB", "color": "შავი", "brand": "Samsung Galaxy"}'::jsonb, 184);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('12132976-e1bc-4ccb-a28e-61207055fa40', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 32GB/2TB SSD', 'ASUS ROG Strix G16.
პროცესორი: Apple M3 Max, ოპერატიული: 32GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5652, 'GEL', 'new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/laptop-195-0/800/600','https://picsum.photos/seed/laptop-195-1/800/600','https://picsum.photos/seed/laptop-195-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "32GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 377);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fc497cec-ec4d-4120-90c4-d5b86126c345', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort 45 — ლურჯი', 'Bose QuietComfort 45, ფერი: ლურჯი.
ახალი, არ გახსნილა, სრული გარანტია.', 756, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/headphone-1-0/800/600','https://picsum.photos/seed/headphone-1-1/800/600','https://picsum.photos/seed/headphone-1-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 48);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('17cece18-c28c-4d87-bd10-679d45d7a3aa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Land Cruiser 2018', 'Toyota Land Cruiser, 2018 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 245,949 კმ.
აღჭურვილობა: ნავიგაცია, კონდიციონერი, ტყავის სალონი, პარკინგ სენსორები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 9335, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-158-0/800/600','https://picsum.photos/seed/car-158-1/800/600','https://picsum.photos/seed/car-158-2/800/600']::text[], '{"year": 2018, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 245949, "color": "ლურჯი"}'::jsonb, 464);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8f181cb1-f31e-4df1-b708-8082f1775b7e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Xiaomi Pad 6 256GB', 'Xiaomi Pad 6, მეხსიერება: 256GB.
როგორც ახალი, კომპლექტი სრულია.
კლავიატურის ქეისი მოყვება.', 845, 'GEL', 'fair', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/tablet-4-0/800/600','https://picsum.photos/seed/tablet-4-1/800/600','https://picsum.photos/seed/tablet-4-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 464);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c6515e7b-404d-4ae1-a436-109a40b6358c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 16GB/512GB SSD', 'Dell Alienware m16.
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 7909, 'GEL', 'new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-83-0/800/600','https://picsum.photos/seed/laptop-83-1/800/600','https://picsum.photos/seed/laptop-83-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 333);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('94b05284-7b80-4abd-b06a-fd550b29778b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi e-tron 2011', 'Audi e-tron, 2011 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 25,428 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ნავიგაცია, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 197938, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-193-0/800/600','https://picsum.photos/seed/car-193-1/800/600','https://picsum.photos/seed/car-193-2/800/600']::text[], '{"year": 2011, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 25428, "color": "ლურჯი"}'::jsonb, 118);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('14555b6d-de17-4247-8be9-27f31e3a9e22', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Spectre x360, 8GB/512GB SSD', 'HP Spectre x360.
პროცესორი: Intel Core i5, ოპერატიული: 8GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 2505, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-166-0/800/600','https://picsum.photos/seed/laptop-166-1/800/600','https://picsum.photos/seed/laptop-166-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "8GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 427);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('23cad59b-3b35-4cd5-9476-568f59953e0e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 176 კვ.მ, მიწა 1168 კვ.მ — ბაგები', '3-სართულიანი სახლი ბაგები-ში.
საცხოვრებელი ფართი: 176 კვ.მ, მიწის ნაკვეთი: 1168 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 227428, 'USD', 'fair', 'active', 'ბაგები', ARRAY['https://picsum.photos/seed/house-0-0/800/600','https://picsum.photos/seed/house-0-1/800/600','https://picsum.photos/seed/house-0-2/800/600']::text[], '{"sqm_house": 176, "sqm_land": 1168, "floors": 3}'::jsonb, 91);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('34b59f1b-6694-4e90-979a-bda2d9eddef7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 5507 კვ.მ — გონიო', 'მიწის ნაკვეთი გონიო-ში, 5507 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 303803, 'USD', 'good', 'active', 'გონიო', ARRAY['https://picsum.photos/seed/land-14-0/800/600','https://picsum.photos/seed/land-14-1/800/600','https://picsum.photos/seed/land-14-2/800/600']::text[], '{"sqm": 5507, "purpose": "საცხოვრებელი"}'::jsonb, 211);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1c1a1aa7-4c63-4519-a595-58b4de34b06e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Carnival 2021', 'Kia Carnival, 2021 წლის გამოშვება.
ფერი: შავი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 251,827 კმ.
აღჭურვილობა: LED ფარები, კრუიზ კონტროლი, ხის სალონი.', 16916, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-73-0/800/600','https://picsum.photos/seed/car-73-1/800/600','https://picsum.photos/seed/car-73-2/800/600']::text[], '{"year": 2021, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 251827, "color": "შავი"}'::jsonb, 266);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f6307622-985b-42de-81f3-cccfa347a1f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus RX 350 2020', 'Lexus RX 350, 2020 წლის გამოშვება.
ფერი: წითელი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 54,641 კმ.
აღჭურვილობა: კრუიზ კონტროლი, ხის სალონი, მულტიმედია სისტემა, ნავიგაცია.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 113154, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-113-0/800/600','https://picsum.photos/seed/car-113-1/800/600','https://picsum.photos/seed/car-113-2/800/600']::text[], '{"year": 2020, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 54641, "color": "წითელი"}'::jsonb, 394);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('75e35369-da26-4197-af42-d6f29943e49b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
ახალი, დალუქული, ოფიციალური გარანტია.
ჩანთა და დამატებითი ბატარეა მოყვება.', 4117, 'GEL', 'new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/camera-53-0/800/600','https://picsum.photos/seed/camera-53-1/800/600','https://picsum.photos/seed/camera-53-2/800/600']::text[], '{"shutter_count": 60463, "type": "camera"}'::jsonb, 398);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fc48c494-0e43-46bc-a811-a34e96bee196', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ZenBook 14, 16GB/1TB SSD', 'ASUS ZenBook 14.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3218, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/laptop-41-0/800/600','https://picsum.photos/seed/laptop-41-1/800/600','https://picsum.photos/seed/laptop-41-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "1TB SSD", "brand": "ASUS"}'::jsonb, 447);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('716e9f67-6bd0-44b1-93c8-6b301ec6a919', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 35 კვ.მ — ვერა', 'სტუდიო ბინა ვერა-ში, 35 კვადრატული მეტრი.
სართული: 7/9.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 135975, 'USD', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-54-0/800/600','https://picsum.photos/seed/apartment-54-1/800/600','https://picsum.photos/seed/apartment-54-2/800/600']::text[], '{"sqm": 35, "floor": 7, "total_floors": 9, "rooms": "სტუდიო", "price_per_sqm": 3885}'::jsonb, 222);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1eb06b07-d966-434e-a335-c3de822350b4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Hilux 2018', 'Toyota Hilux, 2018 წლის გამოშვება.
ფერი: წითელი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 122,739 კმ.
აღჭურვილობა: ტყავის სალონი, კრუიზ კონტროლი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 56824, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-186-0/800/600','https://picsum.photos/seed/car-186-1/800/600','https://picsum.photos/seed/car-186-2/800/600']::text[], '{"year": 2018, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 122739, "color": "წითელი"}'::jsonb, 143);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f00e75ee-aa5b-4da7-a363-e0756291f8a8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 34 კვ.მ — სოლოლაკი', 'სტუდიო ბინა სოლოლაკი-ში, 34 კვადრატული მეტრი.
სართული: 10/18.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
პარკეტის იატაკი, ცენტრალური გათბობა, კონდიციონერი ყველა ოთახში.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 68204, 'USD', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/apartment-82-0/800/600','https://picsum.photos/seed/apartment-82-1/800/600','https://picsum.photos/seed/apartment-82-2/800/600']::text[], '{"sqm": 34, "floor": 10, "total_floors": 18, "rooms": "სტუდიო", "price_per_sqm": 2006}'::jsonb, 359);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cd518c0a-3d2f-4266-9eb0-75675ce19aa0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Lenovo Tab P12 Pro 64GB', 'Lenovo Tab P12 Pro, მეხსიერება: 64GB.
მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.
Wi-Fi + Cellular ვერსია.', 1798, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/tablet-60-0/800/600','https://picsum.photos/seed/tablet-60-1/800/600','https://picsum.photos/seed/tablet-60-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 279);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b231da38-42ff-423c-a66e-4c61807a9354', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP ProBook 450, 64GB/256GB SSD', 'HP ProBook 450.
პროცესორი: Intel Core i7, ოპერატიული: 64GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1461, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-180-0/800/600','https://picsum.photos/seed/laptop-180-1/800/600','https://picsum.photos/seed/laptop-180-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "64GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 222);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cd0eb143-129c-4330-b4a8-ba86f505ac24', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 128GB', 'Samsung Galaxy S24, მეხსიერება: 128GB, ფერი: შავი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2912, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-56-0/800/600','https://picsum.photos/seed/phone-56-1/800/600','https://picsum.photos/seed/phone-56-2/800/600']::text[], '{"storage": "128GB", "color": "შავი", "brand": "Samsung Galaxy"}'::jsonb, 276);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d007b1a7-2d90-459e-92a1-2fb498cd3999', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 8GB/512GB SSD', 'Dell Inspiron 15.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 1255, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-193-0/800/600','https://picsum.photos/seed/laptop-193-1/800/600','https://picsum.photos/seed/laptop-193-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "512GB SSD", "brand": "Dell"}'::jsonb, 182);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3ba440bd-4cec-4ce5-934d-9ac4b4e23fcf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q3 2018', 'Audi Q3, 2018 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 185,594 კმ.
აღჭურვილობა: კონდიციონერი, მულტიმედია სისტემა, უკანა კამერა.', 38512, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-168-0/800/600','https://picsum.photos/seed/car-168-1/800/600','https://picsum.photos/seed/car-168-2/800/600']::text[], '{"year": 2018, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 185594, "color": "ლურჯი"}'::jsonb, 255);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('878966f6-b5fc-45ab-b626-23ed9ce87b04', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 8GB/2TB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: Intel Core i5, ოპერატიული: 8GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 5911, 'GEL', 'new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-143-0/800/600','https://picsum.photos/seed/laptop-143-1/800/600','https://picsum.photos/seed/laptop-143-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "8GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 421);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('396bcbdc-cf4f-4a02-afef-2f28b7cdd2b3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods 3 — ვერცხლისფერი', 'Apple AirPods 3, ფერი: ვერცხლისფერი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 245, 'GEL', 'fair', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/headphone-65-0/800/600','https://picsum.photos/seed/headphone-65-1/800/600','https://picsum.photos/seed/headphone-65-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 404);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('492fb24d-b7c9-46be-a567-db849f6b5736', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 740i 2012', 'BMW 740i, 2012 წლის გამოშვება.
ფერი: შავი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 139,350 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ხის სალონი.', 16058, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-89-0/800/600','https://picsum.photos/seed/car-89-1/800/600','https://picsum.photos/seed/car-89-2/800/600']::text[], '{"year": 2012, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 139350, "color": "შავი"}'::jsonb, 263);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('43a6e376-e2fa-406d-a3d2-02cd6d742977', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12R 128GB', 'OnePlus 12R, მეხსიერება: 128GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 1275, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-126-0/800/600','https://picsum.photos/seed/phone-126-1/800/600','https://picsum.photos/seed/phone-126-2/800/600']::text[], '{"storage": "128GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 313);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9de135c5-b3ad-42a4-9e38-49429acd63c0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Camry 2019', 'Toyota Camry, 2019 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 232,095 კმ.
აღჭურვილობა: ნავიგაცია, მულტიმედია სისტემა, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 82639, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/car-35-0/800/600','https://picsum.photos/seed/car-35-1/800/600','https://picsum.photos/seed/car-35-2/800/600']::text[], '{"year": 2019, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 232095, "color": "ლურჯი"}'::jsonb, 66);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6bb335b5-04fe-4a47-aaf9-988f3db1660a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A7 IV', 'Sony Alpha A7 IV.
შატერის რაოდენობა: 50,959. პროფესიონალურად მოვლილი.
მეხსიერების ბარათი 128GB მოყვება.', 3763, 'GEL', 'fair', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/camera-35-0/800/600','https://picsum.photos/seed/camera-35-1/800/600','https://picsum.photos/seed/camera-35-2/800/600']::text[], '{"shutter_count": 50959, "type": "camera"}'::jsonb, 73);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c92b985f-29fa-4fd8-89f8-7e04bf6ae415', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 Ultra 512GB', 'Samsung Galaxy S24 Ultra, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 4744, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-25-0/800/600','https://picsum.photos/seed/phone-25-1/800/600','https://picsum.photos/seed/phone-25-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "Samsung Galaxy"}'::jsonb, 7);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('070686da-4bb9-4c9f-a99c-d753d30d5aca', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 14", 8GB/1TB SSD', 'Apple MacBook Pro M3 14".
პროცესორი: Apple M3 Max, ოპერატიული: 8GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 4512, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/laptop-100-0/800/600','https://picsum.photos/seed/laptop-100-1/800/600','https://picsum.photos/seed/laptop-100-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "8GB", "ssd": "1TB SSD", "brand": "Apple MacBook"}'::jsonb, 83);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('53396cc4-20c7-493a-b3c5-8ac26b9b56f3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota Camry 2019', 'Toyota Camry, 2019 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 221,859 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ნავიგაცია, მულტიმედია სისტემა.', 10689, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/car-151-0/800/600','https://picsum.photos/seed/car-151-1/800/600','https://picsum.photos/seed/car-151-2/800/600']::text[], '{"year": 2019, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 221859, "color": "შინდისფერი"}'::jsonb, 331);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4a8a90b6-5620-4cc5-a334-344cb44c0b35', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 43 კვ.მ — ნაძალადევი', '1-ოთახიანი ბინა ნაძალადევი-ში, 43 კვადრატული მეტრი.
სართული: 8/11.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 32680, 'USD', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/apartment-48-0/800/600','https://picsum.photos/seed/apartment-48-1/800/600','https://picsum.photos/seed/apartment-48-2/800/600']::text[], '{"sqm": 43, "floor": 8, "total_floors": 11, "rooms": "1-ოთახიანი", "price_per_sqm": 760}'::jsonb, 491);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('094d8c3c-d85d-4416-a2e6-e78a79843879', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Huawei MatePad Pro 512GB', 'Huawei MatePad Pro, მეხსიერება: 512GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi + Cellular ვერსია.', 2269, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/tablet-5-0/800/600','https://picsum.photos/seed/tablet-5-1/800/600','https://picsum.photos/seed/tablet-5-2/800/600']::text[], '{"storage": "512GB", "type": "tablet"}'::jsonb, 318);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8ec3376b-7a9f-4655-b629-93dbe5df8b41', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Legion 5 Pro, 16GB/512GB SSD', 'Lenovo Legion 5 Pro.
პროცესორი: Intel Core i5, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 4013, 'GEL', 'good', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/laptop-129-0/800/600','https://picsum.photos/seed/laptop-129-1/800/600','https://picsum.photos/seed/laptop-129-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "16GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 186);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6a35cf3d-e3b8-42ec-b446-355463bd04f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 512GB', 'Apple iPhone 14, მეხსიერება: 512GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1533, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/phone-188-0/800/600','https://picsum.photos/seed/phone-188-1/800/600','https://picsum.photos/seed/phone-188-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "Apple iPhone"}'::jsonb, 256);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8cead0a2-86d1-49a1-9292-65b1a3bee344', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Tucson 2012', 'Hyundai Tucson, 2012 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 70,886 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, პარკინგ სენსორები, უკანა კამერა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 113643, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-20-0/800/600','https://picsum.photos/seed/car-20-1/800/600','https://picsum.photos/seed/car-20-2/800/600']::text[], '{"year": 2012, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 70886, "color": "შინდისფერი"}'::jsonb, 206);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3ac2fe94-7eb7-44bf-a7b3-13876cf72d51', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 809, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-79-0/800/600','https://picsum.photos/seed/phone-79-1/800/600','https://picsum.photos/seed/phone-79-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 408);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('30119dd0-9c89-4996-8a66-35cc0bc36a4e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 274 კვ.მ, მიწა 1499 კვ.მ — ბათუმი გონიო', '2-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 274 კვ.მ, მიწის ნაკვეთი: 1499 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 217743, 'USD', 'like_new', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-12-0/800/600','https://picsum.photos/seed/house-12-1/800/600','https://picsum.photos/seed/house-12-2/800/600']::text[], '{"sqm_house": 274, "sqm_land": 1499, "floors": 2}'::jsonb, 403);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7506397e-d89c-4ca9-bea0-20b70de1ac56', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 3462 კვ.მ — ბორჯომი', 'მიწის ნაკვეთი ბორჯომი-ში, 3462 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 62565, 'USD', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/land-3-0/800/600','https://picsum.photos/seed/land-3-1/800/600','https://picsum.photos/seed/land-3-2/800/600']::text[], '{"sqm": 3462, "purpose": "კომერციული"}'::jsonb, 14);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('58efda21-7d05-4037-9cd6-39f80021fa71', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 16 Pro Max 64GB', 'Apple iPhone 16 Pro Max, მეხსიერება: 64GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 5594, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-82-0/800/600','https://picsum.photos/seed/phone-82-1/800/600','https://picsum.photos/seed/phone-82-2/800/600']::text[], '{"storage": "64GB", "color": "მწვანე", "brand": "Apple iPhone"}'::jsonb, 319);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d0854b99-c5e5-413d-a47e-04d1ed7f10f2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Kona 2012', 'Hyundai Kona, 2012 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 94,210 კმ.
აღჭურვილობა: კონდიციონერი, პარკინგ სენსორები, მულტიმედია სისტემა, LED ფარები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 66659, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-146-0/800/600','https://picsum.photos/seed/car-146-1/800/600','https://picsum.photos/seed/car-146-2/800/600']::text[], '{"year": 2012, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 94210, "color": "მწვანე"}'::jsonb, 498);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f30dce1b-2828-42a0-a7e9-b4ee6f0cf100', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 32GB/2TB SSD', 'HP Pavilion 15.
პროცესორი: Intel Core i5, ოპერატიული: 32GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1548, 'GEL', 'new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-187-0/800/600','https://picsum.photos/seed/laptop-187-1/800/600','https://picsum.photos/seed/laptop-187-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "32GB", "ssd": "2TB SSD", "brand": "HP"}'::jsonb, 29);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bf6fdbbd-7e34-48f3-aab1-eedb7b15b061', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus LS 500 2010', 'Lexus LS 500, 2010 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 10,900 კმ.
აღჭურვილობა: ნავიგაცია, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 33988, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-120-0/800/600','https://picsum.photos/seed/car-120-1/800/600','https://picsum.photos/seed/car-120-2/800/600']::text[], '{"year": 2010, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 10900, "color": "მწვანე"}'::jsonb, 361);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f58b8e3d-c3eb-4745-bcc0-b75820d940a2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 1709 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 1709 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ასფალტიანი გზის პირას, შესაძლებელია მშენებლობა.', 15070, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-9-0/800/600','https://picsum.photos/seed/land-9-1/800/600','https://picsum.photos/seed/land-9-2/800/600']::text[], '{"sqm": 1709, "purpose": "კომერციული"}'::jsonb, 275);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f9603cce-481d-4376-be92-becd40a2bd0b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell XPS 13, 16GB/256GB SSD', 'Dell XPS 13.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 4238, 'GEL', 'like_new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/laptop-74-0/800/600','https://picsum.photos/seed/laptop-74-1/800/600','https://picsum.photos/seed/laptop-74-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 245);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('09d1a384-aad0-428a-998e-b7f0a21910d9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Pro 2 — ვერცხლისფერი', 'Apple AirPods Pro 2, ფერი: ვერცხლისფერი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 873, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/headphone-67-0/800/600','https://picsum.photos/seed/headphone-67-1/800/600','https://picsum.photos/seed/headphone-67-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 196);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fa9a92d9-6629-421e-a976-58fdfe798a4f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 16GB/256GB SSD', 'Dell Alienware m16.
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5118, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/laptop-26-0/800/600','https://picsum.photos/seed/laptop-26-1/800/600','https://picsum.photos/seed/laptop-26-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 161);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('62dc6c02-0ade-402c-a629-80af27595493', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 8619 კვ.მ — ბორჯომი', 'მიწის ნაკვეთი ბორჯომი-ში, 8619 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 109651, 'USD', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/land-10-0/800/600','https://picsum.photos/seed/land-10-1/800/600','https://picsum.photos/seed/land-10-2/800/600']::text[], '{"sqm": 8619, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 330);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c3555c0d-593c-441f-b1d6-28a3607347e0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — მწვანე', 'JBL Tune 770NC, ფერი: მწვანე.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 312, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/headphone-54-0/800/600','https://picsum.photos/seed/headphone-54-1/800/600','https://picsum.photos/seed/headphone-54-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 25);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('89023b47-a0fb-45fb-9964-16ed8a9e32a0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus IS 300 2023', 'Lexus IS 300, 2023 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 155,501 კმ.
აღჭურვილობა: პანორამული ჭერი, ტყავის სალონი, მულტიმედია სისტემა, კონდიციონერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 71426, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-174-0/800/600','https://picsum.photos/seed/car-174-1/800/600','https://picsum.photos/seed/car-174-2/800/600']::text[], '{"year": 2023, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 155501, "color": "შინდისფერი"}'::jsonb, 56);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('048b62e9-9798-4c30-9b23-6e59f13b2fc9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Air M1 256GB', 'Apple iPad Air M1, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
Wi-Fi ვერსია.', 1184, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/tablet-8-0/800/600','https://picsum.photos/seed/tablet-8-1/800/600','https://picsum.photos/seed/tablet-8-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 372);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('077fae10-4f7e-439a-ab39-7c737c8e1fc3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 12.9" M2 128GB', 'Apple iPad Pro 12.9" M2, მეხსიერება: 128GB.
ახალი, დალუქული ყუთით.
Wi-Fi ვერსია.', 4560, 'GEL', 'new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/tablet-24-0/800/600','https://picsum.photos/seed/tablet-24-1/800/600','https://picsum.photos/seed/tablet-24-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 104);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('062c5e39-2749-4e75-b6ef-2eb88a53a9f6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 128GB', 'Google Pixel 8 Pro, მეხსიერება: 128GB, ფერი: ვარდისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 2065, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/phone-171-0/800/600','https://picsum.photos/seed/phone-171-1/800/600','https://picsum.photos/seed/phone-171-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 320);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('51c2c02b-c729-4bb5-96fc-3c0733bf1f2d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 9196 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 9196 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ხედი მთებზე, წყაროს წყალი ახლოს.', 94826, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-16-0/800/600','https://picsum.photos/seed/land-16-1/800/600','https://picsum.photos/seed/land-16-2/800/600']::text[], '{"sqm": 9196, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 60);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0779155a-7bdb-49f5-9ce4-1ae76bda7eac', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 3100 კვ.მ — ნატახტარი', 'მიწის ნაკვეთი ნატახტარი-ში, 3100 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ხედი მთებზე, წყაროს წყალი ახლოს.', 59039, 'USD', 'good', 'active', 'ნატახტარი', ARRAY['https://picsum.photos/seed/land-36-0/800/600','https://picsum.photos/seed/land-36-1/800/600','https://picsum.photos/seed/land-36-2/800/600']::text[], '{"sqm": 3100, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 165);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('71ed9644-1b7a-41ff-9b36-0d21d906a8c5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 128GB', 'Huawei Mate 60, მეხსიერება: 128GB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 3861, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-66-0/800/600','https://picsum.photos/seed/phone-66-1/800/600','https://picsum.photos/seed/phone-66-2/800/600']::text[], '{"storage": "128GB", "color": "ოქროსფერი", "brand": "Huawei"}'::jsonb, 6);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b4700566-16a4-4946-b382-4b0b4b8a2e60', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Touareg 2022', 'Volkswagen Touareg, 2022 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 20,270 კმ.
აღჭურვილობა: პარკინგ სენსორები, კრუიზ კონტროლი, პანორამული ჭერი, ნავიგაცია, კონდიციონერი, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 15206, 'GEL', 'like_new', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-3-0/800/600','https://picsum.photos/seed/car-3-1/800/600','https://picsum.photos/seed/car-3-2/800/600']::text[], '{"year": 2022, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 20270, "color": "მწვანე"}'::jsonb, 367);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f82b55f1-737a-4c62-bc46-723339862808', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 64GB', 'OnePlus 12, მეხსიერება: 64GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 1987, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-10-0/800/600','https://picsum.photos/seed/phone-10-1/800/600','https://picsum.photos/seed/phone-10-2/800/600']::text[], '{"storage": "64GB", "color": "შავი", "brand": "OnePlus"}'::jsonb, 214);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('90e37491-00b1-4434-a55c-4e0c3dfb15cc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS VivoBook 15, 16GB/512GB SSD', 'ASUS VivoBook 15.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1310, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-75-0/800/600','https://picsum.photos/seed/laptop-75-1/800/600','https://picsum.photos/seed/laptop-75-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 160);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c44df9d0-5c45-4f71-a290-703c58d2067a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Spectre x360, 64GB/256GB SSD', 'HP Spectre x360.
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2854, 'GEL', 'fair', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/laptop-10-0/800/600','https://picsum.photos/seed/laptop-10-1/800/600','https://picsum.photos/seed/laptop-10-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "256GB SSD", "brand": "HP"}'::jsonb, 6);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('75dccfe8-6a0d-422f-adc0-6d74ca85ad05', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 15 Pro Max 128GB', 'Apple iPhone 15 Pro Max, მეხსიერება: 128GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 4240, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-133-0/800/600','https://picsum.photos/seed/phone-133-1/800/600','https://picsum.photos/seed/phone-133-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Apple iPhone"}'::jsonb, 318);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6f633137-2d3e-4136-91a8-ca1493f96368', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 16GB/256GB SSD', 'Dell Alienware m16.
პროცესორი: AMD Ryzen 5, ოპერატიული: 16GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 6342, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-24-0/800/600','https://picsum.photos/seed/laptop-24-1/800/600','https://picsum.photos/seed/laptop-24-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "16GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 316);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ddf66ff4-fe03-409f-bb12-e704d8ccb570', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy M14 64GB', 'Samsung Galaxy M14, მეხსიერება: 64GB, ფერი: ოქროსფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 529, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/phone-156-0/800/600','https://picsum.photos/seed/phone-156-1/800/600','https://picsum.photos/seed/phone-156-2/800/600']::text[], '{"storage": "64GB", "color": "ოქროსფერი", "brand": "Samsung Galaxy"}'::jsonb, 448);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d4460aa3-d5c8-495a-94de-5240fc31e93b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW M3 2012', 'BMW M3, 2012 წლის გამოშვება.
ფერი: მწვანე, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 12,749 კმ.
აღჭურვილობა: პარკინგ სენსორები, პანორამული ჭერი.', 181550, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-196-0/800/600','https://picsum.photos/seed/car-196-1/800/600','https://picsum.photos/seed/car-196-2/800/600']::text[], '{"year": 2012, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 12749, "color": "მწვანე"}'::jsonb, 328);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('22dbde13-ea5d-4cb6-a7b0-175fb2b1cb54', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2016', 'Lexus ES 250, 2016 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 276,613 კმ.
აღჭურვილობა: ნავიგაცია, LED ფარები, კრუიზ კონტროლი, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 139609, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-42-0/800/600','https://picsum.photos/seed/car-42-1/800/600','https://picsum.photos/seed/car-42-2/800/600']::text[], '{"year": 2016, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 276613, "color": "თეთრი"}'::jsonb, 204);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7009e13d-0a1e-43cd-bcf9-7630a06df435', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 64GB/1TB SSD', 'Acer Aspire 5.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 936, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/laptop-98-0/800/600','https://picsum.photos/seed/laptop-98-1/800/600','https://picsum.photos/seed/laptop-98-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 459);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b440570c-bf4d-419d-bc38-6f32df8cdcbb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Huawei MatePad Pro 64GB', 'Huawei MatePad Pro, მეხსიერება: 64GB.
ახალი, დალუქული ყუთით.
Wi-Fi + Cellular ვერსია.', 2047, 'GEL', 'new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/tablet-62-0/800/600','https://picsum.photos/seed/tablet-62-1/800/600','https://picsum.photos/seed/tablet-62-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 19);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('eea8148b-0d98-4b79-bc73-a24a46985d1e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 51,790. პროფესიონალურად მოვლილი.
ჩანთა და დამატებითი ბატარეა მოყვება.', 3993, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/camera-3-0/800/600','https://picsum.photos/seed/camera-3-1/800/600','https://picsum.photos/seed/camera-3-2/800/600']::text[], '{"shutter_count": 51790, "type": "camera"}'::jsonb, 308);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a55c313e-85af-431b-acf8-76096f7904b8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 1TB', 'Google Pixel 7a, მეხსიერება: 1TB, ფერი: შავი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1684, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-26-0/800/600','https://picsum.photos/seed/phone-26-1/800/600','https://picsum.photos/seed/phone-26-2/800/600']::text[], '{"storage": "1TB", "color": "შავი", "brand": "Google Pixel"}'::jsonb, 108);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c0fede5f-e61e-4ad4-9e46-7607e89bb3a5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 1TB', 'Google Pixel 8, მეხსიერება: 1TB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 1786, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/phone-150-0/800/600','https://picsum.photos/seed/phone-150-1/800/600','https://picsum.photos/seed/phone-150-2/800/600']::text[], '{"storage": "1TB", "color": "შავი", "brand": "Google Pixel"}'::jsonb, 379);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('abb19344-3f9e-4a59-bfeb-3d5bb572bd31', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24 128GB', 'Samsung Galaxy S24, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3380, 'GEL', 'good', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-190-0/800/600','https://picsum.photos/seed/phone-190-1/800/600','https://picsum.photos/seed/phone-190-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "Samsung Galaxy"}'::jsonb, 464);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1aa4e826-4b7f-4111-9434-acfbdfeb15ab', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP ProBook 450, 16GB/1TB SSD', 'HP ProBook 450.
პროცესორი: Apple M3 Max, ოპერატიული: 16GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1756, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-119-0/800/600','https://picsum.photos/seed/laptop-119-1/800/600','https://picsum.photos/seed/laptop-119-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "16GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 429);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('feaac212-823c-49ad-9f4a-70e658607148', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota RAV4 2020', 'Toyota RAV4, 2020 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 96,009 კმ.
აღჭურვილობა: LED ფარები, გამათბობელი სავარძლები, პანორამული ჭერი, უკანა კამერა, ხის სალონი, მულტიმედია სისტემა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 43976, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-16-0/800/600','https://picsum.photos/seed/car-16-1/800/600','https://picsum.photos/seed/car-16-2/800/600']::text[], '{"year": 2020, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 96009, "color": "ნაცრისფერი"}'::jsonb, 254);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('74d9b7f9-3096-415b-acc9-ccbcfd987cc1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z30', 'Nikon Z30.
შატერის რაოდენობა: 18,542. პროფესიონალურად მოვლილი.
ობიექტივი არ მოყვება (მხოლოდ body).', 1512, 'GEL', 'good', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/camera-5-0/800/600','https://picsum.photos/seed/camera-5-1/800/600','https://picsum.photos/seed/camera-5-2/800/600']::text[], '{"shutter_count": 18542, "type": "camera"}'::jsonb, 135);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('69f59a1c-7e66-4dd7-b1dc-525349690e94', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 512GB', 'OnePlus 12, მეხსიერება: 512GB, ფერი: ოქროსფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2230, 'GEL', 'fair', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/phone-98-0/800/600','https://picsum.photos/seed/phone-98-1/800/600','https://picsum.photos/seed/phone-98-2/800/600']::text[], '{"storage": "512GB", "color": "ოქროსფერი", "brand": "OnePlus"}'::jsonb, 235);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('85a5769c-3a68-48d9-bd95-fc3db92eee19', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 14 Pro 1TB', 'Apple iPhone 14 Pro, მეხსიერება: 1TB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 2690, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/phone-122-0/800/600','https://picsum.photos/seed/phone-122-1/800/600','https://picsum.photos/seed/phone-122-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "Apple iPhone"}'::jsonb, 382);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2f27737e-d99b-4279-9f51-ed805458c39b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 512GB', 'Huawei P60 Pro, მეხსიერება: 512GB, ფერი: იისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2933, 'GEL', 'like_new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/phone-146-0/800/600','https://picsum.photos/seed/phone-146-1/800/600','https://picsum.photos/seed/phone-146-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Huawei"}'::jsonb, 279);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3d0ecfa1-ff0b-4800-a87c-19fbb7b45ece', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 32GB/1TB SSD', 'Dell Inspiron 15.
პროცესორი: Apple M2, ოპერატიული: 32GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 1410, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-123-0/800/600','https://picsum.photos/seed/laptop-123-1/800/600','https://picsum.photos/seed/laptop-123-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "32GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 52);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e70aee49-b0ef-4815-bf7b-e272c53fe352', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Note 2008', 'Nissan Note, 2008 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 246,496 კმ.
აღჭურვილობა: ნავიგაცია, უკანა კამერა, პარკინგ სენსორები, მულტიმედია სისტემა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 87194, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-81-0/800/600','https://picsum.photos/seed/car-81-1/800/600','https://picsum.photos/seed/car-81-2/800/600']::text[], '{"year": 2008, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 246496, "color": "ნაცრისფერი"}'::jsonb, 389);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e6b66a4f-22b9-467b-a60c-d67354eb7b00', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M2 13", 64GB/256GB SSD', 'Apple MacBook Air M2 13".
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 256GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 4682, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-54-0/800/600','https://picsum.photos/seed/laptop-54-1/800/600','https://picsum.photos/seed/laptop-54-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "256GB SSD", "brand": "Apple MacBook"}'::jsonb, 450);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3a115267-bbd4-400d-8966-0df339ef394f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-T5', 'Fujifilm X-T5.
შატერის რაოდენობა: 72,928. პროფესიონალურად მოვლილი.
მეხსიერების ბარათი 128GB მოყვება.', 4665, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/camera-54-0/800/600','https://picsum.photos/seed/camera-54-1/800/600','https://picsum.photos/seed/camera-54-2/800/600']::text[], '{"shutter_count": 72928, "type": "camera"}'::jsonb, 477);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1fae2473-564b-4f73-a99a-a094e5d7feb2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 64GB', 'Samsung Galaxy Tab A9, მეხსიერება: 64GB.
ახალი, დალუქული ყუთით.
Wi-Fi ვერსია.', 743, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/tablet-10-0/800/600','https://picsum.photos/seed/tablet-10-1/800/600','https://picsum.photos/seed/tablet-10-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 463);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('de650348-c1ec-443d-b04e-cce093b0251c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Audi Q7 2017', 'Audi Q7, 2017 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 217,681 კმ.
აღჭურვილობა: კონდიციონერი, პანორამული ჭერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 213811, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-180-0/800/600','https://picsum.photos/seed/car-180-1/800/600','https://picsum.photos/seed/car-180-2/800/600']::text[], '{"year": 2017, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 217681, "color": "ვერცხლისფერი"}'::jsonb, 478);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('909ea107-e247-4fb3-8146-3772a89ccb3f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Passat 2017', 'Volkswagen Passat, 2017 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 84,707 კმ.
აღჭურვილობა: მულტიმედია სისტემა, კონდიციონერი, კრუიზ კონტროლი.', 39706, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/car-70-0/800/600','https://picsum.photos/seed/car-70-1/800/600','https://picsum.photos/seed/car-70-2/800/600']::text[], '{"year": 2017, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 84707, "color": "ნაცრისფერი"}'::jsonb, 218);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('496d3788-0a4a-4152-bf5c-b0eea2096843', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus ES 250 2019', 'Lexus ES 250, 2019 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 252,092 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, კონდიციონერი, ნავიგაცია, კრუიზ კონტროლი, მულტიმედია სისტემა.', 139657, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-181-0/800/600','https://picsum.photos/seed/car-181-1/800/600','https://picsum.photos/seed/car-181-2/800/600']::text[], '{"year": 2019, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 252092, "color": "ნაცრისფერი"}'::jsonb, 286);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5d3a0a8e-4344-4840-b30a-e711d2b6de4b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 39 კვ.მ — ქუთაისი ცენტრი', '1-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 39 კვადრატული მეტრი.
სართული: 19/19.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 31278, 'USD', 'new', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-62-0/800/600','https://picsum.photos/seed/apartment-62-1/800/600','https://picsum.photos/seed/apartment-62-2/800/600']::text[], '{"sqm": 39, "floor": 19, "total_floors": 19, "rooms": "1-ოთახიანი", "price_per_sqm": 802}'::jsonb, 273);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d971ad9c-dcc1-4906-8b68-1f3ccb3cf569', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Air M1 128GB', 'Apple iPad Air M1, მეხსიერება: 128GB.
როგორც ახალი, კომპლექტი სრულია.
Wi-Fi + Cellular ვერსია.', 1225, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/tablet-19-0/800/600','https://picsum.photos/seed/tablet-19-1/800/600','https://picsum.photos/seed/tablet-19-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 434);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cfcd876c-ebb3-4f52-ae3f-f3340f113d08', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 16GB/1TB SSD', 'Dell Alienware m16.
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 5923, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-44-0/800/600','https://picsum.photos/seed/laptop-44-1/800/600','https://picsum.photos/seed/laptop-44-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 98);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('710d406c-1f67-4efa-83cb-d8ac520f4dcc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord CE 3 256GB', 'OnePlus Nord CE 3, მეხსიერება: 256GB, ფერი: ოქროსფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 964, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-169-0/800/600','https://picsum.photos/seed/phone-169-1/800/600','https://picsum.photos/seed/phone-169-2/800/600']::text[], '{"storage": "256GB", "color": "ოქროსფერი", "brand": "OnePlus"}'::jsonb, 219);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7ffd3aea-e4db-4722-8fed-85ac072379ef', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone 16 256GB', 'Apple iPhone 16, მეხსიერება: 256GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 4225, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-78-0/800/600','https://picsum.photos/seed/phone-78-1/800/600','https://picsum.photos/seed/phone-78-2/800/600']::text[], '{"storage": "256GB", "color": "ვარდისფერი", "brand": "Apple iPhone"}'::jsonb, 36);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b77a2769-82b1-4ab9-9d2c-bfb1cdb3531b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 133 კვ.მ, მიწა 949 კვ.მ — მუხრანი', '2-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 133 კვ.მ, მიწის ნაკვეთი: 949 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 51569, 'USD', 'fair', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-39-0/800/600','https://picsum.photos/seed/house-39-1/800/600','https://picsum.photos/seed/house-39-2/800/600']::text[], '{"sqm_house": 133, "sqm_land": 949, "floors": 2}'::jsonb, 358);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('76bb7eab-3041-40f7-8d9f-6ebe3e7b2435', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7 Pro 64GB', 'Google Pixel 7 Pro, მეხსიერება: 64GB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2085, 'GEL', 'good', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/phone-18-0/800/600','https://picsum.photos/seed/phone-18-1/800/600','https://picsum.photos/seed/phone-18-2/800/600']::text[], '{"storage": "64GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 366);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('99ff11f8-4b3f-4751-ae83-e0e075c86547', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 7633 კვ.მ — ნატახტარი', 'მიწის ნაკვეთი ნატახტარი-ში, 7633 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ტყის პირას, მშვიდი და ეკოლოგიურად სუფთა ადგილი.', 99400, 'USD', 'good', 'active', 'ნატახტარი', ARRAY['https://picsum.photos/seed/land-27-0/800/600','https://picsum.photos/seed/land-27-1/800/600','https://picsum.photos/seed/land-27-2/800/600']::text[], '{"sqm": 7633, "purpose": "კომერციული"}'::jsonb, 168);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3f0f3304-b834-4dcc-a988-c8a3f60e4bb0', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 71 კვ.მ — ბათუმი ცენტრი', '2-ოთახიანი ბინა ბათუმი ცენტრი-ში, 71 კვადრატული მეტრი.
სართული: 16/20.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 153076, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-50-0/800/600','https://picsum.photos/seed/apartment-50-1/800/600','https://picsum.photos/seed/apartment-50-2/800/600']::text[], '{"sqm": 71, "floor": 16, "total_floors": 20, "rooms": "2-ოთახიანი", "price_per_sqm": 2156}'::jsonb, 397);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f42e0257-7776-4bd8-a381-11d8f66d1337', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 11" M2 256GB', 'Apple iPad Pro 11" M2, მეხსიერება: 256GB.
ახალი, დალუქული ყუთით.
Wi-Fi ვერსია.', 3700, 'GEL', 'new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/tablet-32-0/800/600','https://picsum.photos/seed/tablet-32-1/800/600','https://picsum.photos/seed/tablet-32-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 303);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('53d9d02f-f022-499b-9615-354c1749cdb6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Mate 60 1TB', 'Huawei Mate 60, მეხსიერება: 1TB, ფერი: ოქროსფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 3714, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-140-0/800/600','https://picsum.photos/seed/phone-140-1/800/600','https://picsum.photos/seed/phone-140-2/800/600']::text[], '{"storage": "1TB", "color": "ოქროსფერი", "brand": "Huawei"}'::jsonb, 323);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('83a2f0ae-bc70-426c-87b8-fb12e964c1b9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z8', 'Nikon Z8.
შატერის რაოდენობა: 48,781. კარგ მდგომარეობაში, სენსორი სუფთა.
კიტის ობიექტივით: 28-70mm.', 8233, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/camera-56-0/800/600','https://picsum.photos/seed/camera-56-1/800/600','https://picsum.photos/seed/camera-56-2/800/600']::text[], '{"shutter_count": 48781, "type": "camera"}'::jsonb, 223);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b65091e8-5cbd-4478-95a1-efb352e28bcd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad 5, 32GB/2TB SSD', 'Lenovo IdeaPad 5.
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 1672, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-138-0/800/600','https://picsum.photos/seed/laptop-138-1/800/600','https://picsum.photos/seed/laptop-138-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "2TB SSD", "brand": "Lenovo"}'::jsonb, 426);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e08123d8-9b2c-4e40-8535-a6a59e0b586a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 128GB', 'Google Pixel 7a, მეხსიერება: 128GB, ფერი: შავი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 946, 'GEL', 'fair', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/phone-184-0/800/600','https://picsum.photos/seed/phone-184-1/800/600','https://picsum.photos/seed/phone-184-2/800/600']::text[], '{"storage": "128GB", "color": "შავი", "brand": "Google Pixel"}'::jsonb, 365);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d56d6df2-3554-4b9f-9e4d-137051bd0b53', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 64GB/256GB SSD', 'ASUS ROG Strix G16.
პროცესორი: AMD Ryzen 5, ოპერატიული: 64GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 5234, 'GEL', 'like_new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-2-0/800/600','https://picsum.photos/seed/laptop-2-1/800/600','https://picsum.photos/seed/laptop-2-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "64GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 70);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e978467c-8b02-4630-82d1-ee5fe36c2972', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Santa Fe 2008', 'Hyundai Santa Fe, 2008 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 239,759 კმ.
აღჭურვილობა: კონდიციონერი, კრუიზ კონტროლი, გამათბობელი სავარძლები, ხის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 119192, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-60-0/800/600','https://picsum.photos/seed/car-60-1/800/600','https://picsum.photos/seed/car-60-2/800/600']::text[], '{"year": 2008, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 239759, "color": "წითელი"}'::jsonb, 277);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ceaed7d7-aa24-4212-859b-8e1272b9f848', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 512GB', 'OnePlus 12, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2026, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-48-0/800/600','https://picsum.photos/seed/phone-48-1/800/600','https://picsum.photos/seed/phone-48-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "OnePlus"}'::jsonb, 347);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('93680aee-5040-47bc-a376-01be03b86001', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo Yoga 9i, 8GB/256GB SSD', 'Lenovo Yoga 9i.
პროცესორი: AMD Ryzen 5, ოპერატიული: 8GB, დისკი: 256GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3068, 'GEL', 'like_new', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/laptop-51-0/800/600','https://picsum.photos/seed/laptop-51-1/800/600','https://picsum.photos/seed/laptop-51-2/800/600']::text[], '{"cpu": "AMD Ryzen 5", "ram": "8GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 484);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e8fb6fe7-d3cb-462b-9632-78cfd40a5acd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Nikon Z6 III', 'Nikon Z6 III.
შატერის რაოდენობა: 49,006. კორპუსზე მცირე კოსმეტიკური ცვეთა.
ჩანთა და დამატებითი ბატარეა მოყვება.', 5345, 'GEL', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/camera-50-0/800/600','https://picsum.photos/seed/camera-50-1/800/600','https://picsum.photos/seed/camera-50-2/800/600']::text[], '{"shutter_count": 49006, "type": "camera"}'::jsonb, 479);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2eda39bb-370f-48f8-8804-ce95d8923f34', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort Ultra — მწვანე', 'Bose QuietComfort Ultra, ფერი: მწვანე.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 979, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/headphone-3-0/800/600','https://picsum.photos/seed/headphone-3-1/800/600','https://picsum.photos/seed/headphone-3-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 466);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e1473533-2369-4745-8b5e-3e92aacd4faf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Spectre x360, 16GB/1TB SSD', 'HP Spectre x360.
პროცესორი: Intel Core i7, ოპერატიული: 16GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3056, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-94-0/800/600','https://picsum.photos/seed/laptop-94-1/800/600','https://picsum.photos/seed/laptop-94-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "16GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 293);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('98669bfb-0cb0-4d3d-b695-f74e70950d55', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 380 კვ.მ, მიწა 1432 კვ.მ — საგურამო', '3-სართულიანი სახლი საგურამო-ში.
საცხოვრებელი ფართი: 380 კვ.მ, მიწის ნაკვეთი: 1432 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 57013, 'USD', 'like_new', 'active', 'საგურამო', ARRAY['https://picsum.photos/seed/house-55-0/800/600','https://picsum.photos/seed/house-55-1/800/600','https://picsum.photos/seed/house-55-2/800/600']::text[], '{"sqm_house": 380, "sqm_land": 1432, "floors": 3}'::jsonb, 213);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fec9a5ab-d489-4ff8-a33a-f6602d181afa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 8617 კვ.მ — კახეთი, სიღნაღი', 'მიწის ნაკვეთი კახეთი, სიღნაღი-ში, 8617 კვადრატული მეტრი.
დანიშნულება: სასოფლო-სამეურნეო.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 69737, 'USD', 'good', 'active', 'კახეთი, სიღნაღი', ARRAY['https://picsum.photos/seed/land-20-0/800/600','https://picsum.photos/seed/land-20-1/800/600','https://picsum.photos/seed/land-20-2/800/600']::text[], '{"sqm": 8617, "purpose": "სასოფლო-სამეურნეო"}'::jsonb, 56);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('99d2a5f6-a7ff-4a2c-bd2a-8dd87d2732c1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A6700', 'Sony Alpha A6700.
შატერის რაოდენობა: 26,061. ყუთი და დამტენი მოყვება.
მეხსიერების ბარათი 128GB მოყვება.', 1890, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/camera-31-0/800/600','https://picsum.photos/seed/camera-31-1/800/600','https://picsum.photos/seed/camera-31-2/800/600']::text[], '{"shutter_count": 26061, "type": "camera"}'::jsonb, 394);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('72391dcb-3876-4b40-acf9-8aa8cc08f337', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei P60 Pro 512GB', 'Huawei P60 Pro, მეხსიერება: 512GB, ფერი: შავი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3186, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-65-0/800/600','https://picsum.photos/seed/phone-65-1/800/600','https://picsum.photos/seed/phone-65-2/800/600']::text[], '{"storage": "512GB", "color": "შავი", "brand": "Huawei"}'::jsonb, 222);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b395ba10-b359-47bc-ada5-8d9fa0d2bdea', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Subaru XV 2017', 'Subaru XV, 2017 წლის გამოშვება.
ფერი: მწვანე, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 64,056 კმ.
აღჭურვილობა: ტყავის სალონი, LED ფარები, კრუიზ კონტროლი, მულტიმედია სისტემა.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 78386, 'GEL', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/car-198-0/800/600','https://picsum.photos/seed/car-198-1/800/600','https://picsum.photos/seed/car-198-2/800/600']::text[], '{"year": 2017, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 64056, "color": "მწვანე"}'::jsonb, 496);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7ec6fd90-3985-4744-af31-d0bff93846e1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 241 კვ.მ, მიწა 305 კვ.მ — კოჯორი', '3-სართულიანი სახლი კოჯორი-ში.
საცხოვრებელი ფართი: 241 კვ.მ, მიწის ნაკვეთი: 305 კვ.მ.
ახლად აშენებული, თანამედროვე არქიტექტურა, ენერგოეფექტური.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 132223, 'USD', 'like_new', 'active', 'კოჯორი', ARRAY['https://picsum.photos/seed/house-31-0/800/600','https://picsum.photos/seed/house-31-1/800/600','https://picsum.photos/seed/house-31-2/800/600']::text[], '{"sqm_house": 241, "sqm_land": 305, "floors": 3}'::jsonb, 13);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('60d82282-e138-4fb8-b231-1e9131b5bb8f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Fujifilm X-S20', 'Fujifilm X-S20.
შატერის რაოდენობა: 17,649. ყუთი და დამტენი მოყვება.
კიტის ობიექტივით: 28-70mm.', 2656, 'GEL', 'good', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/camera-57-0/800/600','https://picsum.photos/seed/camera-57-1/800/600','https://picsum.photos/seed/camera-57-2/800/600']::text[], '{"shutter_count": 17649, "type": "camera"}'::jsonb, 465);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('651b1d5c-7a0c-4dc9-92a4-e11bfacf2b22', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'DJI Osmo Action 4', 'DJI Osmo Action 4.
შატერის რაოდენობა: 42,446. კორპუსზე მცირე კოსმეტიკური ცვეთა.
მეხსიერების ბარათი 128GB მოყვება.', 420, 'GEL', 'fair', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/camera-8-0/800/600','https://picsum.photos/seed/camera-8-1/800/600','https://picsum.photos/seed/camera-8-2/800/600']::text[], '{"shutter_count": 42446, "type": "camera"}'::jsonb, 187);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('989a98b7-872f-4af8-a010-5f986a71594f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Arteon 2010', 'Volkswagen Arteon, 2010 წლის გამოშვება.
ფერი: თეთრი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 182,806 კმ.
აღჭურვილობა: LED ფარები, კრუიზ კონტროლი, მულტიმედია სისტემა, გამათბობელი სავარძლები.', 10844, 'GEL', 'good', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-122-0/800/600','https://picsum.photos/seed/car-122-1/800/600','https://picsum.photos/seed/car-122-2/800/600']::text[], '{"year": 2010, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 182806, "color": "თეთრი"}'::jsonb, 170);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c899f0d8-4acd-45c7-8c4e-074bbbe4637f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Passat 2013', 'Volkswagen Passat, 2013 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 12,783 კმ.
აღჭურვილობა: ნავიგაცია, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 7723, 'GEL', 'like_new', 'active', 'ზუგდიდი', ARRAY['https://picsum.photos/seed/car-169-0/800/600','https://picsum.photos/seed/car-169-1/800/600','https://picsum.photos/seed/car-169-2/800/600']::text[], '{"year": 2013, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 12783, "color": "წითელი"}'::jsonb, 133);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('69b84260-d00c-42a9-8dae-96cde1303c98', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Cerato 2019', 'Kia Cerato, 2019 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 180,560 კმ.
აღჭურვილობა: პარკინგ სენსორები, კრუიზ კონტროლი, კონდიციონერი.', 76911, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-184-0/800/600','https://picsum.photos/seed/car-184-1/800/600','https://picsum.photos/seed/car-184-2/800/600']::text[], '{"year": 2019, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 180560, "color": "ნაცრისფერი"}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6085bd39-296b-4e31-befb-263035709347', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ZenBook 14, 8GB/512GB SSD', 'ASUS ZenBook 14.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3096, 'GEL', 'new', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/laptop-159-0/800/600','https://picsum.photos/seed/laptop-159-1/800/600','https://picsum.photos/seed/laptop-159-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 226);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('399bc941-5bdb-47d0-b6d8-2ccf1a25cea8', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 64GB/256GB SSD', 'Dell Alienware m16.
პროცესორი: Intel Core i7, ოპერატიული: 64GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 5115, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-63-0/800/600','https://picsum.photos/seed/laptop-63-1/800/600','https://picsum.photos/seed/laptop-63-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "64GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 433);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('db1bbf19-1847-41e9-9fd2-9d6a09fae798', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9+ 256GB', 'Samsung Galaxy Tab S9+, მეხსიერება: 256GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi ვერსია.', 3022, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/tablet-61-0/800/600','https://picsum.photos/seed/tablet-61-1/800/600','https://picsum.photos/seed/tablet-61-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 429);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d0bc88ba-f4ee-4048-a9c8-0ced1f8387a9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'BMW 330e 2008', 'BMW 330e, 2008 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 18,085 კმ.
აღჭურვილობა: გამათბობელი სავარძლები, ნავიგაცია, კრუიზ კონტროლი, მულტიმედია სისტემა, ხის სალონი, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 158415, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-165-0/800/600','https://picsum.photos/seed/car-165-1/800/600','https://picsum.photos/seed/car-165-2/800/600']::text[], '{"year": 2008, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 18085, "color": "ვერცხლისფერი"}'::jsonb, 87);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('106ab3e8-7bd2-4350-85e3-6c0a565e970a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 8GB/2TB SSD', 'ASUS ProArt StudioBook.
პროცესორი: AMD Ryzen 7, ოპერატიული: 8GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 4437, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/laptop-182-0/800/600','https://picsum.photos/seed/laptop-182-1/800/600','https://picsum.photos/seed/laptop-182-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "8GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 317);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4712566a-4bf5-4e51-8959-730c23cb880b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus LS 500 2019', 'Lexus LS 500, 2019 წლის გამოშვება.
ფერი: შავი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 240,103 კმ.
აღჭურვილობა: პარკინგ სენსორები, გამათბობელი სავარძლები.', 236076, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/car-157-0/800/600','https://picsum.photos/seed/car-157-1/800/600','https://picsum.photos/seed/car-157-2/800/600']::text[], '{"year": 2019, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 240103, "color": "შავი"}'::jsonb, 325);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d87e2ba6-a277-4a81-b2c2-f2ee382a274e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Panasonic Lumix S5 II', 'Panasonic Lumix S5 II.
შატერის რაოდენობა: 24,460. ყუთი და დამტენი მოყვება.
ობიექტივი არ მოყვება (მხოლოდ body).', 4681, 'GEL', 'like_new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/camera-47-0/800/600','https://picsum.photos/seed/camera-47-1/800/600','https://picsum.photos/seed/camera-47-2/800/600']::text[], '{"shutter_count": 24460, "type": "camera"}'::jsonb, 308);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4ba23dbc-bec3-4891-88a5-6bb5c8fbbbad', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 32GB/1TB SSD', 'Acer Swift 5.
პროცესორი: Apple M1, ოპერატიული: 32GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1855, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-160-0/800/600','https://picsum.photos/seed/laptop-160-1/800/600','https://picsum.photos/seed/laptop-160-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "32GB", "ssd": "1TB SSD", "brand": "Acer"}'::jsonb, 418);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2619328a-d04f-4975-825a-cb3e219ab057', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Huawei Nova 12 1TB', 'Huawei Nova 12, მეხსიერება: 1TB, ფერი: თეთრი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 959, 'GEL', 'like_new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-131-0/800/600','https://picsum.photos/seed/phone-131-1/800/600','https://picsum.photos/seed/phone-131-2/800/600']::text[], '{"storage": "1TB", "color": "თეთრი", "brand": "Huawei"}'::jsonb, 66);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('280f0a37-d856-4338-be1a-c68c98bd1edc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 128GB', 'Google Pixel 8 Pro, მეხსიერება: 128GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 3072, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/phone-172-0/800/600','https://picsum.photos/seed/phone-172-1/800/600','https://picsum.photos/seed/phone-172-2/800/600']::text[], '{"storage": "128GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 238);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1bd8835e-4315-4dd9-aef7-2747588ffedc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi Redmi Note 13 1TB', 'Xiaomi Redmi Note 13, მეხსიერება: 1TB, ფერი: ვარდისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 533, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/phone-17-0/800/600','https://picsum.photos/seed/phone-17-1/800/600','https://picsum.photos/seed/phone-17-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "Xiaomi"}'::jsonb, 266);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7c1398a8-2216-485c-8b6e-34a45ca095aa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 888, 'GEL', 'like_new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-194-0/800/600','https://picsum.photos/seed/phone-194-1/800/600','https://picsum.photos/seed/phone-194-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "Google Pixel"}'::jsonb, 497);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b02e96fa-f6bc-4d1b-a551-d272638091de', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Canon EOS R6 Mark II', 'Canon EOS R6 Mark II.
ახალი, დალუქული, ოფიციალური გარანტია.
ობიექტივი არ მოყვება (მხოლოდ body).', 7495, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/camera-20-0/800/600','https://picsum.photos/seed/camera-20-1/800/600','https://picsum.photos/seed/camera-20-2/800/600']::text[], '{"shutter_count": 36154, "type": "camera"}'::jsonb, 19);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f29cc5d4-18f7-44d8-8c65-744839a93adb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Apple iPhone SE 2022 1TB', 'Apple iPhone SE 2022, მეხსიერება: 1TB, ფერი: იისფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 1393, 'GEL', 'good', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/phone-138-0/800/600','https://picsum.photos/seed/phone-138-1/800/600','https://picsum.photos/seed/phone-138-2/800/600']::text[], '{"storage": "1TB", "color": "იისფერი", "brand": "Apple iPhone"}'::jsonb, 337);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5d6653ae-2a82-49ce-ae50-b229ea9a42a9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Rio 2009', 'Kia Rio, 2009 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 147,504 კმ.
აღჭურვილობა: LED ფარები, ნავიგაცია, კრუიზ კონტროლი, უკანა კამერა.', 59493, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/car-71-0/800/600','https://picsum.photos/seed/car-71-1/800/600','https://picsum.photos/seed/car-71-2/800/600']::text[], '{"year": 2009, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 147504, "color": "ლურჯი"}'::jsonb, 433);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8048b400-0f9f-425b-b912-55c079448ff1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Volkswagen Arteon 2014', 'Volkswagen Arteon, 2014 წლის გამოშვება.
ფერი: წითელი, საწვავი: ელექტრო, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 245,719 კმ.
აღჭურვილობა: პარკინგ სენსორები, პანორამული ჭერი, ხის სალონი, LED ფარები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 78771, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/car-124-0/800/600','https://picsum.photos/seed/car-124-1/800/600','https://picsum.photos/seed/car-124-2/800/600']::text[], '{"year": 2014, "fuel": "ელექტრო", "transmission": "მექანიკა", "mileage_km": 245719, "color": "წითელი"}'::jsonb, 485);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6f26ff0e-b032-4c31-939c-4bf28e59696a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 92 კვ.მ — ისანი', '3-ოთახიანი ბინა ისანი-ში, 92 კვადრატული მეტრი.
სართული: 20/30.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მშვიდი უბანი, ბაღებთან ახლოს.', 84824, 'USD', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-52-0/800/600','https://picsum.photos/seed/apartment-52-1/800/600','https://picsum.photos/seed/apartment-52-2/800/600']::text[], '{"sqm": 92, "floor": 20, "total_floors": 30, "rooms": "3-ოთახიანი", "price_per_sqm": 922}'::jsonb, 116);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6ad87a8e-9da3-4e91-9306-f2a45bb43b59', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Nothing Ear (2) — თეთრი', 'Nothing Ear (2), ფერი: თეთრი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 390, 'GEL', 'like_new', 'active', 'თბილისი, დიდუბე', ARRAY['https://picsum.photos/seed/headphone-30-0/800/600','https://picsum.photos/seed/headphone-30-1/800/600','https://picsum.photos/seed/headphone-30-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 181);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1e411e67-9994-45f2-bbc3-13004d7553d2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy S24+ 256GB', 'Samsung Galaxy S24+, მეხსიერება: 256GB, ფერი: იისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 2726, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/phone-158-0/800/600','https://picsum.photos/seed/phone-158-1/800/600','https://picsum.photos/seed/phone-158-2/800/600']::text[], '{"storage": "256GB", "color": "იისფერი", "brand": "Samsung Galaxy"}'::jsonb, 335);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('84638152-b536-48d0-8d86-48c9df527f07', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 89 კვ.მ — ისანი', '3-ოთახიანი ბინა ისანი-ში, 89 კვადრატული მეტრი.
სართული: 4/6.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 125668, 'USD', 'good', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-45-0/800/600','https://picsum.photos/seed/apartment-45-1/800/600','https://picsum.photos/seed/apartment-45-2/800/600']::text[], '{"sqm": 89, "floor": 4, "total_floors": 6, "rooms": "3-ოთახიანი", "price_per_sqm": 1412}'::jsonb, 410);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9dffecc1-4a97-41f1-89f0-5a8628af9828', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 Max 16", 64GB/512GB SSD', 'Apple MacBook Pro M3 Max 16".
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 9643, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-64-0/800/600','https://picsum.photos/seed/laptop-64-1/800/600','https://picsum.photos/seed/laptop-64-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "512GB SSD", "brand": "Apple MacBook"}'::jsonb, 496);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ba9c5f45-6d8e-4df5-9acd-1b13e4153511', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Xiaomi POCO F6 512GB', 'Xiaomi POCO F6, მეხსიერება: 512GB, ფერი: თეთრი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1180, 'GEL', 'like_new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-124-0/800/600','https://picsum.photos/seed/phone-124-1/800/600','https://picsum.photos/seed/phone-124-2/800/600']::text[], '{"storage": "512GB", "color": "თეთრი", "brand": "Xiaomi"}'::jsonb, 170);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a1f436e6-f67b-4bd9-9efb-5a67780c654e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 237 კვ.მ, მიწა 2659 კვ.მ — ბათუმი გონიო', '1-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 237 კვ.მ, მიწის ნაკვეთი: 2659 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 115433, 'USD', 'like_new', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-20-0/800/600','https://picsum.photos/seed/house-20-1/800/600','https://picsum.photos/seed/house-20-2/800/600']::text[], '{"sqm_house": 237, "sqm_land": 2659, "floors": 1}'::jsonb, 360);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6bdcb645-f243-4535-a722-3a352920024a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Rio 2021', 'Kia Rio, 2021 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 255,967 კმ.
აღჭურვილობა: ტყავის სალონი, უკანა კამერა.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 25544, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-126-0/800/600','https://picsum.photos/seed/car-126-1/800/600','https://picsum.photos/seed/car-126-2/800/600']::text[], '{"year": 2021, "fuel": "ჰიბრიდი", "transmission": "ავტომატიკა", "mileage_km": 255967, "color": "ვერცხლისფერი"}'::jsonb, 487);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5cc4a73b-dd91-47ae-9ab7-b6edac1aedd9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia Carnival 2016', 'Kia Carnival, 2016 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ჰიბრიდი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 80,432 კმ.
აღჭურვილობა: ტყავის სალონი, კონდიციონერი, LED ფარები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 86793, 'GEL', 'fair', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/car-95-0/800/600','https://picsum.photos/seed/car-95-1/800/600','https://picsum.photos/seed/car-95-2/800/600']::text[], '{"year": 2016, "fuel": "ჰიბრიდი", "transmission": "მექანიკა", "mileage_km": 80432, "color": "შინდისფერი"}'::jsonb, 367);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('849745ca-11f2-4da0-8db5-852117892988', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota C-HR 2012', 'Toyota C-HR, 2012 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 16,214 კმ.
აღჭურვილობა: პანორამული ჭერი, მულტიმედია სისტემა, გამათბობელი სავარძლები.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 117895, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/car-67-0/800/600','https://picsum.photos/seed/car-67-1/800/600','https://picsum.photos/seed/car-67-2/800/600']::text[], '{"year": 2012, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 16214, "color": "შინდისფერი"}'::jsonb, 323);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7bf46e42-c8c3-4ea2-8df1-af4ef18dd732', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12R 256GB', 'OnePlus 12R, მეხსიერება: 256GB, ფერი: თეთრი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1924, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/phone-153-0/800/600','https://picsum.photos/seed/phone-153-1/800/600','https://picsum.photos/seed/phone-153-2/800/600']::text[], '{"storage": "256GB", "color": "თეთრი", "brand": "OnePlus"}'::jsonb, 102);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8b829629-90a8-445a-9fff-a4a42ce6b058', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Panasonic Lumix S5 II', 'Panasonic Lumix S5 II.
შატერის რაოდენობა: 10,717. ყუთი და დამტენი მოყვება.
ობიექტივი არ მოყვება (მხოლოდ body).', 4447, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/camera-27-0/800/600','https://picsum.photos/seed/camera-27-1/800/600','https://picsum.photos/seed/camera-27-2/800/600']::text[], '{"shutter_count": 10717, "type": "camera"}'::jsonb, 28);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4f15498f-a240-490b-9aff-d01a5cb4957c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 8GB/2TB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M3 Max, ოპერატიული: 8GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
დამტენი და ორიგინალი ყუთი მოყვება.', 2799, 'GEL', 'new', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-23-0/800/600','https://picsum.photos/seed/laptop-23-1/800/600','https://picsum.photos/seed/laptop-23-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "8GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 418);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('be8555b5-62d3-4ea6-aa53-bb97f1b5f6bf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 45 კვ.მ — გლდანი', '1-ოთახიანი ბინა გლდანი-ში, 45 კვადრატული მეტრი.
სართული: 3/12.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 45090, 'USD', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/apartment-59-0/800/600','https://picsum.photos/seed/apartment-59-1/800/600','https://picsum.photos/seed/apartment-59-2/800/600']::text[], '{"sqm": 45, "floor": 3, "total_floors": 12, "rooms": "1-ოთახიანი", "price_per_sqm": 1002}'::jsonb, 20);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9282c31e-0556-4d78-803e-6e5b364c9957', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM5 — ლურჯი', 'Sony WH-1000XM5, ფერი: ლურჯი.
ახალი, არ გახსნილა, სრული გარანტია.', 984, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/headphone-18-0/800/600','https://picsum.photos/seed/headphone-18-1/800/600','https://picsum.photos/seed/headphone-18-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 88);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4ebacf2a-ce0d-488b-8db2-272d876e63f7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 512GB', 'OnePlus 12, მეხსიერება: 512GB, ფერი: ოქროსფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2981, 'GEL', 'new', 'active', 'ქუთაისი', ARRAY['https://picsum.photos/seed/phone-142-0/800/600','https://picsum.photos/seed/phone-142-1/800/600','https://picsum.photos/seed/phone-142-2/800/600']::text[], '{"storage": "512GB", "color": "ოქროსფერი", "brand": "OnePlus"}'::jsonb, 119);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('397d714a-b62d-493d-8fbb-20b4e55e708d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus LS 500 2009', 'Lexus LS 500, 2009 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 200,030 კმ.
აღჭურვილობა: მულტიმედია სისტემა, ნავიგაცია, კონდიციონერი, პანორამული ჭერი, პარკინგ სენსორები, კრუიზ კონტროლი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 16562, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/car-23-0/800/600','https://picsum.photos/seed/car-23-1/800/600','https://picsum.photos/seed/car-23-2/800/600']::text[], '{"year": 2009, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 200030, "color": "ნაცრისფერი"}'::jsonb, 400);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('45e15ad2-4443-419c-a644-4a39c294554b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 295 კვ.მ, მიწა 2774 კვ.მ — ბათუმი კვარიათი', '1-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 295 კვ.მ, მიწის ნაკვეთი: 2774 კვ.მ.
სჭირდება კოსმეტიკური რემონტი, მაგრამ კონსტრუქციულად მყარია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 238325, 'USD', 'good', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-6-0/800/600','https://picsum.photos/seed/house-6-1/800/600','https://picsum.photos/seed/house-6-2/800/600']::text[], '{"sqm_house": 295, "sqm_land": 2774, "floors": 1}'::jsonb, 195);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3d51d5ff-803d-4dfd-854b-1f629fe95d97', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad mini 6 128GB', 'Apple iPad mini 6, მეხსიერება: 128GB.
როგორც ახალი, კომპლექტი სრულია.
სტილუსი მოყვება.', 1275, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/tablet-58-0/800/600','https://picsum.photos/seed/tablet-58-1/800/600','https://picsum.photos/seed/tablet-58-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 388);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('04568dd4-0a62-4b68-9902-362c26289b16', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 267 კვ.მ, მიწა 1422 კვ.მ — ბათუმი კვარიათი', '1-სართულიანი სახლი ბათუმი კვარიათი-ში.
საცხოვრებელი ფართი: 267 კვ.მ, მიწის ნაკვეთი: 1422 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 138806, 'USD', 'good', 'active', 'ბათუმი კვარიათი', ARRAY['https://picsum.photos/seed/house-18-0/800/600','https://picsum.photos/seed/house-18-1/800/600','https://picsum.photos/seed/house-18-2/800/600']::text[], '{"sqm_house": 267, "sqm_land": 1422, "floors": 1}'::jsonb, 327);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fc2a0324-59e2-4dbf-8be4-13ddb25f50e6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus RX 350 2016', 'Lexus RX 350, 2016 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 216,335 კმ.
აღჭურვილობა: უკანა კამერა, LED ფარები, კრუიზ კონტროლი, ტყავის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 148888, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/car-94-0/800/600','https://picsum.photos/seed/car-94-1/800/600','https://picsum.photos/seed/car-94-2/800/600']::text[], '{"year": 2016, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 216335, "color": "ვერცხლისფერი"}'::jsonb, 378);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ef0d26ce-e588-42a8-8719-5710c2127d6b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad 10th Gen 64GB', 'Apple iPad 10th Gen, მეხსიერება: 64GB.
როგორც ახალი, კომპლექტი სრულია.
სტილუსი მოყვება.', 1125, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/tablet-18-0/800/600','https://picsum.photos/seed/tablet-18-1/800/600','https://picsum.photos/seed/tablet-18-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 331);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('52e9e47c-4521-4e3a-9ab8-eeb85ce25b37', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 6a 512GB', 'Google Pixel 6a, მეხსიერება: 512GB, ფერი: იისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
დამტენი და ყურსასმენი მოყვება.', 1200, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/phone-20-0/800/600','https://picsum.photos/seed/phone-20-1/800/600','https://picsum.photos/seed/phone-20-2/800/600']::text[], '{"storage": "512GB", "color": "იისფერი", "brand": "Google Pixel"}'::jsonb, 208);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('33ceeee7-9b81-4f15-b10f-a979f2dc41f1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'Sony Alpha A7C II', 'Sony Alpha A7C II.
შატერის რაოდენობა: 63,244. კარგ მდგომარეობაში, სენსორი სუფთა.
კიტის ობიექტივით: 28-70mm.', 3120, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/camera-18-0/800/600','https://picsum.photos/seed/camera-18-1/800/600','https://picsum.photos/seed/camera-18-2/800/600']::text[], '{"shutter_count": 63244, "type": "camera"}'::jsonb, 21);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('94b89cbd-52e2-4cc6-8319-6751fdbf6596', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM4 — ვერცხლისფერი', 'Sony WH-1000XM4, ფერი: ვერცხლისფერი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 730, 'GEL', 'good', 'active', 'გორი', ARRAY['https://picsum.photos/seed/headphone-50-0/800/600','https://picsum.photos/seed/headphone-50-1/800/600','https://picsum.photos/seed/headphone-50-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 468);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('314180d6-5dd4-4c41-bd08-b58366ad5ac4', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 114 კვ.მ — ბათუმი ცენტრი', '3-ოთახიანი ბინა ბათუმი ცენტრი-ში, 114 კვადრატული მეტრი.
სართული: 5/15.
ძველი რემონტი, სჭირდება განახლება. კარგი პოტენციალის მქონე ბინა.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 184680, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-69-0/800/600','https://picsum.photos/seed/apartment-69-1/800/600','https://picsum.photos/seed/apartment-69-2/800/600']::text[], '{"sqm": 114, "floor": 5, "total_floors": 15, "rooms": "3-ოთახიანი", "price_per_sqm": 1620}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6867686b-97a8-4b61-9b6b-5589c755fdcd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 128GB', 'Google Pixel 8, მეხსიერება: 128GB, ფერი: ტიტანის ნაცრისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 2497, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/phone-139-0/800/600','https://picsum.photos/seed/phone-139-1/800/600','https://picsum.photos/seed/phone-139-2/800/600']::text[], '{"storage": "128GB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 372);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('6eae1305-db27-4115-8faf-950910317d69', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 256GB', 'Google Pixel 8 Pro, მეხსიერება: 256GB, ფერი: ლურჯი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 3206, 'GEL', 'new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/phone-196-0/800/600','https://picsum.photos/seed/phone-196-1/800/600','https://picsum.photos/seed/phone-196-2/800/600']::text[], '{"storage": "256GB", "color": "ლურჯი", "brand": "Google Pixel"}'::jsonb, 116);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c8d2ba99-7d08-4c44-95bc-ef6b71b05950', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 64GB/256GB SSD', 'Dell Inspiron 15.
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1731, 'GEL', 'new', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-175-0/800/600','https://picsum.photos/seed/laptop-175-1/800/600','https://picsum.photos/seed/laptop-175-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "256GB SSD", "brand": "Dell"}'::jsonb, 117);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8a01e1dd-c72b-4b77-82c7-eb7e650398a3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ProArt StudioBook, 64GB/256GB SSD', 'ASUS ProArt StudioBook.
პროცესორი: Apple M3 Max, ოპერატიული: 64GB, დისკი: 256GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 3095, 'GEL', 'fair', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/laptop-96-0/800/600','https://picsum.photos/seed/laptop-96-1/800/600','https://picsum.photos/seed/laptop-96-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "64GB", "ssd": "256GB SSD", "brand": "ASUS"}'::jsonb, 402);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e01752bc-d58b-4bf6-812e-94c41ddcd21e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Live Pro 2 — მწვანე', 'JBL Live Pro 2, ფერი: მწვანე.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 421, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/headphone-17-0/800/600','https://picsum.photos/seed/headphone-17-1/800/600','https://picsum.photos/seed/headphone-17-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 161);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('828f7c87-ad49-4cd4-ac17-f29a1858509b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Hyundai Kona 2008', 'Hyundai Kona, 2008 წლის გამოშვება.
ფერი: წითელი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 191,468 კმ.
აღჭურვილობა: უკანა კამერა, კრუიზ კონტროლი, LED ფარები, ხის სალონი, გამათბობელი სავარძლები, ტყავის სალონი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 21210, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/car-6-0/800/600','https://picsum.photos/seed/car-6-1/800/600','https://picsum.photos/seed/car-6-2/800/600']::text[], '{"year": 2008, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 191468, "color": "წითელი"}'::jsonb, 226);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4b872f48-00e0-4fb2-a551-16a5342f2511', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Envy 16, 16GB/512GB SSD', 'HP Envy 16.
პროცესორი: Intel Core i7, ოპერატიული: 16GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 4373, 'GEL', 'new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/laptop-124-0/800/600','https://picsum.photos/seed/laptop-124-1/800/600','https://picsum.photos/seed/laptop-124-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "16GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 19);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('16d35611-1098-4309-b075-a5f1955d3e8c', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', 'სტუდიო ბინა, 25 კვ.მ — ისანი', 'სტუდიო ბინა ისანი-ში, 25 კვადრატული მეტრი.
სართული: 5/12.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მშვიდი უბანი, ბაღებთან ახლოს.', 27850, 'USD', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-21-0/800/600','https://picsum.photos/seed/apartment-21-1/800/600','https://picsum.photos/seed/apartment-21-2/800/600']::text[], '{"sqm": 25, "floor": 5, "total_floors": 12, "rooms": "სტუდიო", "price_per_sqm": 1114}'::jsonb, 449);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e1d09085-880f-42c7-b41b-79720905671b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 1TB', 'OnePlus 12, მეხსიერება: 1TB, ფერი: ლურჯი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
დამტენი და ყურსასმენი მოყვება.', 3132, 'GEL', 'good', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/phone-39-0/800/600','https://picsum.photos/seed/phone-39-1/800/600','https://picsum.photos/seed/phone-39-2/800/600']::text[], '{"storage": "1TB", "color": "ლურჯი", "brand": "OnePlus"}'::jsonb, 346);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('04f4606d-50e1-425a-8820-6ce145ab2d2f', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Sony WH-1000XM4 — მწვანე', 'Sony WH-1000XM4, ფერი: მწვანე.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 701, 'GEL', 'good', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/headphone-52-0/800/600','https://picsum.photos/seed/headphone-52-1/800/600','https://picsum.photos/seed/headphone-52-2/800/600']::text[], '{"color": "მწვანე", "type": "headphones"}'::jsonb, 411);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('caffcec9-33e7-4009-a6a8-ebc7fe7f09eb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — თეთრი', 'Apple AirPods Max, ფერი: თეთრი.
გამოყენებული რამდენიმე თვე, ქეისი მოყვება.', 2012, 'GEL', 'like_new', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/headphone-66-0/800/600','https://picsum.photos/seed/headphone-66-1/800/600','https://picsum.photos/seed/headphone-66-2/800/600']::text[], '{"color": "თეთრი", "type": "headphones"}'::jsonb, 134);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('5546ba2d-76aa-4a94-8154-7cfd4f769ef2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 68 კვ.მ — ქუთაისი ცენტრი', '2-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 68 კვადრატული მეტრი.
სართული: 18/27.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მშვიდი უბანი, ბაღებთან ახლოს.', 75548, 'USD', 'good', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-2-0/800/600','https://picsum.photos/seed/apartment-2-1/800/600','https://picsum.photos/seed/apartment-2-2/800/600']::text[], '{"sqm": 68, "floor": 18, "total_floors": 27, "rooms": "2-ოთახიანი", "price_per_sqm": 1111}'::jsonb, 107);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a0f4c133-fe73-47ee-b82f-d927f3c1679b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Inspiron 15, 64GB/2TB SSD', 'Dell Inspiron 15.
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 1211, 'GEL', 'like_new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/laptop-30-0/800/600','https://picsum.photos/seed/laptop-30-1/800/600','https://picsum.photos/seed/laptop-30-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "2TB SSD", "brand": "Dell"}'::jsonb, 360);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('7289ef13-a052-4781-98dc-c87928cb1515', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — ლურჯი', 'JBL Tune 770NC, ფერი: ლურჯი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 170, 'GEL', 'fair', 'active', 'თელავი', ARRAY['https://picsum.photos/seed/headphone-5-0/800/600','https://picsum.photos/seed/headphone-5-1/800/600','https://picsum.photos/seed/headphone-5-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 478);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('51a81360-a9df-450f-a6f1-a83d30bc4ae5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 255 კვ.მ, მიწა 1912 კვ.მ — ბათუმი გონიო', '1-სართულიანი სახლი ბათუმი გონიო-ში.
საცხოვრებელი ფართი: 255 კვ.მ, მიწის ნაკვეთი: 1912 კვ.მ.
პრემიუმ კლასის მასალები, სმარტ სახლის სისტემა.
ასფალტიანი გზა, ქალაქიდან 15 წუთის სავალი.', 220732, 'USD', 'like_new', 'active', 'ბათუმი გონიო', ARRAY['https://picsum.photos/seed/house-16-0/800/600','https://picsum.photos/seed/house-16-1/800/600','https://picsum.photos/seed/house-16-2/800/600']::text[], '{"sqm_house": 255, "sqm_land": 1912, "floors": 1}'::jsonb, 14);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e9e389cc-1b1e-4ac7-bcb6-4f1a23ccce49', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 122 კვ.მ — ქუთაისი ცენტრი', '4-ოთახიანი ბინა ქუთაისი ცენტრი-ში, 122 კვადრატული მეტრი.
სართული: 2/8.
კოსმეტიკური რემონტი გაკეთებულია, ავეჯი მოყვება.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 116876, 'USD', 'fair', 'active', 'ქუთაისი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-1-0/800/600','https://picsum.photos/seed/apartment-1-1/800/600','https://picsum.photos/seed/apartment-1-2/800/600']::text[], '{"sqm": 122, "floor": 2, "total_floors": 8, "rooms": "4-ოთახიანი", "price_per_sqm": 958}'::jsonb, 389);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b4c7b2ab-2635-407d-aebc-2bc5d1c73cd5', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Bose QuietComfort 45 — ლურჯი', 'Bose QuietComfort 45, ფერი: ლურჯი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 405, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/headphone-29-0/800/600','https://picsum.photos/seed/headphone-29-1/800/600','https://picsum.photos/seed/headphone-29-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 60);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9ce53866-9219-4def-aa09-9cbed13b3171', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Pavilion 15, 16GB/512GB SSD', 'HP Pavilion 15.
პროცესორი: AMD Ryzen 7, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1222, 'GEL', 'good', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-171-0/800/600','https://picsum.photos/seed/laptop-171-1/800/600','https://picsum.photos/seed/laptop-171-2/800/600']::text[], '{"cpu": "AMD Ryzen 7", "ram": "16GB", "ssd": "512GB SSD", "brand": "HP"}'::jsonb, 269);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e22cc4ad-8f4a-401c-bb09-28bb30323b44', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 7a 256GB', 'Google Pixel 7a, მეხსიერება: 256GB, ფერი: თეთრი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 1033, 'GEL', 'fair', 'active', 'გორი', ARRAY['https://picsum.photos/seed/phone-9-0/800/600','https://picsum.photos/seed/phone-9-1/800/600','https://picsum.photos/seed/phone-9-2/800/600']::text[], '{"storage": "256GB", "color": "თეთრი", "brand": "Google Pixel"}'::jsonb, 60);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a5caf118-7bb3-4317-8659-c5a0972d2542', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 16GB/512GB SSD', 'Acer Aspire 5.
პროცესორი: AMD Ryzen 9, ოპერატიული: 16GB, დისკი: 512GB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
დამტენი და ორიგინალი ყუთი მოყვება.', 1151, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/laptop-179-0/800/600','https://picsum.photos/seed/laptop-179-1/800/600','https://picsum.photos/seed/laptop-179-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "16GB", "ssd": "512GB SSD", "brand": "Acer"}'::jsonb, 438);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('0d505263-ce79-4940-a667-881b818d3028', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 8GB/1TB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2041, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/laptop-192-0/800/600','https://picsum.photos/seed/laptop-192-1/800/600','https://picsum.photos/seed/laptop-192-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "1TB SSD", "brand": "Apple MacBook"}'::jsonb, 274);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('9524b9b7-5f57-4b7b-9e3a-654e52a76ff9', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 Ultra 256GB', 'Samsung Galaxy Tab S9 Ultra, მეხსიერება: 256GB.
მცირე ნაკაწრები კორპუსზე, მუშაობს იდეალურად.
კლავიატურის ქეისი მოყვება.', 2376, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/tablet-15-0/800/600','https://picsum.photos/seed/tablet-15-1/800/600','https://picsum.photos/seed/tablet-15-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 329);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e73122f0-7ed5-4a2f-8dd3-2a4a8108095e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Kia K5 2014', 'Kia K5, 2014 წლის გამოშვება.
ფერი: შავი, საწვავი: ელექტრო, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 247,162 კმ.
აღჭურვილობა: ტყავის სალონი, პარკინგ სენსორები, LED ფარები, კონდიციონერი.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 38538, 'GEL', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/car-159-0/800/600','https://picsum.photos/seed/car-159-1/800/600','https://picsum.photos/seed/car-159-2/800/600']::text[], '{"year": 2014, "fuel": "ელექტრო", "transmission": "ავტომატიკა", "mileage_km": 247162, "color": "შავი"}'::jsonb, 453);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2fb66a23-401d-45fb-b248-ef79164dac95', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 224 კვ.მ, მიწა 2272 კვ.მ — ბაგები', '2-სართულიანი სახლი ბაგები-ში.
საცხოვრებელი ფართი: 224 კვ.მ, მიწის ნაკვეთი: 2272 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 147929, 'USD', 'fair', 'active', 'ბაგები', ARRAY['https://picsum.photos/seed/house-53-0/800/600','https://picsum.photos/seed/house-53-1/800/600','https://picsum.photos/seed/house-53-2/800/600']::text[], '{"sqm_house": 224, "sqm_land": 2272, "floors": 2}'::jsonb, 499);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('acd8c0df-ee7d-4916-8450-43949adadfef', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Envy 16, 64GB/1TB SSD', 'HP Envy 16.
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3995, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-148-0/800/600','https://picsum.photos/seed/laptop-148-1/800/600','https://picsum.photos/seed/laptop-148-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "1TB SSD", "brand": "HP"}'::jsonb, 198);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1a0ed391-cef9-4167-b9aa-9fb9db52ddd7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Aspire 5, 16GB/2TB SSD', 'Acer Aspire 5.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 2TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 1593, 'GEL', 'good', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-35-0/800/600','https://picsum.photos/seed/laptop-35-1/800/600','https://picsum.photos/seed/laptop-35-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "2TB SSD", "brand": "Acer"}'::jsonb, 487);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bdfdbc49-c35f-4008-83e8-24ef502a6643', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo IdeaPad 5, 64GB/512GB SSD', 'Lenovo IdeaPad 5.
პროცესორი: AMD Ryzen 9, ოპერატიული: 64GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 1236, 'GEL', 'fair', 'active', 'გარდაბანი', ARRAY['https://picsum.photos/seed/laptop-196-0/800/600','https://picsum.photos/seed/laptop-196-1/800/600','https://picsum.photos/seed/laptop-196-2/800/600']::text[], '{"cpu": "AMD Ryzen 9", "ram": "64GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 117);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('63f70a72-6d24-4943-b20a-a837c314c602', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 16GB/512GB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: Intel Core i5, ოპერატიული: 16GB, დისკი: 512GB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 2314, 'GEL', 'fair', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-5-0/800/600','https://picsum.photos/seed/laptop-5-1/800/600','https://picsum.photos/seed/laptop-5-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "16GB", "ssd": "512GB SSD", "brand": "Lenovo"}'::jsonb, 474);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('c2f0de18-f389-4b08-a586-18e9c60b20a3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Acer Swift 5, 16GB/512GB SSD', 'Acer Swift 5.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 512GB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 2642, 'GEL', 'like_new', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/laptop-11-0/800/600','https://picsum.photos/seed/laptop-11-1/800/600','https://picsum.photos/seed/laptop-11-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "512GB SSD", "brand": "Acer"}'::jsonb, 470);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4bdf3acb-8fa1-45a8-a428-a4429fc4aedc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 64GB/512GB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M3, ოპერატიული: 64GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 6517, 'GEL', 'new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-56-0/800/600','https://picsum.photos/seed/laptop-56-1/800/600','https://picsum.photos/seed/laptop-56-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "64GB", "ssd": "512GB SSD", "brand": "Apple MacBook"}'::jsonb, 413);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('020edc10-f458-4f8e-9266-d76ad4e3fe58', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 Max 16", 16GB/2TB SSD', 'Apple MacBook Pro M3 Max 16".
პროცესორი: Apple M3 Max, ოპერატიული: 16GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 7746, 'GEL', 'fair', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-76-0/800/600','https://picsum.photos/seed/laptop-76-1/800/600','https://picsum.photos/seed/laptop-76-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "16GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 242);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a79986a1-8210-4839-be90-fd2e1ef75a76', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 32GB/2TB SSD', 'ASUS ROG Strix G16.
პროცესორი: Apple M2, ოპერატიული: 32GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 4596, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-131-0/800/600','https://picsum.photos/seed/laptop-131-1/800/600','https://picsum.photos/seed/laptop-131-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "32GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 349);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4ae0409b-fdc2-4141-937c-160170f4586e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS ROG Strix G16, 32GB/512GB SSD', 'ASUS ROG Strix G16.
პროცესორი: Apple M2, ოპერატიული: 32GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 5271, 'GEL', 'new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/laptop-58-0/800/600','https://picsum.photos/seed/laptop-58-1/800/600','https://picsum.photos/seed/laptop-58-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "32GB", "ssd": "512GB SSD", "brand": "ASUS"}'::jsonb, 227);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('37b51761-be13-4da5-819d-270714aa5fa3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Lexus LS 500 2022', 'Lexus LS 500, 2022 წლის გამოშვება.
ფერი: ლურჯი, საწვავი: ბენზინი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 271,317 კმ.
აღჭურვილობა: პანორამული ჭერი, პარკინგ სენსორები, გამათბობელი სავარძლები.
ფაქტობრივად ახალი მდგომარეობა, ოფიციალური სერვისის ისტორია სრულია.', 108634, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/car-172-0/800/600','https://picsum.photos/seed/car-172-1/800/600','https://picsum.photos/seed/car-172-2/800/600']::text[], '{"year": 2022, "fuel": "ბენზინი", "transmission": "მექანიკა", "mileage_km": 271317, "color": "ლურჯი"}'::jsonb, 317);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ea53bc0a-82e7-42ce-9ebe-37c84edf44db', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Alienware m16, 64GB/1TB SSD', 'Dell Alienware m16.
პროცესორი: Intel Core i5, ოპერატიული: 64GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3668, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-162-0/800/600','https://picsum.photos/seed/laptop-162-1/800/600','https://picsum.photos/seed/laptop-162-2/800/600']::text[], '{"cpu": "Intel Core i5", "ram": "64GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 288);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('f6e464aa-093f-44dd-bb61-cc47d3ff8d62', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Apple AirPods Max — ლურჯი', 'Apple AirPods Max, ფერი: ლურჯი.
მცირე მოხმარების კვალი, ბატარეა კარგად ძლებს.', 1883, 'GEL', 'like_new', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/headphone-48-0/800/600','https://picsum.photos/seed/headphone-48-1/800/600','https://picsum.photos/seed/headphone-48-2/800/600']::text[], '{"color": "ლურჯი", "type": "headphones"}'::jsonb, 153);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cc76e888-7663-4b37-804c-b064faced27a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 6306 კვ.მ — მუხრანი', 'მიწის ნაკვეთი მუხრანი-ში, 6306 კვადრატული მეტრი.
დანიშნულება: კომერციული.
ბრტყელი რელიეფი, კომუნიკაციები ახლოს.', 28922, 'USD', 'good', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/land-7-0/800/600','https://picsum.photos/seed/land-7-1/800/600','https://picsum.photos/seed/land-7-2/800/600']::text[], '{"sqm": 6306, "purpose": "კომერციული"}'::jsonb, 92);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3a3138ef-981b-4e8a-8a40-0b81fbd32486', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'JBL Tune 770NC — ვერცხლისფერი', 'JBL Tune 770NC, ფერი: ვერცხლისფერი.
კარგ მდგომარეობაში, ხმის ხარისხი შესანიშნავი.', 249, 'GEL', 'good', 'active', 'თბილისი, ვაკე', ARRAY['https://picsum.photos/seed/headphone-57-0/800/600','https://picsum.photos/seed/headphone-57-1/800/600','https://picsum.photos/seed/headphone-57-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 356);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('e2f9ab8e-fa21-4f45-b4da-672628b1825a', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab S9 256GB', 'Samsung Galaxy Tab S9, მეხსიერება: 256GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
Wi-Fi ვერსია.', 2378, 'GEL', 'good', 'active', 'კასპი', ARRAY['https://picsum.photos/seed/tablet-67-0/800/600','https://picsum.photos/seed/tablet-67-1/800/600','https://picsum.photos/seed/tablet-67-2/800/600']::text[], '{"storage": "256GB", "type": "tablet"}'::jsonb, 349);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('37dedc81-ce1e-4813-99c8-72ee1a7ebb3d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '2-ოთახიანი ბინა, 87 კვ.მ — ბათუმი ცენტრი', '2-ოთახიანი ბინა ბათუმი ცენტრი-ში, 87 კვადრატული მეტრი.
სართული: 17/19.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 189051, 'USD', 'fair', 'active', 'ბათუმი ცენტრი', ARRAY['https://picsum.photos/seed/apartment-38-0/800/600','https://picsum.photos/seed/apartment-38-1/800/600','https://picsum.photos/seed/apartment-38-2/800/600']::text[], '{"sqm": 87, "floor": 17, "total_floors": 19, "rooms": "2-ოთახიანი", "price_per_sqm": 2173}'::jsonb, 367);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3ca60b17-4d96-4d73-99da-37500851e6eb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 512GB', 'OnePlus Nord 3, მეხსიერება: 512GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 724, 'GEL', 'fair', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-112-0/800/600','https://picsum.photos/seed/phone-112-1/800/600','https://picsum.photos/seed/phone-112-2/800/600']::text[], '{"storage": "512GB", "color": "ტიტანის ნაცრისფერი", "brand": "OnePlus"}'::jsonb, 81);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d90aabb2-2a5d-4570-a283-97d50b55dc38', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M3 15", 16GB/2TB SSD', 'Apple MacBook Air M3 15".
პროცესორი: Apple M2, ოპერატიული: 16GB, დისკი: 2TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3066, 'GEL', 'fair', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-81-0/800/600','https://picsum.photos/seed/laptop-81-1/800/600','https://picsum.photos/seed/laptop-81-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "16GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 407);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4223935b-8339-4a53-b6eb-5db58ee47f15', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Dell Latitude 5540, 16GB/1TB SSD', 'Dell Latitude 5540.
პროცესორი: Intel Core i7, ოპერატიული: 16GB, დისკი: 1TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 3421, 'GEL', 'like_new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-36-0/800/600','https://picsum.photos/seed/laptop-36-1/800/600','https://picsum.photos/seed/laptop-36-2/800/600']::text[], '{"cpu": "Intel Core i7", "ram": "16GB", "ssd": "1TB SSD", "brand": "Dell"}'::jsonb, 150);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('ae460dde-169c-4d33-aca8-b30b6e3657d7', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 42 კვ.მ — ისანი', '1-ოთახიანი ბინა ისანი-ში, 42 კვადრატული მეტრი.
სართული: 8/9.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 71904, 'USD', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/apartment-95-0/800/600','https://picsum.photos/seed/apartment-95-1/800/600','https://picsum.photos/seed/apartment-95-2/800/600']::text[], '{"sqm": 42, "floor": 8, "total_floors": 9, "rooms": "1-ოთახიანი", "price_per_sqm": 1712}'::jsonb, 228);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('1a480708-3adc-4f8f-a668-1b6f1f668032', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Apple iPad Pro 12.9" M2 64GB', 'Apple iPad Pro 12.9" M2, მეხსიერება: 64GB.
ბატარეა კარგად იჭერს, ეკრანი სუფთა.
Wi-Fi ვერსია.', 2858, 'GEL', 'fair', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/tablet-54-0/800/600','https://picsum.photos/seed/tablet-54-1/800/600','https://picsum.photos/seed/tablet-54-2/800/600']::text[], '{"storage": "64GB", "type": "tablet"}'::jsonb, 495);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4d9f0ef9-c578-4b88-bbf6-af9baa7488c6', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 96 კვ.მ — საბურთალო', '3-ოთახიანი ბინა საბურთალო-ში, 96 კვადრატული მეტრი.
სართული: 5/9.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
იტალიური კერამოგრანიტი, ჩაშენებული სამზარეულო.
მეტროსთან ახლოს, ინფრასტრუქტურა განვითარებული.', 149088, 'USD', 'like_new', 'active', 'თბილისი, საბურთალო', ARRAY['https://picsum.photos/seed/apartment-64-0/800/600','https://picsum.photos/seed/apartment-64-1/800/600','https://picsum.photos/seed/apartment-64-2/800/600']::text[], '{"sqm": 96, "floor": 5, "total_floors": 9, "rooms": "3-ოთახიანი", "price_per_sqm": 1553}'::jsonb, 121);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3158b679-9c60-4823-9d40-50ae2cf3d652', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Note 2018', 'Nissan Note, 2018 წლის გამოშვება.
ფერი: შინდისფერი, საწვავი: ბენზინი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 265,397 კმ.
აღჭურვილობა: მულტიმედია სისტემა, პანორამული ჭერი.
მანქანას აქვს მცირე კოსმეტიკური დაზიანებები, მაგრამ მექანიკურად იდეალურ მდგომარეობაშია.', 31463, 'GEL', 'fair', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/car-86-0/800/600','https://picsum.photos/seed/car-86-1/800/600','https://picsum.photos/seed/car-86-2/800/600']::text[], '{"year": 2018, "fuel": "ბენზინი", "transmission": "ავტომატიკა", "mileage_km": 265397, "color": "შინდისფერი"}'::jsonb, 291);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('04443090-c8a2-446d-a5b1-2a519908c815', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'HP Envy 16, 8GB/2TB SSD', 'HP Envy 16.
პროცესორი: Apple M2, ოპერატიული: 8GB, დისკი: 2TB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3315, 'GEL', 'new', 'active', 'სიღნაღი', ARRAY['https://picsum.photos/seed/laptop-197-0/800/600','https://picsum.photos/seed/laptop-197-1/800/600','https://picsum.photos/seed/laptop-197-2/800/600']::text[], '{"cpu": "Apple M2", "ram": "8GB", "ssd": "2TB SSD", "brand": "HP"}'::jsonb, 18);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('cf047f44-77f3-4466-896a-0192a9ed5a0e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M1 13", 16GB/512GB SSD', 'Apple MacBook Air M1 13".
პროცესორი: Apple M1, ოპერატიული: 16GB, დისკი: 512GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 3815, 'GEL', 'new', 'active', 'გორი', ARRAY['https://picsum.photos/seed/laptop-47-0/800/600','https://picsum.photos/seed/laptop-47-1/800/600','https://picsum.photos/seed/laptop-47-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "16GB", "ssd": "512GB SSD", "brand": "Apple MacBook"}'::jsonb, 123);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('78180198-b8de-45b4-bfe9-3dea60dabb85', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Toyota C-HR 2020', 'Toyota C-HR, 2020 წლის გამოშვება.
ფერი: ნაცრისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: მექანიკა.
გარბენი: 31,449 კმ.
აღჭურვილობა: უკანა კამერა, ნავიგაცია, LED ფარები.', 105256, 'GEL', 'good', 'active', 'ფოთი', ARRAY['https://picsum.photos/seed/car-138-0/800/600','https://picsum.photos/seed/car-138-1/800/600','https://picsum.photos/seed/car-138-2/800/600']::text[], '{"year": 2020, "fuel": "დიზელი", "transmission": "მექანიკა", "mileage_km": 31449, "color": "ნაცრისფერი"}'::jsonb, 96);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('afe4b431-e00a-4757-97d5-6c83e6b840cc', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M2 13", 16GB/2TB SSD', 'Apple MacBook Air M2 13".
პროცესორი: Apple M3 Max, ოპერატიული: 16GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
დამტენი და ორიგინალი ყუთი მოყვება.', 4625, 'GEL', 'like_new', 'active', 'ბათუმი', ARRAY['https://picsum.photos/seed/laptop-80-0/800/600','https://picsum.photos/seed/laptop-80-1/800/600','https://picsum.photos/seed/laptop-80-2/800/600']::text[], '{"cpu": "Apple M3 Max", "ram": "16GB", "ssd": "2TB SSD", "brand": "Apple MacBook"}'::jsonb, 159);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3f56face-51cc-4e03-be55-c56c10f2e2cf', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000052', 'სახლი 180 კვ.მ, მიწა 1346 კვ.მ — მუხრანი', '1-სართულიანი სახლი მუხრანი-ში.
საცხოვრებელი ფართი: 180 კვ.მ, მიწის ნაკვეთი: 1346 კვ.მ.
ნაწილობრივ გარემონტებული, ფუნქციონირებს ყველა კომუნიკაცია.
მშვიდი გარემო, ბუნებრივ ტყესთან ახლოს.', 43220, 'USD', 'fair', 'active', 'მუხრანი', ARRAY['https://picsum.photos/seed/house-47-0/800/600','https://picsum.photos/seed/house-47-1/800/600','https://picsum.photos/seed/house-47-2/800/600']::text[], '{"sqm_house": 180, "sqm_land": 1346, "floors": 1}'::jsonb, 284);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('21a95b75-c0f4-45b3-8aa3-45ae046c7376', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Pro M3 14", 8GB/1TB SSD', 'Apple MacBook Pro M3 14".
პროცესორი: Apple M3, ოპერატიული: 8GB, დისკი: 1TB SSD.
კარგ მდგომარეობაში, ბატარეა კარგად იჭერს. მცირე მოხმარების კვალი კორპუსზე.
Windows 11 Pro ლიცენზია, კომპლექტში დამტენი.', 6218, 'GEL', 'good', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-127-0/800/600','https://picsum.photos/seed/laptop-127-1/800/600','https://picsum.photos/seed/laptop-127-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "8GB", "ssd": "1TB SSD", "brand": "Apple MacBook"}'::jsonb, 473);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8f2c36d2-c178-4e75-9922-af54650c78b2', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000053', 'მიწის ნაკვეთი 6681 კვ.მ — გონიო', 'მიწის ნაკვეთი გონიო-ში, 6681 კვადრატული მეტრი.
დანიშნულება: საცხოვრებელი.
ხედი მთებზე, წყაროს წყალი ახლოს.', 437559, 'USD', 'good', 'active', 'გონიო', ARRAY['https://picsum.photos/seed/land-24-0/800/600','https://picsum.photos/seed/land-24-1/800/600','https://picsum.photos/seed/land-24-2/800/600']::text[], '{"sqm": 6681, "purpose": "საცხოვრებელი"}'::jsonb, 187);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('4cb3dbfa-1c9a-4858-9ea9-e277d7030d44', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Lenovo ThinkPad X1 Carbon, 64GB/256GB SSD', 'Lenovo ThinkPad X1 Carbon.
პროცესორი: Apple M1, ოპერატიული: 64GB, დისკი: 256GB SSD.
ახალი, დალუქული, ოფიციალური გარანტია.
macOS, iCloud ანგარიში გაწმენდილია. დამტენი მოყვება.', 3413, 'GEL', 'new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/laptop-153-0/800/600','https://picsum.photos/seed/laptop-153-1/800/600','https://picsum.photos/seed/laptop-153-2/800/600']::text[], '{"cpu": "Apple M1", "ram": "64GB", "ssd": "256GB SSD", "brand": "Lenovo"}'::jsonb, 333);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('3ba12762-c238-4f30-afa2-200fa5e33cd1', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '3-ოთახიანი ბინა, 81 კვ.მ — ვერა', '3-ოთახიანი ბინა ვერა-ში, 81 კვადრატული მეტრი.
სართული: 2/8.
ახალი ევრორემონტი, თანამედროვე დიზაინი.
თეთრი რემონტი, ფრანგული აივანი, მშვენიერი ხედი.
მშვიდი უბანი, ბაღებთან ახლოს.', 274914, 'USD', 'new', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-16-0/800/600','https://picsum.photos/seed/apartment-16-1/800/600','https://picsum.photos/seed/apartment-16-2/800/600']::text[], '{"sqm": 81, "floor": 2, "total_floors": 8, "rooms": "3-ოთახიანი", "price_per_sqm": 3394}'::jsonb, 498);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('48777c61-747f-4157-a4a2-ac9712253377', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000014', 'Samsung Galaxy Tab A9 128GB', 'Samsung Galaxy Tab A9, მეხსიერება: 128GB.
კარგ მდგომარეობაში, ეკრანი უნაკლო.
Wi-Fi ვერსია.', 754, 'GEL', 'good', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/tablet-14-0/800/600','https://picsum.photos/seed/tablet-14-1/800/600','https://picsum.photos/seed/tablet-14-2/800/600']::text[], '{"storage": "128GB", "type": "tablet"}'::jsonb, 481);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bf32b713-fdb5-4ba2-b27f-fcf7d8abbcfb', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000004', 'Nissan Qashqai 2020', 'Nissan Qashqai, 2020 წლის გამოშვება.
ფერი: ვერცხლისფერი, საწვავი: დიზელი, გადაცემათა კოლოფი: ავტომატიკა.
გარბენი: 10,736 კმ.
აღჭურვილობა: ტყავის სალონი, გამათბობელი სავარძლები, ნავიგაცია, მულტიმედია სისტემა.', 10568, 'GEL', 'good', 'active', 'თბილისი, გლდანი', ARRAY['https://picsum.photos/seed/car-39-0/800/600','https://picsum.photos/seed/car-39-1/800/600','https://picsum.photos/seed/car-39-2/800/600']::text[], '{"year": 2020, "fuel": "დიზელი", "transmission": "ავტომატიკა", "mileage_km": 10736, "color": "ვერცხლისფერი"}'::jsonb, 270);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('8e95213c-ed88-49bc-b925-fa5a84e5ce57', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000015', 'Samsung Galaxy Buds2 Pro — ვერცხლისფერი', 'Samsung Galaxy Buds2 Pro, ფერი: ვერცხლისფერი.
მუშაობს იდეალურად, ANC ფუნქცია სრულყოფილია.', 519, 'GEL', 'good', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/headphone-53-0/800/600','https://picsum.photos/seed/headphone-53-1/800/600','https://picsum.photos/seed/headphone-53-2/800/600']::text[], '{"color": "ვერცხლისფერი", "type": "headphones"}'::jsonb, 318);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('fc6eb4e9-1f3f-42df-b849-1956a4011d19', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000016', 'GoPro HERO12 Black', 'GoPro HERO12 Black.
ახალი, დალუქული, ოფიციალური გარანტია.
კიტის ობიექტივით: 28-70mm.', 1040, 'GEL', 'new', 'active', 'ბორჯომი', ARRAY['https://picsum.photos/seed/camera-42-0/800/600','https://picsum.photos/seed/camera-42-1/800/600','https://picsum.photos/seed/camera-42-2/800/600']::text[], '{"shutter_count": 28671, "type": "camera"}'::jsonb, 279);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a56388ba-6e6f-4a22-9958-c73fbbe0cfaa', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'Apple MacBook Air M2 13", 32GB/1TB SSD', 'Apple MacBook Air M2 13".
პროცესორი: Apple M3, ოპერატიული: 32GB, დისკი: 1TB SSD.
მუშა მდგომარეობაში, კორპუსზე აქვს მცირე ნაკაწრები. ბატარეა 3-4 საათს ძლებს.
დამტენი და ორიგინალი ყუთი მოყვება.', 3222, 'GEL', 'fair', 'active', 'თბილისი, სოლოლაკი', ARRAY['https://picsum.photos/seed/laptop-191-0/800/600','https://picsum.photos/seed/laptop-191-1/800/600','https://picsum.photos/seed/laptop-191-2/800/600']::text[], '{"cpu": "Apple M3", "ram": "32GB", "ssd": "1TB SSD", "brand": "Apple MacBook"}'::jsonb, 417);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2a7200f5-52ed-426f-a53d-d22387cbf130', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Google Pixel 8 Pro 256GB', 'Google Pixel 8 Pro, მეხსიერება: 256GB, ფერი: ტიტანის ნაცრისფერი.
მუშა მდგომარეობაში, ეკრანზე არის მცირე ნაკაწრი. ბატარეის ჯანმრთელობა 78%.
დამტენი და ყურსასმენი მოყვება.', 1962, 'GEL', 'fair', 'active', 'მარნეული', ARRAY['https://picsum.photos/seed/phone-166-0/800/600','https://picsum.photos/seed/phone-166-1/800/600','https://picsum.photos/seed/phone-166-2/800/600']::text[], '{"storage": "256GB", "color": "ტიტანის ნაცრისფერი", "brand": "Google Pixel"}'::jsonb, 332);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('bb95b644-8399-4846-ad87-0ccb921ab481', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 128GB', 'OnePlus 12, მეხსიერება: 128GB, ფერი: ოქროსფერი.
კარგ მდგომარეობაში, მცირე მოხმარების კვალი. ეკრანი უნაკლო.
მხოლოდ ტელეფონი, დამტენის გარეშე.', 2821, 'GEL', 'good', 'active', 'მცხეთა', ARRAY['https://picsum.photos/seed/phone-4-0/800/600','https://picsum.photos/seed/phone-4-1/800/600','https://picsum.photos/seed/phone-4-2/800/600']::text[], '{"storage": "128GB", "color": "ოქროსფერი", "brand": "OnePlus"}'::jsonb, 293);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('a5d5a85c-61b8-4949-b42d-707aa33d033e', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus 12 1TB', 'OnePlus 12, მეხსიერება: 1TB, ფერი: ვარდისფერი.
ფაქტობრივად ახალი მდგომარეობა, ნაკაწრების გარეშე. ყველა აქსესუარი მოყვება.
ორიგინალი ქეისი და ეკრანის დამცავი მინა მოყვება.', 3100, 'GEL', 'like_new', 'active', 'საგარეჯო', ARRAY['https://picsum.photos/seed/phone-185-0/800/600','https://picsum.photos/seed/phone-185-1/800/600','https://picsum.photos/seed/phone-185-2/800/600']::text[], '{"storage": "1TB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 208);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('b61225a7-ba82-454f-9f80-5597f7a5b7d3', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'OnePlus Nord 3 512GB', 'OnePlus Nord 3, მეხსიერება: 512GB, ფერი: ვარდისფერი.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
სრული კომპლექტი: ყუთი, დამტენი, კაბელი, ქეისი.', 1456, 'GEL', 'new', 'active', 'თბილისი, ისანი', ARRAY['https://picsum.photos/seed/phone-186-0/800/600','https://picsum.photos/seed/phone-186-1/800/600','https://picsum.photos/seed/phone-186-2/800/600']::text[], '{"storage": "512GB", "color": "ვარდისფერი", "brand": "OnePlus"}'::jsonb, 291);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('46a6a1a8-ee16-45bd-845c-e74c640f319b', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '1-ოთახიანი ბინა, 42 კვ.მ — ბათუმი ახალი ბულვარი', '1-ოთახიანი ბინა ბათუმი ახალი ბულვარი-ში, 42 კვადრატული მეტრი.
სართული: 7/14.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
ცენტრალური ადგილმდებარეობა, სკოლა და საბავშვო ბაღი ახლოს.', 106806, 'USD', 'fair', 'active', 'ბათუმი ახალი ბულვარი', ARRAY['https://picsum.photos/seed/apartment-68-0/800/600','https://picsum.photos/seed/apartment-68-1/800/600','https://picsum.photos/seed/apartment-68-2/800/600']::text[], '{"sqm": 42, "floor": 7, "total_floors": 14, "rooms": "1-ოთახიანი", "price_per_sqm": 2543}'::jsonb, 336);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('2276deee-3051-455d-b0fb-d8f619e28ffd', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000051', '4-ოთახიანი ბინა, 193 კვ.მ — ვერა', '4-ოთახიანი ბინა ვერა-ში, 193 კვადრატული მეტრი.
სართული: 13/15.
საშუალო მდგომარეობა, ცხოვრებისთვის ვარგისი.
მშვიდი უბანი, ბაღებთან ახლოს.', 628408, 'USD', 'fair', 'active', 'თბილისი, ვერა', ARRAY['https://picsum.photos/seed/apartment-42-0/800/600','https://picsum.photos/seed/apartment-42-1/800/600','https://picsum.photos/seed/apartment-42-2/800/600']::text[], '{"sqm": 193, "floor": 13, "total_floors": 15, "rooms": "4-ოთახიანი", "price_per_sqm": 3256}'::jsonb, 203);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('d820af43-d2ca-4027-8aed-64a1df472a3d', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000011', 'ASUS TUF Gaming A15, 16GB/2TB SSD', 'ASUS TUF Gaming A15.
პროცესორი: Intel Core i9, ოპერატიული: 16GB, დისკი: 2TB SSD.
როგორც ახალი, გამოყენებული 2-3 თვე. ნაკაწრების გარეშე.
სრული კომპლექტი + ლეპტოპის ჩანთა.', 3903, 'GEL', 'like_new', 'active', 'თბილისი, ნაძალადევი', ARRAY['https://picsum.photos/seed/laptop-141-0/800/600','https://picsum.photos/seed/laptop-141-1/800/600','https://picsum.photos/seed/laptop-141-2/800/600']::text[], '{"cpu": "Intel Core i9", "ram": "16GB", "ssd": "2TB SSD", "brand": "ASUS"}'::jsonb, 316);
INSERT INTO products (id, tenant_id, seller_id, category_id, title, description, price, currency, condition, status, location, images, metadata, view_count)
VALUES ('33d864a9-9c4c-485b-8ee9-921adab62735', '00000000-0000-0000-0000-000000000001', '5b67a239-5c29-42eb-8e3d-59b15c305899', '10000000-0000-0000-0000-000000000012', 'Samsung Galaxy A14 512GB', 'Samsung Galaxy A14, მეხსიერება: 512GB, ფერი: მწვანე.
ახალი, დალუქული ყუთით, გარანტია 1 წელი.
დამტენი და ყურსასმენი მოყვება.', 440, 'GEL', 'new', 'active', 'რუსთავი', ARRAY['https://picsum.photos/seed/phone-132-0/800/600','https://picsum.photos/seed/phone-132-1/800/600','https://picsum.photos/seed/phone-132-2/800/600']::text[], '{"storage": "512GB", "color": "მწვანე", "brand": "Samsung Galaxy"}'::jsonb, 301);

COMMIT;
-- Total products: 1000