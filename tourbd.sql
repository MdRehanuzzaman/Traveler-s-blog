-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 01:36 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article` longtext NOT NULL,
  `tour_location_id` int(11) NOT NULL,
  `verification` longtext NOT NULL,
  `topic` longtext NOT NULL,
  `type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `user_id`, `article`, `tour_location_id`, `verification`, `topic`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 'চট্টগ্রাম থেকে ৯২ কিলোমিটার দক্ষিণ পূর্বে পাহাড়ী শহর বান্দরবান। বান্দরবান জেলা হচ্ছে চট্টগ্রাম বিভাগে। এর আয়তন ৪৪৭৯ বর্গ কিলোমিটার। প্রাকৃতিক সৌর্ন্দয্যের অবারিত সবুজের সমারোহ এবং মেঘে ছুঁয়ে দেখার ইচ্ছে যার আছে সে বাংলাদেশের পাহাড়ী কন্যা বান্দরবান ঘুরে আসতে পারেন। চলুন জেনে নেই বিস্তারিত।\r\n\r\n\r\n\r\nHilly city Bandarban is located in 92 km South-East of Chittagong city. It\'s area nearly 4479 square km. To touch the cloud and see the lash green natural beauty you must go to Hilly daughter of Bangladesh, Bandarban. Here is the Details:\r\n\r\n\r\n\r\nদেখার মত জায়গাঃ [Attractive Locations]\r\n\r\n১। নীলগিরি (Nilgiri)\r\n\r\n২। স্বর্ণমন্দির (Golden Temple)\r\n\r\n৩। মেঘলা (Meghla)\r\n\r\n৪। শৈল প্রপাত (Shoilo Falls)\r\n\r\n৫। নীলাচল (Nilachol)\r\n\r\n৬। মিলনছড়ি (Milonchori)\r\n\r\n৭। চিম্বুক (Chimbuk Hill)\r\n\r\n৮। সাঙ্গু নদী (Sangu River)\r\n\r\n৯। তাজিলডং (Tajindong Hill)\r\n\r\n১০। কেওক্রাডং (Keokaradang Hill)\r\n\r\n১১। জাদিপাই ঝরণা (Jadipai Falls)\r\n\r\n১২। বগালেক (Boga Lake)\r\n\r\n১৩। মিরিঞ্জা পর্যটন কমপ্লেক্স (Mirinja Tourist Complex)\r\n\r\n১৪। প্রান্তিক লেক (Prantik Lake)\r\n\r\n১৫। ঋজুক জলপ্রপাত (Rujuk Falls)\r\n\r\n১৬। নাফাখুম জলপ্রপাত (Nafakhum Falls)\r\n\r\nএছাড়া বান্দরবানে কয়েকটি ঝিরি রয়েছে। যেমনঃ চিংড়ি ঝিরি, পাতাং ঝিরি, রুমানাপাড়া ঝিরি।\r\n\r\nThere are few more Hilly water Flows (Jhiri), named: Chingri Jhiri, Patang Jhiri, Rumanapara Jhiri etc.\r\n\r\n\r\n\r\nযাতায়াতঃ\r\n\r\nঢাকা থেকে ট্রেনে বা বাসে প্রথমে চট্টগ্রাম তারপর চট্টগ্রাম থেকে সোজা বান্দরবান; অথবা ডাইরেক্ট বান্দরবান যাওয়া যায়।\r\n\r\n\r\n\r\nঢাকা থেকে বান্দরবান সরাসরিঃ\r\n\r\nঢাকা থেকে বান্দরবান পযর্ন্ত ডাইরেক্ট নন এসি ভাড়া জনপ্রতিঃ ৪৮০ টাকা। (অক্টোবর, ২০১১)\r\n\r\nএস আলম ছাড়ে কমলাপুর রেল ষ্টেশনের বিপরীত কাউন্টার থেকে।\r\n\r\n\r\n\r\nঢাকা থেকে চট্টগ্রামঃ\r\n\r\nট্রেনে: এসি- ৩৬৫-৪৮০ টাকা। নন এসি-১৫০-১৬৫ টাকা।\r\n\r\nবাসে: এসি- ৫৮০-৭৯০ টাকা। নন এসি ২৫০-৩৫০ টাকা।\r\n\r\n\r\n\r\nচট্টগ্রাম থেকে বান্দরবানঃ বহদ্দারহাট টার্মিনাল থেকে পূরবী এবং পূর্বাণী নামক দুটি ডাইরেক্ট নন এসি বাস আছে।\r\n\r\n৩০ মিঃ পর পর বান্দরবানের উদ্দ্যেশে ছেড়ে যায়। ভাড়া জনপ্রতিঃ ৭০-৮০ টাকা।\r\n\r\nবিঃ দ্রঃ এখানে উল্লেখ্য ভাড়া সমূহ ৪/৫ মাস আগের (জুন, ২০১১)।\r\n\r\n\r\n\r\nTransportation:\r\n\r\nYou can go directly to Bandarban, or firstly Chittagong & then Bandarban.\r\n\r\nDhaka to Bandarban Directly:\r\n\r\nNon-AC bus 480tk, Buses available in Fakirapul/ Saydabad of Dhaka city.\r\n\r\n\r\n\r\nDhaka to Chittagong to Bandarban:\r\n\r\nDhaka to Chittagong: Tran> AC 365-480tk, Non-AC 150-165tk\r\n\r\nBus> AC 580-790tk, Non-AC 250-350tk\r\n\r\nChittagong to Bandarban: Purobi & Purbani Bus are available from Boddarhat Bus Terminal of Chittagong city. Fare 70-80tk.\r\n\r\n\r\n\r\nকোথায় থাকবেন:\r\n\r\n\r\n\r\nহোটেল ফোর স্টার : (বান্দরবান সদর) Hotel Four Star (Banndarban City)\r\n\r\nসিঙ্গেল ৩০০ টাকা, ডাবল- ৬০০, ট্রিপল ৯০০ টাকা, এসি ডাবল- ১২০০ টাকা।, এসি ট্রিপল ১৫০০ টাকা।\r\n\r\nSingle 300tk, Double 600tk, Triple 900tk, AC Double 1200tk, AC Triple 1500tk\r\n\r\nPhone: 0361-63566, 0361-62466, 01813278731, 01553421089\r\n\r\n\r\n\r\nহোটেল থ্রী স্টার : এটি বান্দরবান বাস স্টপের পাশে অবস্থিত। নীলগিরির গাড়ী এই হোটেলের সামনে থেকে ছাড়া হয়। এটি ৮/১০ জন থাকতে পারে ৪ বেডের এমন একটি ফ্ল্যাট। প্রতি নন এসি ফ্ল্যাট-২৫০০ টাকা, এসি-৩০০০ টাকা। বুকিং ফোন: থ্রী স্টার এবং ফোর ষ্টার হোটেল মালিক একজন, মানিক চৌধুরী-০১৫৫৩৪২১০৮৯।\r\n\r\nHotel Three Star: situated beside Bandarban Bus Stop. Non-AC Flat 2500tk, AC Flat 300tk. For Booking: Manik Chowdhuri 01553421089\r\n\r\n\r\n\r\nহোটেল প্লাজা বান্দরবান: (সদর) Hotel Plaza Bandarban\r\n\r\nSingle 400tk, Double 850tk, AC 1200tk.\r\n\r\nBooking Phone: 0361-63252\r\n\r\n\r\n\r\nহোটেল গ্রিন হিলঃ (বান্দরবান সদর) Hotel Green Hill\r\n\r\nSingle 200tk, Double 350tk, Triple 500tk\r\n\r\nPhone: 0361-62514, Cell: 01820400877\r\n\r\n\r\n\r\nহোটেল হিল বার্ড (বান্দরবান সদর) Hotel Hill Bird\r\n\r\nSingle 250tk, Double 400tk, Triple 550tk\r\n\r\nPhone: 0361-62441, Cell: 01823346382\r\n\r\n\r\n\r\nহোটেল পূরবীঃ (বান্দরবান সদর) Hotel Purobi\r\n\r\nAC Deluxe 1400tk, AC Room 1200tk, General Single 259tk,\r\n\r\nGeneral Double 460tk, General Triple 600tk, General Couple 400tk\r\n\r\nPhone: 0361-62531, Cell: 0155 6742434\r\n\r\n\r\n\r\n\r\n\r\nনীলগিরি [Nilgiri]\r\n\r\n\r\n\r\n\r\n\r\nনীলগিরি বাংলাদেশের সর্বোচ্চ পর্যটন কেন্দ্র। এ পর্যটন কেন্দ্রের উচ্চতা প্রায় ৩ হাজার ফুট। এটি বান্দরবান জেলার থানছি উপজেলায় অবস্থিত। বান্দরবান জেলা সদর থেকে ৪৫ কিলোমিটার দক্ষিণ পূর্ব দিকে অবস্থিত এই পর্যটন কেনেদ্রর অবস্থান। এ পর্বতের পাশেই রয়েছে বাংলাদেশের সবচেয়ে অবহেলিত উপজাতী সম্প্রদায় ম্রো পল্লী। যাদের বিচিত্র সংস্কৃতি দেখার মত। বর্ষা মৌসুমে নীলগিরি পর্যটন কেন্দ্রথেকে মেঘ ছোয়ার দূর্লভ সুযোগ রয়েছে। শুষ্ক মৌসুমে নীলগিরি থেকে সূর্যদয় ও সূর্যাস্ত দেখা যায়। বান্দরবানের সবচেয়ে সুন্দর ও আধুনিক পর্যটন কেন্দ্র এটি। এটি সেনা তত্ত্বাবধানে পরিচালিত হয়। এর পাশেই রয়েছে একটি সেনা ক্যাম্প। নিরিবিলিতে স্বপরিবারে কয়েক দিন কাটাতে এটি একটি আর্দশ জায়গা।\r\n\r\n\r\n\r\nNilgiri is the highest tourist spot of Bangladesh with nearly 3000feet. It is situated in Dhanchi Upazila of Bandarban District. It is located in 45km South-East of Bandarban city. Tribal group \'Mro\' lived there with a colorful culture. You can touch cloud from here in Rainy season. Both sunset and sun rise can be seen from here in Dry season. It is the most beautiful and modern tourist spot of Bandarban. It is managed by Bangladesh Army. It is ideal place for you to spend few of you days.\r\n\r\n\r\n\r\nযাতায়াতঃ\r\n\r\nপর্যটকদের নীলগিরি যেতে হলে বান্দরবান জেলা সদরের রুমা জীপষ্টেশন থেকে থানছিগামী জীপ অথবা বাসে করে নীলগিরি পর্যটন কেনেদ্র যাওয়া যায়। বান্দরবনা জীপ ষ্টেশন থেকে জীপ, ল্যান্ড রোভার, ল্যান্ড ক্রুজারসহ অন্যান্য হালকা গাড়ী ভাড়ায় পাওয়া যায়। নীলগিরি যাওয়ার পথে সেনা চেকপোষ্টে পর্যটকদের নাম ও ঠিকানা লিপিবদ্ধ করতে হবে। বান্দরবান জেলা সদর থেকে সাধারণত বিকেল ৫ টার পর নীলগিরির উদ্দেশে কোন গাড়ী যেতে দেয়া হয় না।\r\n\r\nভাড়াঃ সেনাবাহিনী কর্তৃক নির্ধারিত আসা-যাওয়া-ছোট জীপঃ (৫সিট) ২৩০০ টাকা এবং বড় জীপ (৮সিট) ২৮০০ টাকা।\r\n\r\n\r\n\r\nTransportation:\r\n\r\nJeep and Bus are available in Ruma Jeep station towards Thanchi. Jeep, Land Rover, Land Cruser etc are available in Bandarban Jeep station. Army check-post collects detail information of the tourists. Transportation are not available towards Thanchi after 5pm. Small Jeep (5 seat) 2300tk and Large Jeep (8 seat) 2800tk.\r\n\r\n\r\n\r\nনীলগিরি পর্যটন কেন্দ্র বান্দরবান জেলা সদর থেকে দিনে গিয়ে দিনে ফিরে আসা যায়। এ ছাড়া নীলগিরি পর্যটন কেন্দ্র রাত্রি যাপনের জন্য বান্দরবান সদর সেনা রিজিয়নে বুকিং দেয়া যায়। তাছাড়া নীলগিরি পর্যটনে গিয়ে সরাসরি বুকিং করা যায়। বান্দরবান জেলা সদর থেকে নীলগিরি পর্যটন কেন্দ্রের যোগাযোগ ব্যবস্থা উন্নত হওয়ায় অধিকাংশ পর্যটক দিনে গিয়ে দিনেই ফিরে আসেন।\r\n\r\n\r\n\r\nYou can complete Nilgiri travel in one day from Bandarban. Moreover, you can book Nilgiti Tourist Center for Night hold. Booking can be made in Army region or directly to the Tourist center. But most of the tourist use one day, because transportation system is well developed.\r\n\r\n\r\n\r\nসাধারন পর্যটকের জন্য নীলগিরি কর্টেজ বুকিং ব্যবস্থাঃ\r\n\r\nপেট্রো এভিয়েশন\r\n\r\n৬৯/২, লেভেল-৪,রোড-৭/এ, ধানমন্ডি, ঢাকা।\r\n\r\nফোন:-মনতোষ মজুমদারঃ ০১৭৩০০৪৩৬০৩ এবং হাসান সাহেদঃ ০১৭৩০০৪৩৬০৩।\r\n\r\n\r\n\r\nYou can book cotage from Dhaka:\r\n\r\nPetro Aviation\r\n\r\n69/2, Level 4, Road 7/A, Dhanmandi, Dhaka.\r\n\r\nPhone: 01730043603\r\n\r\n\r\n\r\nকটেজ ভাড়া: Cotage Fare\r\n\r\nগিরি মারমেট: ৭৫০০ টাকা। (৮/১০ জন থাকতে পারবে)। Giri Mermaid 7500tk (8/10 persons)\r\n\r\nমেঘদূত: ৬৫০০ টাকা। (৮/১০ জন থাকতে পারবে)। Meghdut 6500 (8/10 persons)\r\n\r\nনীলাঙ্গনা: ৫৫০০ টাকা। (৪/৬ জন থাকতে পারবে ২ রুমে) কাপলরা ২৭৫০টাকায় ১ রুম ভাড়া পাবেন। Nilangona 5500tk (4/6 persons). Couples can get a room for 2750tk.\r\n\r\n\r\n\r\n\r\n\r\nস্বর্ণমন্দির [Golden Temple]\r\n\r\n\r\n\r\n\r\n\r\nবান্দরবানের উপশহর বালাঘাটাস্থ পুল পাড়া নামক স্থানে এর অবস্থান। বান্দরবান জেলা সদর থেকে এর দূরত্ব ৪ কিলোমিটার। সুউচ্চ পাহাড়ের চুড়ার তৈরী সুদৃশ্য এ প্যাগোডা। এটি বুদ্ধ ধর্মালম্বীদের একটি পবিত্র তীর্থস্থান । এখানে দেশ বিদেশ থেকে অনেক বুদ্ধ ধর্মালম্বী দেখতে এবং প্রার্থনা করতে আসেন। এর অপর নাম মহাসুখ প্রার্থনা পূরক বুদ্ধধাতু চেতী। গৌতমবুদ্ধের সম-সাময়িক কালে নির্মিত বিশ্বের সেরা কয়েকটি বুদ্ধ মুর্তির মধ্যে একটি এখানে রয়েছে। প্রায় ১০ কোটি টাকা ব্যয়ে এ প্রকল্প নির্মানাধীন রয়েছে। এই প্যাগোডাটি দক্ষিন পূর্ব এশিয়ার সেরা গুলোর মধ্যে অন্যতম। এই সুউচ্চপাহাড়ের উপর দেবতা পুকুর নামে একটি পানি সম্বলিত ছোট পুকুর আছে।\r\n\r\n\r\n\r\nএই প্যাগোডা থেকে বান্দরবানের বালাঘাটা উপশহর ও এর আশপাশের সুন্দর নৈস্বর্গিকদৃশ্য দেখা যায়। এ ছাড়া বান্দরবান রেডিও ষ্টেশন, বান্দরবান চন্দ্রঘোনা যাওয়ার আকাঁবাকাঁ পথ ও দর্শনীয়। এই প্যাগোডা একটি আধুনিক ধর্মীয় স্থাপত্যের নিদর্শন। প্রতিবছর নিদ্দিষ্ট সময়ে এখানে মেলা বসে। এই প্যাগোডা বা জাদীটি স্বর্ণ মন্দির হিসেবেও পরিচিত। এ প্যাগোডাটি পুজারীদের জন্য সারাদিন খোলা থাকে আর ভিন্ন ধর্মাবলী দর্শনার্থীদের জন্য বিকেল ৫ টা থেকে সন্ধ্যা ৭ টা পর্যন্ত খুলে দেওয়া হয় । প্রবেশ মূল্য জনপ্রতি ১০/-।\r\n\r\n\r\n\r\nA Buddhist Pagoda/temple, situated in the hill top of Balaghat, 4km away from Bandarban city. It is considered as one of the best Pagoda South-East Asia. There is a small pond over the hill, named Debota pond. Balaghat suburb and the surroundings can be seen from the hilltop. It is a sign of a modern religious structure. It is open for the tourist from 5pm to 7pm with 10tk entrance fee.\r\n\r\n\r\n\r\nরিক্সা অথবা টেক্সি করে যাওয়া যায় । রিক্সা ৩০-৩৫ টাকা এবং টেক্সি রিজার্ভ ১১০-১৩০ টাকা পর্যন্ত নিয়ে থাকে। সকাল ৮টা থেকে রাত ১০ পর্যন্ত এখানে গাড়ী চলাচল করে। ফোনঃ ০৩৬১৬২৬৯৫\r\n\r\n\r\n\r\nYou can go to Golden Temple by Rickshaw (30-35tk) and Texi (110-130tk). Available from 8am to 10pm.\r\n\r\n\r\n\r\n\r\n\r\nমেঘলা পর্যটন কেন্দ্র [Meghla Tourist Spot]\r\n\r\n\r\n\r\n\r\n\r\nবান্দরবান শহরের প্রবেশদ্বার বান্দরবান কেরাণীহাট সড়কের পাশেই পার্বত্য জেলা পরিষদ সংলগ্ন এলাকায় মেঘলা পর্যটন কমপ্লেক্স অবস্থিত। পাহাড়ের খাদে বাধঁ নির্মান করে কৃত্রিম হ্রদের সৃষ্টি করা হয়েছে । বান্দরবান শহর থেকে এর দূরত্ব ৪ কিলোমিটার। বেড়াতে আসা পর্যটকদের চিত্ত বিনোদনের জন্য এখানে রয়েছে শিশুপার্ক, নৌকা ভ্রমনের সুবিধা, ঝুলন্ত সেতুর মাধ্যমে চলাচলের ব্যবস্থা এবং সাময়িক অবস্থানের জন্য একটি রেষ্টহাউস। এছাড়া আকর্ষণীয় একটি চিড়িয়াখানা এ কমপ্লেক্সের সৌন্দর্য বৃদ্ধি করেছে বহুগুন। মেঘলায় ২টি ঝুলন্ত ব্রিজ রয়েছে। জনপ্রতি ১০/- মূল্যে টিকেট নিয়ে প্রবেশ করতে হবে। বান্দরবান জেলা প্রশাসনের সার্বিক তত্ত্বাবধানে এটি পরিচালিত হয়। প্রতি বছর শীতের মৌসুমে সারা দেশ থেকে অসংখ্য পর্যটক বেড়াতে আসেন। নিরিবিলিতে স্বপরিবারে বেড়ানোর জন্য একটি আদর্শ জায়গা ।\r\n\r\n\r\n\r\nMeghla Tourist Complex is situated in Hilly District Parishad area, beside Bandarban to Keranihat Road, which is 4km away from Bandarban city. Artificial lake is created by making dam in hill shaft. Children\'s park, Boat riding, hanging bridge and rest house are available here. Moreover, there is a zoo in this tourist complex. It is an ideal place for family tour. It is managed by Bandarban District Administration. Entry fee 10tk.\r\n\r\n\r\n\r\n\r\n\r\nযাতায়াত এবং থাকা-খাওয়াঃ\r\n\r\nমেঘলায় বেড়াতে আসা পর্যটকদের খাবার ও রাত্রিযাপনের জন্য বান্দরবান শহরে কিছু মাঝারি মানের হোটেল রয়েছে। এছাড়া পর্যটকদের জন্য খাবার ও রাত্রিযাপনের জন্য পাশেই সু-ব্যবস্থা রয়েছে । মেঘলার পাশেই রয়েছে বান্দরবান পর্যটন মোটেল ও হলিডে ইন নামে দুইটি আধুনিক মানের পর্যটন কমপ্লেক্স। এখানে এসি ও নন এসি রুমসহ রাত্রি যাপন ও উন্নতমানের খাবারের ব্যবস্থা রয়েছে। ফোনঃ ৬২৯১৯। বান্দরবান বাস ষ্টেশন থেকে মেঘলা পর্যটন কমপ্লেক্স যেতে লোকাল বাসে জনপ্রতি ১০-১২ টাকা এবং টেক্সি রিজার্ভ ১০০-১২০ টাকা, এবং ল্যান্ড ক্রোজার, ল্যান্ড রোভার ও চাঁদের গাড়ী ৪৫০-৫০০/- টাকা পর্যন্ত নিয়ে থাকে।\r\n\r\n\r\n\r\nবান্দরবনে পর্যটন কর্পোরেশনের একটি হোটেল আছে মেঘলাতে।\r\n\r\nযার ভাড়া রুম প্রতি ৭৫০ হইতে ২০০০টাকা পর্যন্ত। বুকিং ফোন: 0361-62741 এবং 0361-62742।\r\n\r\n\r\n\r\nহলিডে ইন (মেঘলা)\r\n\r\nজেনারেল রুম ১০০০ টাকা, নন এসি ১৩০০ টাকা, এসি ১৫০০ টাকা; ফোন: 0361-62896\r\n\r\n\r\n\r\nTransportation & Accommodation\r\n\r\nLocal Buses are available from Bandarbar Bus Station (10-12tk). Texi reserv100-120tk. Land Cruser, Land Rover will take 450-500tk for Meghla. Tourist Motel and Holiday Inn Hotel are available in Meghla, fare nearly 750-2000tk.\r\n\r\n\r\n\r\nশৈল প্রপাত\r\n\r\n\r\n\r\n\r\n\r\nবান্দরবান রুমা সড়কের ৮ কিলোমিটার দূরে শৈলপ্রপাত অবস্থিত। এটি প্রাকৃতিক সৌন্দর্যের অপূর্ব সৃষ্টি। ঝর্ণার হিমশীতল পানি এখানে সর্বদা বহমান। এই ঝর্ণার পানিগুলো খুবই স্বচ্ছ এবং হীম শীতল। বর্ষাকালে এ ঝর্ণার দৃশ্য দেখা গেলেও ঝর্ণাতে নামা দুস্কর, বছরের বেশীর ভাগ সময় দেশী বিদেশী পর্যটকে ভরপুর থাকে। রাস্তার পাশে শৈল প্রপাতের অবস্থান হওয়ায় এখানে পর্যটকদের ভিড় বেশী দেখা যায়। এখানে দুর্গম পাহাড়ের কোল ঘেশা আদিবাসী বম সম্প্রদায়ের সংগ্রামী জীবন প্রত্যক্ষ করা।\r\n\r\n\r\n\r\nযাতায়াতঃ\r\n\r\nবান্দরবান শহর থেকে টেক্সি, চাঁদের গাড়ি কিংবা প্রাইভেট কার ও জীপ ভাড়া করে শৈলপ্রপাতে যাওয়া যায়। শহর থেকে জীপ গাড়ীতে ৬০০-৭০০ টাকা এবং চাঁদের গাড়ীতে ৪৫০-৫০০ টাকা লাগবে।\r\n\r\n\r\n\r\n\r\n\r\nনীলাচল ও শুভ্রনীলা\r\n\r\n\r\n\r\nনীলাচল\r\n\r\n\r\n\r\nবান্দরবান জেলা শহেরর নিকটবর্তী পর্যটন কেন্দ্র। এটি জেলা সদরের প্রবেশ মুখ টাইগার পাড়ার নিকট পাশাপাশি অবস্থিত এ পর্যটন কেন্দ্র দুটি। নীলাচল জেলা প্রশাসন ও শুভ্রনীলা বান্দরবান পার্বত্য জেলা পরিষদের সার্বিক তত্ত্বাবধানে এ দুটি পর্যটন কেন্দ্রটি পরিচালিত হয় । এ পর্যটন কেনেদ্রর উচ্চতা প্রায় ১৭০০ ফুট। বান্দরবান জেলা সদর থেকে ৫ কিলোমিটার দূরে এই পর্যটন কেনদ্র অবস্থিত। এ পাহাড়ের উপর নির্মিত এ দুটি পর্যটন কেনদ্র থেকে পার্শ্ববর্তী এলাকার দৃশ্য দেখতে খুবই মনোরম।\r\n\r\n\r\n\r\nশুভ্রনীলা\r\n\r\n\r\n\r\nযাতায়াতঃ\r\n\r\nবান্দরবান শহরের বাস ষ্টেশন থেকে জীপ, ল্যান্ড ক্রু জার, ল্যান্ড রোভার ভাড়া নিয়ে যেতে হবে অথবা বান্দরবান শহরের সাঙ্গু ব্রীজের কাছে টেক্সি ষ্টেশন থেকে টেক্সি ভাড়া নিয়ে নীলাচল ও শুভ্রনীলায় যেতে পারেন । জীপ, ল্যান্ড ক্রুজার, ল্যান্ড রোভার ৬০০-৭০০/-, টেক্সি ৩০০/- মত নিয়ে থাকে। রেস্ট হাউজ বুকিং: ০৩৬১-৬২৬০৫, ০১৭১৪২৩০৩৫৪, ০১৭১২৭১৮০৫১\r\n\r\n\r\n\r\n\r\n\r\nমিলনছড়ি\r\n\r\n\r\n\r\n\r\n\r\nমিলনছড়ি বান্দরবান শহর হতে ৩ কি:মি: দক্ষিণ পূর্বে শৈল প্রপাত বা চিম্বুক যাওয়ার পথে পড়ে। এখানে একটি পুলিশ পাড়ি আছে। পাহাড়ের অতি উচ্চতায় রাস্তার ধারে দাড়িয়ে পূর্ব প্রান্তে অবারিত সবুজের খেলা এবং সবুজ প্রকৃতির বুক ছিড়ে সর্পিল গতিতে বয়ে সাঙ্গু নামক মোহনীয় নদীটি। হিল সাইড রিসোর্টঃ ফোন: 01556539022, 01730045083\r\n\r\n\r\n\r\n\r\n\r\nচিম্বুক\r\n\r\n\r\n\r\n\r\n\r\nবাংলাদেশের তৃতীয় বৃহত্তম পর্বত। চিম্বুক সারা দেশের কাছে পরিচিত নাম। বান্দরবান জেলা শহর থেকে ২৬ কিলোমিটার দূরে চিম্বুক পাহাড়ের অবস্থান। সমুদ্র পৃষ্ঠ থেকে এর উচ্চতা প্রায় ২৫০০ শত ফুট। চিম্বুক যাওয়ার রাস্তার দুই পাশের পাহাড়ি দৃশ্য খুবই মনোরম। চিম্বুক যাওয়ার পথে সাঙ্গু নদী চোখে পড়ে। পাহাড়ের মাঝে আঁকা বাঁকা পথ বেয়ে বাংলাদেশের সর্বোচ্চ সড়ক দিয়ে এতে যাতায়ত মনে হবে গাড়ীতে করে চাঁদের বুকে পাড়ি জমানোর অনুভূতি। ২৫০০ ফুট উঁচুতে দাঁড়িয়ে এ অপরুপ বিচিত্র দৃশ্য দেখতে পাবেন চিম্বুকে।\r\n\r\n\r\n\r\nচিম্বুক পাহাড় থেকে দাঁড়িয়ে পাহাড়ের নিচ দিয়ে মেঘ ভেসে যাওয়ার দৃশ্য অবলোকন করা যায়।এখান থেকে পার্শ্ববর্তী জেলা কক্সবাজার ও চট্টগ্রাম এর বিভিন্ন উপজেলাগুলোকে দেখা যায়। বর্ষা মৌসুমে চিম্বুক পাহাড়ের পাশ দিয়ে ভেসে যাওয়া মেঘ দেখে মনে হয় মেঘের স্বর্গরাজ্য চিম্বুক। মেঘের হালকা হিম ছোঁয়া যেন মেঘ ছোয়ার অনুভূতি। চিম্বুককে বাংলার দার্জিলিং বলা হয়।\r\n\r\n\r\n\r\nচিম্বুক থানছি সড়কের দূর্গম পাহাড়ী এলাকায় অবস্থিত হওয়ায় এখানে হোটেল বা রেস্তোরাঁগড়ে ওঠেনি। জেলা প্রশাসকের তত্ত্বাবধানে একটি রেষ্টহাউস আছে। জেলা প্রশাসকের অনুমোতিক্রমে রাত্রি যাপনের সুযোগ রয়েছে। চিম্বুকের পাশে সেনাবাহিনীর ক্যান্টিন রয়েছে। এখানে সকালের নাস্তা ও দুপুরে খাবার পাওয়া যায়। এছাড়া খাবারের জন্য বান্দরবান থেকে চিম্বুক যাওয়ার পথে মিলনছড়ি ও শাকুরা নামে ২টি পর্যটন কেন্দ্র রয়েছে। চিম্বুক যাওয়ার পথে বান্দরবান থেকে হালকা খাবার ও অন্যান্য প্রয়োজনীয় জিনিস পত্র নিয়ে যাওয়ায় উত্তম।\r\n\r\n\r\n\r\nযাতায়াতঃ চিম্বুক যেতে হলে বান্দরবান শহরের রুমা বাস স্টেশন থেকে চাঁদের গাড়ি হিসেবে পরিচিত জীপ, ল্যান্ড ক্রুজার, ল্যান্ড রোভার, পাজেরো এবং বান্দরবান-থানছি পথে যাতায়তকারী বাস ভাড়া নিতে হবে (স্পেশাল বাস যা দূর্গম পাহাড়ী পথে চলাচল করতে সক্ষম)। নিজস্ব গাড়ী হলে ভাল হয়। রাস্তা অত্যান্ত দূর্গম হওয়ায় বাসে যাতায়ত করা ঝুঁকিপূর্ণ। চাঁদের গাড়ীতে জন প্রতি ৫০-৬০ টাকা এবং ল্যান্ড ত্রুজার রির্জাভ ১৭০০-১৮০০/-, ল্যান্ড রোভার, পাজেরো ২১০০-২২০০/- টাকা মত নিয়ে থাকে। চিম্বুক থানছি পথে বিকেল ৪ টার পরে কোন গাড়ী চলাচল করে না বিধায় পর্যটকদের ৪ টার মধ্যে ফিরে আসা উচিত।\r\n\r\n\r\n\r\n\r\n\r\nসাঙ্গু নদী\r\n\r\n\r\n\r\n\r\n\r\nপূর্বের অতিউচ্চ পর্বত শীর্ষ থেকে সাঙ্গু নদী নেমে এসে বান্দরবন শহরের পাশ দিয়ে প্রবাহিত হয়ে বঙ্গোপসাগরে মিশে গেছে। বান্দরবান শহরের পূর্বে পাশে পাহাড়ী ঢালে বয়ে চলা সাঙ্গু নীদ দেখতে দারুন দৃষ্টি নন্দন।\r\n\r\n\r\n\r\nবগালেক\r\n\r\n\r\n\r\n\r\n\r\nসমুদ্র পৃষ্ঠ থেকে প্রায় ৩ হাজার ফুট উঁচু পাহাড়ে প্রাকৃতিক ভাবে সৃষ্ট বগালেক। কেওকারাডাং এর কোল ঘেঁষে বান্দারবান শহর থেকে প্রায় ৭০ কিলোমিটার দূরে এবং রুমা উপজেলা সদর থেকে প্রায় ১৮ কিলোমিটার দূরে এর অবস্থান। পাহাড়ের উপরে প্রায় ১৫ একর জায়গা জুড়ে এই লেকের অবস্থান। এ পানি দেখতে প্রায় নীল রঙের। এ লেকের পাশে বাস করে পার্বত্য চট্টগ্রামের ক্ষুদ্র উপজাতীয় বম ও খুমী সম্প্রদায়। অদ্ভুদ সুন্দর এই নীল রঙ্গের লেকের সঠিক গভীরতা বের করা যায়নি। স্থানীয়ভাবে দুইশ\' থেকে আড়াইশ\' ফুট বলা হলেও সোনার মেশিনে ১৫১ ফুট পর্যন্ত গভীরতা পাওয়া গেছে। এটি সম্পূর্ণ আবদ্ধ একটি লেক। এর আশেপাশে পানির কোন উৎসও নেই। তবে বগালেক যে উচ্চতায় অবস্থিত তা থেকে ১৫৩ মিটার নিচে একটি ছোট ঝর্ণার উৎস আছে যা বগাছড়া (জ্বালা-মুখ) নামে পরিচিত। সবচেয়ে মজার বিষয় হচ্ছে লেকের পানি প্রতি বছর এপ্রিল থেকে মে মাসে ঘোলাটে হয়ে যায়।\r\n\r\n\r\n\r\nরাত্রি যাপনের জন্য বগালেকে জেলা পরিষদের অর্থায়নে একটি রেষ্টহাউস নির্মান করা হয়েছে। এছাড়া স্থানীয় বম উপজাতী সম্প্রসাদায় কিছু ঘর ভাড়ায় দিয়ে থাকে । বগালেকের পাড়েই বসবাসরত বম সম্প্রদায় পর্যটকদের জন্য রান্না-বান্নার ব্যবস্থা করে থাকে । রুমা বাজার থেকে প্রয়োজনীয় শুকনো খাবার ক্রয় করে নেওয়াই শ্রেয়। উল্লেখ্য যে, নিরাপত্তার জন্য রুমা ও বগালেক সেনা ক্যাম্পে পর্যটকদের রিপোর্টে করতে হয়। স্থানীয় গাইড ছাড়া পায়ে হেটে রুমা থেকে অন্য কোন পর্যটন কেন্দ্রে যাওয়া উচিত নয়।\r\n\r\n\r\n\r\nযাতায়তঃ শুষ্ক মৌসুমে বান্দরবান জেলা সদরের রুমা জীপ ষ্টেশন থেকে রুমাগামী জীপে করে রুমা সেনা গ্যারিসন (রুমা ব্রীজ) পর্যন্ত যাওয়া যায়। সেখান থেকে নৌকায় করে ২০ মিনিট পথ পাড়ি দিয়ে রুমা উপজেলা সদরে যেতে হয়। বর্ষাকালে রুমাগামী জীপ কইক্ষ্যংঝিড়ি পর্যন্ত যায় । তারপর ইঞ্জিন চালিত নৌকায় করে প্রায় ১ ঘন্টার অধিক পথ পাড়ি দিয়ে রুমা সদরে যেতে হয় । রুমা থেকে পায়ে হেটে অথবা জীপে করে বগালেক যেতে হয় । বর্ষা মৌসুমে বগা লেক যাওয়া নিতান্তই কষ্টসাধ্য তাই বগালেক ভ্রমনে শীতকালকে বেছে নেওয়া শ্রেয়ে। বান্দরাবন থেকে রুমা উপজেলা সদরে যেতে খরচ হবে জন প্রতি ৮০/- অথবা পুরো জীপ ভাড়া করলে ২২০০-২৫০০/- আর রুমা থেকে বগালেক যেতে জনপ্রতি ৮০-১০০/- অথবা পুরো জীপ ভাড়া করলে ২২০০-২৫০০/- পর্যন্ত ।\r\n\r\n\r\n\r\n\r\n\r\nকেওক্রাডং এবং তাজিংডং\r\n\r\n\r\n\r\nকেওক্রাডং এর চূড়া থেকে দৃশ্য\r\n\r\n\r\n\r\nএখন পর্যন্ত সরকার স্বীকৃত বাংলাদেশের সর্বোচ্চ পর্বত শৃঙ্গ তাজিংডং । উচ্চতা ৪৬৩২ ফুট। কেওক্রাডং বাংলাদেশের ২য় সর্বোচ্চ পর্বত শৃঙ্গ। উচ্চতা ৪০৩৫ ফুট। [সূত্রঃ বাংলাদেশ পর্যটন কর্পোরেশন] স্থানীয় উপজাতীয়দের ভাষায় ‘তাজিং’ শব্দের অর্থ বড় আর ‘ডং’ শব্দের অর্থ পাহাড় যা একত্রিত করলে হয় তাজিংডং। এটি বান্দরবান জেলার রুমা উপজেলার রেমাক্রী পাংশা ইউনিয়নে অবস্থিত। রুমা উপজেলা সদর থেকে ২৫ কিলোমিটার দূরে অবস্থিত এই পর্বতের অবস্থান। বর্ষা মৌসুমে তাজিংডং যাতায়ত অত্যান্ত কষ্টকর। শুষ্ক মৌসুমে অনেক পর্যটককে এডভেঞ্চার হিসাবে পায়ে হেটে তাজিংডং যেতে দেখা যায়। বর্তমানে রুমা উপজেলা সদর থেকে চাঁদের গাড়ীতে করে কেওক্রাডং এর কাছাকাছি যাওয়া যায়।\r\n\r\n\r\n\r\nযাত্রার জন্য বগালেক থেকে খুব ভোরে যাত্রা করতে হবে সেক্ষেত্রে আসা যাওয়াসহ ৮-১০ ঘন্টা হাটার অভ্যাস থাকতে হবে। তাজিংডং ভ্রমনকারীদের অবশ্যই ভ্রমনের সময় শুকনো খাবার, খাবার পানি, জরুরী ঔষুধপত্র সঙ্গে নিতে হবে। যাত্রাপথ দূর্গম ও কষ্টসাধ্য বিধায় মহিলা ও শিশুদের নিয়ে এ পথে যাত্রা করা উচিত নয়। রুমা উপজেলা সদরে রাত্রিযাপনের জন্য কয়েকটি হোটেল থাকায় দলবেধেঁ যাত্রা করার আগে হোটেল বুকিং করা হয়েছে কিনা তা নিশ্চিত হয়ে নিন।\r\n\r\n\r\n\r\nপর্যটকদের তাজিংডং যেতে হলে বান্দরবান জেলা সদর থেকে প্রথম যেতে হবে রুমা উপজেলা সদরে। রুমা উপজেলা যাত্রা পথে রুমা সেনা গ্যারিসনে পর্যটকদের নাম ও ঠিকানা লিপিবদ্ধ করতে হবে। পরবর্তীতে রুমা উপজেলা সদর সেনা ক্যাম্পে আবার ও রির্পোট করতে হবে। রুমা উপজেলা সদর থেক সাধারণত বিকাল ৪ টার পরে বগালেক, কেওক্রাডং বা তাজিংডং এর উদ্দেশে যেতে দেয়া হয় না। যাত্রা যদি হয় বর্ষা মৌসুমে তাহলে বান্দরবান শহরের রুমা জীপ ষ্টেশন থেকে রুমাগামী চাঁদের গাড়ীতে করে কৈক্ষ্যং ঝিড়ি যেতে হবে। তারপর নৌকায়১ ঘন্টার পথ পাড়ি দিয়ে রুমা সদর। যদি শীতের মৌসুম হয় তাহলে জীপে করে রুমা উপজেলা সদরের কাছে বোটঘাটায় পৌছে দেবে গাড়ী, সেখান থেকে নৌকায় করে ১৫-২০ মিনিটের নৌকা ভ্রমন শেষ আপনি রুমা উপজেলা সদরে পৌছাতে পারবেন। রুমা উপজেলা সদর থেকে পায়ে হেটে বগালেক হয়ে কেওক্রাডং এর পাশ দিয়ে তাজিংডং যেতে হয়।\r\n\r\n\r\n\r\n\r\n\r\nজাদিপাই জলপ্রপাত\r\n\r\n\r\n\r\n\r\n\r\nকেউক্রাডাং থেকে পায়ে হেঁটে ১ ঘন্টায় জাদিপাই জলপ্রপাতে পৌছানো যায়। কেউক্রাডং থেকে নিচে নামতে হয় যাওয়ার সময়। ফিরে আসার সময় উপড়ে উঠতে হয় বিধায় সময় ২ ঘন্টা মত লাগে। তবে নিচে নামাটাই বিপদজনক। শেষের কিছু অংশ বেশ পিচ্ছিল। দুর্ঘটনা ঘটার সম্ভাবনা আছে। যাওয়ার সময় জোকের কামড় অবধারিত। সাথে অবশ্যই গাইড নিতে হবে।\r\n\r\nযাতায়াতঃ বাস ভাড়া- চট্টগ্রাম হতে বান্দরবন ৮০ টাকা; বান্দরবন হতে কাইখ্যংছড়ি ৮০ টাকা। নৌকা ভাড়াঃ কাইখ্যংছড়ি হতে রুমাবাজার ৩০-৪০ টাকা। কেওক্রাডাং এর পাশে কিছু ঘর তুলে হোটেলের মত থাকার ব্যবস্থা করা হয়েছে। ভাড়া জনপ্রতি ১০০ টাকা। খাওয়ারও ব্যবস্থা আছে। ফোনঃ ০১৫৫৬৫৭৩৭৬৮\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nপ্রান্তিক লেক\r\n\r\n\r\n\r\n\r\n\r\nচট্টগ্রাম-বান্দরবান জেলার সীমান্তবর্তী এলাকায় অবস্থিত প্রাকৃতিক সৌন্দর্য্য মন্ডিত প্রান্তিক লেক বান্দরবান-কেরাণীহাট সড়কের হলুদিয়ার নিকটবর্তী স্থানে এটি অবস্থিত। কেরাণীহাট থেকে ২০ মিনিট গাড়ি চালালে এ লেকে পৌছানো সম্ভব। জেলা সদর থেকে প্রান্তিক লেকের দূরত্ব প্রায় ১৪ কিলোমিটার। প্রায় ২ হাজার ৫ শত একর এলাকা নিয়ে প্রান্তিক লেকের অবস্থান। পর্যটকদের নিজেদের খাবার ও পানি নিয়ে যাওয়াটাই উত্তম। রাত্রি যাপনের জন্য মেঘলা অথবা বান্দরবান শহরে ফিরে যেতে হবে। বান্দরবান শহর থেকে কেরাণীহাট গামী বাসে হলুদিয়া নামক স্থানে নেমে টেক্সি বা রিক্সা করে ৩ কিলোমিটার যেতে হবে। বান্দরবান শহর থেকে টেক্সি বা ল্যান্ড ত্রুজার রির্জাভ করে নিয়ে যাওয়া যায়। ল্যান্ড ত্রুজার বা চাঁদের গাড়ী রির্জাভ ৭০০-৮০০, টেক্সি ৪৫০-৫০০ টাকা নিয়ে থাকে।\r\n\r\n\r\n\r\n\r\n\r\nঋজুক জলপ্রপাত\r\n\r\n\r\n\r\n\r\n\r\nপ্রাকৃতিক পাহাড়ী পানির অবিরাম এ ধারাটি জেলা সদর হতে ৬৬ কিঃমিঃ দক্ষিণ-পূর্বে রুমা উপজেলায় অবস্থিত। নদী পথে রুমা হতে থানচি যাওয়ার পতে সাঙ্গু নদীর পাড়ে ৩০০ ফুট উচু থেকে সারা বছরই এ জলপ্রপাতটির রিমঝিম শব্দে পানি পড়ে। রুমা হতে ইঞ্জিনচালিত দেশী নৌকায় সহজেই এ স্থানে যাওয়া যায়। মার্মা ভাষায় একে রী স্বং স্বং বলা হয়। রুমা বাজার থেকে নৌকা ভাড়া করে যাওয়া যায়। নৌকা ভাড়া ৫০০-৫৫০ টাকা।\r\n\r\n\r\n\r\n\r\n\r\nমিরিঞ্জা পর্যটন কমপ্লেক্স\r\n\r\n\r\n\r\n\r\n\r\nবান্দরবান জেলাধীন ফাঁসিয়াখালী - লামা - আলীকদম সড়কের ১৬ কিঃ মিঃ পয়েন্টে মিরিঞ্জা পর্যটন কেন্দ্রটির অবস্থান। নৈসর্গিক সৌন্দর্য্যে ভরপুর এ স্থানটিতে পর্যটন কর্পোরেশনের তত্ত্বাবধানে একটি আকর্ষনীয় টুরিস্ট স্পট হিসেবে গড়ে উঠেছে। সমুদ্র পৃষ্ঠ হতে প্রায় ১,৫০০ ফুট উপরে এটি অবস্থিত। অনুকূল আবহাওয়ায় বঙ্গোপসাগরসহ মহেষখালী দ্বীপ এবং সাগরে চলাচলকারী দেশী-বিদেশী জাহাজ সহজেই দেখা যায় এ স্থান থেকে। দিগন্ত রেখায় ডুবন্ত রবি‘র রক্তিম আবহ এবং পশ্চিমের পাহাড় টিলার দৃষ্টিনন্দন চির সবুজ দৃশ্য দর্শন। প্রায় ১০০০ ফুট গভীর ঝিরি থেকে উৎঘিরিত জল সিঞ্চনের বিরামহীন কলরব। পাহাড়টির সম্মুখ ভাগ টাইটানিক জাহাজের আকৃতির মত হওয়ায় এটি ‘‘টাইটানিক পাহাড়’’ হিসেবেও পরিচিত। বান্দরবান শহর থেকে জীপ/চান্দের গাড়ি/ প্রাইভেট কারে যাওয়া যায়।\r\n\r\n\r\n\r\n\r\n\r\nনাফাখুম জলপ্রপাত (বাংলাদেশের নায়াগ্রা)\r\n\r\n\r\n\r\nনাফাখুম\r\n\r\n\r\n\r\nবান্দরবান জেলার থানচি উপজেলার রেমাক্রি স্থানটি সাঙ্গু নদীর উজানে একটি মারমা বসতী। মারমা ভাষায় \'খুম\' মানে হচ্ছে জলপ্রপাত। রেমাক্রি থেকে তিন ঘন্টার হাঁটা পথ পাড়ি দিয়ে যেতে হয় আশ্চর্য সুন্দর সেই জলপ্রপাতে, যার নাম \'নাফাখুম\'। রেমাক্রি খালের পানি প্রবাহ এই নাফাখুমে এসে বাঁক খেয়ে হঠাৎ করেই নেমে গেছে প্রায় ২৫-৩০ ফুট....প্রকৃতির খেয়ালে সৃষ্টি হয়েছে চমৎকার এক জলপ্রপাত! সূর্যের আলোয় যেখানে নিত্য খেলা করে বর্ণিল রংধনু! ভরা বর্ষায় রেমাক্রি খালের জলপ্রবাহ নিতান্ত কম নয়। প্রায় যেন উজানের সাঙ্গু নদীর মতই। পানি প্রবাহের ভলিউমের দিক থেকে সম্ভবতঃ নাফাখুম-ই বাংলাদেশের সবচেয়ে বড় জলপ্রপাত।\r\n\r\n\r\n\r\nযাতায়াতঃ\r\n\r\nবান্দরবান শহর থেকে থানচি উপজেলা সদরের দূরত্ব ৮২ কিঃমিঃ। রিজার্ভ চাঁদের গাড়ীতে বান্দরবান থেকে থানচি যেতে সময় লাগবে ৩ ঘন্টা, ভাড়া নেবে ৪ হাজার টাকা। থানচি থেকে রেমাক্রি নৌকায় যাওয়া-আসা, ভাড়া চার হাজার থেকে পাঁচ হাজার টাকা। বর্ষায় ইঞ্জিনবোটে থানচি থেকে তিন্দু যেতে সময় লাগবে আড়াই ঘন্টা। তিন্দু থেকে রেমাক্রি যেতে লাগবে আরও আড়াই ঘন্টা। এই পাঁচ ঘন্টার নৌ-পথে আপনি উজান ঠেলে উপরের দিকে উঠতে থাকবেন। শীতের সময় ইঞ্জিন বোট চলার মত নদীতে যথেষ্ট গভীরতা থাকেনা। তখন ঠ্যালা নৌকাই একমাত্র বাহন। বর্ষা মৌসুমে তিন দিনের জন্য ইঞ্জিনবোটের ভাড়া পড়বে ৪ থেকে ৫ হাজার টাকা। আর শীত মৌসুমে ঠ্যালা-নৌকার ভাড়া পড়বে প্রতি দিনের জন্য ১০০০ টাকা।\r\n\r\n\r\n\r\nথাকাঃ থাকার জন্য যেতে হবে তিন্দু, রেমাক্রি। মারমাদের বাঁশ-কাঠের বাড়ীতে অনায়াসে থাকা খাওয়ার ব্যবস্থা হয়ে যাবে আপনাদের। মারমাদের প্রায় প্রতিটি বাড়ীতেই খুব অল্প টাকায় এমন থাকা-খাওয়ার সুবিধে রয়েছে। তিনবেলা খাওয়ার খরচ পরবে জনপ্রতি ২০০ টাকা, আর থাকা ফ্রি। তবে যে বাড়ীতে ফ্রি থাকবেন। খেতে হবে তাঁর দাওয়ায় বসেই।\r\n\r\n\r\n\r\nরেমাক্রিখুম\r\n\r\n\r\n\r\nরেমাক্রি বাজার থেকে দুইভাবে নাফাখুম-এ যাওয়া যায়। এক ঘন্টা উঁচু-নীচু পাহাড়ী পথ মাড়িয়ে(পাহাড় ডিঙিয়ে) তারপর রেমাক্রি খালের পাড় ধরে বাকিটা হেঁটে চলা। এই পথে গেলে নাফাখুমে পৌঁছাতে আপনার সময় লাগবে চার ঘন্টা। রেমাক্রি খাল ক্রস করতে হবে তিন বার, যার মধ্যে শেষবার আপনাকে সাঁতার পানি পেরুতে হবে। আপনি পাহাড় না ডিঙিয়ে গোটা পথই রেমাক্রি খালের পাশ দিয়ে যেতে পারেন। কিন্তু সেক্ষেত্রে নৌকা করে রেমাক্রি খালের মুখে (যেখানে রেমাক্রি খাল সাঙ্গুতে পড়েছে, রেমাক্রিখুম) যেতে হবে আপনাকে...তারপর খালের পাড় দিয়ে হাঁটা পথে নাফাখুম বরাবর। এই পথে আপনাকে চার বার খালটি ক্রস করতে হবে।.তবে সময় লাগবে তিন ঘন্টা। আমি আপনাকে দ্বিতীয় পথেই যেতে পরামর্শ দেব। এতে আপনার সময় ও এনার্জী দু\'টোই ব্যয় হবে কম। আর শীতের দিনে গেলে খাল ক্রস করার ঝামেলাই নেই। গোটাটাই আপনি ঝিরিপথ দিয়ে হেঁটে যেতে পারবেন। তবে শীতকালে নাফাখুম-এর এই পূর্ণ সৌন্দর্য উপভোগ করার সুযোগ হবেনা। পানি প্রবাহ অনেক কমে যাবে তখন। (নাফাখুম অংশটুকু নীল ভোমরা\'র ব্লগ থেকে নেওয়া)\r\n\r\n\r\n\r\nনাফাখুম', 1, 'yes', 'বান্দরবান ভ্রমণ [Bandarban trip]', 'review', '2018-12-14 20:34:48', '2018-12-14 14:34:48'),
