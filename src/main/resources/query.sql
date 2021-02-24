INSERT INTO continent (name) VALUES
('Africa'),
('America'),
('Asia'),
('Australia'),
('Europe');
INSERT INTO country (name, continent_id) VALUES
('Egypt', '1'),
('Tunisia', '1'),
('South Africa', '1'),
('Morocco', '1'),
('Sierra Leone', '1'),
('Nigeria', '1'),
('Kenya', '1'),
('United States of America', '2'),
('Canada', '2'),
('Brazil', '2'),
('Argentina', '2'),
('Chile', '2'),
('Colombia', '2'),
('Bolivia', '2'),
('India', '3'),
('Japan', '3'),
('China', '3'),
('Thailand', '3'),
('Indonesia', '3'),
('Malaysia', '3'),
('Singapore', '3'),
('Australia', '4'),
('Fiji', '4'),
('New Zealand', '4'),
('Papua New Guinea', '4'),
('Samoa', '4'),
('Tuvalu and Vanuatu', '4'),
('Solomon Islands', '4'),
('Norway', '5'),
('France', '5'),
('Spain', '5'),
('Greece', '5'),
('Austria', '5'),
('Denmark', '5'),
('Italy', '5');
INSERT INTO city (name, country_id) VALUES
('Cairo', '1'),
('Tunis', '2'),
('Cape Town', '3'),
('Rabat', '4'),
('Freetown', '5'),
('Abuja', '6'),
('Nairobi', '7'),
('Washington, D.C.', '8'),
('Ottawa', '9'),
('São Paulo', '10'),
('Buenos Aires', '11'),
('Santiago', '12'),
('Bogotá', '13'),
('Sucre', '14'),
('New Delhi', '15'),
('Tokyo', '16'),
('Beijing', '17'),
('Bangkok', '18'),
('Jakarta', '19'),
('Kuala Lumpur', '20'),
('Singapore', '21'),
('Canberra', '22'),
('Suva', '23'),
('Wellington', '24'),
('Port Moresby', '25'),
('Apia', '26'),
('Port Vila', '27'),
('Honiara', '28'),
('Oslo', '29'),
('Paris', '30'),
('Madrid', '31'),
('Athens', '32'),
('Vienna', '33'),
('Copenhagen', '34'),
('Rome', '35');
INSERT INTO airport (name, city_id) VALUES
('Cairo International Airport', '1'),
('Tunis Carthage International Airport', '2'),
('Cape Town International Airport', '3'),
('Rabat–Salé Airport', '4'),
('Lungi International Airport,', '5'),
('Nnamdi Azikiwe International Airport', '6'),
('Jomo Kenyatta International Airport', '7'),
('Dulles International Airport', '8'),
('Macdonald-Cartier International Airport', '9'),
('Guarulhos International Airport', '10'),
('Ezeiza International Airport', '11'),
('Arturo Merino Benítez International Airport', '12'),
('El Dorado International Airport', '13'),
('Alcantarí International Airport', '14'),
('Indira Gandhi International Airport', '15'),
('Narita International Airport ', '16'),
('Beijing Capital International Airport', '17'),
('Suvarnabhumi Airport', '18'),
('Soekarno–Hatta International Airport', '19'),
('Kuala Lumpur International Airport', '20'),
('Singapore Changi Airport', '21'),
('Canberra Airport', '22'),
('Nausori International Airport', '23'),
('Wellington International Airport', '24'),
('Jacksons International Airport', '25'),
('Faleolo International Airport', '26'),
('Bauerfield International Airport', '27'),
('Honiara International Airport', '28'),
('Gardermoen Airport', '29'),
('Paris Charles de Gaulle Airport ', '30'),
('Adolfo Suárez Madrid–Barajas Airport', '31'),
('Athens International Airport Eleftherios Venizelos', '32'),
('Vienna International Airport', '33'),
('Copenhagen Airport Kastrup', '34'),
('Leonardo da Vinci–Fiumicino Airport', '35');

