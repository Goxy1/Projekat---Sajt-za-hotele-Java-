-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 04:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(200) NOT NULL,
  `FirstNameAdmin` varchar(200) NOT NULL,
  `LastNameAdmin` varchar(200) NOT NULL,
  `emailAdmin` varchar(200) NOT NULL,
  `passwordAdmin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `FirstNameAdmin`, `LastNameAdmin`, `emailAdmin`, `passwordAdmin`) VALUES
(1, 'Uros', 'Gojak', 'uros@gmail.com', 'uros123');

-- --------------------------------------------------------

--
-- Table structure for table `hoteli`
--

CREATE TABLE `hoteli` (
  `ID` int(200) NOT NULL,
  `HotelName` varchar(255) NOT NULL,
  `HotelLocation` varchar(255) NOT NULL,
  `Rooms` int(255) NOT NULL,
  `TypeOfRoom` varchar(255) NOT NULL,
  `TypeOfRoom2` varchar(250) NOT NULL,
  `putanjaSlike` varchar(500) NOT NULL,
  `hotelDescription` varchar(1000) NOT NULL,
  `hotelText` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoteli`
--

INSERT INTO `hoteli` (`ID`, `HotelName`, `HotelLocation`, `Rooms`, `TypeOfRoom`, `TypeOfRoom2`, `putanjaSlike`, `hotelDescription`, `hotelText`) VALUES
(1, 'Atlantis Paradise Bahamas Hotel', 'Bahamas', 182, 'Deluxe Double Room', 'Deluxe double bedroom', '../img/AtlantisParadiseBahamasHotel.jpeg', 'This iconic tower’s lobby features The Dig and Ruins Lagoon.', 'This iconic tower\'s lobby features The Dig and Ruins Lagoon, a large marine habitat. Located in the Atlantis Paradise Resort and Casino, it offers colorful rooms with a flat-screen TV. French balcony with views of the harbor, ocean, or gardens included in every contemporary Royal Towers Atlantis room. iPod docking station and minibar provided. Room service and Wi-Fi available 24/7. Paradise Island\'s Aquaventure Water Park boasts waterslides, 11 landscaped pools, and rock climbing. Dolphin swims at Dolphin Cay and comedy shows at Jokers Wild also open to guests of Atlantis Royal Towers. 21 restaurants and 19 bars part of the Atlantis Paradise Resort, including Nobu with fine Japanese dining. 10,000-square-foot gym offers yoga and cardio classes. Six tennis courts available, along with racquet rentals and tennis lessons. Couples particularly like the location — rated 8.9 for a two-person trip. The price of 1 night is 800EURO - includes All-inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea, and various activities. With our loyalty discount, the price of 1 night is 700EURO!!! We offer Deluxe double room and Deluxe double bedroom.'),
(2, 'Burj Al Arab Jumeirah Hotel', 'Dubai', 177, 'Deluxe Double Room', 'Deluxe triple room', '../img/BurjAlArabJumeirahHotel.jpg', 'Situated on its own island, Burj Al Arab Jumeirah features suites overlooking the sea.', 'Situated on its own island, Burj Al Arab Jumeirah features suites overlooking the sea, 8 signature restaurants and a full-service spa. Guests may arrive at the property by chauffeur-driven fleets of Rolls-Royce\'s or alternatively by a dedicated helicopter transfer service. The terrace offers two swimming pools, 32 luxury cabanas, a restaurant and a bar.\r\n\r\nFeaturing floor to ceiling windows with panoramic view of the Arabian Gulf, each suite includes a reactor speaker, complimentary Wi-Fi, and widescreen interactive HD TV. Wireless charger and media hub is also available.\r\n\r\nThe Sky View Bar is suspended 200 metres above sea level where guests can enjoy afternoon tea and cocktails. Al Muntaha is the Burj Al Arab\'s signature fine dining restaurant serving contemporary European cuisine.\r\n\r\nTalise Spa has both ladies and gentlemen’s relaxation areas feature an aqua retreat. Facilities include separate indoor infinity pools, hot tub and treatment rooms overlooking the Arabian Gulf complement the spa, along with saunas, steam rooms and plunge pools.\r\n\r\nIt features cabanas, sun loungers, along with views of Burj Al Arab Jumeirah and the Arabian Gulf. The Summersalt Beach Club is exclusive to Jumeirah Al Naseem and Burj Al Arab Jumeirah suite guests. All guests will get access to the Jumeirah Beach Hotel private beach.\r\n\r\nBurj Al Arab Jumeirah offers unlimited access to the water sports activities at Wild Wadi Waterpark™, located just a 5-minute walk across the island bridge. Souk Madinat Jumeirah is a 15-minute walk away.\r\n\r\nCouples particularly like the location — they rated it 9.5 for a two-person trip.\r\n\r\nThe price of the 1 night is 1400EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Deluxe Double Room and Deluxe triple room.\r\n\r\nWith our loyalty discount the price of the 1 night is 1300EURO!!!'),
(3, 'Emirates Palace Mandarin Orienta Abu Dhabi Hotel', 'United Arab Emirates', 170, 'Deluxe Triple room', 'Deluxe double room', '../img/EmiratesPalaceAbuDhabiHotel.jpg', 'Located on the shores of the Arabian Gulf.', 'Located on the shores of the Arabian Gulf, overlooking its own private natural bay, Emirates Palace Mandarin Oriental Abu Dhabi is situated on 1.3 km stretch of private beach. The silver, gold and glass mosaics décor is evocative of Arabia’s rich history of hospitality. This luxury accommodation, with the latest technology and 14 food and beverage outlets to choose from during your stay, offers guests the very best of new and old world charm.\r\n\r\nAll rooms and suites feature luxurious bedding, and well-appointed furnishings. All rooms have spacious marble bathrooms and come equipped with an iPad mini with integrated room controls, interactive HD TV, a choice of over 150 TV channels, complimentary movies, On Demand services and free high speed WiFi. Every room comes with 24-hour butler service.\r\n\r\nThe Pavillion features panoramic sea views and à la carte menus or buffets that serve a selection of Arabic mezze, Middle Eastern and international inspired dishes, as well as Emirati signature dishes from Mezlai.\r\n\r\nEmirates Palace’s diverse range of the world’s finest cuisine in its 14 opulent restaurants offers meals to tempt every gastronome. Diners may experience exquisite seafood at Sayad served with a magnificent view of the Gulf. Diners may dine as the locals do at Mezlai or simply partake in an international smorgasbord at La Vendôme.\r\n\r\nThe hotel has 2 expansive swimming pools, and a spa that offers massages, and a full range of lavish body treatments. The Emirates Palace also has a fitness centre and a kids’ club so enjoyable small guests will beg their parents to stay.\r\n\r\nEmirates Palace Mandarin Oriental Abu Dhabi is 25-minutes’ drive from Abu Dhabi International Airport and the Abu Dhabi National Exhibition Centre. The Palace is few minutes away from high end shopping malls, numerous restaurants and cultural institutions, and Marina Mall and Heritage Village are a mere seven minutes’ drive away.\r\n\r\nCouples particularly like the location — they rated it 9.5 for a two-person trip.\r\n\r\nThe price of the 1 night is 450EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Deluxe Triple room and Deluxe double room.\r\n\r\nWith our loyalty discount the price of the 1 night is 350EURO!!!'),
(4, 'Titanic Mardan Palace Turkey Hotel', 'Türkiye', 155, 'Deluxe Double Room', 'Deluxe triple room', '../img/MardanPalaceTurkeyHotel.jpg', 'Located on a private beach, Titanic Mardan Palace - All Inclusive is in Lara.', 'This resort boasts one of the largest outdoor pools in Europe and 8 à la carte restaurants. Titanic Mardan Palace offers a private beach area and rooms equipped with luxury amenities.\r\n\r\nEach room has a balcony with views of Taurus Mountains, Mediterranean Sea or swimming pool. All rooms feature remote controlled air conditioning and lighting.\r\n\r\nSeparate restaurants are dedicated to international cuisines. The main restaurant serves each meal. The rooftop bar offers views of the resort and the sea.\r\n\r\nThe luxury spa offers therapies, a state-of-art fitness centre and a meditation room overlooking the indoor pool. The beauty therapy centre provides facial and body care.\r\n\r\nThe centre of Antalya is just 15 km away and can be reached in just 20 minutes by car. EXPO 2016 Antalya is 17 km from Titanic Mardan Palace.\r\n\r\nCouples particularly like the location — they rated it 8.9 for a two-person trip.\r\n\r\nThe price of the 1 night is 1000EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Deluxe Double Room and Deluxe triple room.\r\n\r\nWith our loyalty discount the price of the 1 night is 900EURO!!!'),
(5, 'The Palms Las Vegas Hotel', 'Las Vegas', 148, 'Deluxe Triple room', 'Double room', '../img/ThePalmsLasVegasHotel.jpg', 'Palms Place puts you just a 5-minute drive from The Linq and The Cosmopolitan Casino.', 'Located 2 km from The Strip, this boutique Las Vegas resort features a one-of-a-kind art program interwoven throughout the property with works by globally famous artists. Guests can visit the 24-hour casino or dine at a variety of on-site restaurants.\r\n\r\nFeaturing stylish décor, the contemporary guest rooms Palms Casino Resort have a variety of chic amenities. Rooms include flat-screen TVs, fully stocked minibars and more.\r\n\r\nServing dinner, premier steakhouse Scotch 80 Prime features A5 Wagyu beef imported from Kobe, Japan. Offering classic Las Vegas charm, this steakhouse has a dedicated Whisky Program with a focus on rare and vintage marks from top producers in Scotland. Located on the 55th floor in the Ivory Tower, Ghost Bar is an open-air boutique nightclub with panoramic views of Las Vegas. A.Y.C.E. Buffet offers a variety of cuisine for breakfast, lunch and dinner.\r\n\r\nThe gaming floor at Palms Casino Resort boasts more than 1,100 video poker and slot machines. The VIP Lounge includes a fine art collection.\r\n\r\nGuests can relax and rejuvenate at Drift Spa which offers over 20 treatment rooms and an extensive list of services.\r\n\r\nThe on-site Pearl Concert Theater, a 2500 seat entertainment venue, hosts concerts and events by major international artists and performers.\r\n\r\nThe Mob Museum is 13 minutes’ drive away from Palms Casino Resort. McCarran International Airport is 8 km away.\r\n\r\nCouples particularly like the location — they rated it 8.1 for a two-person trip.\r\n\r\n\r\nThe price of the 1 night is 300EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Deluxe Triple room and Double room.\r\n\r\nWith our loyalty discount the price of the 1 night is 200EURO!!!'),
(6, 'The Plaza New York Hotel', 'New York', 159, 'Penthouse', 'Deluxe triple room', '../img/ThePlazaNewYorkHotell.jpg', 'The Plaza Hotel is located in Manhattan, a neighborhood in New York.Services are all-inclusive.', 'Located next to Central Park and 5th Avenue, this internationally renowned Manhattan hotel is a step away from famous shops such as Bergdorf Goodman, Louis Vuitton, Chanel, and Saks Fifth Avenue.\r\n\r\nThe luxurious and spacious rooms at The Plaza offer the latest technology of in-room iPads and boast modern bathrooms with 24-karat gold platted fixtures and separate rain showers.\r\n\r\nThe Plaza Hotel offers world class restaurants and bars such as The Palm Court which is one of New York City\'s finest destinations for Afternoon Tea.\r\n\r\nAmenities at The Plaza include the world-class Shops at The Plaza, featuring exclusive boutiques and health and wellness facilities including a Guerlain Spa, Warren-Tricomi Salon, and a gym by La Palestra.\r\n\r\nThis is our guests\' favourite part of New York, according to independent reviews.\r\n\r\nCouples particularly like the location — they rated it 9.7 for a two-person trip.\r\n\r\nHotel chain/brand:\r\n\r\nFairmont Hotels & Resorts\r\n\r\nThe price of the 1 night is 900EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Penthouse and Deluxe triple room.\r\n\r\nWith our loyalty discount the price of the 1 night is 800EURO!!!'),
(7, 'Westin Excelsior Rome Hotel', 'Italy', 140, 'Triple bedrooms', 'Deluxe double room', '../img/WestinExcelsiorRomeHotel.jpg', 'The Westin Excelsior, Rome is in fashionable Via Veneto.', 'The Westin Excelsior, Rome is in fashionable Via Veneto, 500 metres from Spagna Metro Station. It features luxurious decor with antique furniture and crystal chandeliers.\r\n\r\nWith refined furniture and custom fabrics, the elegant rooms include a flat-screen TV with both satellite and pay-per-view channels. Some overlook Via Veneto. Their marble bathroom offers bathrobe and slippers.\r\n\r\nThe hotel includes a 300 m² wellness centre with a hot tub, a gym and an indoor swimming pool.\r\n\r\nGuests can enjoy drinks and snacks at the stylish lounge bars. Specialising in Mediterranean cuisine, the Doney Restaurant provides a chic indoor setting along Via Veneto.\r\n\r\nSurrounded by cafés, shops and restaurants, the Westin Excelsior is a 5-minute walk from Villa Borghese and Piazza Barberini. Public transport links connect it to Rome’s main attractions.\r\n\r\nThis is our guests\' favourite part of Rome, according to independent reviews.\r\n\r\nCouples particularly like the location — they rated it 9.1 for a two-person trip.\r\n\r\nHotel chain/brand:\r\n\r\nWestin\r\n\r\nThe price of the 1 night is 900EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Triple bedrooms and Deluxe double room.\r\n\r\nWith our loyalty discount the price of the 1 night is 800EURO!!!'),
(8, 'Jade Mountain Resort St Lucia Hotel', 'Saint Lucia', 153, 'Deluxe Triple room', 'Double room', '../img/JadeMountainResortStLucia.jpg', 'At Jade Mountain Resort, you\'ll have a lot of fun.', 'Jade Mountain offers accommodation in Soufrière.\r\n\r\nCertain rooms include views of the sea or mountain. Extras include bathrobes and slippers.\r\n\r\nThe nearest airport is St Lucia Hewanorra Airport, 16 km from the property.\r\n\r\nCouples particularly like the location — they rated it 10 for a two-person trip.\r\n\r\nThe price of the 1 night is 2000EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Deluxe Triple room and Double room.\r\n\r\nWith our loyalty discount the price of the 1 night is 1900EURO!!!'),
(9, 'Hotel President Wilson,a Luxury Collection Hotel', 'Switzerland', 152, 'Tripleroom', 'Deluxe triple room', '../img/TheRoyalPenthouseHotelPresidentWilson.jpg', 'This elegant 5-star hotel is located on Geneva’s waterfront promenade.', 'This elegant 5-star hotel is located on Geneva’s waterfront promenade, offering spectacular views of Lake Geneva, Mont Blanc and the Alps. It features a luxurious spa and an outdoor pool.\r\n\r\nAll rooms at Hotel President Wilson are air-conditioned and feature state-of-the-art technology, Hermès bathroom amenities, and a flat-screen B&O TV. Free high-speed WiFi (up to 200 MB) is available throughout the Hotel.\r\n\r\nDining options include the seasonal Japanese restaurant Umami, run by the famous chef Michel Roth and open between June and September, the Bayview Restaurant by Michel Roth which was awarded its first Michelin star in 2014 and received 18 out of 20 points at the Gault-Millau guide in 2016, and the Lebanese restaurant Arabesque.\r\n\r\nThe President Wilson\'s 2 elegant bars include the Glow bar lounge and the So bar and during summer, you can also enjoy a cocktail at the Pool bar by the heated outdoor swimming pool (open from May to September).\r\n\r\nUnique in Switzerland, the exclusive Spa La Mer offers La Mer high-quality treatments, including the popular \"Crème\". The spa also features a sauna, a hot tub, and a steam bath. A fitness centre equipped with Technogym products is open 24 hours a day and can be used free of charge.\r\n\r\nA 5-minute walk away, a small boat is available free of charge to take guests to the shopping area and the Old Town.\r\n\r\nCornavin Train Station is a 5-minute drive from the President Wilson Hotel. A bus stop is right in front. Geneva’s public transport network can be used free of charge by guests. The international organisations and many banks and boutiques are only steps away.\r\n\r\nThis is our guests\' favourite part of Geneva, according to independent reviews.\r\n\r\nCouples particularly like the location — they rated it 9.1 for a two-person trip.\r\n\r\nHotel chain/brand:\r\n\r\nLuxury Collection\r\n\r\nThe price of the 1 night is 850EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.\r\n\r\nWe offer Tripleroom and Deluxe triple room.\r\n\r\nWith our loyalty discount the price of the 1 night is 750EURO!!!');