(3, 4, 'The physical development processes along the coast are influenced by a multitude of factors, comprising wave motions, micro and macro-tidal cycles and long shore currents typical to the coastal tract. The shore currents vary greatly along with the monsoon. These are also affected by cyclonic action. Erosion and accretion through these forces maintains varying levels, as yet not properly measured, of physiographic change whilst the mangrove vegetation itself provides a remarkable stability to the entire system. During each monsoon season almost all the Bengal Delta is submerged, much of it for half a year. The sediment of the lower delta plain is primarily advected inland by monsoonal coastal setup and cyclonic events. One of the greatest challenges people living on the Ganges Delta may face in coming years is the threat of rising sea levels caused mostly by subsidence in the region and partly by climate change.\r\n\r\nIn many of the Bangladesh\'s mangrove wetlands, freshwater reaching the mangroves was considerably reduced from the 1970s because of diversion of freshwater in the upstream area by neighbouring India through the use of the Farakka Barrage bordering Rajshahi, Bangladesh. Also, the Bengal Basin is slowly tilting towards the east because of neo-tectonic movement, forcing greater freshwater input to the Bangladesh Sundarbans. As a result, the salinity of the Bangladesh Sundarbans is much lower than that of the Indian side. A 1990 study noted that there \"is no evidence that environmental degradation in the Himalayas or a \'greenhouse\' induced rise in sea level have aggravated floods in Bangladesh\"; however, a 2007 report by UNESCO, \"Case Studies on Climate Change and World Heritage\" has stated that an anthropogenic 45-centimetre (18 in) rise in sea level (likely by the end of the 21st century, according to the Intergovernmental Panel on Climate Change), combined with other forms of anthropogenic stress on the Sundarbans, could lead to the destruction of 75 percent of the Sundarbans mangroves.[32] Already, Lohachara Island and New Moore Island/South Talpatti Island have disappeared under the sea, and Ghoramara Island is half submerged.[33]\r\n\r\nIn a study conducted in 2012, the Zoological Society of London (ZSL) found out that the Sunderban coast was retreating up to 200 metres (660 ft) in a year. Agricultural activities had destroyed around 17,179 hectares (42,450 acres) of mangroves within three decades (1975–2010). Shrimp cultivation had destroyed another 7,554 hectares (18,670 acres).\r\n\r\nResearches from the School of Oceanographic Studies, Jadavpur University, estimated the annual rise in sea level to be 8 millimetres (0.31 in) in 2010. It had doubled from 3.14 millimetres (0.124 in) recorded in 2000. The rising sea levels had also submerged around 7,500 hectares (19,000 acres) of forest areas. This, coupled with an around 1.5 °C (2.7 °F) rise in surface water temperatures and increased levels of salinity have posed a problem for the survival of the indigenous flora and fauna. The Sundari trees are exceptionally sensitive to salinity and are being threatened with extinction.\r\n\r\nLoss of the mangrove forest will result in the loss of the protective biological shield against cyclones and tsunamis. This may put the surrounding coastal communities at high risk. Moreover, the submergence of land mass have rendered up to 6,000 families homeless and around 70,000 people are immediately threatened with the same.[34][self-published source?][35][self-published source?][36] This is causing the flight of human capital to the mainland, about 13% in the decade of 2000–2010.[37]\r\n\r\nA 2015 ethnographic study, conducted by a team of researchers from Heiderberg university in Germany, found a crisis brewing in the Sunderbans. The study contended that poor planning on the part of the India and Bangladesh governments coupled with natural ecological changes were forcing the flight of human capital from the region', 2, 'yes', 'Sundarbans climate change impact', 'review', '2018-12-17 23:45:09', '2018-12-17 17:45:09'),
(6, 3, 'বান্দারবান জেলার নামকরণের ইতিহাস\r\n\r\nবান্দরবান জেলার নামকরণ নিয়ে একটি কিংবদন্তি রয়েছে। এলাকার বাসিন্দাদের প্রচলিত রূপ কথায়  আছে অত্র এলাকায়  একসময় বাস করত অসংখ্য বানর । আর এই বানরগুলো  শহরের প্রবেশ মুখে  ছড়ার  পাড়ে পাহাড়ে প্রতিনিয়ত লবণ  খেতে আসত। এক সময় অনবরত বৃষ্টির কারণে ছড়ার পানি বৃ্দ্ধি পাওয়ায় বানরের দল ছড়া পাড় হয়ে পাহাড়ে যেতে না পারায়  একে অপরকে ধরে ধরে সারিবদ্ধভাবে ছড়া পাড় হয়। বানরের ছড়া পারাপারের এই দৃশ্য দেখতে পায় এই জনপদের মানুষ।  এই সময় থেকে এই জায়গাটির পরিচিতি লাভ করে \"ম্যাঅকছি ছড়া \" হিসাবে । অর্থ্যাৎ মার্মা ভাষায় ম্যাঅক অর্থ  বানর  আর ছিঃ অর্থ বাঁধ । কালের প্রবাহে বাংলা ভাষাভাষির সাধারণ উচ্চারণে এই এলাকার নাম রুপ লাভ করে বান্দরবান হিসাবে ।  বর্তমানে সরকারি দলিল পত্রে বান্দরবান হিসাবে এই জেলার নাম স্থায়ী রুপ লাভ করেছে। তবে মার্মা ভাষায় বান্দরবানের নাম \"রদ ক্যওচি ম্রো\"।\r\n\r\n \r\n\r\nজেলা রূপে আবির্ভাব\r\n\r\nবৃটিশ শাসন আমলে ১৮৬০ সালে পার্বত্য চট্টগ্রামকে জেলা ঘোষণা করা হয়। তৎকালীন সময়ে বান্দরবান পার্বত্য চট্টগ্রাম জেলার অধীন ছিলো। ক্যাপ্টেন মাগ্রেথ ছিলেন পার্বত্য চট্টগ্রাম জেলার প্রথম সুপারিনট্যানডেন্ট। ১৮৬৭ সালে পার্বত্য চট্টগ্রাম জেলার সুপারিনট্যানডেন্ট পদটির কার্যক্রম আরও বিস্তৃত করা হয় এবং ১৮৬৭ সালে এই পদটির নামকরণ করা হয় ডেপুটি কমিশনার। পার্বত্য চট্ট্রগাম জেলার প্রথাম ডেপুটি কমিশনার ছিলেন টি, এইচ লুইন। ১৯০০ সালের পার্বত্য চট্টগ্রাম রেগুলেশন অনুসারে পার্বত্য চট্টগ্রামকে তিনটি সার্কেলে বিভক্ত করা হয়-চাকমা সার্কেল, মং সার্কেল, এবং বোমাং সার্কেল। প্রত্যেক সার্কেলের জন্য একজন সার্কেল চীফ নিযুক্ত ছিলেন। বান্দরবান তৎকালীন সময়ে বোমাং সার্কেলের অর্ন্তভুক্ত ছিলো। বোমাং সার্কেলের অন্তর্ভূক্ত হওয়ার কারণে এই জেলার আদি নাম বোমাং থং।\r\n\r\n \r\nবান্দরবান জেলা ১৯৫১ সালে মহকুমা হিসেবে প্রশাসনিক কার্যক্রম শুরু করে। এটি রাংগামাটি জেলার প্রশাসনিক ইউনিট ছিলো। পরর্বতীতে ১৯৮১ সালের ১৮ই এপ্রিল, তৎকালিন লামা মহকুমার ভৌগলিক ও প্রশাসনিক সীমানাসহ সাতটি উপজেলার সমন্বয়ে বান্দরবান পার্বত্য জেলা হিসাবে আত্মপ্রকাশ করে।', 1, 'blocked', 'এক নজরে বান্দরবান', 'review', '2018-12-17 19:04:56', '2018-12-04 18:06:41'),
(7, 3, 'No one is exactly sure why the tigers of the Sundarbans are so aggressive towards humans, but scientists, biologists, and others have speculated about a number of reasons. These include:\r\n\r\n    Since the Sundarbans is located in a coastal area, the water is relatively salty. In all other habitats, tigers drink fresh water. It is rumored that the saltiness of the water in this area has put them in a state of constant discomfort, leading them to be extremely aggressive. Freshwater lakes have been artificially made but to no avail.\r\n    The high tides in the area destroy the tiger\'s urine and scat which serve as territorial markers. Thus, the only way for a tiger to defend its territory is to physically dominate everything that enters.\r\n    Another possibility is that these tigers have grown used to human flesh due to the weather. Cyclones in this part of India and Bangladesh kill thousands, and the bodies drift out in to the swampy waters, where tigers scavenge them.\r\n    Another possibility is that the tigers find hunting animals difficult due to the continuous high and low tides making the area marsh-like and slippery. Humans travel through the Sundarbans on boats gathering honey and fishing, making for easy prey. It is also believed that when a person stoops to work, the tiger mistakes them for a typical prey animal, and has, over time, acquired a \'taste\' for the human flesh.\r\n    It has also been hypothesized that the tigers in this area, due to their secluded habitat, avoided the brunt of the hunting sprees that occurred over the course of the 20th century. Tigers inhabiting the rest of Asia developed a fear of humans after these events, but tigers in the Sundarbans would never have had reason to stop seeing humans as prey.\r\n\r\nAbout 5,000 people frequent the swamps and waterways of the Sundarbans. Fishing boats traverse the area and many stop to collect firewood, honey and other items. In the dark forest, tigers find it easy to stalk and attack men absorbed in their work. Even fishermen in small boats have been attacked due to tigers\' strong swimming abilities.[8', 2, 'yes', 'Cause of tiger attacks in Sundarbans', 'review', '2018-12-12 20:09:19', '2018-12-07 14:55:08'),
(8, 3, 'We welcome guests, but don\'t want Bandarban to become crowded or polluted like Rangamati. We don\'t want to lose our culture nor see it consigned to a museum.\r\n    — Raja Aung Shue Prue Chowdhury, on tourism\r\n\r\nIndia–Myanmar Sabroom-Cox\'s Bazar railway link has been proposed to connect Sabroom-Khargachari-Rangamati-Bandarban-Satkania-Cox\'s Bazar and another rail link connecting Banderban to Tuipang in India.\r\n\r\nBandarban lies, by bus, eight hours away from Dhaka, two hours from Chittagong and three hours from Cox\'s Bazar. It is also possible to get there by a six-hour bus ride from Rangamati. The Buddha Dhatu Jadi, the Buddhist temple in Bangladesh, located in Balaghata, 4 km from the town. This place attracts many tourists every year. This Theravada Buddhist temple is made completely in the style of South-East Asia and houses the second largest statue of Buddha in Bangladesh. The waterfall named Shoilo Propat at Milanchari is another place tourists like to visit. The numerous Buddhist temples, known as kyang in local tongue, and bhihars in the town include the highly notable the Rajvihar (royal vihar) at Jadipara and the Ujanipara Bhihar. Bawm villages around Chimbuk, and Mru villages a little further off, are also lie within a day\'s journey from the town. Prantik Lake, Jibannagar and Kyachlong Lake are some more places of interest. Boat ride on the river Sangu is one of the main attraction here for tourists.\r\n\r\n    Starting on January 7, 2015 the Home Ministry has enforced the provision of \"no free passes\" for foreigners visiting the three Chittagong Hill Tracts districts – Rangamati, Khagrachhari and Bandarban. As a result, foreigners need to submit an application to the Home Ministry a month ahead for their scheduled visit.[18]', 1, 'yes', 'Tourism in Bandarban', 'review', '2018-12-12 20:09:19', '2018-12-07 15:10:27'),
(9, 3, 'National Committee to Protect Oil, Gas, Mineral Resources, Power and Ports has reiterated its demand for cancelling all kinds of industrial units, including Rampal power plant, within the Sundarbans area alleging that the government has been destroying the mangrove forest only to serve the interest of certain quarters.\r\n\r\n\"We need electricity. But we cannot destroy our natural protection like Sundarbans against natural calamities at the cost of power generation,\" Prof Anu Mohammad, member secretary of National Committee, said while addressing an opinion exchange meeting at Mukti Bhaban in the city.\r\n\r\nThe National Committee organised the function to explain its alternative options to the Rampal power plant, Rooppur nuclear power plant and power system master plan 2016.\r\n\r\nWith National Committee leader Zulfiquar Ali in the chair, the function was also addressed by Ruhin Hossain Prince, Moshahida Sultana, Bazlur Rashid Firoz, and Akbar Khan.\r\n\r\nNational Committee leader Moudud Rahman made a presentation on the Rampal and Rooppur power plant projects.\r\n\r\nProf Anu Mohammad alleged that the government has been pushing the country towards a dangerous situation through the implementation of projects like Rampal coal-fired power plant and Rooppur nuclear power plant, and also by awarding contracts to foreign oil companies for hydrocarbon exploration.\r\n\r\n\"The country`s debt burden will reach a dangerous level if these projects are implemented with foreign loans,\" he said adding that Sundarbans works as a natural protection. But the Rampal project will destroy Sundarbans, leaving the entire coastal belt unprotected.\r\n\r\nHe said the government can generate a huge amount of power from renewable energy as an alternative to Rampal coal-fired power and Rooppur nuclear.\r\n\r\n\"But they are proceeding towards import of solar power from abroad instead of generating nuclear power locally,” he said.\r\n\r\nIn his presentation, Moudud Rahman said the government has prepared the power system master plan with lot of inconsistencies.\r\n\r\nHe claimed that the master plan says the country will need 19,000 megawatts (MW) of coal fired power and 7000 MW of nuclear power by 2041.\r\n\r\nBut this estimate is wrong and the actual need for coal-fired power generation will be 11,000 MW while 3000 MW nuclear power. These amounts will be good enough for the country at that time, he said.', 2, 'yes', 'Sundarbans: Cancel all industrial units', 'review', '2018-12-12 20:09:19', '2018-12-07 15:51:05'),
(16, 3, 'While as a tourist you are unlikely to face any danger from the local wildlife, it is wise to be informed that two of the most potentially dangerous animals on Earth reside within the Sundarbans. The Sundarbans is well known as the only place left where Bengal Tigers still hunt and kill humans, and they do it regularly. These victims are always locals who live within the Sundarbans and rely on it for survival, hence there is a \"live and let live\" policy between man and tiger.\r\n\r\nSaltwater Crocodiles also inhabit the Sundarbans and are well known to be the largest and (along with the Nile Crocodile) most aggressive reptile on Earth. In the Sundarbans you are unlikely to be in crocodile territory without a large boat, so the risk is minimal.\r\n\r\nWhile living in the Sundarbans is extremely dangerous, very little risk is posed to the average tourist. Snakes exist, but are primarily either shy or nocturnal, unless you plan on venturing off into the bush alone you don\'t have much to worry about.', 2, 'yes', 'Stay Safe', 'review', '2018-12-12 20:09:19', '2018-12-07 18:37:27'),
(20, 3, 'I’ve just returned from an outstanding tour of the Sundarbans forest in the South of Bangladesh, organised by Nijhoom Tours, and benefitting from exceptional guiding by Arafat Rusal. When I researched the trip, it became apparent that Nijhoom presented one of the few ( possibly only) regular small-group tour options for the Sundarbans. These trips are popular, and I was able to take advantage of a late-stage cancellation, it’s because the boat that Nijhoom charters can carry a maximum of 8 guests, but commonly groups are smaller, in my case 3 guests only.\r\nI started the tour after my arrival in Dhaka with a shopping tour that Raw Hasan ( owner of Nijhoom Tours) had organised as an add-on to my regular tour, I had done some research as to the various shops I wanted to visit, but Arafat knew all these and some additional gems that he took me to, and he planned and executed the trip in an ergonomic and efficient manner, which, as the week continued, I saw characterised his work, namely, caring, anticipating, knowledgable, resourceful, in short a top professional guide, an opinion shared by my travelling companions, a well travelled and delightful English couple. Next up was a full day trip around Delhi, which, while hectic and “in your face” was an early expression of the welcoming, friendly nature of the Bangladeshi people....at no time did I even think about security issues, “The Desh” (as it’s known to English cricket fans) would be one of the most welcoming countries I’ve visited ( and was my 157th country!)\r\nLater we boarded The Rocket to the south, a paddle steamer river ship out of Victorian times, well past its prime, but still eminently fit for purpose, and my first class cabin was fine, and again well looked after by both staff and guide. We then spent a day visiting the archeological sites around Bagerhat, of which the 60 Dome Mosque, a UNESCO world heritage site, was undoubtably the highlight. After an overnight in Mongla, it was onto our little boat, the Seagull, home for the next 3 days , 2 nights. The Nijhoom team have really got this down to a fine art; the itineraries were well planned to maximise wildlife viewing and photo opportunities, and we were all impressed by the abundance of wildlife, and beauty of the forest ( Sundarbans means Beautiful Forest in Bengali). I was prepared for quite a rustic experience, but far from it, the cabin was basic but adequate, the viewing and dining areas very convivial, and big surprise VERY FEW MOSQUITOES. The food that Cookie produced was really top notch Bengali cuisine, quite astonishing what he continually rustled up from his modest galley ! We also had a range of beverages that we had pre-organised, making cocktail hour another event to look forward to!\r\nEach morning and evening we took our rowboat and boatmen for extended explorations along the myriad narrow creeks that comprise the Sundarbans....peaceful, and definitely the best way to see wildlife up close: Giant Komodo dragon-like Water Monitors, Spotted deer, wild boar, otters, freshwater dolphins, innumerable bird species, always spotted first by the eagle-eyed Nijhoom team.\r\nThe only animal we missed was the elusive Tiger, I would say there is realistically a 20% chance of sighting, judging by previous guest experiences ....we certainly did everything we could to (safely) view a tiger, but it’s often down to luck. We certainly saw lots of paw prints and tiger resting places, so they were around! I can honestly say that a tiger would have been icing on top of an already fabulously rich cake !\r\nThe trip included a 10 Km walk though prime tiger habitat, so our armed Forest ranger who accompanied us everywhere off-boat was a reassuring presence. The extent of the Sundarbans is huge, and we spent our time in its most remote reaches, and we hardly saw any other tourists (aside from a local tourist day trip, which looked hellish, and as Raw points out, entirely wildlife free, on account of the huge group size, amplified music etc etc).\r\nFinally, at the end of my trip, I had elected to fly from Jessore back to Dhaka to make my onward flight connections, but due to an unexpected transport workers nationwide strike, the Nijhoom team had booked an alternate hotel close to the airport, and Arafat insisted on personally taking me there and making sure all was seamless...for him an additional 7 hour road trip on which he significantly added value with his knowledge of backroutes to avoid the (super) chaotic strike-induced traffic.\r\nIn conclusion, I’d like thank all the team at Nijhoom, they are totallly professional and “Best in Class”, and make travelling in a developing country a truly delightful and enjoyable experience.\r\n\r\nhttps://www.tripadvisor.com/ShowUserReviews-g325571-d1592086-r630659956-Sundarban-Bagerhat_Khulna_Division.html#', 2, 'yes', 'Sundarbans tour with Rocket (updated)', 'review', '2018-12-12 20:09:19', '2018-12-08 15:09:51'),
(21, 3, 'In Bangladesh, Sundarban Reserve Forest occupies approximately 6000 square kilometres. This is 60% of Sundarban – the world\'s largest mangrove forest – with the remainder falling in West Bengal. Sundarban is a UNESCO Natural World Heritage Site as well as a Ramsar Site of International Importance, treasured for its uniqueness as well as its variety of life, some unique and unusual.\r\n\r\nThe soil of Sundarban is silt deposited by numerous rivers and canals flowing into the Bay of Bengal. Its water is saline. Due to deep and sticky mud – not to mention pointed mangrove roots protruding from the soil - it is difficult to traverse the forest by foot and boats are necessary. There is no permanent human habitation inside the forest.\r\n\r\nThe biodiversity of Sundarban includes over 339 species of birds, 528 species of plants, 35 species of reptiles, 278 varieties of fish and crustaceans, and 42 species of mammals. Many of these species are unique and endangered, including the Masked Finfoot, the River Terrapin and, of course, the Royal Bengal Tiger (of which 106 were counted in the latest official survey.)', 2, 'yes', 'Sundarbans : land of salt', 'review', '2018-12-12 20:09:19', '2018-12-08 15:17:45'),
(22, 3, 'In Bangladesh, Sundarban Reserve Forest occupies approximately 6000 square kilometres. This is 60% of Sundarban – the world\'s largest mangrove forest – with the remainder falling in West Bengal. Sundarban is a UNESCO Natural World Heritage Site as well as a Ramsar Site of International Importance, treasured for its uniqueness as well as its variety of life, some unique and unusual.\r\n\r\nThe soil of Sundarban is silt deposited by numerous rivers and canals flowing into the Bay of Bengal. Its water is saline. Due to deep and sticky mud – not to mention pointed mangrove roots protruding from the soil - it is difficult to traverse the forest by foot and boats are necessary. There is no permanent human habitation inside the forest.\r\n\r\nThe biodiversity of Sundarban includes over 339 species of birds, 528 species of plants, 35 species of reptiles, 278 varieties of fish and crustaceans, and 42 species of mammals. Many of these species are unique and endangered, including the Masked Finfoot, the River Terrapin and, of course, the Royal Bengal Tiger (of which 106 were counted in the latest official survey.)', 2, 'yes', 'Sundarbans : land of salt', 'review', '2018-12-12 20:09:19', '2018-12-08 15:18:35'),
(23, 3, 'Groot (/ɡruːt/) is a fictional superhero appearing in American comic books published by Marvel Comics. Created by Stan Lee, Larry Lieber and Jack Kirby, the character first appeared in Tales to Astonish #13 (November 1960). An extraterrestrial, sentient tree-like creature, the original Groot first appeared as an invader that intended to capture humans for experimentation.\r\n\r\nThe character was reintroduced as a heroic, noble being in 2006, and appeared in the crossover comic book storyline \"Annihilation: Conquest\". Groot went on to star in its spin-off series, Guardians of the Galaxy, joining the team of the same name. Groot has been featured in a variety of associated Marvel merchandise, including animated television series, toys and trading cards. Vin Diesel voices Groot in the 2014 film Guardians of the Galaxy, its 2017 sequel, Guardians of the Galaxy Vol. 2 and reprised the role in the 2018 film Avengers: Infinity War and will do so again in Avengers: Endgame (2019) while Krystian Godlewski played the character via performance capture in the first film. Vin Diesel is also set to reprise the role for a cameo in Disney\'s animated feature, Ralph Breaks the Internet. Since his film premiere and animated series debut, Groot has become a pop culture icon, with his repeated line \"I am Groot\" becoming an Internet meme.[1]', 2, 'yes', 'Groot', 'review', '2018-12-17 20:03:03', '2018-12-08 16:04:17'),
(24, 4, 'India–Myanmar Sabroom-Cox\'s Bazar railway link has been proposed to connect Sabroom-Khargachari-Rangamati-Bandarban-Satkania-Cox\'s Bazar and another rail link connecting Banderban to Tuipang in India.\r\n\r\nBandarban lies, by bus, eight hours away from Dhaka, two hours from Chittagong and three hours from Cox\'s Bazar. It is also possible to get there by a six-hour bus ride from Rangamati. The Buddha Dhatu Jadi, the Buddhist temple in Bangladesh, located in Balaghata, 4 km from the town. This place attracts many tourists every year. This Theravada Buddhist temple is made completely in the style of South-East Asia and houses the second largest statue of Buddha in Bangladesh. The waterfall named Shoilo Propat at Milanchari is another place tourists like to visit. The numerous Buddhist temples, known as kyang in local tongue, and bhihars in the town include the highly notable the Rajvihar (royal vihar) at Jadipara and the Ujanipara Bhihar. Bawm villages around Chimbuk, and Mru villages a little further off, are also lie within a day\'s journey from the town. Prantik Lake, Jibannagar and Kyachlong Lake are some more places of interest. Boat ride on the river Sangu is one of the main attraction here for tourists.\r\n\r\n    Starting on January 7, 2015 the Home Ministry has enforced the provision of \"no free passes\" for foreigners visiting the three Chittagong Hill Tracts districts – Rangamati, Khagrachhari and Bandarban. As a result, foreigners need to submit an application to the Home Ministry a month ahead for their scheduled visit.[18]', 1, 'yes', 'Tourism of Bandarban', 'review', '2018-12-17 20:06:56', '2018-12-12 20:19:25');
INSERT INTO `articles` (`article_id`, `user_id`, `article`, `tour_location_id`, `verification`, `topic`, `type`, `created_at`, `updated_at`) VALUES
(25, 3, 'The Sundarbans is a mangrove area in the delta formed by the confluence of Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal. It spans from the Hooghly River in India\'s state of West Bengal to the Baleswar River in Bangladesh. It comprises closed and open mangrove forests, agriculturally used land, mudflats and barren land, and is intersected by multiple tidal streams and channels. Four protected areas in the Sundarbans are enlisted as UNESCO World Heritage Sites, viz Sundarbans National Park, Sundarbans West, Sundarbans South and Sundarbans East Wildlife Sanctuaries.[2] The Sundarbans mangrove forest covers an area of about 10,000 km2 (3,900 sq mi). In West Bengal, they extend over 4,260 km2 (1,640 sq mi) across the South 24 Parganas and North 24 Parganas districts.[3] Forests in Bangladesh’s Khulna Division extend over 6,017 km2 (2,323 sq mi). The most abundant tree species are Sundri (Heritiera fomes) and Gewa (Excoecaria agallocha). The forests provide habitat to 453 faunal wildlife, including 290 bird, 120 fish, 42 mammal, 35 reptile and eight amphibian species.[4]\r\n\r\nThe name \'Sundarbans\' Bengali: সুন্দর বন Shundorbôn [ˈʃundorbɔn] means \'beautiful forest\'.[5][6]\r\n\r\nDespite a total ban on all killing or capture of wildlife other than fish and some invertebrates, it appears that there is a consistent pattern of depleted biodiversity or loss of species in the 20th century, and that the ecological quality of the forest is declining.[citation needed] The Directorate of Forest is responsible for the administration and management of Sundarban National Park in West Bengal. In Bangladesh, a new Forest Circle was created in 1993 to preserve the forest, and Chief Conservators of Forests have been posted since. Despite preservation commitments from both Governments, the Sunderbans are under threat from both natural and human-made causes. In 2007, the landfall of Cyclone Sidr damaged around 40% of the Sundarbans. The forest is also suffering from increased salinity due to rising sea levels and reduced freshwater supply. The proposed coal-fired Rampal power station situated 14 km (8.7 mi) north of the Sundarbans at Rampal Upazila of Bagerhat District in Khulna, Bangladesh is anticipated to further damage this unique mangrove forest according to a 2016 report by UNESCO.[7].', 2, 'blocked', 'Sundarban the land', 'review', '2018-12-17 19:03:41', '2018-12-14 13:05:58'),
(28, 3, 'The Sundarban forest lies in the vast delta on the Bay of Bengal formed by the super confluence of the Ganges, Hooghly, Padma, Brahmaputra and Meghna rivers across southern Bangladesh. The seasonally flooded Sundarbans freshwater swamp forests lie inland from the mangrove forests on the coastal fringe. The forest covers 10,000 km2 (3,900 sq mi) of which about 6,000 km2 (2,300 sq mi) are in Bangladesh. It became inscribed as a UNESCO world heritage site in 1997. The Indian part of Sundarbans is estimated to be about 4,110 km2 (1,590 sq mi), of which about 1,700 km2 (660 sq mi) is occupied by waterbodies in the forms of river, canals and creeks of width varying from a few metres to several kilometres.\r\n\r\nThe Sundarbans is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests. The interconnected network of waterways makes almost every corner of the forest accessible by boat. The area is known for the Bengal tiger (Panthera tigris tigris), as well as numerous fauna including species of birds, spotted deer, crocodiles and snakes. The fertile soils of the delta have been subject to intensive human use for centuries, and the ecoregion has been mostly converted to intensive agriculture, with few enclaves of forest remaining. The remaining forests, taken together with the Sundarbans mangroves, are important habitat for the endangered tiger. Additionally, the Sundarbans serves a crucial function as a protective barrier for the millions of inhabitants in and around Khulna and Mongla against the floods that result from the cyclones. The Sundarbans has also been enlisted among the finalists in the New7Wonders of Nature.', 2, 'blocked', 'Sundabans Geo', 'others', '2018-12-17 19:06:43', '2018-12-14 14:14:03'),
(29, 3, 'Bisanakandi Bengali: বিছনাকান্দি is located at Bangladesh-India border in Sylhet division. It is a scene of beauty surrounded by gardens', 3, 'blocked', 'Bisanakandi', 'review', '2018-12-17 19:00:29', '2018-12-17 18:02:46'),
(30, 3, 'Bisanakandi Bengali: বিছনাকান্দি is located at Bangladesh-India border in Sylhet division. It is a scene of beauty surrounded by gardens.bisanakandi asjdklsadsad', 3, 'blocked', 'Bis', 'review', '2018-12-17 19:03:20', '2018-12-17 18:07:54'),
(31, 3, 'Sundarban is the best', 2, 'reported', 'sundarban', 'question', '2018-12-18 00:04:52', '2018-12-17 18:17:06'),
(32, 3, 'image testing', 2, 'blocked', 'image test', 'others', '2018-12-17 19:03:27', '2018-12-17 18:18:09'),
(33, 4, 'Demo article 1', 3, 'blocked', 'Bisanakandi', 'question', '2018-12-17 23:59:38', '2018-12-17 23:55:59'),
(34, 4, 'Demo article 2', 3, 'blocked', 'Demo article 2', 'question', '2018-12-18 00:12:59', '2018-12-17 23:56:29'),
(35, 6, 'qwdwqdwq', 3, 'blocked', 'assadas', 'question', '2018-12-18 00:13:07', '2018-12-17 23:58:45'),
(36, 9, 'Demo image tst', 3, 'reported', 'Demo Image', 'question', '2018-12-18 03:39:42', '2018-12-18 03:08:47'),
(37, 9, 'demo image', 2, 'reported', 'demo image 2', 'review', '2018-12-18 03:26:00', '2018-12-18 03:18:42'),
(38, 9, 'lksamdlasnfkasns lasdbflkbfns sd klfnsdnflsnf sdfklnsdfklsdfsfsdfsdfs', 3, 'yes', 'Bisanakandi is the best', 'review', '2018-12-18 03:40:18', '2018-12-18 03:30:22'),
(39, 6, 'Shovon Raihan & Tishan', 5, 'yes', 'Mirpur zoo animals', 'review', '2018-12-18 05:20:04', '2018-12-18 05:19:18'),
(40, 3, 'laknd lkasdn  igespofn lkasnfasf  klasfnan', 1, 'blocked', 'Posa', 'question', '2018-12-18 05:24:12', '2018-12-18 05:21:28'),
(41, 9, 'asbda asljknjd kjansd', 2, 'yes', 'head e', 'review', '2018-12-18 06:13:47', '2018-12-18 06:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `article_accuracys`
--

CREATE TABLE `article_accuracys` (
  `article_id` int(11) NOT NULL,
  `accuracy` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `problem_with_post` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `article_external_links`
--

CREATE TABLE `article_external_links` (
  `link_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `external_link` longtext NOT NULL,
  `link_title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `article_images`
--

CREATE TABLE `article_images` (
  `image_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `image` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `article_images`
--

INSERT INTO `article_images` (`image_id`, `article_id`, `image`) VALUES
(5, 20, '2018-12-08 09-12-510.jpg'),
(6, 20, '2018-12-08 09-12-511.jpg'),
(7, 20, '2018-12-08 09-12-512.jpg'),
(8, 20, '2018-12-08 09-12-513.jpg'),
(9, 21, '2018-12-08 09-12-4514560298.jpg'),
(10, 21, '2018-12-08 09-12-451347025782.jpg'),
(11, 21, '2018-12-08 09-12-351428840627.jpg'),
(12, 21, '2018-12-08 09-12-351554690648.jpg'),
(13, 21, '2018-12-08 09-12-361380258109.jpg'),
(14, 21, '2018-12-08 09-12-36397488885.jpg'),
(15, 21, '2018-12-08 09-12-361143985981.jpg'),
(16, 21, '2018-12-08 09-12-361354350509.jpg'),
(17, 23, '2018-12-08 10-12-171374898270.jpg'),
(18, 23, '2018-12-08 10-12-18494255250.jpg'),
(19, 23, '2018-12-08 10-12-1816917358.jpg'),
(20, 24, '2018-12-13 02-12-2513329044.jpg'),
(21, 24, '2018-12-13 02-12-25887872998.jpg'),
(22, 25, '2018-12-14 07-12-59674949406.jpg'),
(23, 25, '2018-12-14 07-12-5927921169.jpg'),
(24, 25, '2018-12-14 07-12-59814217940.jpg'),
(25, 25, '2018-12-14 07-12-591044919819.jpg'),
(26, 25, '2018-12-14 07-12-591948681112.jpg'),
(27, 26, '2018-12-14 08-12-031193010009.png'),
(28, 26, '2018-12-14 08-12-03715174976.jpg'),
(29, 26, '2018-12-14 08-12-031449039917.jpg'),
(30, 26, '2018-12-14 08-12-241090883461.jpg'),
(31, 26, '2018-12-14 08-12-24406407629.jpg'),
(32, 28, '2018-12-14 08-12-03970194848.png'),
(33, 28, '2018-12-14 08-12-03878861189.jpg'),
(34, 29, '2018-12-18 12-12-46251337238.jpg'),
(35, 32, '2018-12-18 12-12-091114302351.png'),
(36, 32, '2018-12-18 12-12-101574037742.jpg'),
(37, 32, '2018-12-18 12-12-102079147732.jpg'),
(38, 32, '2018-12-18 12-12-102024494259.jpg'),
(39, 33, '2018-12-18 05-12-59175633407.jpg'),
(40, 33, '2018-12-18 05-12-591391054516.jpg'),
(41, 34, '2018-12-18 05-12-291082739095.jpg'),
(42, 34, '2018-12-18 05-12-301032591269.jpg'),
(43, 36, '2018-12-18 09-12-471733158342.jpg'),
(44, 36, '2018-12-18 09-12-47708874028.jpg'),
(45, 37, '2018-12-18 09-12-42769326731.jpg'),
(46, 37, '2018-12-18 09-12-421910889223.jpg'),
(47, 37, '2018-12-18 09-12-421228020680.png'),
(48, 38, '2018-12-18 09-12-221261266575.jpg'),
(49, 38, '2018-12-18 09-12-221606041439.jpg'),
(50, 38, '2018-12-18 09-12-22426002314.jpg'),
(51, 39, '2018-12-18 11-12-18212477318.jpg'),
(52, 39, '2018-12-18 11-12-181348112933.jpg'),
(53, 41, '2018-12-18 12-12-421236315647.png'),
(54, 41, '2018-12-18 12-12-421247226731.jpg'),
(55, 41, '2018-12-18 12-12-421608363013.jpg'),
(56, 41, '2018-12-18 12-12-421455929765.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `article_likes`
--

CREATE TABLE `article_likes` (
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `info` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `article_ratings`
--

CREATE TABLE `article_ratings` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `commenter_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `article_ratings`
--

INSERT INTO `article_ratings` (`comment_id`, `article_id`, `commenter_id`, `comment`, `created_at`, `updated_at`) VALUES
(2, 4, 3, 'Economy is not good', '2018-12-12 20:14:09', '2018-12-04 06:19:08'),
(3, 4, 3, 'Econmoy valo noy', '2018-12-12 20:14:09', '2018-12-04 06:41:54'),
(6, 3, 3, 'Climate changes because of global warming', '2018-12-12 20:14:09', '2018-12-04 07:09:38'),
(7, 3, 3, 'Agricultural activities had destroyed around 17,179 hectares (42,450 acres) of mangroves within three decades (1975–2010). Shrimp cultivation had destroyed another 7,554 hectares (18,670 acres). Researches from the School of Oceanographic Studies, Jadavpur University, estimated the annual rise in sea level to be 8 millimetres (0.31 in) in 2010. It had doubled from 3.14 millimetres (0.124 in) recorded in 2000. The rising sea levels had also submerged around 7,500 hectares (19,000 acres) of forest areas. This, coupled with an around 1.5 °C (2.7 °F) rise in surface water temperatures and increased levels of salinity have posed a problem for the survival of the indigenous flora and fauna.', '2018-12-12 20:14:09', '2018-12-04 07:16:28'),
(8, 1, 3, 'bandarban vromon', '2018-12-12 20:14:09', '2018-12-04 07:53:42'),
(9, 3, 3, 'sundarban is the best', '2018-12-12 20:14:09', '2018-12-07 07:12:05'),
(11, 23, 3, 'good post', '2018-12-12 20:14:09', '2018-12-08 10:33:19'),
(13, 23, 3, 'good post', '2018-12-12 20:14:09', '2018-12-08 10:34:29'),
(14, 23, 3, 'good post', '2018-12-12 20:14:09', '2018-12-08 10:34:50'),
(15, 23, 3, 'very good post', '2018-12-12 20:14:09', '2018-12-08 10:35:58'),
(16, 23, 3, 'This is groot', '2018-12-12 20:14:09', '2018-12-08 10:38:20'),
(17, 23, 3, 'This is groot', '2018-12-12 20:14:09', '2018-12-08 10:39:35'),
(18, 23, 3, 'Here is groot', '2018-12-12 20:14:09', '2018-12-08 10:39:47'),
(19, 23, 3, 'I am groot', '2018-12-12 20:14:09', '2018-12-09 09:11:12'),
(20, 21, 3, 'pic of a train', '2018-12-12 20:14:09', '2018-12-09 09:13:38'),
(25, 25, 3, 'Sundarban is the best', '2018-12-14 07:06:19', '2018-12-14 07:06:19'),
(26, 30, 3, 'bisanakandi the best', '2018-12-17 12:15:11', '2018-12-17 12:15:11'),
(27, 31, 4, 'soto post', '2018-12-17 12:54:49', '2018-12-17 12:54:49'),
(28, 6, 4, 'ek nojore sundarban', '2018-12-17 17:44:13', '2018-12-17 17:44:13'),
(33, 39, 9, 'croc', '2018-12-18 00:10:42', '2018-12-18 00:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `article_saves`
--

CREATE TABLE `article_saves` (
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `article_saves`
--

INSERT INTO `article_saves` (`article_id`, `user_id`) VALUES
(3, 3),
(1, 3),
(23, 3),
(21, 3),
(20, 4),
(25, 3),
(25, 3),
(28, 5),
(1, 3),
(24, 4),
(24, 9),
(39, 9);

-- --------------------------------------------------------

--
-- Table structure for table `comment_reports`
--

CREATE TABLE `comment_reports` (
  `comment_report_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `commenter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `comment_reports`
--

INSERT INTO `comment_reports` (`comment_report_id`, `status`, `comment_id`, `commenter_id`, `user_id`, `report`, `created_at`, `updated_at`) VALUES
(1, 'moderator', 23, 4, 3, 'l***cha', '2018-12-17 12:16:01', '2018-12-17 12:16:01'),
(3, 'moderator', 21, 3, 3, 'ki comment eidi?', '2018-12-17 13:26:47', '2018-12-17 13:26:47'),
(5, 'moderator', 13, 3, 6, 'wrong info', '2018-12-18 00:14:43', '2018-12-18 00:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_id` int(11) NOT NULL,
  `notice_title` text NOT NULL,
  `notice` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_id`, `notice_title`, `notice`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'AIUB VC CHAIRS IAU INTERNATIONAL CONFERENCE IN KUALA LUMPUR, MALAYSIA', 'The honorable Vice Chancellor of the American International University-Bangladesh (AIUB), Dr. Carmen Z. Lamagna who is a member of the Administrative Board of the International Association of Universities (IAU) and Dr. Charles C. Villanueva, Vice President, Academics and Dean, FBA, AIUB jointly participated in the said conference. Aside from attending the Board Meeting of IAU prior to the actual Conference, she also Chaired one of the Breakout Sessions on Case Studies: Private Sector Engagement. She ably facilitated the discussion on a more professional manner observing the guidelines and decorum of the session. On the other hand, Dr. Charles was a speaker on the topic : Responsible Research. The session analyzed the different approaches and measures required in order to support linkages between research and societal development. It also discussed the challenges and opportunities related to the pursuit of responsible research.\r\n\r\nThe Theme of the International Conference: Higher Education Partnerships for Societal Impact held on 12-15 November 2018 in University of Malaya (first part) and in Pullman Hotel, Bangsar (conference proper). About 300 participants from the different parts of the globe participated and shared their valuable insights and experiences on the theme. Specifically, it laid down emphasis on a variety of issues and themes pertaining to higher education partnerships globally and how they make an important contribution to society at large. It was a gathering of topnotch university heads and officials, researchers and practitioners who made the event more challenging and inspiring. During this conference, there were some time spent for networking so that the participants can avail of the opportunity to establish partnership with their respective organizations on areas of mutual interest.', 0, '2018-12-15 21:23:56', '0000-00-00 00:00:00'),
(3, 'AIUB at the EdHat International Research Conference on Information Communication Technology (ICT) 2018', 'On November 23, 2018 the EdHat International Research Conference on Information Communication Technology (ICT) 2018 was held in the Federation Square, Colombo, Sri Lanka. The American International University-Bangladesh (AIUB) was one of the partner universities of this conference along with Buckinghamshire New University, England, Lincoln University College, Malaysia and Uva Wellassa University, Sri Lanka. The conference was organized by IDM Nations Campus Sri Lanka. The theme of the conference was \"Research in ICT opens the gate to the modern world” with sub themes in the field of Advances in ICT Research, Information Systems and ICT in Education.\r\n\r\nDr. Carmen Z Lamagna, Vice Chancellor of AIUB was represented by Mr. Manzur H Khan, Director, Student Affairs and Ms. Shama Islam, Assistant Professor, FBA and Special Assistant of VC and OSA for the keynote speech in the opening ceremony. In the keynote presentation, the recent developments and research areas of ICT were highlighted along with the emphasis on minimizing the digital divide. The importance of E-governance leading to E-democracy was also a valuable suggestion of the keynote. A total number of 18 selected articles were presented in the 6 different sessions of the conference along with the keynote of Dr. Carmen Z Lamagna. ', 0, '2018-12-15 21:23:56', '0000-00-00 00:00:00'),
(4, 'Poetry in Image and Verses: A Poetry Competition English Department', 'Department of English successfully organized a poetry competition entitled “Poetry in Image and Verses” on 20Th November 2018. This competition also included a photography and painting competition with the themes of “Finding Happiness” and “Memories with AIUB”. Eminent Poet and Ekushey Padak Awardee Mohammad Nurul Huda was present in the program as the chief guest and one of the judges for poetry competition. \r\nInaugurated by the honorable Dean of Faculty of Arts and Social Sciences Professor Dr. Tazul Islam, the program started with a brief farewell of outgoing students as well as welcoming the freshers of Fall semester 2018-19. The competition started with judges enjoying and assessing the outstanding photos and paintings submitted by students from different departments. Following this, the poetry competition took place in three segments - recitation of popular poetry; recitation of self-composed poems; and finally, poetry performances. Students’ spontaneous participation added to the vibrance of the whole initiative. Besides recitations of both Bengali and English poems – either popular or self-composed, performances on literary masterpieces like Ulysses or the monologue of Helena from All’s Well that Ends Well made the program a happening one. The presence and talk of Professor Dr. Charles C. Villanueva, honorable Vice President (Academics) and the Dean of the Faculty of Business Administration had been an inspiration for the students. Results were announced right after the chief guest’s speech and recitation, followed by a vote of thanks from the honorable Head of the department, M Hamidul Haque. With this program, the department keeps up to its tradition of organizing extra-curricular activities in every semester with continuous help and support by Office of Student Affairs (OSA) and AIUB management. ', 0, '2018-12-15 21:26:16', '0000-00-00 00:00:00'),
(5, 'ACES ORGANIZED AN INDUSTRIAL TOUR TO GHORASHAL POWER STATION', 'On 20th October, 2018 AIUB Community of Engineering Students (ACES) organized an industrial tour to Ghorashal Thermal Power Station, Polash, Narshingdi which is the largest power station of Bangladesh and has the generation capacity of 950 MW. It started its operation in the year 1974. It was a delightful day long visit to the power station where it involved the participation of 45 students and 4 faculty members from Department of EEE of American International University-Bangladesh (AIUB).  The team departed at 9:30 a.m. and reached its destination at around 11:30 a.m.   \r\n\r\nOn arrival, all the faculty members and students were greeted by the engineers and officials of Ghorashal Power Station.  After delivering the introductory speech about the power station, the students were divided into 4 groups and were guided accordingly by their respective engineers in charge. The practical demonstration of the working principle of thermal power station and a brief explanation of various machineries were provided to the students.  Thereafter the participants were taken in several sites of the power plant, where the instructor elaborately discussed about the function of primary and auxiliary equipment. Moreover, he has also mentioned about the fundamental principles of steam turbine, generator, sub-station, switchgear facilities and many other electrical components during his lecture. Towards the end of the session, he stated about the upcoming project of GPS where the company aims to deliver quality electricity at reasonable and affordable price with professional service by incorporating advanced technology. Finally, an interactive question and answer session was held in between the instructors and participants.\r\n\r\nAt the very end, the Authorities of GPS has praised AIUB for taking a wonderful initiative for the engineering students to help them in understanding such an important sector of electrical field. AIUB Community of Engineering Students (ACES) extends its fervent gratitude to the authority of the GPS for their support and conviviality. Mr. S.M. Imrat Rahman (Lecturer, Faculty of Engineering, AIUB), Mr. S.M. Tasmeeh Ahsan (Lecturer, Faculty of Engineering, AIUB), Mr. Abir Ahmed (Lecturer, Faculty of Engineering, AIUB) and Mr. Shahriar Parvez (Teaching Assistant, Faculty of Engineering, AIUB) also participated in this tour. The authorities and instructors of the tour were given gift hampers as a token of appreciation and hospitality by the faculty members of AIUB. The tour came to an end with a group photo with all the authorities and the participants.', 0, '2018-12-15 21:26:16', '0000-00-00 00:00:00'),
(8, 'demo', 'demo notice by mod', 3, '2018-12-18 05:24:55', '2018-12-18 05:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_reports`
--

CREATE TABLE `post_reports` (
  `report_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `post_reports`
--

INSERT INTO `post_reports` (`report_id`, `status`, `article_id`, `user_id`, `report`, `created_at`, `updated_at`) VALUES
(1, 'admin', 28, 5, 'Unrelevant pictures', '2018-12-17 23:53:17', '2018-12-14 14:16:18'),
(2, 'wrong', 24, 3, 'irrelevant', '2018-12-18 05:15:16', '2018-12-17 12:14:37'),
(3, 'done', 31, 4, 'onk soto post', '2018-12-18 00:07:41', '2018-12-17 12:57:37'),
(4, 'wrong', 8, 3, 'post is very inaccurative', '2018-12-18 05:20:41', '2018-12-17 13:26:26'),
(5, 'wrong', 23, 4, 'groot not allowd', '2018-12-17 23:54:31', '2018-12-17 17:45:44'),
(6, 'done', 37, 3, 'bad image of bad people', '2018-12-18 03:26:00', '2018-12-17 21:25:27'),
(7, 'done', 36, 9, 'nasj alksdnkadsa', '2018-12-18 03:39:42', '2018-12-17 21:33:00'),
(8, 'admin', 39, 3, 'irrelevant', '2018-12-18 06:13:24', '2018-12-17 23:22:40'),
(9, 'moderator', 39, 9, 'viole', '2018-12-18 00:11:38', '2018-12-18 00:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `super_admins`
--

CREATE TABLE `super_admins` (
  `user_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tour_locations`
--

CREATE TABLE `tour_locations` (
  `tour_location_id` int(11) NOT NULL,
  `place_name` longtext NOT NULL,
  `ideal_post` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tour_locations`
--

INSERT INTO `tour_locations` (`tour_location_id`, `place_name`, `ideal_post`) VALUES
(1, 'Bandarban', 'Bandarban (Bengali: বান্দরবান, lit. \"dam of monkeys\"), also called Rwadawmro (Burmese: ရွာတော်မြို့) in the Marma and Arakanese languages, is a district in South-Eastern Bangladesh, and a part of the Chittagong Division.[1] It is one of the three hill districts of Bangladesh and a part of the Chittagong Hill Tracts, the others being Rangamati District and Khagrachhari District. Bandarban (4,479 km²) is not only the most remote district of the country, but also is the least populous (population 292,900).[2]\r\n\r\nBandarban town is the hometown of the Bohmong Chief (currently King, or Raja, U Cho Prue Marma) who is the head of the Bohmong Circle. Of the other hill districts, Rangamati is the Chakma Circle, headed by Raja Devasish Roy and Khagrachari is the Mong Circle, headed by Raja Sachingprue Marma. Bandarban is regarded as one of the most attractive travel destinations in Bangladesh. It also is the administrative headquarters of Bandarban district, which has turned into one of the most exotic tourist attractions in Bangladesh. '),
(2, 'Sundarbans', 'The Sundarbans (Bengali: সুন্দরবন Shundorbôn [ˈʃundorbɔn] lit. \"The beautiful forest\") is a vast forest in the coastal region of the Bay of Bengal. Located in the delta region of Padma, Meghna and Brahmaputra river basins, this unique forest extends across Khulna, Satkhira, Bagerhat districts of Bangladesh and South 24 Parganas, North 24 Parganas districts of West Bengal, India. The Sundarbans contain the world\'s largest coastal mangrove forest, with an area of about 10,000 km2 (3,900 sq mi), of which about 6,000 km2 (2,300 sq mi) are located in Bangladesh and about 4,000 km2 (1,500 sq mi) in India. The Bangladeshi and Indian parts of the Sundarbans, while in fact adjacent parts of the uninterrupted landscape, have been listed separately in the UNESCO World Heritage List: as The Sundarbans and Sundarbans National Park, respectively. The Bangladeshi part encompasses three wildlife sanctuaries, viz Sundarbans West Wildlife Sanctuary, Sundarbans South Wildlife Sanctuary and Sundarbans East Wildlife Sanctuary, and is recognized as a Ramsar site named Sundarbans Reserved Forest. '),
(3, 'Bisanakandi', 'Bisanakandi Bengali: বিছনাকান্দি is located at Bangladesh-India border in Sylhet division. It is a scene of beauty surrounded by gardens and hills. Bichanakandi is a village stands in Rustompur Union in Guainghat Upazilla. This is where many levels of the Khasi Mountain get together at a particular point from both sides.\r\n\r\nAll of these are high fall. Count to its charm is dark clouds holding close the mountain in the rainy season. It is flowing beneath towards Bholaganj. It is a branch of the Piyain. Beside the stream flowing from high up in the mountain come enormous boulders that are deposited and extracted in Bisanakandi.\r\n\r\nBichanakandi is a stone excavation. It is being used for pretty some years now. But it has become a tourist attraction for only six months and so. A stream coming from a waterfall located in India. It comes down hastening through the mountains. It kisses the Goain River smoothly. At a slender make longer which is decorated with stones of dissimilar sizes and forms. This beautiful meeting point known as Bichanakandi.\r\n\r\nBichanakandi is not organized for abundance of tourists yet. At least as far as expediency is anxious. People just enjoy a relaxed ride while passing by calm natural beauties. The road way to Bichanakandi is full of deep holes here and there. So it is very difficult to reach this wonderful place. Enormous mountains from the Jainta range welcome visitors from all around as they continue more into the hidden profundity of this place.\r\n\r\nEvery bend, every turn was an attractive beauty. Visitors can see a few herds of oxen swim and groups of kids swimming. They also can try to race their boat even. Bichnakandi is typically a mine. Winter season is not an appropriate time to visit Bisnakandi due to automated mining and stone-owner boats and Lorries.'),
(4, 'Sreemangal', 'Sreemangal, The Tea Capital of Bangladesh, is a picturesque hilly area covered with tea estates, lemon groves and pineapple gardens. Miles after miles, Sreemangal Tea Estates form a green carpet on the sloping hills. A large portion of world\'s highest quality tea is grown and exported from Sreemangal, hence it is called the tea capital. But there is more to Sreemangal than just tea. Sreemangal is a magical world famous for nature, forests and wildlife, which makes it another prime Bangladesh Eco-Tourism Destination. Here it is possible to look around and not see another human being.\r\n\r\nVisit Sreemangal for breathtaking views of sloping landscape wrapped with endless tea gardens. The rolling plains lie quietly and seemingly untouched in all their splendors. Large rubber gardens and lakes of Sreemangal instill a peace and tranquility in this region which attracts visitors from far and away.'),
(5, 'Mirpur zoo', 'is the best'),
(6, 'London', 'demo london'),
(7, 'Kuratoli', 'The longest river in Bangladesh.'),
(8, 'Asgard', 'The magical place where thor lives'),
(9, 'new york', 'new york');

-- --------------------------------------------------------

--
-- Table structure for table `tour_location_external_links`
--

CREATE TABLE `tour_location_external_links` (
  `link_id` int(11) NOT NULL,
  `tour_location_id` int(11) NOT NULL,
  `external_link` longtext NOT NULL,
  `link_title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tour_location_images`
--

CREATE TABLE `tour_location_images` (
  `image_id` int(11) NOT NULL,
  `tour_location_id` int(11) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tour_location_images`
--

INSERT INTO `tour_location_images` (`image_id`, `tour_location_id`, `image`) VALUES
(1, 1, '2018-12-14 08-12-031193010009.png'),
(2, 1, '2018-12-14 08-12-03715174976.jpg'),
(3, 4, '2018-12-18 04-12-15991935456.jpg'),
(4, 4, '2018-12-18 04-12-161072952330.jpg'),
(5, 4, '2018-12-18 04-12-161956525350.jpg'),
(6, 4, '2018-12-18 04-12-161085796103.jpg'),
(7, 5, '2018-12-18 06-12-47643410980.png'),
(8, 6, '2018-12-18 09-12-47600813768.jpg'),
(9, 7, '2018-12-18 09-12-131516898295.jpg'),
(10, 8, '2018-12-18 09-12-37717094772.jpg'),
(11, 9, '2018-12-18 11-12-461740425119.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `address` longtext NOT NULL,
  `avatar` longtext NOT NULL,
  `gender` longtext NOT NULL,
  `dob` date NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `type` longtext NOT NULL,
  `status` longtext NOT NULL,
  `moderator_level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `name`, `password`, `address`, `avatar`, `gender`, `dob`, `phone_no`, `type`, `status`, `moderator_level`, `created_at`, `updated_at`) VALUES
(3, 'nadim@gmail.com', 'Nadim', 'nad', 'Satkhira Kaliganj', '2018-12-12 08-12-58417071398.jpg', 'male', '1968-12-02', '01711167333', 'user', 'live', 2, '2018-12-17 23:42:33', '2018-12-12 14:06:58'),
(4, 'shovon@gmail.com', 'shovon', 'sho', 'Mirpur', '2018-12-12 08-12-09154576993.png', 'male', '1975-11-02', '01789856789', 'user', 'live', 0, '2018-12-12 14:18:09', '2018-12-12 14:18:09'),
(5, 'nasimul@gmail.com', 'Nasimul Hasan Shanto', 'nas', 'Bashundhara Dhaka', '2018-12-14 05-12-371281064540.jpg', 'male', '1967-02-09', '01611167333', 'user', 'live', 0, '2018-12-14 11:47:37', '2018-12-14 11:47:37'),
(6, 'ehtesham@gmail.com', 'Ehtesham', 'eht', 'Dhaka Bangladesh', '2018-12-12 08-12-58417071398.jpg', 'male', '2017-07-04', '01711167333', 'user', 'live', 1, '2018-12-17 14:34:24', '0000-00-00 00:00:00'),
(7, 'golam@gmail.com', 'Golam', 'gol', 'Dhaka', '2018-12-12 08-12-09154576993.png', 'male', '2016-04-05', '01922278333', 'user', 'live', 2, '2018-12-17 14:34:24', '0000-00-00 00:00:00'),
(8, 'admin@gmail.com', 'Admin', 'adm', 'Dhaka', '2018-12-12 08-12-58417071398.jpg', 'male', '2015-01-06', '01922234567', 'admin', 'live', 0, '2018-12-17 14:47:49', '0000-00-00 00:00:00'),
(9, 'aneka@gmail.com', 'Aneka', 'ane', 'Dhaka', '2018-12-18 02-12-052142172640.jpg', 'male', '2018-07-10', '01111111111', 'user', 'live', 0, '2018-12-17 20:53:05', '2018-12-17 20:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_performances`
--

CREATE TABLE `user_performances` (
  `user_id` int(11) NOT NULL,
  `article_written` int(11) NOT NULL,
  `article_verified` int(11) NOT NULL,
  `article_saved` int(11) NOT NULL,
  `article_reported` int(11) NOT NULL,
  `reported_article` int(11) NOT NULL,
  `comment_number` int(11) NOT NULL,
  `reported_comment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `article_external_links`
--
ALTER TABLE `article_external_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `article_images`
--
ALTER TABLE `article_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `article_ratings`
--
ALTER TABLE `article_ratings`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_reports`
--
ALTER TABLE `comment_reports`
  ADD PRIMARY KEY (`comment_report_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `post_reports`
--
ALTER TABLE `post_reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `super_admins`
--
ALTER TABLE `super_admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tour_locations`
--
ALTER TABLE `tour_locations`
  ADD PRIMARY KEY (`tour_location_id`);

--
-- Indexes for table `tour_location_external_links`
--
ALTER TABLE `tour_location_external_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `tour_location_images`
--
ALTER TABLE `tour_location_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_performances`
--
ALTER TABLE `user_performances`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `article_external_links`
--
ALTER TABLE `article_external_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_images`
--
ALTER TABLE `article_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `article_ratings`
--
ALTER TABLE `article_ratings`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comment_reports`
--
ALTER TABLE `comment_reports`
  MODIFY `comment_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_reports`
--
ALTER TABLE `post_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tour_locations`
--
ALTER TABLE `tour_locations`
  MODIFY `tour_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tour_location_external_links`
--
ALTER TABLE `tour_location_external_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour_location_images`
--
ALTER TABLE `tour_location_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