INSERT INTO hotel (description, name, standard, city_id) VALUES
('Luxurious rooms and suites offer views across the River Nile at Grand Nile Tower. The wellness center also overlooks the Nile and the hotel features 8 restaurants and an outdoor pool.', 'Grand Nile Tower', '5', '1'),
('Novotel Cairo Airport offers 2 outdoor pools in the landscaped garden, free Wi-Fi and free airport shuttle. It is a 10-minute drive from the International Convention and Exhibition Center.', 'Novotel Cairo Airport', '4', '1'),
('The Sheraton Tunis Hotel overlooks the entire city of Tunis. It features luxury spa facilities and a 24-hour business center. Each guest room has an elegant decor and a private balcony.', 'Golden Tulip Carthage Residences', '5', '2'),
('Golden Tulip Carthage Residences is located on the hills of Gammarth and offers a marvelous view over the Bay of Tunis. The property offers free access to sauna and hammam.', 'Sheraton Tunis Hotel', '4', '2'),
('This ocean-front hotel overlooks the Twelve Apostles mountain range and provides free transfers to Camps Bay and V&A Waterfront. It features the award winning Sanctuary Spa with rock pools.', 'Twelve Apostles Hotel & Spa', '5', '3'),
('Located right in the heart of the V&A Waterfront, this 4-star hotel offers a sun terrace with a bar. Free WiFi and parking are provided.', 'Victoria & Alfred Hotel', '4', '3'),
('In the heart of Rabat, this hotel sits on a luxurious site of more than 7 hectares, including 3 swimming pools and mini-golf area. It offers stylish rooms with balconies.', 'Sofitel Rabat Jardin Des Roses', '5', '4'),
('Located in the medina of Rabat, a 10-minute walk from Mawazine`s Bouregreg Stage, Riad Zyo is set in a traditional, Moroccan building with a central patio and a plunge pool.', 'Riad Zyo', '4', '4'),
('Set in Freetown, COMFORM LODGE HOTEL features 5-star accommodations with private balconies. Featuring a restaurant, this 5-star hotel has air-conditioned rooms with a private bathroom.', 'Comform Lodge Hotel', '5', '5'),
('Offering an outdoor swimming pool, terrace and garden, Radisson Blu Mammy Yoko Hotel is located in Freetown. Free WiFi access is available throughout the property.', 'Radisson Blu Mammy Yoko Hotel', '4', '5'),
('Offering an outdoor pool and a restaurant, Sheraton Abuja Hotel is located in Abuja. Each room here will provide you with air conditioning. Private bathroom also comes with a bath or shower.', 'Sheraton Abuja Hotel', '5', '6'),
('Located in Abuja, 3.1 mi from Cameroon Embassy, MayFair Hotel Maitama Abuja features accommodations with a restaurant, free private parking, a fitness center and a bar.', 'MayFair Hotel Maitama Abuja', '4', '6'),
('Just 10 minutes’ drive from Nairobi’s CBD, Villa Rosa Kempinski offers guests a 24-hour front desk, a spa and a fitness center. Free private parking is available.', 'Villa Rosa Kempinski', '5', '7'),
('Located in quiet corner, just off Ngong Road, Doubletree By Hilton Nairobi features contemporary and modern design. The hotel has air-conditioned rooms and offers an outdoor pool.', 'DoubleTree by Hilton Nairobi', '4', '7'),
('Located 1312 feet from the White House in Washington, D.C., this historic hotel features an on-site restaurant and lounge. All rooms feature a flat-screen TV with cable.', 'Sofitel Lafayette Square Washington DC', '5', '8'),
('Located in the Washington, D.C. city center, The Hamilton is 591 feet from the McPherson Square Metro Station and 1969 feet from the White House.', 'Hamilton Hotel - Washington DC', '4', '8'),
('Featuring an indoor pool, this historic hotel is located in central Ottawa, adjacent to the Parliament Buildings and Rideau Canal.', 'Fairmont Chateau Laurier', '5', '9'),
('Set in Ottawa, 3.7 mi from EY Center, Sandman Signature Ottawa Airport Hotel offers accommodations with a restaurant, free private parking, a bar and a shared lounge.', 'Sandman Signature Ottawa Airport Hotel', '4', '9'),
('Unique features exquisite architecture and stunning views of São Paulo and Ibirapuera Park. Designed by renowned architect Ruy Otake, it is in the trendy Jardins area.', 'Hotel Unique', '5', '10'),
('Located in São Paulo, Blue Tree Premium has a helipad and offers modern facilities with WiFi and parking on Faria Lima Avenue, one of the main business avenues in the city.', 'Blue Tree Premium Faria Lima', '4', '10'),
('In a plush palace in the heart of upscale Recoleta district, Palacio Duhau - Park Hyatt Buenos Aires features a spa and a fitness center, as well as 2 restaurants and a bar.', 'Palacio Duhau - Park Hyatt Buenos Aires', '5', '11'),
('Located in Buenos Aires, 1640 feet from Plaza de Mayo Square, Ker San Telmo Hotel provides accommodations with a restaurant, private parking, an outdoor swimming pool and a bar.', 'Ker San Telmo Hotel', '4', '11'),
('Featuring a fantastic outdoor pool and a complete fitness center, Sheraton Santiago Hotel & Convention Center offers 5-star luxury accommodations in the neighourhood of Providencia in Santiago.', 'Sheraton Santiago Hotel & Convention Center', '5', '12'),
('The Holiday Inn Santiago Airport provides accommodations right opposite to the International Airport of Santiago, Comodoro Arturo Merino Benítez International Airport.', 'Holiday Inn Santiago - Airport Terminal', '4', '12'),
('Located in Bogotá, 1312 feet from T Zone, GHL Hotel Bioxury provides accommodations with a restaurant, free private parking, a garden and a terrace', 'GHL Hotel Bioxury', '5', '13'),
('In an impressive building only 50 yards from the National Museum, Hotel Ibis Bogota Museo offers rooms with free Wi-Fi and cable TV in Bogota. It features a restaurant and a bar.', 'Ibis Bogota Museo', '4', '13'),
('In a colonial mansion with pieces of local artwork, the hotel offers rooms with private balconies and views of the charming interior patios and Spanish galleries. WiFi is free.', 'Mi Pueblo Samary Hotel Boutique', '5', '14'),
('Capital Plaza is set in an elegant mansion decorated with antique furniture, overlooking 25 de Mayo Square, downtown Sucre.', 'Capital Plaza Hotel', '4', '14'),
('The recently refurbished Shangri – La’s – Eros Hotel, New Delhi offers 5 dining options and an outdoor swimming pool. India Gate is 1.6 mi and Jantar Mantar is 0.8 mi away.', 'Shangri-La`s - Eros Hotel, New Delhi', '5', '15'),
('Offering a rooftop indoor swimming pool and a fitness center, Park Inn by Radisson New Delhi IP Extension is located in New Delhi. The Anand Vihar Bus Station is 1312 feet.', 'Park Inn by Radisson New Delhi IP Extension', '4', '15'),
('Set in Tokyo, within 1312 feet of Sony Music Roppongi Museum and 1640 feet of Asahi Shrine, Mitsui Garden Hotel Roppongi Tokyo Premier provides free WiFi throughout the property.', 'Mitsui Garden Hotel Roppongi Tokyo Premier', '5', '16'),
('Located in central Shinjuku just a 4-minute walk from Shinsen-Shinjuku Station and JR Shinjuku Station, Hotel Sunroute Plaza features rooms with satellite TV and free WiFi.', 'Hotel Sunroute Plaza Shinjuku', '4', '16'),
('Located in the middle of the shopping hub of Wangfujing, the spectacular Hilton Beijing Wangfujing offers a prime location.', 'Hilton Beijing Wangfujing', '5', '17'),
('Located in Beijing, 1640 feet from Qianmen Street, Beijing Yi Ting Zhen She Hotel provides air-conditioned rooms and a bar.', 'Beijing Yi Ting Zhen She Hotel', '4', '17'),
('Boasting 1388 rooms and suites, the modern Bangkok Marriott Marquis Queen’s Park is located in central Bangkok and is within easy reach of the city`s attractions.', 'Bangkok Marriott Marquis Queen’s Park', '5', '18'),
('Evergreen Place Bangkok by Urban Hospitality is located along Phaya Thai Road, a 2-minute walk to BTS Ratchathewi Station. The hotel offers free aerobic classes, an outdoor pool and a restaurant.', 'Evergreen Place Siam by UHG', '4', '18'),
('Featuring spacious apartments with fully-equipped kitchens, Ascott Jakarta is located in the Golden Triangle. It has an outdoor pool and free private parking.', 'Ascott Jakarta', '5', '19'),
('Somerset Berlian Jakarta offers convenience in spacious self-catering apartments with modern interiors and home entertainment systems.', 'Somerset Berlian Jakarta', '4', '19'),
('Mandarin Oriental, Kuala Lumpur, features stylish suites and serviced apartments overlooking the city skyline and KLCC Park.', 'Mandarin Oriental, Kuala Lumpur', '5', '20'),
('Set in the heart of Kuala Lumpur`s shopping district, Bukit Bintang Suite At Times Square offers air-conditioned suites with access to an outdoor pool.', 'Bukit Bintang Suite At Times Square', '4', '20'),
('The Fullerton Bay Hotel Singapore offers luxurious accommodations a 10-minute walk from Raffles Place MRT Station.', 'The Fullerton Bay Hotel Singapore', '5', '21'),
('Boasting a swimming pool, a fitness center, a garden and views of the city, Citadines Balestier (SG Clean) is located in Singapore and features accommodations with free WiFi.', 'Citadines Balestier', '4', '21'),
('Offering a state-of-the-art fitness center with indoor swimming pool and sauna, this luxury hotel is only 5 minutes` drive from Parliament House.', 'Hyatt Hotel Canberra - A Park Hyatt Hotel', '5', '22'),
('Located in the heart of Canberra, this stylish hotel offers a restaurant and a fitness center. All luxury accommodations features a private balcony with outdoor furniture.', 'Avenue Hotel Canberra', '4', '22'),
('Affectionately known as `The Grand Old Lady` of Suva, the faithfully restored Grand Pacific Hotel was built in 1914. It features free WiFi, 5 restaurants, 3 bars, a day spa and a fitness center.', 'Grand Pacific Hotel', '5', '23'),
('Completely refurbished in 2019, including all guest rooms and public areas, Tanoa Plaza features rooms with lovely harbor or city views and is only 2297 feet from Suva Harbor.', 'Tanoa Plaza Hotel', '4', '23'),
('Bolton Hotel is an elegant, boutique, 5-star hotel offering free WiFi on multiple devices and in-room iPad minis. Secure valet parking is available.', 'Bolton Hotel', '5', '24'),
('Offering refurbished accommodations in the heart of Wellington`s entertainment precinct, Oaks Wellington Hotel features city views and is just 1640 feet from the waterfront.', 'Oaks Wellington Hotel', '4', '24'),
('Located in central Port Moresby, Grand Papua Hotel offers a day spa, 2 restaurants, 2 bars and a swimming pool. All accommodations features sea views from a private balcony.', 'Grand Papua Hotel', '5', '25'),
('This stylish and award-winning luxury hotel is set in its own botanical gardens with stunning views over Bootless Bay to the mountains.', 'Airways Hotel', '4', '25'),
('Located on Apia Harbor, Aggie Grey`s Hotel & Bungalows is a waterfront hotel housed in a colonial property built in 1930.', 'Sheraton Samoa Aggie Grey`s Hotel & Bungalows', '5', '26'),
('Set on 15 acres of tropical gardens, Tanoa Tusitala Hotel offers air-conditioned rooms just 1312 feet from Apia’s waterfront. Each room includes a spacious bathroom, cable TV and a patio or balcony.', 'Tanoa Tusitala Hotel', '4', '26'),
('Located on its own pristine white sand beach, this 5-star boutique resort features a lagoon-style swimming pool overlooking the ocean. Guests can indulge themselves at the resort’s luxury day spa.', 'Tamanu on the Beach', '5', '27'),
('Located on 75 acres of tropical gardens on the edge of Erakor Lagoon, this luxury resort features 3 restaurants, 2 bars, 2 swimming pools, plus a 12-hole golf course and a day spa.', 'Warwick Le Lagon Resort & Spa, Vanuatu', '4', '27'),
('Located on the waterfront overlooking the Pacific Ocean & Florida Islands, the Coral Sea Villas are nestled in the heart of tropical landscape gardens with direct access to the ocean, and only 0.9 mi from Honiara CBD, and 7.1 mi from Henderson International Airport.', 'Coral Sea Resort & Casino', '5', '28'),
('Offering 2 restaurants, a beachside swimming pool and a bar, Solomon Kitano Mendana Hotel is located in Honiara. All accommodations features a patio with outdoor furniture.', 'Solomon Kitano Mendana Hotel', '4', '28'),
('Opened in 1874, Grand Hotel is located in Oslo’s city center, only 1640 feet from the Royal Palace. Karl Johan high street and luxury boutiques are within a few minutes` walk of the hotel.', 'Grand Hotel', '5', '29'),
('Karl Johan Hotel is housed in a 19th-century building on Oslo’s main street, Karl Johans Gate, less than 2297 feet from the Royal Palace. Guests enjoy free Wi-Fi.', 'Karl Johan Hotel', '4', '29'),
('Monsieur George Hotel & Spa - Champs-Elysées features a restaurant, fitness center, a bar and garden in Paris. This 5-star hotel offers a concierge service and a tour desk.', 'Monsieur George Hotel & Spa - Champs-Elysées', '5', '30'),
('The Saint-Paul Rive-Gauche is located between the Sorbonne and the Luxembourg Gardens on Paris’s Left Bank.', 'Hôtel Saint-Paul Rive-Gauche', '4', '30'),
('Set in a restored palace, URSO Hotel & Spa, a Small Luxury Hotel of the World is 5 minutes’ walk from Alonso Martínez Metro Station. It offers elegant rooms, free WiFi, a spa and gym.', 'URSO Hotel & Spa, a Small Luxury Hotel of the World', '5', '31'),
('Located in Madrid, 1969 feet from Puerta del Sol, Pestana Plaza Mayor Madrid offers amenities including a seasonal outdoor swimming pool and a fitness center.', 'Pestana Plaza Mayor Madrid', '4', '31'),
('With a great location in the center of Plaka, facing the Acropolis, this 5-star hotel offers personalized service, a beautiful rooftop pool and well-furnished rooms with a buffet breakfast included.', 'Electra Palace Athens', '5', '32'),
('Just 2625 feet from the world-renowned Acropolis and Acropolis Museum, Elia Ermou Athens Hotel is conveniently set in the heart of Athens. This 4-star hotel features a restaurant and wellness club.', 'Elia Ermou Athens Hotel', '4', '32'),
('The traditional Hotel Sacher is located in the heart of Vienna, opposite the State Opera and right next to the Kärntner Straße.', 'Hotel Sacher Wien', '5', '33'),
('The Schlosshotel Römischer Kaiser is one of Vienna`s most traditional hotels, offering an ideal city center location in a quiet side street of Kärntner Straße.', 'Schlosshotel Römischer Kaiser', '4', '33'),
('Villa Copenhagen has a restaurant, fitness center, a bar and garden in Copenhagen. Featuring a terrace, the 5-star hotel has air-conditioned rooms with free WiFi.', 'Villa Copenhagen', '5', '34'),
('This ultra-modern, stylish hotel is on an artificial island in central Copenhagen, right next to Fisketorvet Shopping Center. Guests can enjoy free Wi-Fi, gym and sauna access.', 'Copenhagen Island Hotel', '4', '34'),
('Set in an impressive white marble building from the 1800s, Anantara Palazzo Naiadi is located in Piazza della Repubblica.', 'Anantara Palazzo Naiadi', '5', '35'),
('Located in Rome, a short walk from Palazzo Venezia, Otivm Hotel features concierge service, a 24-hour desk and free WiFi throughout the property. Guests can also relax on the terrace.', 'Otivm Hotel', '4', '35');