-- --------------------------------------------------------

--
-- Table structure for table `hotelislike`
--

CREATE TABLE `hotelislike` (
  `ID` int(11) NOT NULL,
  `outsidePicture` varchar(1000) NOT NULL,
  `outsidePicture2` varchar(1000) NOT NULL,
  `insidePicture` varchar(1000) NOT NULL,
  `insidePicture2` varchar(1000) NOT NULL,
  `HotelRoom` varchar(1000) NOT NULL,
  `HotelRoom2` varchar(1000) NOT NULL,
  `hotelName` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelislike`
--

INSERT INTO `hotelislike` (`ID`, `outsidePicture`, `outsidePicture2`, `insidePicture`, `insidePicture2`, `HotelRoom`, `HotelRoom2`, `hotelName`) VALUES
(1, '../img/AtlantisSpolja.jpg', '../img/AtlantisSpoljaDrugaSlika.jpg', '../img/AtlantisIznutra.jpg', '../img/AtlantisIznutra2.jpg', '../img/AtlantisSoba1.jpg', '../img/AtlantisSoba2.jpg', 'Atlantis Paradise Bahamas Hotel'),
(2, '../img/BurjAlArabSpolja2.jpg', '../img/BurjAlArabSpolja.jpg', '../img/BurjAlArabIznutra.jpg', '../img/BurjAlArabIznutra2.jpg', '../img/BurjAlArabDeluxeMarinaSoba.jpg', '../img/BurjAlArabPanoramicSuiteSoba.jpg', 'Burj Al Arab Jumeirah Hotel'),
(3, '../img/EmiratesPalaceMandarinOrientalAbuDhabiSpolja.jpg', '../img/EmiratesPalaceMandarinOrientalAbuDhabiSpolja2.jpg', '../img/EmiratesPalaceMandarinOrientalAbuDhabiIznutra.jpg', '../img/EmiratesPalaceMandarinOrientalAbuDhabiIznutra2.jpg', '../img/EmiratesPalaceMandarinOrientalAbuDhabiSoba.jpg', '../img/EmiratesPalaceMandarinOrientalAbuDhabiSoba2.jpg', 'Emirates Palace Mandarin Orienta Abu Dhabi Hotel'),
(4, '../img/TitanicMardanPalaceSpolja.jpg', '../img/TitanicMardanPalaceSpolja2.jpg', '../img/TitanicMardanPalaceIznutra.jpg', '../img/TitanicMardanPalaceIznutra2.jpg', '../img/TitanicMardanPalaceSoba.jpg', '../img/TitanicMardanPalaceSoba2.jpg', 'Titanic Mardan Palace Turkey Hotel'),
(5, '../img/PalmsCasinoHotelSpolja.jpg', '../img/PalmsCasinoHotelSpolja2.jpg', '../img/PalmsCasinoHotelIznutra.jpg', '../img/PalmsCasinoHotelIznutra2.jpg', '../img/PalmsCasinoHotelSoba1.jpg', '../img/PalmsCasinoHotelSoba2.jpg', 'The Palms Las Vegas Hotel'),
(6, '../img/ThePlazNewYorkSpolja.jpg', '../img/ThePlazNewYorkSpolja2.jpg', '../img/ThePlazNewYorkUnutra.jpg', '../img/ThePlazNewYorkUnutra2.jpg', '../img/ThePlazNewYorkSoba.jpg', '../img/ThePlazNewYorkSoba2.jpg', 'The Plaza New York Hotel'),
(7, '../img/TheWestinExcelsiorRomeHotelSpolja.jpg', '../img/TheWestinExcelsiorRomeHotelSpolja2.jpg', '../img/TheWestinExcelsiorRomeHotelIznutra.jpg', '../img/TheWestinExcelsiorRomeHotelIznutra2.jpg', '../img/TheWestinExcelsiorRomeHotelSoba.jpg', '../img/TheWestinExcelsiorRomeHotelSoba2.jpg', 'Westin Excelsior Rome Hotel'),
(8, '../img/JadeMountainHotelSpolja.jpg', '../img/JadeMountainHotelSpolja2.jpg', '../img/JadeMountainHotelIznutra.jpg', '../img/JadeMountainHotelIznutra2.jpg', '../img/JadeMountainHotelSoba.jpg', '../img/JadeMountainHotelSoba2.jpg', 'Jade Mountain Resort St Lucia Hotel'),
(9, '../img/PresidentWilsonGenevaHotelSpolja.jpg', '../img/PresidentWilsonGenevaHotelSpolja2.jpg', '../img/PresidentWilsonGenevaHotelIznutra.jpg', '../img/PresidentWilsonGenevaHotelIznutra2.jpg', '../img/PresidentWilsonGenevaHotelSoba.jpg', '../img/PresidentWilsonGenevaHotelSoba2.jpg', 'Hotel President Wilson,a Luxury Collection Hotel'),
(14, '../img/spoljaDesBains.jpg', '../img/spoljaDesBains2.jpg', '../img/iznutraDesBains.jpg', '../img/iznutraDesBains2.jpg', '../img/sobaDesBains.jpg', '..img/sobaDesBains2.jpg', 'Grand Hotel Des Bains');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `ID` int(100) NOT NULL,
  `FirstNameUser` varchar(100) NOT NULL,
  `LastNameUser` varchar(200) NOT NULL,
  `emailAddressUser` varchar(100) NOT NULL,
  `CountryUser` varchar(200) NOT NULL,
  `AddressUser` varchar(250) NOT NULL,
  `passwordUser` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Poeni` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`ID`, `FirstNameUser`, `LastNameUser`, `emailAddressUser`, `CountryUser`, `AddressUser`, `passwordUser`, `CreationDate`, `Poeni`) VALUES
(1, 'Mihajlo', 'Madzarevic', 'mihajlo@gmail.com', 'Serbia', 'Milosa Obilica', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '2023-05-30 11:39:17', 0),
(4, 'Marko', 'Gojak', 'marko@gmail.com', 'Litvanijia', 'Adresa123', '*E50A130DF96C26541BA919E4D0C157BF4FEC838B', '2023-05-30 11:58:47', 0),
(5, 'Vasilije', 'Pavlovic', 'vasilije@gmail.com', 'Serbia', 'Koste Trifkovica', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '2023-05-30 12:00:51', 0),
(6, 'Proba', 'Proba', 'proba@gmail.com', 'proba', 'proba', '*D9FB264D42F935578D7C50EB6C04ACDAE3949774', '2023-06-22 13:45:02', 0),
(7, 'Milan', 'Milan', 'milan1@gmail.com', 'Serbia', 'milan', '*C22B2BC132595BD0ED24370BA773B0F1502FEF55', '2023-06-21 19:57:18', 10),
(9, 'profil', 'profil', 'profil@gmail.com', 'profil', 'profil', '*6608633893408C2C5AF1EC32AD7E69AC8F7C2F9A', '2023-06-11 10:18:18', 0),
(12, 'Matija', 'Djordjevic', 'matija@gmail.com', 'Serbia', 'Adresa321', '*05FED4AD853663614AC78E3BB26A6291A1F3DC4E', '2023-06-12 17:22:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menadzer`
--

CREATE TABLE `menadzer` (
  `ID` int(100) NOT NULL,
  `FirstNameManager` varchar(200) NOT NULL,
  `LastNameManager` varchar(200) NOT NULL,
  `emailManager` varchar(200) NOT NULL,
  `passwordManager` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menadzer`
--

INSERT INTO `menadzer` (`ID`, `FirstNameManager`, `LastNameManager`, `emailManager`, `passwordManager`) VALUES
(1, 'Milan', 'Milanovic', 'milan@gmail.com', 'milan123');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacije`
--

CREATE TABLE `rezervacije` (
  `ID` int(200) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `Surname` varchar(200) NOT NULL,
  `DateOfBirth` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `CheckInDate` varchar(200) NOT NULL,
  `CheckOutDate` varchar(200) NOT NULL,
  `TypeOfRoom` varchar(200) NOT NULL,
  `HotelName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezervacije`
--

INSERT INTO `rezervacije` (`ID`, `FirstName`, `Surname`, `DateOfBirth`, `Email`, `CheckInDate`, `CheckOutDate`, `TypeOfRoom`, `HotelName`) VALUES
(6, 'Mihajlo', 'Madzarevic', '2001-02-14', 'mihajlo@gmail.com', '2023-06-13', '2023-06-28', 'DoubleRoom', 'Burj Al Arab Jumeirah Hotel'),
(9, 'Proba', 'Proba', '2023-06-01', 'matija@gmail.com', '2023-06-14', '2023-06-27', 'DoubleRoom', 'Atlantis Paradise Bahamas Hotel'),
(13, 'Proba', 'Proba', '2023-06-08', 'proba@gmail.com', '2023-06-17', '2023-07-07', 'Single', 'Burj Al Arab Jumeirah Hotel'),
(14, 'Proba', 'Proba', '2023-05-31', 'proba@gmail.com', '2023-06-27', '2023-07-05', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(15, 'Proba', 'Proba', '2023-05-28', 'proba@gmail.com', '2023-06-20', '2023-07-04', 'Single', 'Emirates Palace Mandarin Orienta Abu Dhabi Hotel'),
(20, 'Proba', 'Proba', '2023-06-21', 'proba@gmail.com', '2023-06-28', '2023-06-26', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(21, 'Proba', 'Proba', '2023-06-21', 'proba@gmail.com', '2023-07-03', '2023-07-08', 'Single', 'Emirates Palace Mandarin Orienta Abu Dhabi Hotel'),
(26, 'Matija', 'Djordjevic', '2023-05-29', 'matija@gmail.com', '2023-06-14', '2023-06-27', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(27, 'Matija', 'Djordjevic', '2023-05-29', 'matija@gmail.com', '2023-06-16', '2023-06-29', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(28, 'Matija', 'Djordjevic', '2023-05-28', 'matija@gmail.com', '2023-06-14', '2023-06-27', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(29, 'Matija', 'Djordjevic', '2023-05-29', 'matija@gmail.com', '2023-06-14', '2023-06-20', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(30, 'Matija', 'Djordjevic', '2023-05-28', 'matija@gmail.com', '2023-06-14', '2023-06-29', 'Single', 'Atlantis Paradise Bahamas Hotel'),
(34, 'Proba', 'Proba', '2023-05-28', 'matija@gmail.com', '2023-07-06', '2023-07-08', 'Single', 'Burj Al Arab Jumeirah Hotel'),
(35, 'Matija', 'Djordjevic', '2023-05-28', 'matija@gmail.com', '2023-06-14', '2023-06-27', 'Single', 'Emirates Palace Mandarin Orienta Abu Dhabi Hotel'),
(49, 'Proba', 'Proba', '2023-05-29', 'proba@gmail.com', '2023-06-30', '2023-07-08', 'Deluxe double room', 'Hotel President Wilson,a Luxury Collection Hotel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hoteli`
--
ALTER TABLE `hoteli`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hotelislike`
--
ALTER TABLE `hotelislike`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menadzer`
--
ALTER TABLE `menadzer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rezervacije`
--
ALTER TABLE `rezervacije`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hoteli`
--
ALTER TABLE `hoteli`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hotelislike`
--
ALTER TABLE `hotelislike`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menadzer`
--
ALTER TABLE `menadzer`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rezervacije`
--
ALTER TABLE `rezervacije`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
