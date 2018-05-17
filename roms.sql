-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2018 at 07:31 PM
-- Server version: 5.7.21
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_slug`, `name`, `description`, `priority`) VALUES
('appertizers', 'Appetizers', '', 1),
('beef_lamb_pork', 'Beef, Lamb & Pork', '', 3),
('chef_recommended', 'Chef Recommended', '', 7),
('chicken', 'Chicken', '', 4),
('mains', 'Mains', '', 2),
('thai_vietnamese', 'Thai & Vietnamese', '', 5),
('vergetarian', 'Vegetarian', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `cat_slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dish_code`, `cat_slug`, `name`, `description`) VALUES
('01', 'appertizers', 'Vegetarian Spring Rolls', 'Taro slices & vegetables wrapped in a light pastry, deep-fried and served with sweet and sour sauce'),
('01a', 'appertizers', 'Vegetarian Curry Puff', 'Sweet potatoes, onions & curry spices wrapped in a pastry, deep fried and served with a lime sweet chilli sauce'),
('02', 'appertizers', 'Homemade Spring Rolls', 'Minced pork and vegetables wrapped in a light pastry. deep-fried and served with a sweet and sour sauce. '),
('03', 'appertizers', 'Honey Sesame Chicken', 'Tempura battered chicken breast pieces glazed with honey & roasted sesame seeds on crispy glass noodles'),
('04', 'appertizers', 'Cha Tofu', 'Freshly deep fried tofu with sweet and sour and soy sauce'),
('05', 'appertizers', 'Steamed Dim Sims', 'Traditional Chinese wrap with pork, water chestnuts, shallots, coriander and served with soy sauce. '),
('06', 'appertizers', 'Chicken Satay Sticks', 'Chicken fillet marinated in an aromatic tumeric blend served with homemade peanut satay sauce. '),
('07', 'appertizers', 'Honey King Prawns', 'Tempura battered tail-on king prawns glazed with honey and roasted sesame seeds on crispy glass noodles. '),
('07a', 'appertizers', 'Mach Tong Ngap', 'Honey glazed tender roast duck on a bed of crisp mixed leaves. '),
('08', 'appertizers', 'Coconut Prawns', 'Coconut coated tail-on king prawns, deep fried and served with lime sweet chilli sauce'),
('09', 'appertizers', 'Paper Chicken', 'Vietnamese rice paper rolls with marinated chicken, coriander and shallots, deep-fried and served with lime sweet chilli sauce. '),
('10', 'appertizers', 'Salad Rolls', 'Vietnamese rice paper with sliced king prawns, rice vermicelli, mints, lettuces, cucumbers and bean sprouts and served with special dipping sauce'),
('11', 'appertizers', 'Sang Choi Bao', 'Lemongrass infused chicken breast pieces served with green leaves capsicums, onions and coriander'),
('12', 'appertizers', 'Salt And Spicy Calamari', 'Tempura battered five-spice & chilli squid slices'),
('12a', 'appertizers', 'Fish Cakes', 'Spicy fish cakes served with lime sweet chilli sauce'),
('12c', 'appertizers', 'Tamarind King Prawns', 'Tempura battered tail-on king prawns glazed in a tasty mild chili tamarind sauce on crispy glass noodles. '),
('12d', 'appertizers', 'Salt and Spicy Chicken', 'Tempura battered spice and chilli chicken breast pieces or tofu. '),
('12e', 'appertizers', 'Golden Bags', 'A combination of ground chicken, prawn meat, water chestnuts, fresh coriander wrapped in light pastry, deep-fried and served with lime sweet chili sauce. '),
('12f', 'appertizers', 'Wing Wing', 'De-boned chicken wing, filled with a combination of ground pork, Mung bean noodles, water chestnuts and coriander. Crumbed, deep-fried and served with a lime sweet chili sauce. '),
('12g', 'appertizers', 'Soft Shell Crab', 'Tempura battered five-spice and chilli soft shell crab dipped with sweet vinegar'),
('12h', 'appertizers', 'Beef Look Luck', 'Marinated bee( fillet cubes, capsicums, onions and shallots, wok-tossed with black pepper sauce. '),
('12i', 'appertizers', 'Wontons', 'A traditional & popular Chinese entree, deep fried and served with sweet and sour sauce'),
('12j', 'appertizers', 'Peking Duck Wraps', 'Roasted Peking duck breast slices wrapped with fresh cucumber, coriander, shallots and traditional sauce'),
('12k', 'appertizers', 'Nibble Nibble', 'Marinated chicken nibbles deep fried and served with lime sweet chilli sauce'),
('17', 'mains', 'Basil Chilli Black Bean Mussels', 'Steamed 1/2 New Zealand mussels with special chilli black bean sauce and sweet basil leaves'),
('18', 'mains', 'Thai Kra Chai Fish', 'Tempura battered fillet of fish wok tossed with Thai Krachai, fresh chilli, peppercorns, capsicum, zucchini, and carrot in a creamy red curry'),
('19', 'mains', 'Peking King Prawn', 'A popular Chinese sauce made from celery, carrot, tomatoes wok tossed with tail on king prawns, onion, tomatoes, pineapple and capsicum'),
('20', 'mains', 'King Prawn Cashew Nuts', 'Tail-on king prawns wok-tossed with seasonal vegetables in a garlic oyster sauce topped with roasted cashew nuts. '),
('21', 'mains', 'Garlic King Prawn', 'Garlic infused tail on king prawns with seasonal vegetables'),
('22', 'mains', 'Ginger Shallot King Prawn', 'Tail-on king prawns wok-tossed in fresh ginger, shallots and seasonal vegetables. '),
('23', 'mains', 'Tasty King Prawn', 'Coriander infused tail-on king prawns wok-tossed in a gourmet Vietnamese blend and seasonal vegetables. '),
('24', 'mains', 'Szechuan Calamari', 'Tender calamari pieces in special blended chilli, Szechuan sauce and seasonal vegetables'),
('24a', 'mains', 'Prik Phao Calamari', 'Roasted chilli paste, aromatic basil leaves and calamari, wok tossed with seasonal vegetables'),
('24b', 'mains', 'Chilli Plum Calamari', 'Tempura battered tender calamari combined with sweet chilli plum sauce and rice'),
('25', 'beef_lamb_pork', 'Black Bean Steak', 'Tender beef slices and seasonal vegetables, blended with special black bean sauce'),
('25a', 'beef_lamb_pork', 'Black Pepper Beef', 'Tender beef slices wok-tossed with black pepper, butter, caramelised onion, shallots and capsicum. '),
('26', 'beef_lamb_pork', 'Mongolian Beef', 'Tender beef or lamb slices wok-tossed in a special Mongolian sauce with seasonal vegetable'),
('27', 'beef_lamb_pork', 'Beef Stir Fried', 'Tender beef slices and seasonal vegetables wok-tossed in a garlic and oyster sauce.'),
('27a', 'beef_lamb_pork', 'Peking Beef', 'A popular Chinese sauce made from celery, carrots & tomato, tender beef slices work tossed with capsicum, carrots, onion and zucchini'),
('27b', 'beef_lamb_pork', 'Garlic Basil Pork', 'Garlic infused pork slices work tossed with aromatic basil leaves and seasonal vegetables'),
('27c', 'beef_lamb_pork', 'XO Beef', 'Tender beef slices infused in gourmet chilli shrimps and wok-tossed with seasonal vegetables. '),
('28', 'chicken', 'Chicken Cashew Nuts', 'Tender chicken breast pieces, vegetables, oyster sauce and roasted cashew nuts'),
('28a', 'chicken', 'Garlic Chicken', 'Garlic and coriander root infused chicken breast pieces wok-tossed with seasonal vegetables. '),
('28b', 'chicken', 'Mango Chicken', 'Tender chicken breast pieces work tossed with mango, capsicum, snow peas and garnished with cashew nuts'),
('28c', 'chicken', 'Honey Soy Chicken Wings', 'Crispy deep-fried chicken wings generously coated in our homemade honey garlic soy sauce on crisp mixed leaves.'),
('28d', 'chicken', 'Spicy Chilli Chicken Wings', 'Crispy deep-fried chicken wings smothered in our tasty ginger chilli sauce on crisp mixed /eaves. '),
('29', 'chicken', 'Chilli Garlic Chicken', 'Garlic infused chicken breast pieces wok-tossed with seasonal vegetables and chilli.'),
('30', 'chicken', 'Ginger and Shallot Chicken', 'Ginger infused chicken breast pieces wok-tossed with seasonal vegetables.'),
('31', 'chicken', 'Sweet and Sour Chicken', 'Golden tempura battered chicken breast fillet or tender pork pieces glazed in a special sweet and sour blend of pineapple, celery and tomatoes'),
('31a', 'chicken', 'Salty And Spicy Chicken', 'Light battered spicy pork, chicken or tofu with fresh chilli'),
('32', 'chicken', 'Honey Lemon Chicken', 'Tempura battered chicken breast fillet or king prawns glazed with a house-made honey lemon sauce and roasted sesame seeds. '),
('32a', 'chicken', 'Satay Chicken', 'Tender chicken breast pieces and seasonal vegetables wok-tossed with homemade peanut satay sauce. '),
('32b', 'chicken', 'Chicken Chow Mein', 'Tender chicken breast pieces stir-fried with seasonal vegetables on a bed of thin egg noodles. '),
('32c', 'chicken', 'Chicken Foo Young Egg', 'Tender chicken breast pieces scrambled with eggs and vegetables'),
('32d', 'chicken', 'Teriyaki Chicken', 'Tender chicken breast pieces wok-tossed in a tasty Teriyaki sauce with onions and seasonal vegetables . '),
('33', 'thai_vietnamese', 'Chilli Lemongrass', 'A classic Vietnamese style, fresh lemongrass and chilli with your choice of tender chicken, beef or king prawns'),
('34', 'thai_vietnamese', 'Thai Red Curry', 'A creamy and spicy red curry with your choice of tender chicken, beef or king prawn, wok tossed with seasonal vegetables'),
('35', 'thai_vietnamese', 'Thai Green Curry', 'A hot and spicy green curry with your choice of tender chicken, beef or king prawns, wok-tossed with seasonal vegetables. '),
('35a', 'thai_vietnamese', 'Yellow Curry', 'A mild creamy curry with your choice of tender chicken, beef or king prawns wok-tossed with seasonal vegetables.'),
('35b', 'thai_vietnamese', 'Panang Curry', 'A creamy aromatic curry wok-tossed with onion and kaffir lime leaves with your choice of lamb, chicken, beef or king prawns. '),
('35c', 'thai_vietnamese', 'Mussaman Beef', 'Tender beef pieces cooked with potatoes, onion, peanuts and coconut milk.'),
('36', 'thai_vietnamese', 'Pong Ca Ri', 'A mild sweet yellow curry without coconut cream wok-tossed with seasonal vegetables and your choice of chicken, beef or king prawns. (contains egg)'),
('37', 'thai_vietnamese', 'Sweet & Chilli Fish', 'Deep-fried snapper fillet smothered in sweet chill sauce with pineapple, tomato and celery.'),
('38', 'thai_vietnamese', 'Prik Khing', 'Red curry paste stir-fried with green beans and aromatic kaffir lime leaves. Suitable for curry lovers who enjoy the aroma and flavours of fresh curry without the coconut cream. '),
('39', 'thai_vietnamese', 'Prik Phao', 'Roasted chilli paste and aromatic basil leaves wok-tossed with seasonal vegetables and your choice of tender chicken, beef or king prawns. '),
('40', 'thai_vietnamese', 'Basil Chilli Black Bean', 'A new way of combining chilli, black bean sauce and sweet basil, wok-tossed with seasonal vegetables and your choice of tender chicken, beef or king prawns. '),
('41', 'thai_vietnamese', 'Pad Thai', 'A popular Thai style noodle dish in our special homemade sauce wok-tossed with tender chicken, flat rice noodles, egg, shallots, onion, bean sprouts and ground peanuts. '),
('41a', 'thai_vietnamese', 'Pad Se Heaw', 'Tender chicken breast wok-tossed with flat rice noodles, egg, Chinese vegetables, bean sprouts and shallots. '),
('41b', 'thai_vietnamese', 'Char Kway Teaw', 'Flat rice noodles, fresh garlic, chilli, egg, bean sprouts and shallots wok-tossed with your choice of chicken, king prawns or seafood. '),
('41c', 'thai_vietnamese', 'Ho Fun Chicken', 'Garlic infused chicken or seafood, stir fried with seasonal vegetables and fiat rice noodles. '),
('42', 'thai_vietnamese', 'Thai Fried Rice', 'Tender chicken breast pieces, king prawn and mixed seasonal vegetables wok-tossed with egg and roasted chilli paste.'),
('42a', 'thai_vietnamese', 'Green Coconut Fried Rice', 'Creamy green curry wok-tossed with chicken breast pieces and mixed seasonal vegetables with egg, sweet basil and aromatic kaffir lime leaves. '),
('43', 'thai_vietnamese', 'Nasi Goreng', '3 meats - chicken, pork and beef wok-tossed with mixed seasonal vegetables, egg, spicy curry and chilli. '),
('44', 'thai_vietnamese', 'Chicken Jasmine Fried Rice', 'Tender chicken breast pieces wok-tossed with mixed seasonal vegetables and egg. '),
('44a', 'thai_vietnamese', 'Young Chow Fried Rice', 'Tail-on king prawns, roast park wok-tossed with mixed seasonal vegetables and egg. '),
('44b', 'thai_vietnamese', 'Pineapple Prawn Fried Rice', 'Tailless king prawn wok-tossed with egg, seasonal vegetables, pineapple and aromatic spicy curry. '),
('45', 'thai_vietnamese', 'Tom Yum', 'Thin rice noodles and seasonal vegetables in a traditional sour and spicy Tom Yum broth with your choice of tender chicken, beef or king prawns. '),
('46', 'thai_vietnamese', 'Laksa', 'Combination of Hokkien noodles, thin rice noodles and seasonal vegetables in a creamy coconut chilli broth with your choice of tender chicken, beef or king prawns. '),
('47', 'vergetarian', 'Chilli Lemongrass Tofu', 'Deep-fried tofu slices wok-tossed with fresh chilli lemongrass and seasonal vegetables garnished with roasted cashew nuts. '),
('47a', 'vergetarian', 'Thai Spicy Tofu Vegetarian', 'Seasonal vegetables and tofu wok-tossed with dried red curry paste and aromatic kaffir lime leaves. '),
('48', 'vergetarian', 'Vegetarian Delight', 'Snow peas, broccoli and seasonal vegetables wak-tossed in garlic oyster sauce and garnished with roasted cashew nuts. '),
('49', 'vergetarian', 'Vegetarian Pad Thai', 'A popular Thai style noodle dish in our special homemade sauce wok-tossed with vegetables, flat rice noodles, egg, bean spouts and shallots garnished with roasted cashew nuts and ground peanuts. '),
('50', 'vergetarian', 'Vegetarian Thai Curry', 'Seasonal vegetables and your choice of spicy red curry, hot Green curry or aromatic Panang curry. All coconut cream based. '),
('51', 'vergetarian', 'Satay Vegetarian', 'Seasonal vegetables wok-tossed with homemade peanut satay sauce and garnished with roasted cashew nuts. '),
('52', 'vergetarian', 'Chilli Black Bean Basil Tofu', 'Deep fried tofu slices and seasonal vegetables wok-tossed in a special black bean sauce with fresh chilli and sweet basil leaves, garnished with roasted cashew nuts. '),
('53', 'vergetarian', 'Basil Prik Phao Vegetarian', 'Seasonal vegetables wok-tossed in roasted chill paste and sweet basil leaves garnished with roasted cashew nuts.'),
('54', 'vergetarian', 'Vegetarian Jasmine Fried Rice', 'Seasonal vegetables wok-tossed with egg and rice.'),
('55', 'vergetarian', 'Basil Tofu', 'Deep-fried tofu slices wok-tossed with seasonal vegetables and sweet basil leaves garnished with roasted cashew nuts.'),
('57', 'vergetarian', 'Vegetarian Thai Fried Rice', 'Seasonal vegetables wok-tossed with egg and roasted chilli paste. '),
('57a', 'vergetarian', 'Vegetarian Pineapple Fried Rice', 'Seasonal vegetables wok-tossed with egg, pineapple and aromatic spicy curry. '),
('58', 'vergetarian', 'Vegetarian Chow Mein', 'Seasonal vegetables stir-fried with garlic and oyster sauce on a bed of egg noodles.'),
('58a', 'vergetarian', 'Vegetarian Singapore Noodles', 'Seasonal vegetables and thin rice noodles wok-tossed with egg, spicy curry and chilli. '),
('58b', 'vergetarian', 'Vegetarian Hokkien Stir Fry', 'Seasonal vegetables and Hakkien noodles wok-tossed with garlic and oyster sauce. '),
('58c', 'vergetarian', 'Vegetarian Pad Se Heaw', 'Seasonal Chinese vegetables wok-tossed with flat rice noodles, egg, bean sprouts and shallots. '),
('59', 'vergetarian', 'Vegetarian Foo Young Egg', 'Seasonal vegetables scrambled with egg.'),
('60', 'vergetarian', 'Vegetarian Mussaman Curry', 'Seasonal vegetables, potatoes, peanuts cooked in a creamy Mussaman curry.'),
('60a', 'vergetarian', 'Crispy Honey Soy', 'Crispy deep-fried soy pieces smothered in a homemade blend of honey, soy, garlic and ginger on a bed of mixed leaves. '),
('60b', 'vergetarian', 'Crispy Ginger Chill', 'Crispy deep-fried soy pieces wok-tossed in a fresh ginger and special chilli sauce on a bed of mixed leaves. '),
('60c', 'vergetarian', 'Garlic Peppercorn Mushroom', 'Garlic infused mushrooms wok-tossed in fresh garlic, onion, peppercorn, shallots and capsicum. '),
('60d', 'vergetarian', 'Salt and Spicy Mushroom', 'Tempura battered five-spice and chilli mushroom.'),
('60e', 'vergetarian', 'Pan-fried Tofu', 'Lightly pan-fried fresh silken tofu on a bed of wok-tossed Chinese vegetables in garlic and oyster sauce. '),
('60f', 'vergetarian', 'Vegetarian Tofu Pot', 'Deep-fried tofu, a combination of Chinese mushroom and seasonal vegetables. '),
('60g', 'vergetarian', 'Spicy Teriyaki Tofu', 'Ginger and garlic infused tofu drizzled with spicy Japanese teriyaki sauce, onion and broccoli. '),
('66', 'chef_recommended', 'Peppercorn Roast Duck', 'Roasted duck slices wok-tossed with fresh garlic, spicy peppercorn, wild ginger, capsicum, onion, fresh chilli, sweet basil and aromatic kaffir lime leaves. '),
('67', 'chef_recommended', 'Ketchup Pork Chop', 'Battered boneless pork chop wok-tossed with onion, pineapple in our special ketchup'),
('68', 'chef_recommended', 'Garlic Black Bean King Prawn', 'Chilli garlic infused tail-on king prawns, lightly battered, wok-tossed with fresh chilli and spicy black beans. '),
('69', 'chef_recommended', 'XO King Prawn', 'Chilli shrimps infused tail-on king prawns wok-tossed with seasonal vegetables. '),
('70', 'chef_recommended', 'Ginger Shallot Scallops', 'Ginger infused roe-off scallops wok-tossed with fresh ginger, onion, carrot, shallots capsicum and zucchini. '),
('70a', 'chef_recommended', 'Spicy Teriyaki Scallops', 'Ginger garlic infused roe-off scallops drizzled with spicy Japanese Teriyaki sauce, onion and broccoli. '),
('70b', 'chef_recommended', 'Spicy Scallop', 'Tempura battered roe-off scallops wok-tossed with garlic, fresh chilli, spicy black bean, capsicum, onion and shallots. '),
('71', 'chef_recommended', 'Chilli Tamarind King Prawn', 'Coriander infused tail-on king prawns wok-tossed with roasted chilli tamarind, fresh lemongrass, coriander and ground peanuts.'),
('72', 'chef_recommended', 'Goong Bowl Ha', 'Tail-on king prawn wok-tossed with fresh garlic, onion, dry chilli, shallots and capsicum in our special sauce garnished with roasted cashew nuts. '),
('73', 'chef_recommended', 'Snow Peas King Prawn', 'Garlic infused tail-on king prawns, wok-tossed with snow peas and mushrooms in oyster sauce. '),
('74', 'chef_recommended', 'Green Lemongrass Seafood', 'Tail-on king prawns, calamari, scallops and fish balls wok-tossed with fresh chilli, green curry paste, lemongrass, onion, green beans, capsicums, zucchini, aromatic kaffir lime leaves and sweet basil leaves. '),
('75', 'chef_recommended', 'Tasty Pepper Seafood', 'Combination seafood wok-tossed with fresh chilli, onion, green beans, capsicum, zucchini, sweet basil leaves and crushed black pepper. '),
('76', 'chef_recommended', 'Spicy Lemongrass Fish', 'Steamed fillet of fish in a spicy, creamy red curry, basil, kaffir lime and lemongrass mixture'),
('77', 'chef_recommended', 'Saw Leaves Coconut Fish', 'Steamed snapper flier in an aromatic broth of fresh lemongrass, chilli, saw leaves, coriander, aromatic kaffir leaves, capsicum, mushrooms and coconut milk. '),
('78', 'chef_recommended', 'Samonpai Fish', 'Deep-fried snapper fillet wok-tossed in a special sauce made from fresh lemongrass, apple or mango slices, saw leaves, coriander, sweet basil leaves, onion, chilli, fish sauce, lemon juice and roasted peanuts on a bed of crisp mixed leaves. '),
('79', 'chef_recommended', 'Ginger Fish', 'Steamed snapper fillet with fresh ginger and shallot served with seasonal vegetables. '),
('80', 'chef_recommended', 'Basil Duck', 'Roasted duck fillet slices, wok-tossed with fresh chilli, mushroom, onion, shallot, capsicum and sweet basil leaves. '),
('81', 'chef_recommended', 'Red Curry Duck', 'Roasted duck fillet slices in a creamy and spicy red curry wok-tossed with seasonal vegetables, aromatic basil leaves and kaffir lime leaves.'),
('82', 'chef_recommended', 'Garlic Lamb', 'Tender lamb slices wok-tossed with fresh garlic, onion, carrot, green bean, zucchini, capsicum and aromatic basil leaves. '),
('83', 'chef_recommended', 'Spicy Lamb', 'Tender lamb slices wok-tossed with red curry, onion, carrot, green beans, zucchini, capsicum and aromatic basil leaves and (topped) with coconut milk.'),
('84', 'chef_recommended', 'Ball Law Gai', 'Tender chicken breast pieces wok-tossed in garlic oyster sauce with pineapple pieces, tomatoes, onion and shallots.'),
('85', 'chef_recommended', 'Chicken Chilli Mushroom', 'Chilli and garlic infused chicken breast pieces wok-tossed with mushrooms, onion and capsicum. '),
('86', 'chef_recommended', 'Spicy Yellow Crab', 'Tempura battered soft shell crab wok-tossed with a mild sweet tasty yellow curry, onion and egg. '),
('86a', 'chef_recommended', 'Tamarind Soft Shell Crab', 'Tempura battered soft shell crab wok-tossed with a special tamarind sauce, capsicum, pineapple, onion and shallots.'),
('86b', 'chef_recommended', 'Garlic Peppercorn', 'Tempura battered soft shell crab, wok-tossed with spicy garlic, peppercorn, onion, shallots and capsicum. '),
('86c', 'chef_recommended', 'Black Pepper Soft Shell Crab', 'Tempura battered soft shell crab wok-tossed with black pepper, butter caramelised onion, shallots and capsicum. '),
('86d', 'chef_recommended', 'Ginger Chilli Soft Shell Crab', 'Tempura battered soft shell crab wok-tossed in a homemade ginger, pineapple and chilli sauce. '),
('87', 'chef_recommended', 'Chilli Plum Pork Ribs', 'Lightly battered pork ribs wok-tossed in a sweet chilli plum sauce and steamed broccoli. '),
('88', 'chef_recommended', 'Spicy Pork Ribs', 'Tempura battered tasty pork ribs wok-tossed with garlic, fresh chilli, spicy black beans, capsicum, onion and shallots.');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `var_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `order_id`, `dish_code`, `var_name`, `price`, `quantity`, `notes`) VALUES
(153, 101, '01', 'Default', 5, 2, ''),
(154, 101, '01a', 'Default', 5, 1, ''),
(155, 101, '02', 'Default', 6, 1, ''),
(156, 102, '01', 'Default', 5, 1, ''),
(157, 102, '01a', 'Default', 5, 1, ''),
(158, 102, '02', 'Default', 6, 1, ''),
(159, 103, '01', 'Default', 5, 1, ''),
(160, 103, '01a', 'Default', 5, 1, ''),
(161, 103, '03', 'Default', 7, 1, ''),
(162, 103, '04', 'Default', 5, 1, ''),
(163, 104, '01', 'Default', 5, 1, ''),
(164, 104, '01a', 'Default', 5, 1, ''),
(165, 104, '02', 'Default', 6, 1, ''),
(166, 104, '03', 'Default', 7, 1, ''),
(167, 105, '01', 'Default', 5, 1, ''),
(168, 105, '01a', 'Default', 5, 1, ''),
(169, 105, '02', 'Default', 6, 1, ''),
(170, 105, '03', 'Default', 7, 1, ''),
(171, 105, '04', 'Default', 5, 1, ''),
(172, 106, '01', 'Default', 5, 1, ''),
(173, 106, '01a', 'Default', 5, 1, ''),
(174, 106, '02', 'Default', 6, 1, ''),
(175, 107, '01', 'Default', 5, 2, ''),
(176, 107, '02', 'Default', 6, 2, ''),
(177, 107, '66', 'Default', 19.9, 1, ''),
(178, 107, '67', 'Default', 15.9, 1, ''),
(179, 108, '01', 'Default', 5, 1, ''),
(180, 108, '01a', 'Default', 5, 1, ''),
(181, 108, '02', 'Default', 6, 1, ''),
(182, 109, '01', 'Default', 5, 1, ''),
(183, 109, '01a', 'Default', 5, 2, ''),
(184, 109, '02', 'Default', 6, 2, ''),
(185, 110, '02', 'Default', 6, 2, ''),
(186, 110, '01a', 'Default', 5, 2, ''),
(187, 110, '01', 'Default', 5, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `order_time` datetime NOT NULL,
  `expected_time` datetime NOT NULL,
  `pickup_time` datetime NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_time`, `expected_time`, `pickup_time`, `notes`) VALUES
(101, '0450087209', '2018-04-22 22:43:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(102, '0450087209', '2018-04-22 23:12:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(103, '0450087209', '2018-04-22 23:37:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(104, '0450087209', '2018-04-23 00:48:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(105, '0450087209', '2018-04-23 00:54:09', '2018-04-23 01:09:09', '2018-04-23 00:58:09', ''),
(106, '0450087209', '2018-04-23 01:02:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(107, '0450087209', '2018-04-23 01:10:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(108, '0450087209', '2018-04-25 02:22:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(109, '0450087209', '2018-05-17 17:37:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(110, '0450087209', '2018-05-17 18:51:29', '2018-05-17 19:06:29', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`dish_code`, `user_id`, `content`, `rating`) VALUES
('01', '0450087209', '\'rat iaculis dapibus. Praesent euismod nulla sed suscipit interdum. In hac habitasse platea dictumst. Quisque sodales tincidunt lacus. Morbi accumsan ipsum eget nulla congue, nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus luctus ante, vitae malesuada tellus quam tempus metus', 2),
('01', '0452000826', 'Aenean at dolor eu arcu suscipit finibus. Suspendisse aliquam urna ut elit feugiat mollis. Suspendisse vehicula elit a pulvinar tempus. Suspendisse justo augue, blandit ac commodo vitae, viverra et justo. Nulla facilisi. Quisque quis felis libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam nunc mauris, viverra non nibh a, consequat finibus ex. Praesent laoreet sit amet leo nec tincidunt. Duis aliquet cursus fermentum. Pellentesque id aliquet massa, vel imperdiet neque.', 5),
('01', '0492726924', 'Nam placerat iaculis dapibus. Praesent euismod nulla sed suscipit interdum. In hac habitasse platea dictumst. Quisque sodales tincidunt lacus. Morbi accumsan ipsum eget nulla congue, nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus luctus ante, vitae malesuada tellus quam tempus metus. Aliquam convallis augue quis felis dictum porttitor. Vivamus ut hendrerit lorem, in porta sem. Aliquam convallis augue quis felis dictum porttitor.', 5),
('01a', '0413489926', 'Fusce blandit eros nec ante lobortis, eu tristique massa feugiat. Suspendisse potenti. Proin vestibulum fermentum vehicula. Praesent in odio risus. Nam dignissim est non risus fringilla condimentum. Praesent non elit id elit placerat sagittis eget nec est. Aliquam facilisis mauris eu massa viverra, sed faucibus lorem pretium. Suspendisse efficitur orci ornare lacus fermentum venenatis. Morbi venenatis suscipit purus non vehicula. Aenean aliquet enim a tellus consectetur, vel ultrices augue euismod. Nulla rutrum mi ac iaculis pellentesque. Donec tristique semper nisi in tempus. Aenean enim mauris, aliquet vel augue ut, congue rhoncus ante. In quis massa molestie neque varius blandit et sed ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque a neque mollis, tristique sapien eu, egestas mi.', 5),
('01a', '0450087209', 'maximus venenatis ex. Etiam sed erat ultricies mi sodales blandit. Vestibulum sed nisl erat. Vivamus tristique, elit sit amet scelerisque accumsan, odio nisl commo', 2),
('01a', '0466483938', 'Phasellus vitae aliquam nunc, maximus venenatis ex. Etiam sed erat ultricies mi sodales blandit. Vestibulum sed nisl erat. Vivamus tristique, elit sit amet scelerisque accumsan, odio nisl commodo urna, ut rhoncus mauris arcu eget nunc. Nunc congue tempus velit. Ut non mollis lectus, sed maximus ligula. Sed et sapien nisi.', 5),
('02', '0413489926', 'Nulla pellentesque, elit sed convallis blandit, nisl dui cursus magna, eu ultricies nisi risus id augue. Nunc facilisis, lacus id sagittis commodo, orci ex lobortis dolor, eu molestie nunc lacus quis sapien. Cras felis libero, venenatis faucibus sem ut, feugiat pulvinar ex. Nulla facilisi. Aenean laoreet pulvinar ante, euismod bibendum neque interdum sit amet. In varius massa ac semper maximus. Etiam tristique id nibh a fermentum. Curabitur condimentum velit id sem luctus fermentum. Phasellus faucibus imperdiet dapibus. Sed orci erat, luctus vitae odio at, luctus lacinia ante. Donec eu accumsan augue. Cras scelerisque erat nisl, a gravida sapien dignissim sit amet. Integer mollis faucibus mi ut rutrum. Donec porta augue tellus, sed ornare augue posuere rutrum. Vivamus imperdiet feugiat quam viverra bibendum.', 4),
('02', '0417935528', 'Nam urna nisi, scelerisque non velit eget, finibus dignissim quam. Etiam ac interdum urna. Praesent ac velit at dolor rhoncus porta vitae sed mauris. Phasellus sit amet dui accumsan, pharetra diam eget, imperdiet risus. Integer cursus congue arcu a posuere. In sagittis massa et lorem condimentum, eget vehicula felis sagittis. Ut pellentesque nisi vitae justo hendrerit, non ullamcorper dolor dignissim.', 3),
('02', '0450087209', 'nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus lu', 4),
('02', '0474053564', 'Aenean tempor ligula eget erat pulvinar, a laoreet justo dictum. Curabitur ut diam pulvinar massa porttitor posuere. Sed eu lacinia elit, ac consectetur diam. Nulla vulputate magna a pellentesque tempus. Quisque ut nisi vitae neque cursus accumsan vel a lectus. Maecenas sem tortor, gravida eget nulla bibendum, facilisis eleifend ex. Maecenas dictum molestie urna, sodales ullamcorper purus tempor eget. Vivamus sed ante eget nulla dictum tincidunt non porta odio. Aliquam ullamcorper consequat arcu at efficitur. Aenean dui lorem, semper quis ex et, elementum convallis tortor. In sit amet cursus magna. Pellentesque a nunc magna. Morbi in nulla ut sem porta rhoncus. Sed lorem turpis, tempor ut iaculis a, pretium eget diam. Sed sapien enim, bibendum et leo a, congue ultrices velit. Nam finibus convallis diam vel mollis.', 3),
('03', '0450087209', 'ibugfdsfglla congue, nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus lu', 4),
('03', '0460994447', 'Aliquam pretium sollicitudin ex et condimentum. Vivamus tempus ipsum a vestibulum facilisis. Sed mi magna, laoreet sed lacus sit amet, accumsan tempor sem. Proin vel neque et purus dictum congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse vitae tempor dolor. Donec luctus mollis sem id sagittis. Praesent semper finibus tortor interdum pellentesque. Nullam lobortis risus lorem, id condimentum arcu bibendum id. Donec et viverra risus. Fusce vel suscipit sapien. Suspendisse imperdiet est id efficitur scelerisque. Integer ac volutpat augue, quis aliquam ipsum. Aliquam semper vel lacus ut porta. Nulla posuere gravida semper. Donec vehicula diam in risus pharetra tempus.', 4),
('04', '0416616915', 'Cras id tincidunt est, sit amet luctus dolor. Mauris a justo volutpat tellus lacinia posuere. Integer vulputate blandit orci, ac commodo eros euismod et. In tempus, leo et sollicitudin ultrices, leo purus tristique velit, id commodo tellus urna non ligula. Praesent egestas, sapien sit amet ultrices mattis, diam lorem pharetra dolor, eget dignissim nunc dui bibendum orci. Aenean vitae faucibus elit. Vivamus dictum purus leo, in placerat elit mollis eu. Cras fringilla arcu non lectus condimentum, vel condimentum urna laoreet. Donec eu dolor gravida diam luctus vulputate sed in nisl. Phasellus euismod dignissim nisl in pharetra. Suspendisse nec blandit sem. Phasellus fringilla dignissim purus, eu sollicitudin neque. Etiam iaculis est in velit vehicula ornare. Ut tincidunt justo lacus, ut ultrices lectus tempor non. Aenean vitae lorem vitae enim ullamcorper vulputate. Mauris vel nisl in odio blandit malesuada nec sit amet felis.', 4),
('04', '0450087209', 'dasfsdaf', 3),
('04', '0477435523', 'Nulla placerat sed lectus ac commodo. Suspendisse tincidunt mi sed enim sodales imperdiet. Mauris nec fermentum odio. Quisque sed risus quis eros sodales elementum. In molestie neque non ex sodales interdum. Donec venenatis placerat neque, quis vestibulum erat maximus eget. Etiam rutrum purus et elit suscipit, ut iaculis diam tempor. Donec pretium molestie velit id finibus. Suspendisse ac lectus lobortis, tincidunt felis eu, dignissim enim. Vestibulum lacinia rutrum fermentum. Nam vel porttitor quam. Proin molestie auctor semper. Aliquam et mi fringilla, laoreet mi eget, ullamcorper nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales risus ut massa mattis aliquet et vitae erat. Sed malesuada congue ante, eget hendrerit eros porta eu.', 4),
('05', '0452000826', 'Nulla sollicitudin, turpis non pretium rhoncus, mauris odio rutrum tellus, sit amet elementum risus arcu vel ex. Ut urna tortor, porttitor in sem vel, volutpat malesuada mi. Cras euismod, est in eleifend tempus, mi dolor iaculis augue, vitae aliquet dolor magna quis sem. Proin a diam eu nunc faucibus eleifend commodo a velit. Nullam dignissim finibus ex, ut vestibulum nunc euismod vitae. Duis ac mi quis dolor auctor luctus. Cras non dui id lacus accumsan laoreet. Duis semper nunc in finibus consequat. Phasellus ac molestie elit. Nam nibh elit, rhoncus eu augue ut, pellentesque scelerisque risus. Nullam sollicitudin lorem massa, quis interdum augue volutpat non. Nulla facilisi. Aenean eu ipsum id lectus pellentesque pretium in gravida mauris. Aliquam molestie ultricies nunc, et finibus eros egestas in. Proin sodales ornare augue at congue.', 3),
('05', '0488941882', 'Cras vitae arcu aliquam, blandit odio vitae, efficitur ex. Nunc nec aliquam velit. Ut erat orci, porta non mi a, dictum mollis magna. Nunc tincidunt mauris nibh, non auctor elit gravida ultricies. Vivamus consectetur urna faucibus, dictum tellus sit amet, mollis ligula. Donec a urna a lorem luctus porttitor. Sed imperdiet et felis sit amet porta. Praesent risus leo, lobortis eget dignissim quis, egestas quis justo. Proin feugiat tellus scelerisque tortor laoreet, eget tincidunt lacus accumsan. Pellentesque molestie cursus nisi, ut mollis nisi finibus quis. Fusce auctor eu felis et sollicitudin. Sed dignissim, ipsum ac congue tempus, sapien quam tempor lorem, quis ultrices dolor metus tristique nisi. Cras eleifend maximus nisi ut efficitur. Morbi nec bibendum tellus, sed feugiat ligula. Fusce at aliquam lectus, non bibendum purus.', 3),
('06', '0474053564', 'Nulla ut lectus turpis. Morbi erat nisi, bibendum at elementum ut, tincidunt non purus. Proin sollicitudin dolor quam, ut hendrerit dolor congue eget. Donec placerat faucibus nisl, non eleifend nisi finibus nec. Sed pellentesque ut nisi vel finibus. Suspendisse eu nulla massa. Duis nec orci purus. Ut porta condimentum leo, vel sagittis orci consequat et. Proin rhoncus porta ipsum at tincidunt. Pellentesque vel vehicula elit. Etiam mattis odio a eros sollicitudin tempor. Suspendisse consectetur hendrerit tincidunt. Cras porttitor sem et nisl sollicitudin cursus. Maecenas quis condimentum eros, ut iaculis ipsum. Fusce aliquam diam ut varius porta.', 5),
('06', '0493744028', 'Curabitur facilisis nec nulla a feugiat. Cras in tellus ut dolor accumsan lobortis quis sed mauris. Suspendisse sed nisl semper, tempor leo sit amet, ullamcorper nisl. Praesent ut dui elit. Quisque et ipsum nisl. Nam id dolor neque. Curabitur condimentum venenatis egestas. Vivamus vulputate ultrices turpis at pretium.', 5),
('07', '0437347207', 'Curabitur hendrerit dapibus dolor, ut porta odio hendrerit venenatis. Integer quis ligula ac elit fermentum ultrices. Sed accumsan odio sapien, id pulvinar est aliquet et. Aliquam commodo turpis pharetra, luctus tellus at, porta erat. Praesent ut lacus ut lacus fringilla pretium. Fusce sit amet leo in enim rutrum tincidunt ut eget ante. Etiam rutrum, ligula vitae eleifend laoreet, magna massa sodales ligula, vel volutpat massa magna non nunc. Mauris et magna mollis, laoreet velit in, blandit nisl. Aliquam egestas justo aliquam neque suscipit laoreet. Vestibulum vehicula mi eu tellus tempus molestie. Curabitur eget justo et ante eleifend suscipit ac id quam.', 5),
('07', '0460994447', 'Nunc mattis eget justo ultrices iaculis. Vivamus vel suscipit metus, nec gravida neque. Nunc quis diam orci. Ut maximus orci molestie, vestibulum enim et, aliquet metus. Quisque dictum quam ac suscipit venenatis. Aliquam ornare tortor sapien, in vulputate ex feugiat a. Duis facilisis augue vitae sapien ornare, eget dignissim neque posuere. Vestibulum et lobortis elit. Etiam vitae ante porttitor, lacinia tortor id, varius urna. Nunc condimentum vulputate lorem ac facilisis. Maecenas fringilla, orci ut maximus commodo, massa nibh posuere odio, sed tincidunt massa turpis eu enim. Curabitur pellentesque, magna non placerat venenatis, sapien tellus pulvinar tellus, eu malesuada dolor diam eu lectus. Proin tincidunt neque non tortor ullamcorper auctor. Sed ullamcorper consequat odio a euismod. Donec quis magna lacinia, feugiat ipsum quis, faucibus nisi.', 5),
('07a', '0477435523', 'In finibus gravida purus, aliquet faucibus velit tincidunt non. Sed gravida nunc eu tristique tincidunt. Proin tempus, libero vel pretium sagittis, quam arcu auctor magna, at rutrum velit elit eu ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed suscipit nec libero et volutpat. Curabitur mollis felis sit amet lorem scelerisque posuere. Pellentesque nec mauris a massa dapibus finibus. Proin at turpis quis felis faucibus fringilla. Donec vitae semper lorem. Suspendisse nec nisl pulvinar, pellentesque justo nec, consectetur nulla. Vestibulum ac neque blandit, fermentum quam non, vestibulum mi. Etiam facilisis non nulla at lobortis. Integer nec dui cursus, tincidunt tortor vitae, pulvinar risus.', 3),
('07a', '0489392336', 'Proin sit amet leo consequat, sagittis nulla at, varius metus. Morbi vel arcu sit amet sem cursus tincidunt. Nam rhoncus sodales nisi non scelerisque. Phasellus sed libero vel eros ornare blandit nec eget justo. Nulla efficitur dolor erat, nec sodales tellus hendrerit efficitur. Mauris vitae tincidunt risus, tristique dapibus risus. Donec sed tellus risus. Nulla turpis magna, egestas et ullamcorper a, tincidunt a nisi. Maecenas dolor turpis, ullamcorper nec ipsum ac, ultrices volutpat ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nunc at eros fermentum dignissim nec sit amet lorem. Praesent nulla felis, eleifend vehicula justo a, semper dictum urna.', 3),
('08', '0416616915', 'Nunc mattis, orci id fermentum tempus, nisl lorem ultricies massa, id fermentum libero sapien eu nibh. Ut non eros nec magna vestibulum auctor. In vulputate condimentum lacus ac pellentesque. Nam id ornare risus. Proin tincidunt euismod lorem, in porttitor arcu malesuada ut. Phasellus risus erat, dignissim fringilla finibus sit amet, accumsan nec metus. Maecenas sollicitudin ut libero ut accumsan. Fusce malesuada libero ac sapien tincidunt iaculis. Pellentesque rhoncus, augue eget consequat auctor, velit leo volutpat turpis, eget imperdiet erat risus et lacus. Fusce blandit nisl ut tellus mattis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam a odio rhoncus, pharetra nulla at, pulvinar ligula. Nullam accumsan tellus non mauris convallis tristique. Duis vitae volutpat dolor, ut tincidunt nibh.', 3),
('08', '0466483938', 'Donec consequat tristique nunc eget vestibulum. Praesent vulputate massa eget mauris tempor, in dictum ex consectetur. Morbi efficitur neque augue, vel mattis est rutrum sit amet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ullamcorper arcu non tellus dictum, nec imperdiet est bibendum. Nam venenatis sed arcu at luctus. Nullam eget laoreet tortor.', 4),
('08', '0472771243', 'Curabitur sollicitudin quam a finibus euismod. In consectetur convallis diam, vitae finibus tellus ullamcorper vitae. Donec fringilla accumsan ligula vitae semper. Donec a leo vitae nibh posuere varius a at massa. Quisque malesuada, lectus quis varius scelerisque, justo nisi luctus ante, sagittis rhoncus urna magna ac magna. Praesent eget ante eu neque dictum posuere. Donec pretium mi non neque placerat, ut blandit ante vestibulum. Donec a nisi maximus, feugiat enim eu, finibus justo. Nulla facilisi. Etiam enim augue, lobortis euismod semper sed, tempus eu lorem. Nullam et felis egestas, eleifend tortor sit amet, suscipit odio. Integer vel scelerisque elit.', 3),
('09', '0488941882', 'Nunc rhoncus at risus sit amet congue. Cras fermentum tortor eu lectus iaculis imperdiet. Morbi eros metus, pulvinar non posuere quis, porta vitae massa. Sed et justo lorem. Aenean mollis aliquet nisl eget gravida. Duis ultricies sagittis elit sit amet porttitor. Mauris quis magna convallis, blandit velit eget, elementum lectus. Phasellus ac lacus interdum, posuere quam sed, elementum nunc. Sed vel ullamcorper urna, vitae pretium tortor. Fusce leo ex, vestibulum sit amet iaculis non, rutrum id tortor. Quisque rutrum odio eu dolor faucibus, vitae elementum ex suscipit.', 4),
('10', '0489392336', 'Donec justo nisl, ultricies ut feugiat non, congue a nisl. Donec laoreet metus sed mollis tincidunt. Nam vitae libero eget odio pharetra placerat. In hac habitasse platea dictumst. Suspendisse enim lorem, ullamcorper eget suscipit ut, eleifend sit amet lorem. Vestibulum congue cursus leo, vel ornare tortor pretium sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam quis lobortis libero, sed finibus nibh. Proin auctor nulla a sagittis vehicula. Praesent augue sapien, fringilla ut velit vitae, mattis consectetur nibh. Fusce ut sodales purus. Donec dictum orci eleifend, fermentum massa ac, eleifend quam.', 4),
('10', '0493744028', 'Pellentesque varius nulla vitae vehicula pellentesque. Curabitur sodales ut tellus nec condimentum. Donec est ipsum, aliquam vel leo eu, aliquet pulvinar mi. Integer ultrices bibendum nisi at mattis. In eget risus ultrices lectus aliquam faucibus. Praesent maximus fringilla lectus et consequat. Phasellus accumsan, risus eu consequat gravida, lectus nunc dignissim lorem, et placerat nisi tellus luctus urna. Maecenas convallis massa a porttitor semper. Praesent a feugiat dolor. Integer pellentesque dui ut urna tincidunt, hendrerit feugiat elit pharetra. Donec magna lacus, mollis eu feugiat et, sagittis at mauris. Nulla mollis est sed vestibulum fermentum. Phasellus varius ante dignissim purus aliquet finibus. Vivamus volutpat sapien quis tortor volutpat, sed egestas tortor varius. Mauris sit amet tellus hendrerit, dignissim odio quis, ultricies lectus.', 4),
('11', '0437347207', 'Pellentesque venenatis maximus convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec eu nisi blandit tellus posuere tincidunt ut vestibulum magna. Donec ligula erat, feugiat sed justo id, luctus posuere urna. Nullam dui nibh, efficitur eget sem vitae, imperdiet euismod nulla. Nulla ac lorem sed ante porttitor sagittis. Vivamus aliquam est erat, vel pharetra odio ultrices quis. Curabitur euismod, magna in tincidunt mattis, odio leo sollicitudin orci, et rutrum ipsum nibh vitae nisl.', 3),
('11', '0450087209', '', 5),
('11', '0492726924', 'Duis sit amet sapien urna. Suspendisse quis lacinia est. Nam vel eleifend nisi. Cras ultricies diam pretium felis dignissim, sit amet hendrerit lectus dignissim. Donec gravida luctus iaculis. Vestibulum maximus sapien ac bibendum porttitor. Duis sollicitudin congue tristique. Curabitur sed arcu in ipsum varius porttitor. Donec scelerisque lobortis mollis.', 3),
('12', '0417935528', 'Etiam purus mauris, porta sit amet vehicula non, placerat ultrices quam. Vestibulum eget magna eu ante sodales posuere a condimentum lectus. Integer tristique, tellus vel gravida vehicula, enim leo scelerisque dui, vitae sollicitudin libero justo non leo. Curabitur libero nisi, eleifend a tempus id, congue eget diam. Ut ut libero lorem. Ut convallis ante nisi, vel porta lorem blandit id. Mauris vestibulum ac odio eu vehicula. Curabitur risus lorem, hendrerit ut mauris faucibus, laoreet dignissim arcu. In congue eget lectus in condimentum. Nulla nec volutpat elit. Curabitur id mattis arcu. Donec laoreet ipsum at turpis porta, ac scelerisque quam molestie. Duis risus nisl, vehicula sit amet ante auctor, viverra bibendum sem. Nulla facilisi.', 5),
('12', '0450087209', 'dfasdf', 1),
('12', '0472771243', 'Phasellus euismod lacinia ante, id volutpat nibh. Nullam non pellentesque ipsum. Curabitur felis enim, ultricies vitae aliquet eget, porttitor eget orci. Vestibulum malesuada purus vel pharetra feugiat. Etiam a ex mauris. Maecenas lobortis tellus id facilisis ultrices. Nam et justo convallis, tempor nisi in, bibendum mauris. Maecenas eleifend, massa a feugiat dignissim, eros tortor venenatis sem, in consequat libero augue ut erat. Pellentesque malesuada mollis dui eu posuere. Integer pharetra nec metus id suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent finibus, dui id porttitor placerat, nisl libero finibus lorem, id dictum nibh lorem sed mi. Sed ligula massa, dignissim at quam nec, accumsan convallis sapien. Aliquam blandit congue dolor ac pellentesque.', 5),
('12a', '0452000826', 'In hac habitasse platea dictumst. Duis at finibus mi. Aliquam purus augue, laoreet quis pellentesque elementum, elementum eu erat. Pellentesque at neque massa. Proin nunc metus, blandit ac aliquam et, tempor dictum augue. Nulla imperdiet elit et felis lobortis ullamcorper. Nulla tristique aliquam dolor. Aenean ac diam et ex dapibus porta a id nibh.', 4),
('12a', '0492726924', 'Proin tincidunt, nunc quis interdum tincidunt, elit velit tempus magna, a pellentesque lorem est eu magna. Suspendisse in dui id sapien facilisis dapibus eget quis ante. Sed porttitor enim vel eros consectetur auctor. In ultricies bibendum ligula, vitae porttitor nulla fringilla nec. Cras dapibus justo et justo mattis, in euismod elit scelerisque. Duis facilisis nunc at dolor sollicitudin posuere. Vivamus sit amet dapibus urna, sit amet semper libero. Sed elementum metus eget viverra dapibus. Maecenas convallis justo ut varius convallis. In in libero purus. Suspendisse potenti. Phasellus tempor interdum libero, ut fringilla justo tempor rhoncus. Aenean sit amet dignissim risus. Donec velit felis, rhoncus quis elit eget, gravida tempor libero. Cras egestas velit quis pretium sodales. Donec ut faucibus ex.', 4),
('12c', '0417935528', 'Sed a ex ut nibh laoreet suscipit nec ut erat. Sed a hendrerit sem. Vestibulum id leo blandit, tincidunt massa a, tristique leo. Morbi ullamcorper lorem at lectus dapibus sollicitudin. Quisque rutrum efficitur sapien, nec interdum lacus feugiat et. Sed nisl felis, pharetra ac velit non, pellentesque porta lectus. Sed dapibus tempus consectetur. Duis interdum maximus sollicitudin. Donec mollis orci et turpis aliquet, ac ullamcorper nunc tincidunt. Duis sit amet ante quam. Sed eget neque enim. Proin pretium odio nulla, at semper ante aliquet id.', 4),
('12c', '0450087209', '', 0),
('12c', '0474053564', 'In iaculis velit vel magna maximus, vel posuere arcu feugiat. Aenean molestie bibendum mi, eget dignissim lorem fringilla eget. Nulla sodales commodo dui, sit amet volutpat sapien hendrerit nec. Nulla dui est, laoreet sit amet elit sagittis, posuere tempus purus. Quisque iaculis nisl nec elit facilisis, nec congue mauris rhoncus. Ut mollis sapien ac ultricies maximus. Quisque commodo consectetur nulla, vel bibendum leo finibus in. Aenean pretium, diam facilisis aliquam aliquet, velit leo accumsan quam, ac luctus ligula arcu malesuada elit.', 4),
('12d', '0413489926', 'Sed efficitur condimentum purus, et porttitor nisi finibus at. Nam porttitor nec sem at fringilla. Quisque libero orci, cursus in metus vitae, congue accumsan massa. Nunc vitae leo libero. Curabitur ut porta ligula. Vestibulum dapibus pellentesque convallis. Sed sed blandit lorem. Sed sit amet dui ut ante efficitur sodales ut eu diam. Ut id felis placerat libero finibus mollis. Fusce consectetur varius lacinia. Quisque a velit enim. Quisque aliquet a lacus ac luctus. Maecenas iaculis, sapien eu tristique ullamcorper, lorem nisi blandit tortor, at condimentum mauris enim et metus. Cras ut turpis sit amet orci tincidunt venenatis. Proin dignissim lacus est, quis mollis augue interdum nec. Mauris nec aliquam sapien.', 3),
('12d', '0460994447', 'Integer nec rhoncus nisi. Ut pellentesque tincidunt accumsan. Aliquam erat volutpat. Suspendisse potenti. Donec in massa sem. Vestibulum rhoncus, justo ut egestas accumsan, lacus nulla convallis dolor, a egestas est elit a sem. Aenean a risus varius, lacinia risus nec, vulputate ligula. Morbi ipsum odio, pharetra sed velit eget, suscipit fringilla elit. Curabitur blandit quam eu neque molestie, vitae commodo odio ullamcorper. Etiam lobortis lorem non augue facilisis feugiat sed eu dolor. Curabitur vehicula, neque quis suscipit aliquet, risus tortor rhoncus dui, eu convallis urna lacus vitae velit. Suspendisse posuere facilisis sapien eu maximus.', 3),
('12e', '0416616915', 'Integer quis vulputate libero. Vestibulum vitae congue nibh. Maecenas semper eros a mauris fringilla, et ornare purus placerat. Pellentesque in mollis lacus. Vestibulum sagittis sodales justo, id congue mi venenatis ut. Quisque erat quam, aliquet non viverra ut, porta vel lectus. Ut in nulla nec metus cursus placerat.', 5),
('12e', '0477435523', 'Sed eu lacus in enim faucibus auctor ut sit amet magna. Pellentesque eget urna nec ante imperdiet auctor. Sed luctus finibus ex at ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id pulvinar nisl. Pellentesque sed condimentum lectus, sit amet egestas tortor. Morbi dignissim ex eu lorem rutrum finibus. Quisque at venenatis erat.', 5),
('12f', '0452000826', 'Sed massa magna, pharetra molestie augue nec, accumsan venenatis orci. Vivamus ut ullamcorper quam. Donec vitae urna ac magna tempor luctus at vitae arcu. Nunc pulvinar eu dui eu volutpat. Phasellus suscipit sit amet lorem in dignissim. Fusce quam turpis, suscipit id dui eget, condimentum rhoncus velit. Suspendisse finibus finibus maximus. Vivamus sed ex quis est congue tincidunt. Sed at ligula lorem.', 5),
('12f', '0488941882', 'Integer volutpat, augue at dapibus viverra, ante massa volutpat odio, ut auctor tellus lacus a odio. Pellentesque dapibus, lectus ut pellentesque sodales, dolor ligula elementum mauris, sed tincidunt libero urna sed nunc. Vestibulum et eros aliquet, viverra risus a, malesuada magna. Quisque volutpat urna tellus, sed auctor lacus feugiat ac. Donec in scelerisque felis. Mauris erat mauris, posuere ut dictum eget, feugiat ornare sem. Donec in tortor ut nisl sollicitudin sagittis eu sed elit. Cras imperdiet, lacus quis placerat semper, tellus elit fermentum sapien, nec eleifend turpis dolor sed lectus. Vivamus nec massa sed elit semper mattis in non risus. Nam in arcu at felis placerat congue in a neque.', 5),
('12g', '0474053564', 'Suspendisse dictum eros non ligula convallis, facilisis interdum massa suscipit. Sed egestas tempor felis. Praesent ligula lacus, ullamcorper quis diam et, euismod commodo ex. Aenean tempus semper tellus ut vulputate. Vestibulum eleifend quam nec massa egestas malesuada. Maecenas at nulla aliquet, consectetur erat in, venenatis magna. Nullam elementum eros id mi aliquet, sit amet consequat nibh eleifend. Morbi feugiat erat et varius molestie. Nulla diam diam, fermentum ac quam non, rutrum auctor libero. In eu varius mauris, vitae placerat nunc. Proin elementum sem non iaculis efficitur.', 3),
('12g', '0493744028', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam efficitur sodales metus eu mollis. Praesent mollis vehicula interdum. Donec viverra consectetur ante vel iaculis. Sed enim orci, finibus ac elit quis, viverra accumsan tortor. Nulla lobortis, ipsum in vulputate pellentesque, risus lorem fermentum felis, eget aliquam nibh ex nec velit. Sed risus felis, cursus eu condimentum quis, feugiat ornare eros. Mauris nisl quam, egestas a risus eget, dictum ornare nibh. Aliquam erat volutpat. Integer ac magna eget ipsum facilisis pretium. Suspendisse dui risus, consequat eu iaculis ac, placerat ut lectus. Fusce leo odio, fringilla in tincidunt sit amet, sollicitudin vehicula velit. Nullam non velit eget mi luctus consequat.', 3),
('12h', '0437347207', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et fringilla lacus, convallis ultrices lacus. Cras id elit iaculis, interdum urna convallis, maximus quam. Ut vulputate imperdiet nisl, volutpat auctor mi. Nulla pellentesque venenatis urna, quis consectetur nibh euismod et. Suspendisse lorem nisi, auctor a justo eleifend, lacinia convallis arcu. Curabitur nisl arcu, dignissim id felis nec, dignissim iaculis enim. Sed sed est ante. Sed non pulvinar quam, sit amet dignissim diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum interdum nulla ullamcorper, mattis turpis dignissim, vestibulum elit. Cras rhoncus in metus et ultrices. Nullam non interdum mi, in ultrices ligula. Pellentesque ultrices id quam sed dignissim. Nunc ut turpis porttitor, luctus eros nec, ornare lacus. Duis vulputate felis a condimentum iaculis. Vestibulum consequat tellus ut vehicula placerat.', 4),
('12h', '0450087209', '', 0),
('12h', '0460994447', 'Suspendisse sollicitudin justo eu magna hendrerit, in mattis ipsum ultricies. Curabitur tempus enim lorem, in scelerisque ipsum tristique in. Interdum et malesuada fames ac ante ipsum primis in faucibus. In ut ante nec leo ultrices lacinia. Praesent eros orci, rhoncus sed nunc nec, vehicula gravida libero. Maecenas maximus risus erat, pulvinar pellentesque lorem porttitor sed. Donec feugiat porta nisl, in ultricies ex feugiat ac. Nunc purus nisl, aliquet quis neque vehicula, mollis molestie purus. In hac habitasse platea dictumst. Fusce non elit vel sapien pretium convallis. Donec ligula eros, eleifend ac metus sed, aliquam luctus felis. Curabitur turpis lacus, porta in tincidunt sit amet, bibendum non arcu. Sed sagittis nec elit malesuada iaculis.', 4),
('12i', '0416616915', 'Suspendisse tempus mi felis, nec venenatis ante dapibus vitae. Cras eu libero ut ex rhoncus tempus. In dignissim gravida bibendum. Sed luctus, dolor vitae pellentesque egestas, ante magna dignissim elit, eget scelerisque lacus turpis ut erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed molestie laoreet odio, sed iaculis tellus convallis at. Cras egestas sem neque, non luctus augue pellentesque eget. Fusce vitae lorem at lacus vehicula vehicula eget a augue. Mauris et ante nec nulla iaculis accumsan ac at orci. Ut in est non neque varius ultrices at eget magna. Donec et molestie erat. Duis posuere sodales urna a congue.', 4),
('12i', '0472771243', 'Maecenas ac mi vitae dolor vulputate facilisis. Nam eu odio sollicitudin, vestibulum diam sed, mollis neque. Donec ut enim risus. Cras eget neque vel nunc pharetra dapibus at vitae ex. Phasellus hendrerit consequat felis lacinia tincidunt. Etiam pellentesque scelerisque lectus, sit amet finibus libero volutpat in. Ut ullamcorper elit sit amet mauris egestas ornare. In quis tincidunt turpis. Praesent quis quam eros. Donec cursus vestibulum urna ac aliquam. Integer risus nunc, aliquam quis feugiat sit amet, tempor vitae purus. Suspendisse congue pulvinar nulla, id laoreet quam posuere at.', 4),
('12j', '0466483938', 'Nam aliquet luctus enim, vitae laoreet augue finibus sed. Sed aliquet urna id pretium eleifend. Fusce luctus urna et purus tincidunt, sit amet mattis lorem imperdiet. Quisque ultrices velit at nibh faucibus, ut malesuada ipsum rhoncus. Vivamus gravida vestibulum justo, nec vestibulum tortor sodales vitae. Duis pellentesque at turpis vel iaculis. Aenean tortor nisi, vulputate eget lectus at, gravida elementum mauris. Curabitur a lacus ut eros feugiat tincidunt. Vivamus mattis id magna at imperdiet.', 3),
('12j', '0488941882', 'Ut malesuada hendrerit ipsum, et mollis massa placerat ut. Nam aliquet, nibh id luctus varius, enim enim sodales magna, consequat vehicula nulla odio a eros. Aliquam nec placerat lectus. Aliquam faucibus erat gravida augue pulvinar fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat fermentum egestas. Quisque efficitur, nibh sit amet tempus vehicula, augue mauris tincidunt purus, sit amet lacinia velit arcu quis ligula. Ut ante nisi, posuere eget volutpat ut, aliquet non diam. Nam et semper dolor. Ut eleifend placerat ipsum, vel pretium magna ullamcorper quis. Suspendisse semper lacus erat, suscipit consectetur ex tempor ut. Duis in luctus sapien. Nulla interdum ante ultrices purus consequat venenatis. Maecenas malesuada quam quis nulla venenatis rutrum. Cras vel sapien in neque ultrices congue ut et lacus.', 3),
('12k', '0489392336', 'Nam enim ex, fermentum sed elementum ut, molestie sit amet erat. Donec quis tellus id nisl consequat semper quis eu ex. Cras mollis dictum magna ut imperdiet. Morbi elementum aliquet odio, a varius eros porta sed. Proin congue diam non nulla placerat, a interdum ligula molestie. Curabitur ac ligula nisi. Vivamus vitae velit malesuada, rutrum enim sed, sodales sapien. Maecenas aliquam in odio vel efficitur. In elementum eros lacus, sed rhoncus dolor posuere a. Aenean elementum luctus libero, sit amet eleifend augue sollicitudin ut. Donec nisi dui, tincidunt in arcu auctor, interdum mattis quam.', 5),
('12k', '0493744028', 'Vestibulum nulla nisl, fringilla at facilisis at, luctus sed felis. Donec et elementum mauris. Nunc feugiat interdum justo nec semper. Mauris venenatis neque velit, sit amet consequat tellus congue eu. Mauris dui diam, convallis non felis quis, interdum mollis erat. Etiam efficitur ex ut mi mattis, non ornare lorem rhoncus. Donec ultricies vel dolor eget tempus. Quisque euismod in lorem sed condimentum. Nam venenatis libero in mollis malesuada. Vestibulum ut pellentesque lacus.', 5),
('17', '0413489926', 'Fusce blandit eros nec ante lobortis, eu tristique massa feugiat. Suspendisse potenti. Proin vestibulum fermentum vehicula. Praesent in odio risus. Nam dignissim est non risus fringilla condimentum. Praesent non elit id elit placerat sagittis eget nec est. Aliquam facilisis mauris eu massa viverra, sed faucibus lorem pretium. Suspendisse efficitur orci ornare lacus fermentum venenatis. Morbi venenatis suscipit purus non vehicula. Aenean aliquet enim a tellus consectetur, vel ultrices augue euismod. Nulla rutrum mi ac iaculis pellentesque. Donec tristique semper nisi in tempus. Aenean enim mauris, aliquet vel augue ut, congue rhoncus ante. In quis massa molestie neque varius blandit et sed ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque a neque mollis, tristique sapien eu, egestas mi.', 5),
('18', '0466483938', 'Phasellus vitae aliquam nunc, maximus venenatis ex. Etiam sed erat ultricies mi sodales blandit. Vestibulum sed nisl erat. Vivamus tristique, elit sit amet scelerisque accumsan, odio nisl commodo urna, ut rhoncus mauris arcu eget nunc. Nunc congue tempus velit. Ut non mollis lectus, sed maximus ligula. Sed et sapien nisi.', 5),
('19', '0413489926', 'Nulla pellentesque, elit sed convallis blandit, nisl dui cursus magna, eu ultricies nisi risus id augue. Nunc facilisis, lacus id sagittis commodo, orci ex lobortis dolor, eu molestie nunc lacus quis sapien. Cras felis libero, venenatis faucibus sem ut, feugiat pulvinar ex. Nulla facilisi. Aenean laoreet pulvinar ante, euismod bibendum neque interdum sit amet. In varius massa ac semper maximus. Etiam tristique id nibh a fermentum. Curabitur condimentum velit id sem luctus fermentum. Phasellus faucibus imperdiet dapibus. Sed orci erat, luctus vitae odio at, luctus lacinia ante. Donec eu accumsan augue. Cras scelerisque erat nisl, a gravida sapien dignissim sit amet. Integer mollis faucibus mi ut rutrum. Donec porta augue tellus, sed ornare augue posuere rutrum. Vivamus imperdiet feugiat quam viverra bibendum.', 4),
('20', '0417935528', 'Nam urna nisi, scelerisque non velit eget, finibus dignissim quam. Etiam ac interdum urna. Praesent ac velit at dolor rhoncus porta vitae sed mauris. Phasellus sit amet dui accumsan, pharetra diam eget, imperdiet risus. Integer cursus congue arcu a posuere. In sagittis massa et lorem condimentum, eget vehicula felis sagittis. Ut pellentesque nisi vitae justo hendrerit, non ullamcorper dolor dignissim.', 3),
('21', '0474053564', 'Aenean tempor ligula eget erat pulvinar, a laoreet justo dictum. Curabitur ut diam pulvinar massa porttitor posuere. Sed eu lacinia elit, ac consectetur diam. Nulla vulputate magna a pellentesque tempus. Quisque ut nisi vitae neque cursus accumsan vel a lectus. Maecenas sem tortor, gravida eget nulla bibendum, facilisis eleifend ex. Maecenas dictum molestie urna, sodales ullamcorper purus tempor eget. Vivamus sed ante eget nulla dictum tincidunt non porta odio. Aliquam ullamcorper consequat arcu at efficitur. Aenean dui lorem, semper quis ex et, elementum convallis tortor. In sit amet cursus magna. Pellentesque a nunc magna. Morbi in nulla ut sem porta rhoncus. Sed lorem turpis, tempor ut iaculis a, pretium eget diam. Sed sapien enim, bibendum et leo a, congue ultrices velit. Nam finibus convallis diam vel mollis.', 3),
('22', '0460994447', 'Aliquam pretium sollicitudin ex et condimentum. Vivamus tempus ipsum a vestibulum facilisis. Sed mi magna, laoreet sed lacus sit amet, accumsan tempor sem. Proin vel neque et purus dictum congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse vitae tempor dolor. Donec luctus mollis sem id sagittis. Praesent semper finibus tortor interdum pellentesque. Nullam lobortis risus lorem, id condimentum arcu bibendum id. Donec et viverra risus. Fusce vel suscipit sapien. Suspendisse imperdiet est id efficitur scelerisque. Integer ac volutpat augue, quis aliquam ipsum. Aliquam semper vel lacus ut porta. Nulla posuere gravida semper. Donec vehicula diam in risus pharetra tempus.', 4),
('23', '0416616915', 'Cras id tincidunt est, sit amet luctus dolor. Mauris a justo volutpat tellus lacinia posuere. Integer vulputate blandit orci, ac commodo eros euismod et. In tempus, leo et sollicitudin ultrices, leo purus tristique velit, id commodo tellus urna non ligula. Praesent egestas, sapien sit amet ultrices mattis, diam lorem pharetra dolor, eget dignissim nunc dui bibendum orci. Aenean vitae faucibus elit. Vivamus dictum purus leo, in placerat elit mollis eu. Cras fringilla arcu non lectus condimentum, vel condimentum urna laoreet. Donec eu dolor gravida diam luctus vulputate sed in nisl. Phasellus euismod dignissim nisl in pharetra. Suspendisse nec blandit sem. Phasellus fringilla dignissim purus, eu sollicitudin neque. Etiam iaculis est in velit vehicula ornare. Ut tincidunt justo lacus, ut ultrices lectus tempor non. Aenean vitae lorem vitae enim ullamcorper vulputate. Mauris vel nisl in odio blandit malesuada nec sit amet felis.', 4),
('24', '0477435523', 'Nulla placerat sed lectus ac commodo. Suspendisse tincidunt mi sed enim sodales imperdiet. Mauris nec fermentum odio. Quisque sed risus quis eros sodales elementum. In molestie neque non ex sodales interdum. Donec venenatis placerat neque, quis vestibulum erat maximus eget. Etiam rutrum purus et elit suscipit, ut iaculis diam tempor. Donec pretium molestie velit id finibus. Suspendisse ac lectus lobortis, tincidunt felis eu, dignissim enim. Vestibulum lacinia rutrum fermentum. Nam vel porttitor quam. Proin molestie auctor semper. Aliquam et mi fringilla, laoreet mi eget, ullamcorper nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales risus ut massa mattis aliquet et vitae erat. Sed malesuada congue ante, eget hendrerit eros porta eu.', 4),
('24a', '0452000826', 'Nulla sollicitudin, turpis non pretium rhoncus, mauris odio rutrum tellus, sit amet elementum risus arcu vel ex. Ut urna tortor, porttitor in sem vel, volutpat malesuada mi. Cras euismod, est in eleifend tempus, mi dolor iaculis augue, vitae aliquet dolor magna quis sem. Proin a diam eu nunc faucibus eleifend commodo a velit. Nullam dignissim finibus ex, ut vestibulum nunc euismod vitae. Duis ac mi quis dolor auctor luctus. Cras non dui id lacus accumsan laoreet. Duis semper nunc in finibus consequat. Phasellus ac molestie elit. Nam nibh elit, rhoncus eu augue ut, pellentesque scelerisque risus. Nullam sollicitudin lorem massa, quis interdum augue volutpat non. Nulla facilisi. Aenean eu ipsum id lectus pellentesque pretium in gravida mauris. Aliquam molestie ultricies nunc, et finibus eros egestas in. Proin sodales ornare augue at congue.', 3),
('24b', '0488941882', 'Cras vitae arcu aliquam, blandit odio vitae, efficitur ex. Nunc nec aliquam velit. Ut erat orci, porta non mi a, dictum mollis magna. Nunc tincidunt mauris nibh, non auctor elit gravida ultricies. Vivamus consectetur urna faucibus, dictum tellus sit amet, mollis ligula. Donec a urna a lorem luctus porttitor. Sed imperdiet et felis sit amet porta. Praesent risus leo, lobortis eget dignissim quis, egestas quis justo. Proin feugiat tellus scelerisque tortor laoreet, eget tincidunt lacus accumsan. Pellentesque molestie cursus nisi, ut mollis nisi finibus quis. Fusce auctor eu felis et sollicitudin. Sed dignissim, ipsum ac congue tempus, sapien quam tempor lorem, quis ultrices dolor metus tristique nisi. Cras eleifend maximus nisi ut efficitur. Morbi nec bibendum tellus, sed feugiat ligula. Fusce at aliquam lectus, non bibendum purus.', 3),
('25', '0452000826', 'Aenean at dolor eu arcu suscipit finibus. Suspendisse aliquam urna ut elit feugiat mollis. Suspendisse vehicula elit a pulvinar tempus. Suspendisse justo augue, blandit ac commodo vitae, viverra et justo. Nulla facilisi. Quisque quis felis libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam nunc mauris, viverra non nibh a, consequat finibus ex. Praesent laoreet sit amet leo nec tincidunt. Duis aliquet cursus fermentum. Pellentesque id aliquet massa, vel imperdiet neque.', 5),
('25a', '0466483938', 'Phasellus vitae aliquam nunc, maximus venenatis ex. Etiam sed erat ultricies mi sodales blandit. Vestibulum sed nisl erat. Vivamus tristique, elit sit amet scelerisque accumsan, odio nisl commodo urna, ut rhoncus mauris arcu eget nunc. Nunc congue tempus velit. Ut non mollis lectus, sed maximus ligula. Sed et sapien nisi.', 5),
('26', '0492726924', 'Nam placerat iaculis dapibus. Praesent euismod nulla sed suscipit interdum. In hac habitasse platea dictumst. Quisque sodales tincidunt lacus. Morbi accumsan ipsum eget nulla congue, nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus luctus ante, vitae malesuada tellus quam tempus metus. Aliquam convallis augue quis felis dictum porttitor. Vivamus ut hendrerit lorem, in porta sem. Pellentesque faucibus molestie consequat.', 5),
('27', '0413489926', 'Fusce blandit eros nec ante lobortis, eu tristique massa feugiat. Suspendisse potenti. Proin vestibulum fermentum vehicula. Praesent in odio risus. Nam dignissim est non risus fringilla condimentum. Praesent non elit id elit placerat sagittis eget nec est. Aliquam facilisis mauris eu massa viverra, sed faucibus lorem pretium. Suspendisse efficitur orci ornare lacus fermentum venenatis. Morbi venenatis suscipit purus non vehicula. Aenean aliquet enim a tellus consectetur, vel ultrices augue euismod. Nulla rutrum mi ac iaculis pellentesque. Donec tristique semper nisi in tempus. Aenean enim mauris, aliquet vel augue ut, congue rhoncus ante. In quis massa molestie neque varius blandit et sed ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque a neque mollis, tristique sapien eu, egestas mi.', 5),
('27a', '0413489926', 'Nulla pellentesque, elit sed convallis blandit, nisl dui cursus magna, eu ultricies nisi risus id augue. Nunc facilisis, lacus id sagittis commodo, orci ex lobortis dolor, eu molestie nunc lacus quis sapien. Cras felis libero, venenatis faucibus sem ut, feugiat pulvinar ex. Nulla facilisi. Aenean laoreet pulvinar ante, euismod bibendum neque interdum sit amet. In varius massa ac semper maximus. Etiam tristique id nibh a fermentum. Curabitur condimentum velit id sem luctus fermentum. Phasellus faucibus imperdiet dapibus. Sed orci erat, luctus vitae odio at, luctus lacinia ante. Donec eu accumsan augue. Cras scelerisque erat nisl, a gravida sapien dignissim sit amet. Integer mollis faucibus mi ut rutrum. Donec porta augue tellus, sed ornare augue posuere rutrum. Vivamus imperdiet feugiat quam viverra bibendum.', 4),
('27b', '0417935528', 'Nam urna nisi, scelerisque non velit eget, finibus dignissim quam. Etiam ac interdum urna. Praesent ac velit at dolor rhoncus porta vitae sed mauris. Phasellus sit amet dui accumsan, pharetra diam eget, imperdiet risus. Integer cursus congue arcu a posuere. In sagittis massa et lorem condimentum, eget vehicula felis sagittis. Ut pellentesque nisi vitae justo hendrerit, non ullamcorper dolor dignissim.', 3),
('27c', '0474053564', 'Aenean tempor ligula eget erat pulvinar, a laoreet justo dictum. Curabitur ut diam pulvinar massa porttitor posuere. Sed eu lacinia elit, ac consectetur diam. Nulla vulputate magna a pellentesque tempus. Quisque ut nisi vitae neque cursus accumsan vel a lectus. Maecenas sem tortor, gravida eget nulla bibendum, facilisis eleifend ex. Maecenas dictum molestie urna, sodales ullamcorper purus tempor eget. Vivamus sed ante eget nulla dictum tincidunt non porta odio. Aliquam ullamcorper consequat arcu at efficitur. Aenean dui lorem, semper quis ex et, elementum convallis tortor. In sit amet cursus magna. Pellentesque a nunc magna. Morbi in nulla ut sem porta rhoncus. Sed lorem turpis, tempor ut iaculis a, pretium eget diam. Sed sapien enim, bibendum et leo a, congue ultrices velit. Nam finibus convallis diam vel mollis.', 3),
('28', '0450087209', '', 3),
('28', '0452000826', 'Sed massa magna, pharetra molestie augue nec, accumsan venenatis orci. Vivamus ut ullamcorper quam. Donec vitae urna ac magna tempor luctus at vitae arcu. Nunc pulvinar eu dui eu volutpat. Phasellus suscipit sit amet lorem in dignissim. Fusce quam turpis, suscipit id dui eget, condimentum rhoncus velit. Suspendisse finibus finibus maximus. Vivamus sed ex quis est congue tincidunt. Sed at ligula lorem.', 5),
('28a', '0450087209', '', 2),
('28a', '0460994447', 'Suspendisse sollicitudin justo eu magna hendrerit, in mattis ipsum ultricies. Curabitur tempus enim lorem, in scelerisque ipsum tristique in. Interdum et malesuada fames ac ante ipsum primis in faucibus. In ut ante nec leo ultrices lacinia. Praesent eros orci, rhoncus sed nunc nec, vehicula gravida libero. Maecenas maximus risus erat, pulvinar pellentesque lorem porttitor sed. Donec feugiat porta nisl, in ultricies ex feugiat ac. Nunc purus nisl, aliquet quis neque vehicula, mollis molestie purus. In hac habitasse platea dictumst. Fusce non elit vel sapien pretium convallis. Donec ligula eros, eleifend ac metus sed, aliquam luctus felis. Curabitur turpis lacus, porta in tincidunt sit amet, bibendum non arcu. Sed sagittis nec elit malesuada iaculis.', 4),
('28b', '0416616915', 'Suspendisse tempus mi felis, nec venenatis ante dapibus vitae. Cras eu libero ut ex rhoncus tempus. In dignissim gravida bibendum. Sed luctus, dolor vitae pellentesque egestas, ante magna dignissim elit, eget scelerisque lacus turpis ut erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed molestie laoreet odio, sed iaculis tellus convallis at. Cras egestas sem neque, non luctus augue pellentesque eget. Fusce vitae lorem at lacus vehicula vehicula eget a augue. Mauris et ante nec nulla iaculis accumsan ac at orci. Ut in est non neque varius ultrices at eget magna. Donec et molestie erat. Duis posuere sodales urna a congue.', 4),
('28b', '0450087209', '', 1),
('28c', '0472771243', 'Maecenas ac mi vitae dolor vulputate facilisis. Nam eu odio sollicitudin, vestibulum diam sed, mollis neque. Donec ut enim risus. Cras eget neque vel nunc pharetra dapibus at vitae ex. Phasellus hendrerit consequat felis lacinia tincidunt. Etiam pellentesque scelerisque lectus, sit amet finibus libero volutpat in. Ut ullamcorper elit sit amet mauris egestas ornare. In quis tincidunt turpis. Praesent quis quam eros. Donec cursus vestibulum urna ac aliquam. Integer risus nunc, aliquam quis feugiat sit amet, tempor vitae purus. Suspendisse congue pulvinar nulla, id laoreet quam posuere at.', 4),
('28d', '0466483938', 'Nam aliquet luctus enim, vitae laoreet augue finibus sed. Sed aliquet urna id pretium eleifend. Fusce luctus urna et purus tincidunt, sit amet mattis lorem imperdiet. Quisque ultrices velit at nibh faucibus, ut malesuada ipsum rhoncus. Vivamus gravida vestibulum justo, nec vestibulum tortor sodales vitae. Duis pellentesque at turpis vel iaculis. Aenean tortor nisi, vulputate eget lectus at, gravida elementum mauris. Curabitur a lacus ut eros feugiat tincidunt. Vivamus mattis id magna at imperdiet.', 3),
('29', '0488941882', 'Integer volutpat, augue at dapibus viverra, ante massa volutpat odio, ut auctor tellus lacus a odio. Pellentesque dapibus, lectus ut pellentesque sodales, dolor ligula elementum mauris, sed tincidunt libero urna sed nunc. Vestibulum et eros aliquet, viverra risus a, malesuada magna. Quisque volutpat urna tellus, sed auctor lacus feugiat ac. Donec in scelerisque felis. Mauris erat mauris, posuere ut dictum eget, feugiat ornare sem. Donec in tortor ut nisl sollicitudin sagittis eu sed elit. Cras imperdiet, lacus quis placerat semper, tellus elit fermentum sapien, nec eleifend turpis dolor sed lectus. Vivamus nec massa sed elit semper mattis in non risus. Nam in arcu at felis placerat congue in a neque.', 5);
INSERT INTO `reviews` (`dish_code`, `user_id`, `content`, `rating`) VALUES
('30', '0474053564', 'Suspendisse dictum eros non ligula convallis, facilisis interdum massa suscipit. Sed egestas tempor felis. Praesent ligula lacus, ullamcorper quis diam et, euismod commodo ex. Aenean tempus semper tellus ut vulputate. Vestibulum eleifend quam nec massa egestas malesuada. Maecenas at nulla aliquet, consectetur erat in, venenatis magna. Nullam elementum eros id mi aliquet, sit amet consequat nibh eleifend. Morbi feugiat erat et varius molestie. Nulla diam diam, fermentum ac quam non, rutrum auctor libero. In eu varius mauris, vitae placerat nunc. Proin elementum sem non iaculis efficitur.', 3),
('31', '0493744028', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam efficitur sodales metus eu mollis. Praesent mollis vehicula interdum. Donec viverra consectetur ante vel iaculis. Sed enim orci, finibus ac elit quis, viverra accumsan tortor. Nulla lobortis, ipsum in vulputate pellentesque, risus lorem fermentum felis, eget aliquam nibh ex nec velit. Sed risus felis, cursus eu condimentum quis, feugiat ornare eros. Mauris nisl quam, egestas a risus eget, dictum ornare nibh. Aliquam erat volutpat. Integer ac magna eget ipsum facilisis pretium. Suspendisse dui risus, consequat eu iaculis ac, placerat ut lectus. Fusce leo odio, fringilla in tincidunt sit amet, sollicitudin vehicula velit. Nullam non velit eget mi luctus consequat.', 3),
('31a', '0488941882', 'Ut malesuada hendrerit ipsum, et mollis massa placerat ut. Nam aliquet, nibh id luctus varius, enim enim sodales magna, consequat vehicula nulla odio a eros. Aliquam nec placerat lectus. Aliquam faucibus erat gravida augue pulvinar fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat fermentum egestas. Quisque efficitur, nibh sit amet tempus vehicula, augue mauris tincidunt purus, sit amet lacinia velit arcu quis ligula. Ut ante nisi, posuere eget volutpat ut, aliquet non diam. Nam et semper dolor. Ut eleifend placerat ipsum, vel pretium magna ullamcorper quis. Suspendisse semper lacus erat, suscipit consectetur ex tempor ut. Duis in luctus sapien. Nulla interdum ante ultrices purus consequat venenatis. Maecenas malesuada quam quis nulla venenatis rutrum. Cras vel sapien in neque ultrices congue ut et lacus.', 3),
('32', '0437347207', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et fringilla lacus, convallis ultrices lacus. Cras id elit iaculis, interdum urna convallis, maximus quam. Ut vulputate imperdiet nisl, volutpat auctor mi. Nulla pellentesque venenatis urna, quis consectetur nibh euismod et. Suspendisse lorem nisi, auctor a justo eleifend, lacinia convallis arcu. Curabitur nisl arcu, dignissim id felis nec, dignissim iaculis enim. Sed sed est ante. Sed non pulvinar quam, sit amet dignissim diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum interdum nulla ullamcorper, mattis turpis dignissim, vestibulum elit. Cras rhoncus in metus et ultrices. Nullam non interdum mi, in ultrices ligula. Pellentesque ultrices id quam sed dignissim. Nunc ut turpis porttitor, luctus eros nec, ornare lacus. Duis vulputate felis a condimentum iaculis. Vestibulum consequat tellus ut vehicula placerat.', 4),
('32a', '0489392336', 'Nam enim ex, fermentum sed elementum ut, molestie sit amet erat. Donec quis tellus id nisl consequat semper quis eu ex. Cras mollis dictum magna ut imperdiet. Morbi elementum aliquet odio, a varius eros porta sed. Proin congue diam non nulla placerat, a interdum ligula molestie. Curabitur ac ligula nisi. Vivamus vitae velit malesuada, rutrum enim sed, sodales sapien. Maecenas aliquam in odio vel efficitur. In elementum eros lacus, sed rhoncus dolor posuere a. Aenean elementum luctus libero, sit amet eleifend augue sollicitudin ut. Donec nisi dui, tincidunt in arcu auctor, interdum mattis quam.', 5),
('32b', '0493744028', 'Vestibulum nulla nisl, fringilla at facilisis at, luctus sed felis. Donec et elementum mauris. Nunc feugiat interdum justo nec semper. Mauris venenatis neque velit, sit amet consequat tellus congue eu. Mauris dui diam, convallis non felis quis, interdum mollis erat. Etiam efficitur ex ut mi mattis, non ornare lorem rhoncus. Donec ultricies vel dolor eget tempus. Quisque euismod in lorem sed condimentum. Nam venenatis libero in mollis malesuada. Vestibulum ut pellentesque lacus.', 5),
('32c', '0452000826', 'Aenean at dolor eu arcu suscipit finibus. Suspendisse aliquam urna ut elit feugiat mollis. Suspendisse vehicula elit a pulvinar tempus. Suspendisse justo augue, blandit ac commodo vitae, viverra et justo. Nulla facilisi. Quisque quis felis libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam nunc mauris, viverra non nibh a, consequat finibus ex. Praesent laoreet sit amet leo nec tincidunt. Duis aliquet cursus fermentum. Pellentesque id aliquet massa, vel imperdiet neque.', 5),
('32d', '0492726924', 'Nam placerat iaculis dapibus. Praesent euismod nulla sed suscipit interdum. In hac habitasse platea dictumst. Quisque sodales tincidunt lacus. Morbi accumsan ipsum eget nulla congue, nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus luctus ante, vitae malesuada tellus quam tempus metus. Aliquam convallis augue quis felis dictum porttitor. Vivamus ut hendrerit lorem, in porta sem. Pellentesque faucibus molestie consequat.', 5),
('33', '0474053564', 'Nulla ut lectus turpis. Morbi erat nisi, bibendum at elementum ut, tincidunt non purus. Proin sollicitudin dolor quam, ut hendrerit dolor congue eget. Donec placerat faucibus nisl, non eleifend nisi finibus nec. Sed pellentesque ut nisi vel finibus. Suspendisse eu nulla massa. Duis nec orci purus. Ut porta condimentum leo, vel sagittis orci consequat et. Proin rhoncus porta ipsum at tincidunt. Pellentesque vel vehicula elit. Etiam mattis odio a eros sollicitudin tempor. Suspendisse consectetur hendrerit tincidunt. Cras porttitor sem et nisl sollicitudin cursus. Maecenas quis condimentum eros, ut iaculis ipsum. Fusce aliquam diam ut varius porta.', 5),
('34', '0493744028', 'Curabitur facilisis nec nulla a feugiat. Cras in tellus ut dolor accumsan lobortis quis sed mauris. Suspendisse sed nisl semper, tempor leo sit amet, ullamcorper nisl. Praesent ut dui elit. Quisque et ipsum nisl. Nam id dolor neque. Curabitur condimentum venenatis egestas. Vivamus vulputate ultrices turpis at pretium.', 5),
('35', '0437347207', 'Curabitur hendrerit dapibus dolor, ut porta odio hendrerit venenatis. Integer quis ligula ac elit fermentum ultrices. Sed accumsan odio sapien, id pulvinar est aliquet et. Aliquam commodo turpis pharetra, luctus tellus at, porta erat. Praesent ut lacus ut lacus fringilla pretium. Fusce sit amet leo in enim rutrum tincidunt ut eget ante. Etiam rutrum, ligula vitae eleifend laoreet, magna massa sodales ligula, vel volutpat massa magna non nunc. Mauris et magna mollis, laoreet velit in, blandit nisl. Aliquam egestas justo aliquam neque suscipit laoreet. Vestibulum vehicula mi eu tellus tempus molestie. Curabitur eget justo et ante eleifend suscipit ac id quam.', 5),
('35a', '0437347207', 'Curabitur hendrerit dapibus dolor, ut porta odio hendrerit venenatis. Integer quis ligula ac elit fermentum ultrices. Sed accumsan odio sapien, id pulvinar est aliquet et. Aliquam commodo turpis pharetra, luctus tellus at, porta erat. Praesent ut lacus ut lacus fringilla pretium. Fusce sit amet leo in enim rutrum tincidunt ut eget ante. Etiam rutrum, ligula vitae eleifend laoreet, magna massa sodales ligula, vel volutpat massa magna non nunc. Mauris et magna mollis, laoreet velit in, blandit nisl. Aliquam egestas justo aliquam neque suscipit laoreet. Vestibulum vehicula mi eu tellus tempus molestie. Curabitur eget justo et ante eleifend suscipit ac id quam.', 5),
('35a', '0472771243', 'Phasellus euismod lacinia ante, id volutpat nibh. Nullam non pellentesque ipsum. Curabitur felis enim, ultricies vitae aliquet eget, porttitor eget orci. Vestibulum malesuada purus vel pharetra feugiat. Etiam a ex mauris. Maecenas lobortis tellus id facilisis ultrices. Nam et justo convallis, tempor nisi in, bibendum mauris. Maecenas eleifend, massa a feugiat dignissim, eros tortor venenatis sem, in consequat libero augue ut erat. Pellentesque malesuada mollis dui eu posuere. Integer pharetra nec metus id suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent finibus, dui id porttitor placerat, nisl libero finibus lorem, id dictum nibh lorem sed mi. Sed ligula massa, dignissim at quam nec, accumsan convallis sapien. Aliquam blandit congue dolor ac pellentesque.', 5),
('35b', '0452000826', 'In hac habitasse platea dictumst. Duis at finibus mi. Aliquam purus augue, laoreet quis pellentesque elementum, elementum eu erat. Pellentesque at neque massa. Proin nunc metus, blandit ac aliquam et, tempor dictum augue. Nulla imperdiet elit et felis lobortis ullamcorper. Nulla tristique aliquam dolor. Aenean ac diam et ex dapibus porta a id nibh.', 4),
('35b', '0460994447', 'Nunc mattis eget justo ultrices iaculis. Vivamus vel suscipit metus, nec gravida neque. Nunc quis diam orci. Ut maximus orci molestie, vestibulum enim et, aliquet metus. Quisque dictum quam ac suscipit venenatis. Aliquam ornare tortor sapien, in vulputate ex feugiat a. Duis facilisis augue vitae sapien ornare, eget dignissim neque posuere. Vestibulum et lobortis elit. Etiam vitae ante porttitor, lacinia tortor id, varius urna. Nunc condimentum vulputate lorem ac facilisis. Maecenas fringilla, orci ut maximus commodo, massa nibh posuere odio, sed tincidunt massa turpis eu enim. Curabitur pellentesque, magna non placerat venenatis, sapien tellus pulvinar tellus, eu malesuada dolor diam eu lectus. Proin tincidunt neque non tortor ullamcorper auctor. Sed ullamcorper consequat odio a euismod. Donec quis magna lacinia, feugiat ipsum quis, faucibus nisi.', 5),
('35c', '0477435523', 'In finibus gravida purus, aliquet faucibus velit tincidunt non. Sed gravida nunc eu tristique tincidunt. Proin tempus, libero vel pretium sagittis, quam arcu auctor magna, at rutrum velit elit eu ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed suscipit nec libero et volutpat. Curabitur mollis felis sit amet lorem scelerisque posuere. Pellentesque nec mauris a massa dapibus finibus. Proin at turpis quis felis faucibus fringilla. Donec vitae semper lorem. Suspendisse nec nisl pulvinar, pellentesque justo nec, consectetur nulla. Vestibulum ac neque blandit, fermentum quam non, vestibulum mi. Etiam facilisis non nulla at lobortis. Integer nec dui cursus, tincidunt tortor vitae, pulvinar risus.', 3),
('35c', '0492726924', 'Proin tincidunt, nunc quis interdum tincidunt, elit velit tempus magna, a pellentesque lorem est eu magna. Suspendisse in dui id sapien facilisis dapibus eget quis ante. Sed porttitor enim vel eros consectetur auctor. In ultricies bibendum ligula, vitae porttitor nulla fringilla nec. Cras dapibus justo et justo mattis, in euismod elit scelerisque. Duis facilisis nunc at dolor sollicitudin posuere. Vivamus sit amet dapibus urna, sit amet semper libero. Sed elementum metus eget viverra dapibus. Maecenas convallis justo ut varius convallis. In in libero purus. Suspendisse potenti. Phasellus tempor interdum libero, ut fringilla justo tempor rhoncus. Aenean sit amet dignissim risus. Donec velit felis, rhoncus quis elit eget, gravida tempor libero. Cras egestas velit quis pretium sodales. Donec ut faucibus ex.', 4),
('36', '0460994447', 'Nunc mattis eget justo ultrices iaculis. Vivamus vel suscipit metus, nec gravida neque. Nunc quis diam orci. Ut maximus orci molestie, vestibulum enim et, aliquet metus. Quisque dictum quam ac suscipit venenatis. Aliquam ornare tortor sapien, in vulputate ex feugiat a. Duis facilisis augue vitae sapien ornare, eget dignissim neque posuere. Vestibulum et lobortis elit. Etiam vitae ante porttitor, lacinia tortor id, varius urna. Nunc condimentum vulputate lorem ac facilisis. Maecenas fringilla, orci ut maximus commodo, massa nibh posuere odio, sed tincidunt massa turpis eu enim. Curabitur pellentesque, magna non placerat venenatis, sapien tellus pulvinar tellus, eu malesuada dolor diam eu lectus. Proin tincidunt neque non tortor ullamcorper auctor. Sed ullamcorper consequat odio a euismod. Donec quis magna lacinia, feugiat ipsum quis, faucibus nisi.', 5),
('37', '0477435523', 'In finibus gravida purus, aliquet faucibus velit tincidunt non. Sed gravida nunc eu tristique tincidunt. Proin tempus, libero vel pretium sagittis, quam arcu auctor magna, at rutrum velit elit eu ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed suscipit nec libero et volutpat. Curabitur mollis felis sit amet lorem scelerisque posuere. Pellentesque nec mauris a massa dapibus finibus. Proin at turpis quis felis faucibus fringilla. Donec vitae semper lorem. Suspendisse nec nisl pulvinar, pellentesque justo nec, consectetur nulla. Vestibulum ac neque blandit, fermentum quam non, vestibulum mi. Etiam facilisis non nulla at lobortis. Integer nec dui cursus, tincidunt tortor vitae, pulvinar risus.', 3),
('38', '0489392336', 'Proin sit amet leo consequat, sagittis nulla at, varius metus. Morbi vel arcu sit amet sem cursus tincidunt. Nam rhoncus sodales nisi non scelerisque. Phasellus sed libero vel eros ornare blandit nec eget justo. Nulla efficitur dolor erat, nec sodales tellus hendrerit efficitur. Mauris vitae tincidunt risus, tristique dapibus risus. Donec sed tellus risus. Nulla turpis magna, egestas et ullamcorper a, tincidunt a nisi. Maecenas dolor turpis, ullamcorper nec ipsum ac, ultrices volutpat ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nunc at eros fermentum dignissim nec sit amet lorem. Praesent nulla felis, eleifend vehicula justo a, semper dictum urna.', 3),
('39', '0416616915', 'Nunc mattis, orci id fermentum tempus, nisl lorem ultricies massa, id fermentum libero sapien eu nibh. Ut non eros nec magna vestibulum auctor. In vulputate condimentum lacus ac pellentesque. Nam id ornare risus. Proin tincidunt euismod lorem, in porttitor arcu malesuada ut. Phasellus risus erat, dignissim fringilla finibus sit amet, accumsan nec metus. Maecenas sollicitudin ut libero ut accumsan. Fusce malesuada libero ac sapien tincidunt iaculis. Pellentesque rhoncus, augue eget consequat auctor, velit leo volutpat turpis, eget imperdiet erat risus et lacus. Fusce blandit nisl ut tellus mattis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam a odio rhoncus, pharetra nulla at, pulvinar ligula. Nullam accumsan tellus non mauris convallis tristique. Duis vitae volutpat dolor, ut tincidunt nibh.', 3),
('40', '0466483938', 'Donec consequat tristique nunc eget vestibulum. Praesent vulputate massa eget mauris tempor, in dictum ex consectetur. Morbi efficitur neque augue, vel mattis est rutrum sit amet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ullamcorper arcu non tellus dictum, nec imperdiet est bibendum. Nam venenatis sed arcu at luctus. Nullam eget laoreet tortor.', 4),
('41', '0472771243', 'Curabitur sollicitudin quam a finibus euismod. In consectetur convallis diam, vitae finibus tellus ullamcorper vitae. Donec fringilla accumsan ligula vitae semper. Donec a leo vitae nibh posuere varius a at massa. Quisque malesuada, lectus quis varius scelerisque, justo nisi luctus ante, sagittis rhoncus urna magna ac magna. Praesent eget ante eu neque dictum posuere. Donec pretium mi non neque placerat, ut blandit ante vestibulum. Donec a nisi maximus, feugiat enim eu, finibus justo. Nulla facilisi. Etiam enim augue, lobortis euismod semper sed, tempus eu lorem. Nullam et felis egestas, eleifend tortor sit amet, suscipit odio. Integer vel scelerisque elit.', 3),
('41a', '0417935528', 'Sed a ex ut nibh laoreet suscipit nec ut erat. Sed a hendrerit sem. Vestibulum id leo blandit, tincidunt massa a, tristique leo. Morbi ullamcorper lorem at lectus dapibus sollicitudin. Quisque rutrum efficitur sapien, nec interdum lacus feugiat et. Sed nisl felis, pharetra ac velit non, pellentesque porta lectus. Sed dapibus tempus consectetur. Duis interdum maximus sollicitudin. Donec mollis orci et turpis aliquet, ac ullamcorper nunc tincidunt. Duis sit amet ante quam. Sed eget neque enim. Proin pretium odio nulla, at semper ante aliquet id.', 4),
('41a', '0489392336', 'Proin sit amet leo consequat, sagittis nulla at, varius metus. Morbi vel arcu sit amet sem cursus tincidunt. Nam rhoncus sodales nisi non scelerisque. Phasellus sed libero vel eros ornare blandit nec eget justo. Nulla efficitur dolor erat, nec sodales tellus hendrerit efficitur. Mauris vitae tincidunt risus, tristique dapibus risus. Donec sed tellus risus. Nulla turpis magna, egestas et ullamcorper a, tincidunt a nisi. Maecenas dolor turpis, ullamcorper nec ipsum ac, ultrices volutpat ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nunc at eros fermentum dignissim nec sit amet lorem. Praesent nulla felis, eleifend vehicula justo a, semper dictum urna.', 3),
('41b', '0416616915', 'Nunc mattis, orci id fermentum tempus, nisl lorem ultricies massa, id fermentum libero sapien eu nibh. Ut non eros nec magna vestibulum auctor. In vulputate condimentum lacus ac pellentesque. Nam id ornare risus. Proin tincidunt euismod lorem, in porttitor arcu malesuada ut. Phasellus risus erat, dignissim fringilla finibus sit amet, accumsan nec metus. Maecenas sollicitudin ut libero ut accumsan. Fusce malesuada libero ac sapien tincidunt iaculis. Pellentesque rhoncus, augue eget consequat auctor, velit leo volutpat turpis, eget imperdiet erat risus et lacus. Fusce blandit nisl ut tellus mattis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam a odio rhoncus, pharetra nulla at, pulvinar ligula. Nullam accumsan tellus non mauris convallis tristique. Duis vitae volutpat dolor, ut tincidunt nibh.', 3),
('41b', '0474053564', 'In iaculis velit vel magna maximus, vel posuere arcu feugiat. Aenean molestie bibendum mi, eget dignissim lorem fringilla eget. Nulla sodales commodo dui, sit amet volutpat sapien hendrerit nec. Nulla dui est, laoreet sit amet elit sagittis, posuere tempus purus. Quisque iaculis nisl nec elit facilisis, nec congue mauris rhoncus. Ut mollis sapien ac ultricies maximus. Quisque commodo consectetur nulla, vel bibendum leo finibus in. Aenean pretium, diam facilisis aliquam aliquet, velit leo accumsan quam, ac luctus ligula arcu malesuada elit.', 4),
('41c', '0413489926', 'Sed efficitur condimentum purus, et porttitor nisi finibus at. Nam porttitor nec sem at fringilla. Quisque libero orci, cursus in metus vitae, congue accumsan massa. Nunc vitae leo libero. Curabitur ut porta ligula. Vestibulum dapibus pellentesque convallis. Sed sed blandit lorem. Sed sit amet dui ut ante efficitur sodales ut eu diam. Ut id felis placerat libero finibus mollis. Fusce consectetur varius lacinia. Quisque a velit enim. Quisque aliquet a lacus ac luctus. Maecenas iaculis, sapien eu tristique ullamcorper, lorem nisi blandit tortor, at condimentum mauris enim et metus. Cras ut turpis sit amet orci tincidunt venenatis. Proin dignissim lacus est, quis mollis augue interdum nec. Mauris nec aliquam sapien.', 3),
('41c', '0466483938', 'Donec consequat tristique nunc eget vestibulum. Praesent vulputate massa eget mauris tempor, in dictum ex consectetur. Morbi efficitur neque augue, vel mattis est rutrum sit amet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ullamcorper arcu non tellus dictum, nec imperdiet est bibendum. Nam venenatis sed arcu at luctus. Nullam eget laoreet tortor.', 4),
('42', '0488941882', 'Nunc rhoncus at risus sit amet congue. Cras fermentum tortor eu lectus iaculis imperdiet. Morbi eros metus, pulvinar non posuere quis, porta vitae massa. Sed et justo lorem. Aenean mollis aliquet nisl eget gravida. Duis ultricies sagittis elit sit amet porttitor. Mauris quis magna convallis, blandit velit eget, elementum lectus. Phasellus ac lacus interdum, posuere quam sed, elementum nunc. Sed vel ullamcorper urna, vitae pretium tortor. Fusce leo ex, vestibulum sit amet iaculis non, rutrum id tortor. Quisque rutrum odio eu dolor faucibus, vitae elementum ex suscipit.', 4),
('42a', '0460994447', 'Integer nec rhoncus nisi. Ut pellentesque tincidunt accumsan. Aliquam erat volutpat. Suspendisse potenti. Donec in massa sem. Vestibulum rhoncus, justo ut egestas accumsan, lacus nulla convallis dolor, a egestas est elit a sem. Aenean a risus varius, lacinia risus nec, vulputate ligula. Morbi ipsum odio, pharetra sed velit eget, suscipit fringilla elit. Curabitur blandit quam eu neque molestie, vitae commodo odio ullamcorper. Etiam lobortis lorem non augue facilisis feugiat sed eu dolor. Curabitur vehicula, neque quis suscipit aliquet, risus tortor rhoncus dui, eu convallis urna lacus vitae velit. Suspendisse posuere facilisis sapien eu maximus.', 3),
('42a', '0472771243', 'Curabitur sollicitudin quam a finibus euismod. In consectetur convallis diam, vitae finibus tellus ullamcorper vitae. Donec fringilla accumsan ligula vitae semper. Donec a leo vitae nibh posuere varius a at massa. Quisque malesuada, lectus quis varius scelerisque, justo nisi luctus ante, sagittis rhoncus urna magna ac magna. Praesent eget ante eu neque dictum posuere. Donec pretium mi non neque placerat, ut blandit ante vestibulum. Donec a nisi maximus, feugiat enim eu, finibus justo. Nulla facilisi. Etiam enim augue, lobortis euismod semper sed, tempus eu lorem. Nullam et felis egestas, eleifend tortor sit amet, suscipit odio. Integer vel scelerisque elit.', 3),
('43', '0489392336', 'Donec justo nisl, ultricies ut feugiat non, congue a nisl. Donec laoreet metus sed mollis tincidunt. Nam vitae libero eget odio pharetra placerat. In hac habitasse platea dictumst. Suspendisse enim lorem, ullamcorper eget suscipit ut, eleifend sit amet lorem. Vestibulum congue cursus leo, vel ornare tortor pretium sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam quis lobortis libero, sed finibus nibh. Proin auctor nulla a sagittis vehicula. Praesent augue sapien, fringilla ut velit vitae, mattis consectetur nibh. Fusce ut sodales purus. Donec dictum orci eleifend, fermentum massa ac, eleifend quam.', 4),
('44', '0493744028', 'Pellentesque varius nulla vitae vehicula pellentesque. Curabitur sodales ut tellus nec condimentum. Donec est ipsum, aliquam vel leo eu, aliquet pulvinar mi. Integer ultrices bibendum nisi at mattis. In eget risus ultrices lectus aliquam faucibus. Praesent maximus fringilla lectus et consequat. Phasellus accumsan, risus eu consequat gravida, lectus nunc dignissim lorem, et placerat nisi tellus luctus urna. Maecenas convallis massa a porttitor semper. Praesent a feugiat dolor. Integer pellentesque dui ut urna tincidunt, hendrerit feugiat elit pharetra. Donec magna lacus, mollis eu feugiat et, sagittis at mauris. Nulla mollis est sed vestibulum fermentum. Phasellus varius ante dignissim purus aliquet finibus. Vivamus volutpat sapien quis tortor volutpat, sed egestas tortor varius. Mauris sit amet tellus hendrerit, dignissim odio quis, ultricies lectus.', 4),
('44a', '0416616915', 'Integer quis vulputate libero. Vestibulum vitae congue nibh. Maecenas semper eros a mauris fringilla, et ornare purus placerat. Pellentesque in mollis lacus. Vestibulum sagittis sodales justo, id congue mi venenatis ut. Quisque erat quam, aliquet non viverra ut, porta vel lectus. Ut in nulla nec metus cursus placerat.', 5),
('44a', '0488941882', 'Nunc rhoncus at risus sit amet congue. Cras fermentum tortor eu lectus iaculis imperdiet. Morbi eros metus, pulvinar non posuere quis, porta vitae massa. Sed et justo lorem. Aenean mollis aliquet nisl eget gravida. Duis ultricies sagittis elit sit amet porttitor. Mauris quis magna convallis, blandit velit eget, elementum lectus. Phasellus ac lacus interdum, posuere quam sed, elementum nunc. Sed vel ullamcorper urna, vitae pretium tortor. Fusce leo ex, vestibulum sit amet iaculis non, rutrum id tortor. Quisque rutrum odio eu dolor faucibus, vitae elementum ex suscipit.', 4),
('44b', '0477435523', 'Sed eu lacus in enim faucibus auctor ut sit amet magna. Pellentesque eget urna nec ante imperdiet auctor. Sed luctus finibus ex at ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id pulvinar nisl. Pellentesque sed condimentum lectus, sit amet egestas tortor. Morbi dignissim ex eu lorem rutrum finibus. Quisque at venenatis erat.', 5),
('44b', '0489392336', 'Donec justo nisl, ultricies ut feugiat non, congue a nisl. Donec laoreet metus sed mollis tincidunt. Nam vitae libero eget odio pharetra placerat. In hac habitasse platea dictumst. Suspendisse enim lorem, ullamcorper eget suscipit ut, eleifend sit amet lorem. Vestibulum congue cursus leo, vel ornare tortor pretium sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam quis lobortis libero, sed finibus nibh. Proin auctor nulla a sagittis vehicula. Praesent augue sapien, fringilla ut velit vitae, mattis consectetur nibh. Fusce ut sodales purus. Donec dictum orci eleifend, fermentum massa ac, eleifend quam.', 4),
('45', '0437347207', 'Pellentesque venenatis maximus convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec eu nisi blandit tellus posuere tincidunt ut vestibulum magna. Donec ligula erat, feugiat sed justo id, luctus posuere urna. Nullam dui nibh, efficitur eget sem vitae, imperdiet euismod nulla. Nulla ac lorem sed ante porttitor sagittis. Vivamus aliquam est erat, vel pharetra odio ultrices quis. Curabitur euismod, magna in tincidunt mattis, odio leo sollicitudin orci, et rutrum ipsum nibh vitae nisl.', 3),
('46', '0492726924', 'Duis sit amet sapien urna. Suspendisse quis lacinia est. Nam vel eleifend nisi. Cras ultricies diam pretium felis dignissim, sit amet hendrerit lectus dignissim. Donec gravida luctus iaculis. Vestibulum maximus sapien ac bibendum porttitor. Duis sollicitudin congue tristique. Curabitur sed arcu in ipsum varius porttitor. Donec scelerisque lobortis mollis.', 3),
('47', '0452000826', 'Sed massa magna, pharetra molestie augue nec, accumsan venenatis orci. Vivamus ut ullamcorper quam. Donec vitae urna ac magna tempor luctus at vitae arcu. Nunc pulvinar eu dui eu volutpat. Phasellus suscipit sit amet lorem in dignissim. Fusce quam turpis, suscipit id dui eget, condimentum rhoncus velit. Suspendisse finibus finibus maximus. Vivamus sed ex quis est congue tincidunt. Sed at ligula lorem.', 5),
('47', '0493744028', 'Pellentesque varius nulla vitae vehicula pellentesque. Curabitur sodales ut tellus nec condimentum. Donec est ipsum, aliquam vel leo eu, aliquet pulvinar mi. Integer ultrices bibendum nisi at mattis. In eget risus ultrices lectus aliquam faucibus. Praesent maximus fringilla lectus et consequat. Phasellus accumsan, risus eu consequat gravida, lectus nunc dignissim lorem, et placerat nisi tellus luctus urna. Maecenas convallis massa a porttitor semper. Praesent a feugiat dolor. Integer pellentesque dui ut urna tincidunt, hendrerit feugiat elit pharetra. Donec magna lacus, mollis eu feugiat et, sagittis at mauris. Nulla mollis est sed vestibulum fermentum. Phasellus varius ante dignissim purus aliquet finibus. Vivamus volutpat sapien quis tortor volutpat, sed egestas tortor varius. Mauris sit amet tellus hendrerit, dignissim odio quis, ultricies lectus.', 4),
('47a', '0452000826', 'Sed massa magna, pharetra molestie augue nec, accumsan venenatis orci. Vivamus ut ullamcorper quam. Donec vitae urna ac magna tempor luctus at vitae arcu. Nunc pulvinar eu dui eu volutpat. Phasellus suscipit sit amet lorem in dignissim. Fusce quam turpis, suscipit id dui eget, condimentum rhoncus velit. Suspendisse finibus finibus maximus. Vivamus sed ex quis est congue tincidunt. Sed at ligula lorem.', 5),
('47a', '0492726924', 'Nam placerat iaculis dapibus. Praesent euismod nulla sed suscipit interdum. In hac habitasse platea dictumst. Quisque sodales tincidunt lacus. Morbi accumsan ipsum eget nulla congue, nec tristique magna placerat. Donec ac purus dui. Cras pretium vel felis consequat commodo. Maecenas molestie, mi non vestibulum cursus, lorem lectus luctus ante, vitae malesuada tellus quam tempus metus. Aliquam convallis augue quis felis dictum porttitor. Vivamus ut hendrerit lorem, in porta sem. Pellentesque faucibus molestie consequat.', 5),
('48', '0437347207', 'Pellentesque venenatis maximus convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec eu nisi blandit tellus posuere tincidunt ut vestibulum magna. Donec ligula erat, feugiat sed justo id, luctus posuere urna. Nullam dui nibh, efficitur eget sem vitae, imperdiet euismod nulla. Nulla ac lorem sed ante porttitor sagittis. Vivamus aliquam est erat, vel pharetra odio ultrices quis. Curabitur euismod, magna in tincidunt mattis, odio leo sollicitudin orci, et rutrum ipsum nibh vitae nisl.', 3),
('48', '0488941882', 'Integer volutpat, augue at dapibus viverra, ante massa volutpat odio, ut auctor tellus lacus a odio. Pellentesque dapibus, lectus ut pellentesque sodales, dolor ligula elementum mauris, sed tincidunt libero urna sed nunc. Vestibulum et eros aliquet, viverra risus a, malesuada magna. Quisque volutpat urna tellus, sed auctor lacus feugiat ac. Donec in scelerisque felis. Mauris erat mauris, posuere ut dictum eget, feugiat ornare sem. Donec in tortor ut nisl sollicitudin sagittis eu sed elit. Cras imperdiet, lacus quis placerat semper, tellus elit fermentum sapien, nec eleifend turpis dolor sed lectus. Vivamus nec massa sed elit semper mattis in non risus. Nam in arcu at felis placerat congue in a neque.', 5),
('49', '0474053564', 'Suspendisse dictum eros non ligula convallis, facilisis interdum massa suscipit. Sed egestas tempor felis. Praesent ligula lacus, ullamcorper quis diam et, euismod commodo ex. Aenean tempus semper tellus ut vulputate. Vestibulum eleifend quam nec massa egestas malesuada. Maecenas at nulla aliquet, consectetur erat in, venenatis magna. Nullam elementum eros id mi aliquet, sit amet consequat nibh eleifend. Morbi feugiat erat et varius molestie. Nulla diam diam, fermentum ac quam non, rutrum auctor libero. In eu varius mauris, vitae placerat nunc. Proin elementum sem non iaculis efficitur.', 3),
('49', '0492726924', 'Duis sit amet sapien urna. Suspendisse quis lacinia est. Nam vel eleifend nisi. Cras ultricies diam pretium felis dignissim, sit amet hendrerit lectus dignissim. Donec gravida luctus iaculis. Vestibulum maximus sapien ac bibendum porttitor. Duis sollicitudin congue tristique. Curabitur sed arcu in ipsum varius porttitor. Donec scelerisque lobortis mollis.', 3),
('50', '0417935528', 'Etiam purus mauris, porta sit amet vehicula non, placerat ultrices quam. Vestibulum eget magna eu ante sodales posuere a condimentum lectus. Integer tristique, tellus vel gravida vehicula, enim leo scelerisque dui, vitae sollicitudin libero justo non leo. Curabitur libero nisi, eleifend a tempus id, congue eget diam. Ut ut libero lorem. Ut convallis ante nisi, vel porta lorem blandit id. Mauris vestibulum ac odio eu vehicula. Curabitur risus lorem, hendrerit ut mauris faucibus, laoreet dignissim arcu. In congue eget lectus in condimentum. Nulla nec volutpat elit. Curabitur id mattis arcu. Donec laoreet ipsum at turpis porta, ac scelerisque quam molestie. Duis risus nisl, vehicula sit amet ante auctor, viverra bibendum sem. Nulla facilisi.', 5),
('50', '0493744028', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam efficitur sodales metus eu mollis. Praesent mollis vehicula interdum. Donec viverra consectetur ante vel iaculis. Sed enim orci, finibus ac elit quis, viverra accumsan tortor. Nulla lobortis, ipsum in vulputate pellentesque, risus lorem fermentum felis, eget aliquam nibh ex nec velit. Sed risus felis, cursus eu condimentum quis, feugiat ornare eros. Mauris nisl quam, egestas a risus eget, dictum ornare nibh. Aliquam erat volutpat. Integer ac magna eget ipsum facilisis pretium. Suspendisse dui risus, consequat eu iaculis ac, placerat ut lectus. Fusce leo odio, fringilla in tincidunt sit amet, sollicitudin vehicula velit. Nullam non velit eget mi luctus consequat.', 3),
('51', '0437347207', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et fringilla lacus, convallis ultrices lacus. Cras id elit iaculis, interdum urna convallis, maximus quam. Ut vulputate imperdiet nisl, volutpat auctor mi. Nulla pellentesque venenatis urna, quis consectetur nibh euismod et. Suspendisse lorem nisi, auctor a justo eleifend, lacinia convallis arcu. Curabitur nisl arcu, dignissim id felis nec, dignissim iaculis enim. Sed sed est ante. Sed non pulvinar quam, sit amet dignissim diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum interdum nulla ullamcorper, mattis turpis dignissim, vestibulum elit. Cras rhoncus in metus et ultrices. Nullam non interdum mi, in ultrices ligula. Pellentesque ultrices id quam sed dignissim. Nunc ut turpis porttitor, luctus eros nec, ornare lacus. Duis vulputate felis a condimentum iaculis. Vestibulum consequat tellus ut vehicula placerat.', 4),
('51', '0472771243', 'Phasellus euismod lacinia ante, id volutpat nibh. Nullam non pellentesque ipsum. Curabitur felis enim, ultricies vitae aliquet eget, porttitor eget orci. Vestibulum malesuada purus vel pharetra feugiat. Etiam a ex mauris. Maecenas lobortis tellus id facilisis ultrices. Nam et justo convallis, tempor nisi in, bibendum mauris. Maecenas eleifend, massa a feugiat dignissim, eros tortor venenatis sem, in consequat libero augue ut erat. Pellentesque malesuada mollis dui eu posuere. Integer pharetra nec metus id suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent finibus, dui id porttitor placerat, nisl libero finibus lorem, id dictum nibh lorem sed mi. Sed ligula massa, dignissim at quam nec, accumsan convallis sapien. Aliquam blandit congue dolor ac pellentesque.', 5),
('52', '0452000826', 'In hac habitasse platea dictumst. Duis at finibus mi. Aliquam purus augue, laoreet quis pellentesque elementum, elementum eu erat. Pellentesque at neque massa. Proin nunc metus, blandit ac aliquam et, tempor dictum augue. Nulla imperdiet elit et felis lobortis ullamcorper. Nulla tristique aliquam dolor. Aenean ac diam et ex dapibus porta a id nibh.', 4),
('52', '0460994447', 'Suspendisse sollicitudin justo eu magna hendrerit, in mattis ipsum ultricies. Curabitur tempus enim lorem, in scelerisque ipsum tristique in. Interdum et malesuada fames ac ante ipsum primis in faucibus. In ut ante nec leo ultrices lacinia. Praesent eros orci, rhoncus sed nunc nec, vehicula gravida libero. Maecenas maximus risus erat, pulvinar pellentesque lorem porttitor sed. Donec feugiat porta nisl, in ultricies ex feugiat ac. Nunc purus nisl, aliquet quis neque vehicula, mollis molestie purus. In hac habitasse platea dictumst. Fusce non elit vel sapien pretium convallis. Donec ligula eros, eleifend ac metus sed, aliquam luctus felis. Curabitur turpis lacus, porta in tincidunt sit amet, bibendum non arcu. Sed sagittis nec elit malesuada iaculis.', 4),
('53', '0416616915', 'Suspendisse tempus mi felis, nec venenatis ante dapibus vitae. Cras eu libero ut ex rhoncus tempus. In dignissim gravida bibendum. Sed luctus, dolor vitae pellentesque egestas, ante magna dignissim elit, eget scelerisque lacus turpis ut erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed molestie laoreet odio, sed iaculis tellus convallis at. Cras egestas sem neque, non luctus augue pellentesque eget. Fusce vitae lorem at lacus vehicula vehicula eget a augue. Mauris et ante nec nulla iaculis accumsan ac at orci. Ut in est non neque varius ultrices at eget magna. Donec et molestie erat. Duis posuere sodales urna a congue.', 4),
('53', '0492726924', 'Proin tincidunt, nunc quis interdum tincidunt, elit velit tempus magna, a pellentesque lorem est eu magna. Suspendisse in dui id sapien facilisis dapibus eget quis ante. Sed porttitor enim vel eros consectetur auctor. In ultricies bibendum ligula, vitae porttitor nulla fringilla nec. Cras dapibus justo et justo mattis, in euismod elit scelerisque. Duis facilisis nunc at dolor sollicitudin posuere. Vivamus sit amet dapibus urna, sit amet semper libero. Sed elementum metus eget viverra dapibus. Maecenas convallis justo ut varius convallis. In in libero purus. Suspendisse potenti. Phasellus tempor interdum libero, ut fringilla justo tempor rhoncus. Aenean sit amet dignissim risus. Donec velit felis, rhoncus quis elit eget, gravida tempor libero. Cras egestas velit quis pretium sodales. Donec ut faucibus ex.', 4),
('54', '0417935528', 'Sed a ex ut nibh laoreet suscipit nec ut erat. Sed a hendrerit sem. Vestibulum id leo blandit, tincidunt massa a, tristique leo. Morbi ullamcorper lorem at lectus dapibus sollicitudin. Quisque rutrum efficitur sapien, nec interdum lacus feugiat et. Sed nisl felis, pharetra ac velit non, pellentesque porta lectus. Sed dapibus tempus consectetur. Duis interdum maximus sollicitudin. Donec mollis orci et turpis aliquet, ac ullamcorper nunc tincidunt. Duis sit amet ante quam. Sed eget neque enim. Proin pretium odio nulla, at semper ante aliquet id.', 4),
('54', '0472771243', 'Maecenas ac mi vitae dolor vulputate facilisis. Nam eu odio sollicitudin, vestibulum diam sed, mollis neque. Donec ut enim risus. Cras eget neque vel nunc pharetra dapibus at vitae ex. Phasellus hendrerit consequat felis lacinia tincidunt. Etiam pellentesque scelerisque lectus, sit amet finibus libero volutpat in. Ut ullamcorper elit sit amet mauris egestas ornare. In quis tincidunt turpis. Praesent quis quam eros. Donec cursus vestibulum urna ac aliquam. Integer risus nunc, aliquam quis feugiat sit amet, tempor vitae purus. Suspendisse congue pulvinar nulla, id laoreet quam posuere at.', 4),
('55', '0466483938', 'Nam aliquet luctus enim, vitae laoreet augue finibus sed. Sed aliquet urna id pretium eleifend. Fusce luctus urna et purus tincidunt, sit amet mattis lorem imperdiet. Quisque ultrices velit at nibh faucibus, ut malesuada ipsum rhoncus. Vivamus gravida vestibulum justo, nec vestibulum tortor sodales vitae. Duis pellentesque at turpis vel iaculis. Aenean tortor nisi, vulputate eget lectus at, gravida elementum mauris. Curabitur a lacus ut eros feugiat tincidunt. Vivamus mattis id magna at imperdiet.', 3),
('55', '0474053564', 'In iaculis velit vel magna maximus, vel posuere arcu feugiat. Aenean molestie bibendum mi, eget dignissim lorem fringilla eget. Nulla sodales commodo dui, sit amet volutpat sapien hendrerit nec. Nulla dui est, laoreet sit amet elit sagittis, posuere tempus purus. Quisque iaculis nisl nec elit facilisis, nec congue mauris rhoncus. Ut mollis sapien ac ultricies maximus. Quisque commodo consectetur nulla, vel bibendum leo finibus in. Aenean pretium, diam facilisis aliquam aliquet, velit leo accumsan quam, ac luctus ligula arcu malesuada elit.', 4),
('57', '0413489926', 'Sed efficitur condimentum purus, et porttitor nisi finibus at. Nam porttitor nec sem at fringilla. Quisque libero orci, cursus in metus vitae, congue accumsan massa. Nunc vitae leo libero. Curabitur ut porta ligula. Vestibulum dapibus pellentesque convallis. Sed sed blandit lorem. Sed sit amet dui ut ante efficitur sodales ut eu diam. Ut id felis placerat libero finibus mollis. Fusce consectetur varius lacinia. Quisque a velit enim. Quisque aliquet a lacus ac luctus. Maecenas iaculis, sapien eu tristique ullamcorper, lorem nisi blandit tortor, at condimentum mauris enim et metus. Cras ut turpis sit amet orci tincidunt venenatis. Proin dignissim lacus est, quis mollis augue interdum nec. Mauris nec aliquam sapien.', 3),
('57', '0488941882', 'Ut malesuada hendrerit ipsum, et mollis massa placerat ut. Nam aliquet, nibh id luctus varius, enim enim sodales magna, consequat vehicula nulla odio a eros. Aliquam nec placerat lectus. Aliquam faucibus erat gravida augue pulvinar fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat fermentum egestas. Quisque efficitur, nibh sit amet tempus vehicula, augue mauris tincidunt purus, sit amet lacinia velit arcu quis ligula. Ut ante nisi, posuere eget volutpat ut, aliquet non diam. Nam et semper dolor. Ut eleifend placerat ipsum, vel pretium magna ullamcorper quis. Suspendisse semper lacus erat, suscipit consectetur ex tempor ut. Duis in luctus sapien. Nulla interdum ante ultrices purus consequat venenatis. Maecenas malesuada quam quis nulla venenatis rutrum. Cras vel sapien in neque ultrices congue ut et lacus.', 3),
('57a', '0413489926', 'Fusce blandit eros nec ante lobortis, eu tristique massa feugiat. Suspendisse potenti. Proin vestibulum fermentum vehicula. Praesent in odio risus. Nam dignissim est non risus fringilla condimentum. Praesent non elit id elit placerat sagittis eget nec est. Aliquam facilisis mauris eu massa viverra, sed faucibus lorem pretium. Suspendisse efficitur orci ornare lacus fermentum venenatis. Morbi venenatis suscipit purus non vehicula. Aenean aliquet enim a tellus consectetur, vel ultrices augue euismod. Nulla rutrum mi ac iaculis pellentesque. Donec tristique semper nisi in tempus. Aenean enim mauris, aliquet vel augue ut, congue rhoncus ante. In quis massa molestie neque varius blandit et sed ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque a neque mollis, tristique sapien eu, egestas mi.', 5),
('57a', '0488941882', 'Integer volutpat, augue at dapibus viverra, ante massa volutpat odio, ut auctor tellus lacus a odio. Pellentesque dapibus, lectus ut pellentesque sodales, dolor ligula elementum mauris, sed tincidunt libero urna sed nunc. Vestibulum et eros aliquet, viverra risus a, malesuada magna. Quisque volutpat urna tellus, sed auctor lacus feugiat ac. Donec in scelerisque felis. Mauris erat mauris, posuere ut dictum eget, feugiat ornare sem. Donec in tortor ut nisl sollicitudin sagittis eu sed elit. Cras imperdiet, lacus quis placerat semper, tellus elit fermentum sapien, nec eleifend turpis dolor sed lectus. Vivamus nec massa sed elit semper mattis in non risus. Nam in arcu at felis placerat congue in a neque.', 5),
('58', '0460994447', 'Integer nec rhoncus nisi. Ut pellentesque tincidunt accumsan. Aliquam erat volutpat. Suspendisse potenti. Donec in massa sem. Vestibulum rhoncus, justo ut egestas accumsan, lacus nulla convallis dolor, a egestas est elit a sem. Aenean a risus varius, lacinia risus nec, vulputate ligula. Morbi ipsum odio, pharetra sed velit eget, suscipit fringilla elit. Curabitur blandit quam eu neque molestie, vitae commodo odio ullamcorper. Etiam lobortis lorem non augue facilisis feugiat sed eu dolor. Curabitur vehicula, neque quis suscipit aliquet, risus tortor rhoncus dui, eu convallis urna lacus vitae velit. Suspendisse posuere facilisis sapien eu maximus.', 3),
('58', '0489392336', 'Nam enim ex, fermentum sed elementum ut, molestie sit amet erat. Donec quis tellus id nisl consequat semper quis eu ex. Cras mollis dictum magna ut imperdiet. Morbi elementum aliquet odio, a varius eros porta sed. Proin congue diam non nulla placerat, a interdum ligula molestie. Curabitur ac ligula nisi. Vivamus vitae velit malesuada, rutrum enim sed, sodales sapien. Maecenas aliquam in odio vel efficitur. In elementum eros lacus, sed rhoncus dolor posuere a. Aenean elementum luctus libero, sit amet eleifend augue sollicitudin ut. Donec nisi dui, tincidunt in arcu auctor, interdum mattis quam.', 5),
('58a', '0466483938', 'Phasellus vitae aliquam nunc, maximus venenatis ex. Etiam sed erat ultricies mi sodales blandit. Vestibulum sed nisl erat. Vivamus tristique, elit sit amet scelerisque accumsan, odio nisl commodo urna, ut rhoncus mauris arcu eget nunc. Nunc congue tempus velit. Ut non mollis lectus, sed maximus ligula. Sed et sapien nisi.', 5),
('58a', '0474053564', 'Suspendisse dictum eros non ligula convallis, facilisis interdum massa suscipit. Sed egestas tempor felis. Praesent ligula lacus, ullamcorper quis diam et, euismod commodo ex. Aenean tempus semper tellus ut vulputate. Vestibulum eleifend quam nec massa egestas malesuada. Maecenas at nulla aliquet, consectetur erat in, venenatis magna. Nullam elementum eros id mi aliquet, sit amet consequat nibh eleifend. Morbi feugiat erat et varius molestie. Nulla diam diam, fermentum ac quam non, rutrum auctor libero. In eu varius mauris, vitae placerat nunc. Proin elementum sem non iaculis efficitur.', 3),
('58b', '0413489926', 'Nulla pellentesque, elit sed convallis blandit, nisl dui cursus magna, eu ultricies nisi risus id augue. Nunc facilisis, lacus id sagittis commodo, orci ex lobortis dolor, eu molestie nunc lacus quis sapien. Cras felis libero, venenatis faucibus sem ut, feugiat pulvinar ex. Nulla facilisi. Aenean laoreet pulvinar ante, euismod bibendum neque interdum sit amet. In varius massa ac semper maximus. Etiam tristique id nibh a fermentum. Curabitur condimentum velit id sem luctus fermentum. Phasellus faucibus imperdiet dapibus. Sed orci erat, luctus vitae odio at, luctus lacinia ante. Donec eu accumsan augue. Cras scelerisque erat nisl, a gravida sapien dignissim sit amet. Integer mollis faucibus mi ut rutrum. Donec porta augue tellus, sed ornare augue posuere rutrum. Vivamus imperdiet feugiat quam viverra bibendum.', 4),
('58b', '0493744028', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam efficitur sodales metus eu mollis. Praesent mollis vehicula interdum. Donec viverra consectetur ante vel iaculis. Sed enim orci, finibus ac elit quis, viverra accumsan tortor. Nulla lobortis, ipsum in vulputate pellentesque, risus lorem fermentum felis, eget aliquam nibh ex nec velit. Sed risus felis, cursus eu condimentum quis, feugiat ornare eros. Mauris nisl quam, egestas a risus eget, dictum ornare nibh. Aliquam erat volutpat. Integer ac magna eget ipsum facilisis pretium. Suspendisse dui risus, consequat eu iaculis ac, placerat ut lectus. Fusce leo odio, fringilla in tincidunt sit amet, sollicitudin vehicula velit. Nullam non velit eget mi luctus consequat.', 3),
('58c', '0417935528', 'Nam urna nisi, scelerisque non velit eget, finibus dignissim quam. Etiam ac interdum urna. Praesent ac velit at dolor rhoncus porta vitae sed mauris. Phasellus sit amet dui accumsan, pharetra diam eget, imperdiet risus. Integer cursus congue arcu a posuere. In sagittis massa et lorem condimentum, eget vehicula felis sagittis. Ut pellentesque nisi vitae justo hendrerit, non ullamcorper dolor dignissim.', 3),
('58c', '0437347207', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et fringilla lacus, convallis ultrices lacus. Cras id elit iaculis, interdum urna convallis, maximus quam. Ut vulputate imperdiet nisl, volutpat auctor mi. Nulla pellentesque venenatis urna, quis consectetur nibh euismod et. Suspendisse lorem nisi, auctor a justo eleifend, lacinia convallis arcu. Curabitur nisl arcu, dignissim id felis nec, dignissim iaculis enim. Sed sed est ante. Sed non pulvinar quam, sit amet dignissim diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum interdum nulla ullamcorper, mattis turpis dignissim, vestibulum elit. Cras rhoncus in metus et ultrices. Nullam non interdum mi, in ultrices ligula. Pellentesque ultrices id quam sed dignissim. Nunc ut turpis porttitor, luctus eros nec, ornare lacus. Duis vulputate felis a condimentum iaculis. Vestibulum consequat tellus ut vehicula placerat.', 4),
('59', '0416616915', 'Integer quis vulputate libero. Vestibulum vitae congue nibh. Maecenas semper eros a mauris fringilla, et ornare purus placerat. Pellentesque in mollis lacus. Vestibulum sagittis sodales justo, id congue mi venenatis ut. Quisque erat quam, aliquet non viverra ut, porta vel lectus. Ut in nulla nec metus cursus placerat.', 5),
('59', '0493744028', 'Vestibulum nulla nisl, fringilla at facilisis at, luctus sed felis. Donec et elementum mauris. Nunc feugiat interdum justo nec semper. Mauris venenatis neque velit, sit amet consequat tellus congue eu. Mauris dui diam, convallis non felis quis, interdum mollis erat. Etiam efficitur ex ut mi mattis, non ornare lorem rhoncus. Donec ultricies vel dolor eget tempus. Quisque euismod in lorem sed condimentum. Nam venenatis libero in mollis malesuada. Vestibulum ut pellentesque lacus.', 5),
('60', '0452000826', 'Aenean at dolor eu arcu suscipit finibus. Suspendisse aliquam urna ut elit feugiat mollis. Suspendisse vehicula elit a pulvinar tempus. Suspendisse justo augue, blandit ac commodo vitae, viverra et justo. Nulla facilisi. Quisque quis felis libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam nunc mauris, viverra non nibh a, consequat finibus ex. Praesent laoreet sit amet leo nec tincidunt. Duis aliquet cursus fermentum. Pellentesque id aliquet massa, vel imperdiet neque.', 5),
('60', '0477435523', 'Sed eu lacus in enim faucibus auctor ut sit amet magna. Pellentesque eget urna nec ante imperdiet auctor. Sed luctus finibus ex at ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id pulvinar nisl. Pellentesque sed condimentum lectus, sit amet egestas tortor. Morbi dignissim ex eu lorem rutrum finibus. Quisque at venenatis erat.', 5);
INSERT INTO `reviews` (`dish_code`, `user_id`, `content`, `rating`) VALUES
('60a', '0460994447', 'Suspendisse sollicitudin justo eu magna hendrerit, in mattis ipsum ultricies. Curabitur tempus enim lorem, in scelerisque ipsum tristique in. Interdum et malesuada fames ac ante ipsum primis in faucibus. In ut ante nec leo ultrices lacinia. Praesent eros orci, rhoncus sed nunc nec, vehicula gravida libero. Maecenas maximus risus erat, pulvinar pellentesque lorem porttitor sed. Donec feugiat porta nisl, in ultricies ex feugiat ac. Nunc purus nisl, aliquet quis neque vehicula, mollis molestie purus. In hac habitasse platea dictumst. Fusce non elit vel sapien pretium convallis. Donec ligula eros, eleifend ac metus sed, aliquam luctus felis. Curabitur turpis lacus, porta in tincidunt sit amet, bibendum non arcu. Sed sagittis nec elit malesuada iaculis.', 4),
('60a', '0474053564', 'Aenean tempor ligula eget erat pulvinar, a laoreet justo dictum. Curabitur ut diam pulvinar massa porttitor posuere. Sed eu lacinia elit, ac consectetur diam. Nulla vulputate magna a pellentesque tempus. Quisque ut nisi vitae neque cursus accumsan vel a lectus. Maecenas sem tortor, gravida eget nulla bibendum, facilisis eleifend ex. Maecenas dictum molestie urna, sodales ullamcorper purus tempor eget. Vivamus sed ante eget nulla dictum tincidunt non porta odio. Aliquam ullamcorper consequat arcu at efficitur. Aenean dui lorem, semper quis ex et, elementum convallis tortor. In sit amet cursus magna. Pellentesque a nunc magna. Morbi in nulla ut sem porta rhoncus. Sed lorem turpis, tempor ut iaculis a, pretium eget diam. Sed sapien enim, bibendum et leo a, congue ultrices velit. Nam finibus convallis diam vel mollis.', 3),
('60b', '0416616915', 'Suspendisse tempus mi felis, nec venenatis ante dapibus vitae. Cras eu libero ut ex rhoncus tempus. In dignissim gravida bibendum. Sed luctus, dolor vitae pellentesque egestas, ante magna dignissim elit, eget scelerisque lacus turpis ut erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed molestie laoreet odio, sed iaculis tellus convallis at. Cras egestas sem neque, non luctus augue pellentesque eget. Fusce vitae lorem at lacus vehicula vehicula eget a augue. Mauris et ante nec nulla iaculis accumsan ac at orci. Ut in est non neque varius ultrices at eget magna. Donec et molestie erat. Duis posuere sodales urna a congue.', 4),
('60b', '0460994447', 'Aliquam pretium sollicitudin ex et condimentum. Vivamus tempus ipsum a vestibulum facilisis. Sed mi magna, laoreet sed lacus sit amet, accumsan tempor sem. Proin vel neque et purus dictum congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse vitae tempor dolor. Donec luctus mollis sem id sagittis. Praesent semper finibus tortor interdum pellentesque. Nullam lobortis risus lorem, id condimentum arcu bibendum id. Donec et viverra risus. Fusce vel suscipit sapien. Suspendisse imperdiet est id efficitur scelerisque. Integer ac volutpat augue, quis aliquam ipsum. Aliquam semper vel lacus ut porta. Nulla posuere gravida semper. Donec vehicula diam in risus pharetra tempus.', 4),
('60c', '0416616915', 'Cras id tincidunt est, sit amet luctus dolor. Mauris a justo volutpat tellus lacinia posuere. Integer vulputate blandit orci, ac commodo eros euismod et. In tempus, leo et sollicitudin ultrices, leo purus tristique velit, id commodo tellus urna non ligula. Praesent egestas, sapien sit amet ultrices mattis, diam lorem pharetra dolor, eget dignissim nunc dui bibendum orci. Aenean vitae faucibus elit. Vivamus dictum purus leo, in placerat elit mollis eu. Cras fringilla arcu non lectus condimentum, vel condimentum urna laoreet. Donec eu dolor gravida diam luctus vulputate sed in nisl. Phasellus euismod dignissim nisl in pharetra. Suspendisse nec blandit sem. Phasellus fringilla dignissim purus, eu sollicitudin neque. Etiam iaculis est in velit vehicula ornare. Ut tincidunt justo lacus, ut ultrices lectus tempor non. Aenean vitae lorem vitae enim ullamcorper vulputate. Mauris vel nisl in odio blandit malesuada nec sit amet felis.', 4),
('60c', '0472771243', 'Maecenas ac mi vitae dolor vulputate facilisis. Nam eu odio sollicitudin, vestibulum diam sed, mollis neque. Donec ut enim risus. Cras eget neque vel nunc pharetra dapibus at vitae ex. Phasellus hendrerit consequat felis lacinia tincidunt. Etiam pellentesque scelerisque lectus, sit amet finibus libero volutpat in. Ut ullamcorper elit sit amet mauris egestas ornare. In quis tincidunt turpis. Praesent quis quam eros. Donec cursus vestibulum urna ac aliquam. Integer risus nunc, aliquam quis feugiat sit amet, tempor vitae purus. Suspendisse congue pulvinar nulla, id laoreet quam posuere at.', 4),
('60d', '0466483938', 'Nam aliquet luctus enim, vitae laoreet augue finibus sed. Sed aliquet urna id pretium eleifend. Fusce luctus urna et purus tincidunt, sit amet mattis lorem imperdiet. Quisque ultrices velit at nibh faucibus, ut malesuada ipsum rhoncus. Vivamus gravida vestibulum justo, nec vestibulum tortor sodales vitae. Duis pellentesque at turpis vel iaculis. Aenean tortor nisi, vulputate eget lectus at, gravida elementum mauris. Curabitur a lacus ut eros feugiat tincidunt. Vivamus mattis id magna at imperdiet.', 3),
('60d', '0477435523', 'Nulla placerat sed lectus ac commodo. Suspendisse tincidunt mi sed enim sodales imperdiet. Mauris nec fermentum odio. Quisque sed risus quis eros sodales elementum. In molestie neque non ex sodales interdum. Donec venenatis placerat neque, quis vestibulum erat maximus eget. Etiam rutrum purus et elit suscipit, ut iaculis diam tempor. Donec pretium molestie velit id finibus. Suspendisse ac lectus lobortis, tincidunt felis eu, dignissim enim. Vestibulum lacinia rutrum fermentum. Nam vel porttitor quam. Proin molestie auctor semper. Aliquam et mi fringilla, laoreet mi eget, ullamcorper nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales risus ut massa mattis aliquet et vitae erat. Sed malesuada congue ante, eget hendrerit eros porta eu.', 4),
('60e', '0452000826', 'Nulla sollicitudin, turpis non pretium rhoncus, mauris odio rutrum tellus, sit amet elementum risus arcu vel ex. Ut urna tortor, porttitor in sem vel, volutpat malesuada mi. Cras euismod, est in eleifend tempus, mi dolor iaculis augue, vitae aliquet dolor magna quis sem. Proin a diam eu nunc faucibus eleifend commodo a velit. Nullam dignissim finibus ex, ut vestibulum nunc euismod vitae. Duis ac mi quis dolor auctor luctus. Cras non dui id lacus accumsan laoreet. Duis semper nunc in finibus consequat. Phasellus ac molestie elit. Nam nibh elit, rhoncus eu augue ut, pellentesque scelerisque risus. Nullam sollicitudin lorem massa, quis interdum augue volutpat non. Nulla facilisi. Aenean eu ipsum id lectus pellentesque pretium in gravida mauris. Aliquam molestie ultricies nunc, et finibus eros egestas in. Proin sodales ornare augue at congue.', 3),
('60e', '0488941882', 'Ut malesuada hendrerit ipsum, et mollis massa placerat ut. Nam aliquet, nibh id luctus varius, enim enim sodales magna, consequat vehicula nulla odio a eros. Aliquam nec placerat lectus. Aliquam faucibus erat gravida augue pulvinar fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat fermentum egestas. Quisque efficitur, nibh sit amet tempus vehicula, augue mauris tincidunt purus, sit amet lacinia velit arcu quis ligula. Ut ante nisi, posuere eget volutpat ut, aliquet non diam. Nam et semper dolor. Ut eleifend placerat ipsum, vel pretium magna ullamcorper quis. Suspendisse semper lacus erat, suscipit consectetur ex tempor ut. Duis in luctus sapien. Nulla interdum ante ultrices purus consequat venenatis. Maecenas malesuada quam quis nulla venenatis rutrum. Cras vel sapien in neque ultrices congue ut et lacus.', 3),
('60f', '0488941882', 'Cras vitae arcu aliquam, blandit odio vitae, efficitur ex. Nunc nec aliquam velit. Ut erat orci, porta non mi a, dictum mollis magna. Nunc tincidunt mauris nibh, non auctor elit gravida ultricies. Vivamus consectetur urna faucibus, dictum tellus sit amet, mollis ligula. Donec a urna a lorem luctus porttitor. Sed imperdiet et felis sit amet porta. Praesent risus leo, lobortis eget dignissim quis, egestas quis justo. Proin feugiat tellus scelerisque tortor laoreet, eget tincidunt lacus accumsan. Pellentesque molestie cursus nisi, ut mollis nisi finibus quis. Fusce auctor eu felis et sollicitudin. Sed dignissim, ipsum ac congue tempus, sapien quam tempor lorem, quis ultrices dolor metus tristique nisi. Cras eleifend maximus nisi ut efficitur. Morbi nec bibendum tellus, sed feugiat ligula. Fusce at aliquam lectus, non bibendum purus.', 3),
('60f', '0489392336', 'Nam enim ex, fermentum sed elementum ut, molestie sit amet erat. Donec quis tellus id nisl consequat semper quis eu ex. Cras mollis dictum magna ut imperdiet. Morbi elementum aliquet odio, a varius eros porta sed. Proin congue diam non nulla placerat, a interdum ligula molestie. Curabitur ac ligula nisi. Vivamus vitae velit malesuada, rutrum enim sed, sodales sapien. Maecenas aliquam in odio vel efficitur. In elementum eros lacus, sed rhoncus dolor posuere a. Aenean elementum luctus libero, sit amet eleifend augue sollicitudin ut. Donec nisi dui, tincidunt in arcu auctor, interdum mattis quam.', 5),
('60g', '0474053564', 'Nulla ut lectus turpis. Morbi erat nisi, bibendum at elementum ut, tincidunt non purus. Proin sollicitudin dolor quam, ut hendrerit dolor congue eget. Donec placerat faucibus nisl, non eleifend nisi finibus nec. Sed pellentesque ut nisi vel finibus. Suspendisse eu nulla massa. Duis nec orci purus. Ut porta condimentum leo, vel sagittis orci consequat et. Proin rhoncus porta ipsum at tincidunt. Pellentesque vel vehicula elit. Etiam mattis odio a eros sollicitudin tempor. Suspendisse consectetur hendrerit tincidunt. Cras porttitor sem et nisl sollicitudin cursus. Maecenas quis condimentum eros, ut iaculis ipsum. Fusce aliquam diam ut varius porta.', 5),
('60g', '0493744028', 'Vestibulum nulla nisl, fringilla at facilisis at, luctus sed felis. Donec et elementum mauris. Nunc feugiat interdum justo nec semper. Mauris venenatis neque velit, sit amet consequat tellus congue eu. Mauris dui diam, convallis non felis quis, interdum mollis erat. Etiam efficitur ex ut mi mattis, non ornare lorem rhoncus. Donec ultricies vel dolor eget tempus. Quisque euismod in lorem sed condimentum. Nam venenatis libero in mollis malesuada. Vestibulum ut pellentesque lacus.', 5),
('66', '0460994447', 'Aliquam pretium sollicitudin ex et condimentum. Vivamus tempus ipsum a vestibulum facilisis. Sed mi magna, laoreet sed lacus sit amet, accumsan tempor sem. Proin vel neque et purus dictum congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse vitae tempor dolor. Donec luctus mollis sem id sagittis. Praesent semper finibus tortor interdum pellentesque. Nullam lobortis risus lorem, id condimentum arcu bibendum id. Donec et viverra risus. Fusce vel suscipit sapien. Suspendisse imperdiet est id efficitur scelerisque. Integer ac volutpat augue, quis aliquam ipsum. Aliquam semper vel lacus ut porta. Nulla posuere gravida semper. Donec vehicula diam in risus pharetra tempus.', 4),
('67', '0416616915', 'Cras id tincidunt est, sit amet luctus dolor. Mauris a justo volutpat tellus lacinia posuere. Integer vulputate blandit orci, ac commodo eros euismod et. In tempus, leo et sollicitudin ultrices, leo purus tristique velit, id commodo tellus urna non ligula. Praesent egestas, sapien sit amet ultrices mattis, diam lorem pharetra dolor, eget dignissim nunc dui bibendum orci. Aenean vitae faucibus elit. Vivamus dictum purus leo, in placerat elit mollis eu. Cras fringilla arcu non lectus condimentum, vel condimentum urna laoreet. Donec eu dolor gravida diam luctus vulputate sed in nisl. Phasellus euismod dignissim nisl in pharetra. Suspendisse nec blandit sem. Phasellus fringilla dignissim purus, eu sollicitudin neque. Etiam iaculis est in velit vehicula ornare. Ut tincidunt justo lacus, ut ultrices lectus tempor non. Aenean vitae lorem vitae enim ullamcorper vulputate. Mauris vel nisl in odio blandit malesuada nec sit amet felis.', 4),
('68', '0477435523', 'Nulla placerat sed lectus ac commodo. Suspendisse tincidunt mi sed enim sodales imperdiet. Mauris nec fermentum odio. Quisque sed risus quis eros sodales elementum. In molestie neque non ex sodales interdum. Donec venenatis placerat neque, quis vestibulum erat maximus eget. Etiam rutrum purus et elit suscipit, ut iaculis diam tempor. Donec pretium molestie velit id finibus. Suspendisse ac lectus lobortis, tincidunt felis eu, dignissim enim. Vestibulum lacinia rutrum fermentum. Nam vel porttitor quam. Proin molestie auctor semper. Aliquam et mi fringilla, laoreet mi eget, ullamcorper nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sodales risus ut massa mattis aliquet et vitae erat. Sed malesuada congue ante, eget hendrerit eros porta eu.', 4),
('69', '0452000826', 'Nulla sollicitudin, turpis non pretium rhoncus, mauris odio rutrum tellus, sit amet elementum risus arcu vel ex. Ut urna tortor, porttitor in sem vel, volutpat malesuada mi. Cras euismod, est in eleifend tempus, mi dolor iaculis augue, vitae aliquet dolor magna quis sem. Proin a diam eu nunc faucibus eleifend commodo a velit. Nullam dignissim finibus ex, ut vestibulum nunc euismod vitae. Duis ac mi quis dolor auctor luctus. Cras non dui id lacus accumsan laoreet. Duis semper nunc in finibus consequat. Phasellus ac molestie elit. Nam nibh elit, rhoncus eu augue ut, pellentesque scelerisque risus. Nullam sollicitudin lorem massa, quis interdum augue volutpat non. Nulla facilisi. Aenean eu ipsum id lectus pellentesque pretium in gravida mauris. Aliquam molestie ultricies nunc, et finibus eros egestas in. Proin sodales ornare augue at congue.', 3),
('70', '0488941882', 'Cras vitae arcu aliquam, blandit odio vitae, efficitur ex. Nunc nec aliquam velit. Ut erat orci, porta non mi a, dictum mollis magna. Nunc tincidunt mauris nibh, non auctor elit gravida ultricies. Vivamus consectetur urna faucibus, dictum tellus sit amet, mollis ligula. Donec a urna a lorem luctus porttitor. Sed imperdiet et felis sit amet porta. Praesent risus leo, lobortis eget dignissim quis, egestas quis justo. Proin feugiat tellus scelerisque tortor laoreet, eget tincidunt lacus accumsan. Pellentesque molestie cursus nisi, ut mollis nisi finibus quis. Fusce auctor eu felis et sollicitudin. Sed dignissim, ipsum ac congue tempus, sapien quam tempor lorem, quis ultrices dolor metus tristique nisi. Cras eleifend maximus nisi ut efficitur. Morbi nec bibendum tellus, sed feugiat ligula. Fusce at aliquam lectus, non bibendum purus.', 3),
('70a', '0417935528', 'Sed a ex ut nibh laoreet suscipit nec ut erat. Sed a hendrerit sem. Vestibulum id leo blandit, tincidunt massa a, tristique leo. Morbi ullamcorper lorem at lectus dapibus sollicitudin. Quisque rutrum efficitur sapien, nec interdum lacus feugiat et. Sed nisl felis, pharetra ac velit non, pellentesque porta lectus. Sed dapibus tempus consectetur. Duis interdum maximus sollicitudin. Donec mollis orci et turpis aliquet, ac ullamcorper nunc tincidunt. Duis sit amet ante quam. Sed eget neque enim. Proin pretium odio nulla, at semper ante aliquet id.', 4),
('70b', '0474053564', 'In iaculis velit vel magna maximus, vel posuere arcu feugiat. Aenean molestie bibendum mi, eget dignissim lorem fringilla eget. Nulla sodales commodo dui, sit amet volutpat sapien hendrerit nec. Nulla dui est, laoreet sit amet elit sagittis, posuere tempus purus. Quisque iaculis nisl nec elit facilisis, nec congue mauris rhoncus. Ut mollis sapien ac ultricies maximus. Quisque commodo consectetur nulla, vel bibendum leo finibus in. Aenean pretium, diam facilisis aliquam aliquet, velit leo accumsan quam, ac luctus ligula arcu malesuada elit.', 4),
('71', '0474053564', 'Nulla ut lectus turpis. Morbi erat nisi, bibendum at elementum ut, tincidunt non purus. Proin sollicitudin dolor quam, ut hendrerit dolor congue eget. Donec placerat faucibus nisl, non eleifend nisi finibus nec. Sed pellentesque ut nisi vel finibus. Suspendisse eu nulla massa. Duis nec orci purus. Ut porta condimentum leo, vel sagittis orci consequat et. Proin rhoncus porta ipsum at tincidunt. Pellentesque vel vehicula elit. Etiam mattis odio a eros sollicitudin tempor. Suspendisse consectetur hendrerit tincidunt. Cras porttitor sem et nisl sollicitudin cursus. Maecenas quis condimentum eros, ut iaculis ipsum. Fusce aliquam diam ut varius porta.', 5),
('72', '0493744028', 'Curabitur facilisis nec nulla a feugiat. Cras in tellus ut dolor accumsan lobortis quis sed mauris. Suspendisse sed nisl semper, tempor leo sit amet, ullamcorper nisl. Praesent ut dui elit. Quisque et ipsum nisl. Nam id dolor neque. Curabitur condimentum venenatis egestas. Vivamus vulputate ultrices turpis at pretium.', 5),
('73', '0437347207', 'Curabitur hendrerit dapibus dolor, ut porta odio hendrerit venenatis. Integer quis ligula ac elit fermentum ultrices. Sed accumsan odio sapien, id pulvinar est aliquet et. Aliquam commodo turpis pharetra, luctus tellus at, porta erat. Praesent ut lacus ut lacus fringilla pretium. Fusce sit amet leo in enim rutrum tincidunt ut eget ante. Etiam rutrum, ligula vitae eleifend laoreet, magna massa sodales ligula, vel volutpat massa magna non nunc. Mauris et magna mollis, laoreet velit in, blandit nisl. Aliquam egestas justo aliquam neque suscipit laoreet. Vestibulum vehicula mi eu tellus tempus molestie. Curabitur eget justo et ante eleifend suscipit ac id quam.', 5),
('74', '0460994447', 'Nunc mattis eget justo ultrices iaculis. Vivamus vel suscipit metus, nec gravida neque. Nunc quis diam orci. Ut maximus orci molestie, vestibulum enim et, aliquet metus. Quisque dictum quam ac suscipit venenatis. Aliquam ornare tortor sapien, in vulputate ex feugiat a. Duis facilisis augue vitae sapien ornare, eget dignissim neque posuere. Vestibulum et lobortis elit. Etiam vitae ante porttitor, lacinia tortor id, varius urna. Nunc condimentum vulputate lorem ac facilisis. Maecenas fringilla, orci ut maximus commodo, massa nibh posuere odio, sed tincidunt massa turpis eu enim. Curabitur pellentesque, magna non placerat venenatis, sapien tellus pulvinar tellus, eu malesuada dolor diam eu lectus. Proin tincidunt neque non tortor ullamcorper auctor. Sed ullamcorper consequat odio a euismod. Donec quis magna lacinia, feugiat ipsum quis, faucibus nisi.', 5),
('75', '0477435523', 'In finibus gravida purus, aliquet faucibus velit tincidunt non. Sed gravida nunc eu tristique tincidunt. Proin tempus, libero vel pretium sagittis, quam arcu auctor magna, at rutrum velit elit eu ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed suscipit nec libero et volutpat. Curabitur mollis felis sit amet lorem scelerisque posuere. Pellentesque nec mauris a massa dapibus finibus. Proin at turpis quis felis faucibus fringilla. Donec vitae semper lorem. Suspendisse nec nisl pulvinar, pellentesque justo nec, consectetur nulla. Vestibulum ac neque blandit, fermentum quam non, vestibulum mi. Etiam facilisis non nulla at lobortis. Integer nec dui cursus, tincidunt tortor vitae, pulvinar risus.', 3),
('76', '0489392336', 'Proin sit amet leo consequat, sagittis nulla at, varius metus. Morbi vel arcu sit amet sem cursus tincidunt. Nam rhoncus sodales nisi non scelerisque. Phasellus sed libero vel eros ornare blandit nec eget justo. Nulla efficitur dolor erat, nec sodales tellus hendrerit efficitur. Mauris vitae tincidunt risus, tristique dapibus risus. Donec sed tellus risus. Nulla turpis magna, egestas et ullamcorper a, tincidunt a nisi. Maecenas dolor turpis, ullamcorper nec ipsum ac, ultrices volutpat ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nunc at eros fermentum dignissim nec sit amet lorem. Praesent nulla felis, eleifend vehicula justo a, semper dictum urna.', 3),
('77', '0416616915', 'Nunc mattis, orci id fermentum tempus, nisl lorem ultricies massa, id fermentum libero sapien eu nibh. Ut non eros nec magna vestibulum auctor. In vulputate condimentum lacus ac pellentesque. Nam id ornare risus. Proin tincidunt euismod lorem, in porttitor arcu malesuada ut. Phasellus risus erat, dignissim fringilla finibus sit amet, accumsan nec metus. Maecenas sollicitudin ut libero ut accumsan. Fusce malesuada libero ac sapien tincidunt iaculis. Pellentesque rhoncus, augue eget consequat auctor, velit leo volutpat turpis, eget imperdiet erat risus et lacus. Fusce blandit nisl ut tellus mattis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam a odio rhoncus, pharetra nulla at, pulvinar ligula. Nullam accumsan tellus non mauris convallis tristique. Duis vitae volutpat dolor, ut tincidunt nibh.', 3),
('78', '0466483938', 'Donec consequat tristique nunc eget vestibulum. Praesent vulputate massa eget mauris tempor, in dictum ex consectetur. Morbi efficitur neque augue, vel mattis est rutrum sit amet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ullamcorper arcu non tellus dictum, nec imperdiet est bibendum. Nam venenatis sed arcu at luctus. Nullam eget laoreet tortor.', 4),
('79', '0472771243', 'Curabitur sollicitudin quam a finibus euismod. In consectetur convallis diam, vitae finibus tellus ullamcorper vitae. Donec fringilla accumsan ligula vitae semper. Donec a leo vitae nibh posuere varius a at massa. Quisque malesuada, lectus quis varius scelerisque, justo nisi luctus ante, sagittis rhoncus urna magna ac magna. Praesent eget ante eu neque dictum posuere. Donec pretium mi non neque placerat, ut blandit ante vestibulum. Donec a nisi maximus, feugiat enim eu, finibus justo. Nulla facilisi. Etiam enim augue, lobortis euismod semper sed, tempus eu lorem. Nullam et felis egestas, eleifend tortor sit amet, suscipit odio. Integer vel scelerisque elit.', 3),
('80', '0488941882', 'Nunc rhoncus at risus sit amet congue. Cras fermentum tortor eu lectus iaculis imperdiet. Morbi eros metus, pulvinar non posuere quis, porta vitae massa. Sed et justo lorem. Aenean mollis aliquet nisl eget gravida. Duis ultricies sagittis elit sit amet porttitor. Mauris quis magna convallis, blandit velit eget, elementum lectus. Phasellus ac lacus interdum, posuere quam sed, elementum nunc. Sed vel ullamcorper urna, vitae pretium tortor. Fusce leo ex, vestibulum sit amet iaculis non, rutrum id tortor. Quisque rutrum odio eu dolor faucibus, vitae elementum ex suscipit.', 4),
('81', '0489392336', 'Donec justo nisl, ultricies ut feugiat non, congue a nisl. Donec laoreet metus sed mollis tincidunt. Nam vitae libero eget odio pharetra placerat. In hac habitasse platea dictumst. Suspendisse enim lorem, ullamcorper eget suscipit ut, eleifend sit amet lorem. Vestibulum congue cursus leo, vel ornare tortor pretium sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam quis lobortis libero, sed finibus nibh. Proin auctor nulla a sagittis vehicula. Praesent augue sapien, fringilla ut velit vitae, mattis consectetur nibh. Fusce ut sodales purus. Donec dictum orci eleifend, fermentum massa ac, eleifend quam.', 4),
('82', '0493744028', 'Pellentesque varius nulla vitae vehicula pellentesque. Curabitur sodales ut tellus nec condimentum. Donec est ipsum, aliquam vel leo eu, aliquet pulvinar mi. Integer ultrices bibendum nisi at mattis. In eget risus ultrices lectus aliquam faucibus. Praesent maximus fringilla lectus et consequat. Phasellus accumsan, risus eu consequat gravida, lectus nunc dignissim lorem, et placerat nisi tellus luctus urna. Maecenas convallis massa a porttitor semper. Praesent a feugiat dolor. Integer pellentesque dui ut urna tincidunt, hendrerit feugiat elit pharetra. Donec magna lacus, mollis eu feugiat et, sagittis at mauris. Nulla mollis est sed vestibulum fermentum. Phasellus varius ante dignissim purus aliquet finibus. Vivamus volutpat sapien quis tortor volutpat, sed egestas tortor varius. Mauris sit amet tellus hendrerit, dignissim odio quis, ultricies lectus.', 4),
('83', '0437347207', 'Pellentesque venenatis maximus convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec eu nisi blandit tellus posuere tincidunt ut vestibulum magna. Donec ligula erat, feugiat sed justo id, luctus posuere urna. Nullam dui nibh, efficitur eget sem vitae, imperdiet euismod nulla. Nulla ac lorem sed ante porttitor sagittis. Vivamus aliquam est erat, vel pharetra odio ultrices quis. Curabitur euismod, magna in tincidunt mattis, odio leo sollicitudin orci, et rutrum ipsum nibh vitae nisl.', 3),
('84', '0492726924', 'Duis sit amet sapien urna. Suspendisse quis lacinia est. Nam vel eleifend nisi. Cras ultricies diam pretium felis dignissim, sit amet hendrerit lectus dignissim. Donec gravida luctus iaculis. Vestibulum maximus sapien ac bibendum porttitor. Duis sollicitudin congue tristique. Curabitur sed arcu in ipsum varius porttitor. Donec scelerisque lobortis mollis.', 3),
('85', '0417935528', 'Etiam purus mauris, porta sit amet vehicula non, placerat ultrices quam. Vestibulum eget magna eu ante sodales posuere a condimentum lectus. Integer tristique, tellus vel gravida vehicula, enim leo scelerisque dui, vitae sollicitudin libero justo non leo. Curabitur libero nisi, eleifend a tempus id, congue eget diam. Ut ut libero lorem. Ut convallis ante nisi, vel porta lorem blandit id. Mauris vestibulum ac odio eu vehicula. Curabitur risus lorem, hendrerit ut mauris faucibus, laoreet dignissim arcu. In congue eget lectus in condimentum. Nulla nec volutpat elit. Curabitur id mattis arcu. Donec laoreet ipsum at turpis porta, ac scelerisque quam molestie. Duis risus nisl, vehicula sit amet ante auctor, viverra bibendum sem. Nulla facilisi.', 5),
('86', '0472771243', 'Phasellus euismod lacinia ante, id volutpat nibh. Nullam non pellentesque ipsum. Curabitur felis enim, ultricies vitae aliquet eget, porttitor eget orci. Vestibulum malesuada purus vel pharetra feugiat. Etiam a ex mauris. Maecenas lobortis tellus id facilisis ultrices. Nam et justo convallis, tempor nisi in, bibendum mauris. Maecenas eleifend, massa a feugiat dignissim, eros tortor venenatis sem, in consequat libero augue ut erat. Pellentesque malesuada mollis dui eu posuere. Integer pharetra nec metus id suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent finibus, dui id porttitor placerat, nisl libero finibus lorem, id dictum nibh lorem sed mi. Sed ligula massa, dignissim at quam nec, accumsan convallis sapien. Aliquam blandit congue dolor ac pellentesque.', 5),
('86a', '0413489926', 'Sed efficitur condimentum purus, et porttitor nisi finibus at. Nam porttitor nec sem at fringilla. Quisque libero orci, cursus in metus vitae, congue accumsan massa. Nunc vitae leo libero. Curabitur ut porta ligula. Vestibulum dapibus pellentesque convallis. Sed sed blandit lorem. Sed sit amet dui ut ante efficitur sodales ut eu diam. Ut id felis placerat libero finibus mollis. Fusce consectetur varius lacinia. Quisque a velit enim. Quisque aliquet a lacus ac luctus. Maecenas iaculis, sapien eu tristique ullamcorper, lorem nisi blandit tortor, at condimentum mauris enim et metus. Cras ut turpis sit amet orci tincidunt venenatis. Proin dignissim lacus est, quis mollis augue interdum nec. Mauris nec aliquam sapien.', 3),
('86b', '0460994447', 'Integer nec rhoncus nisi. Ut pellentesque tincidunt accumsan. Aliquam erat volutpat. Suspendisse potenti. Donec in massa sem. Vestibulum rhoncus, justo ut egestas accumsan, lacus nulla convallis dolor, a egestas est elit a sem. Aenean a risus varius, lacinia risus nec, vulputate ligula. Morbi ipsum odio, pharetra sed velit eget, suscipit fringilla elit. Curabitur blandit quam eu neque molestie, vitae commodo odio ullamcorper. Etiam lobortis lorem non augue facilisis feugiat sed eu dolor. Curabitur vehicula, neque quis suscipit aliquet, risus tortor rhoncus dui, eu convallis urna lacus vitae velit. Suspendisse posuere facilisis sapien eu maximus.', 3),
('86c', '0416616915', 'Integer quis vulputate libero. Vestibulum vitae congue nibh. Maecenas semper eros a mauris fringilla, et ornare purus placerat. Pellentesque in mollis lacus. Vestibulum sagittis sodales justo, id congue mi venenatis ut. Quisque erat quam, aliquet non viverra ut, porta vel lectus. Ut in nulla nec metus cursus placerat.', 5),
('86d', '0477435523', 'Sed eu lacus in enim faucibus auctor ut sit amet magna. Pellentesque eget urna nec ante imperdiet auctor. Sed luctus finibus ex at ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id pulvinar nisl. Pellentesque sed condimentum lectus, sit amet egestas tortor. Morbi dignissim ex eu lorem rutrum finibus. Quisque at venenatis erat.', 5),
('87', '0452000826', 'In hac habitasse platea dictumst. Duis at finibus mi. Aliquam purus augue, laoreet quis pellentesque elementum, elementum eu erat. Pellentesque at neque massa. Proin nunc metus, blandit ac aliquam et, tempor dictum augue. Nulla imperdiet elit et felis lobortis ullamcorper. Nulla tristique aliquam dolor. Aenean ac diam et ex dapibus porta a id nibh.', 4),
('88', '0492726924', 'Proin tincidunt, nunc quis interdum tincidunt, elit velit tempus magna, a pellentesque lorem est eu magna. Suspendisse in dui id sapien facilisis dapibus eget quis ante. Sed porttitor enim vel eros consectetur auctor. In ultricies bibendum ligula, vitae porttitor nulla fringilla nec. Cras dapibus justo et justo mattis, in euismod elit scelerisque. Duis facilisis nunc at dolor sollicitudin posuere. Vivamus sit amet dapibus urna, sit amet semper libero. Sed elementum metus eget viverra dapibus. Maecenas convallis justo ut varius convallis. In in libero purus. Suspendisse potenti. Phasellus tempor interdum libero, ut fringilla justo tempor rhoncus. Aenean sit amet dignissim risus. Donec velit felis, rhoncus quis elit eget, gravida tempor libero. Cras egestas velit quis pretium sodales. Donec ut faucibus ex.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `first_name`, `last_name`, `email`) VALUES
('0413489926', '', '', '', ''),
('0416616915', '', '', '', ''),
('0417935528', '', '', '', ''),
('0437347207', '', '', '', ''),
('0450087209', '$2y$10$ahAn6iQQ88CGJ8/tdKZgIOXWlsW1qii2ax.B95Aqt8Z4N.33/L8Ri', '', '', 'anhlv@ymail.com'),
('0452000826', '', '', '', ''),
('0460994447', '', '', '', ''),
('0466483938', '', '', '', ''),
('0472771243', '', '', '', ''),
('0474053564', '', '', '', ''),
('0477435523', '', '', '', ''),
('0488941882', '', '', '', ''),
('0489392336', '', '', '', ''),
('0492726924', '', '', '', ''),
('0493744028', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `var_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`var_name`, `dish_code`, `price`) VALUES
('Beef', '27a', 13.9),
('Beef', '33', 13.9),
('Beef', '34', 14.9),
('Beef', '35', 14.9),
('Beef', '35a', 14.9),
('Beef', '35b', 14.9),
('Beef', '36', 13.9),
('Beef', '39', 13.9),
('Beef', '40', 13.9),
('Beef', '41b', 12.9),
('Beef', '45', 13.9),
('Beef', '46', 13.9),
('Chicken', '10', 7),
('Chicken', '32', 13.9),
('Chicken', '33', 13.9),
('Chicken', '34', 14.9),
('Chicken', '35', 14.9),
('Chicken', '35a', 14.9),
('Chicken', '35b', 14.9),
('Chicken', '36', 13.9),
('Chicken', '39', 13.9),
('Chicken', '40', 13.9),
('Chicken', '41b', 12.9),
('Chicken', '44b', 13.9),
('Chicken', '45', 13.9),
('Chicken', '46', 13.9),
('Default', '01', 5),
('Default', '01a', 5),
('Default', '02', 6),
('Default', '03', 7),
('Default', '04', 5),
('Default', '05', 6),
('Default', '06', 6),
('Default', '07', 8),
('Default', '07a', 7),
('Default', '08', 8),
('Default', '09', 7),
('Default', '11', 6),
('Default', '12', 7),
('Default', '12a', 6),
('Default', '12c', 8),
('Default', '12d', 7),
('Default', '12e', 7),
('Default', '12f', 7),
('Default', '12g', 8.5),
('Default', '12h', 8),
('Default', '12i', 6),
('Default', '12j', 8),
('Default', '12k', 6),
('Default', '17', 15.9),
('Default', '18', 18.9),
('Default', '19', 18.8),
('Default', '20', 18.9),
('Default', '21', 18.9),
('Default', '22', 18.9),
('Default', '23', 18.9),
('Default', '24', 14.9),
('Default', '24a', 14.9),
('Default', '24b', 14.8),
('Default', '25', 13.9),
('Default', '25a', 13.9),
('Default', '26', 13.9),
('Default', '27', 13.9),
('Default', '27b', 13.9),
('Default', '27c', 13.9),
('Default', '28', 14.9),
('Default', '28a', 14.9),
('Default', '28b', 14.9),
('Default', '28c', 13.9),
('Default', '28d', 13.9),
('Default', '29', 13.9),
('Default', '30', 13.9),
('Default', '31', 13.9),
('Default', '31a', 11.9),
('Default', '32a', 13.9),
('Default', '32b', 13.9),
('Default', '32c', 13.9),
('Default', '32d', 13.9),
('Default', '35c', 14.9),
('Default', '37', 18.9),
('Default', '41', 12.9),
('Default', '41a', 12.9),
('Default', '41c', 12.9),
('Default', '42', 13.9),
('Default', '42a', 13.9),
('Default', '43', 13.9),
('Default', '44', 12.9),
('Default', '44a', 13.9),
('Default', '47', 12.9),
('Default', '47a', 12.9),
('Default', '48', 11),
('Default', '49', 11.9),
('Default', '50', 11.9),
('Default', '51', 11.9),
('Default', '52', 12.9),
('Default', '53', 11.9),
('Default', '54', 10),
('Default', '55', 12.9),
('Default', '57', 11.9),
('Default', '57a', 11.9),
('Default', '58', 11.9),
('Default', '58a', 11.9),
('Default', '58b', 11.9),
('Default', '58c', 11.9),
('Default', '59', 12.9),
('Default', '60', 12.9),
('Default', '60a', 13.9),
('Default', '60b', 13.9),
('Default', '60c', 14.9),
('Default', '60d', 14.9),
('Default', '60e', 14.9),
('Default', '60f', 14.9),
('Default', '60g', 14.9),
('Default', '66', 19.9),
('Default', '67', 15.9),
('Default', '68', 18.9),
('Default', '69', 18.9),
('Default', '70', 19.9),
('Default', '70a', 19.9),
('Default', '70b', 19.9),
('Default', '71', 18.9),
('Default', '72', 18.9),
('Default', '73', 18.9),
('Default', '74', 18.9),
('Default', '75', 18.9),
('Default', '76', 15.9),
('Default', '77', 18.9),
('Default', '78', 18.9),
('Default', '79', 18.9),
('Default', '80', 19.9),
('Default', '81', 19.9),
('Default', '82', 16.9),
('Default', '83', 16.9),
('Default', '84', 14.9),
('Default', '85', 14.9),
('Default', '86', 19.9),
('Default', '86a', 19.9),
('Default', '86c', 19.9),
('Default', '86d', 19.9),
('Default', '87', 18.9),
('Default', '88', 18.9),
('King Prawn', '10', 7),
('King Prawn', '33', 18.9),
('King Prawn', '34', 18.9),
('King Prawn', '35', 18.9),
('King Prawn', '35a', 18.9),
('King Prawn', '35b', 18.9),
('King Prawn', '36', 18.9),
('King Prawn', '39', 18.9),
('King Prawn', '40', 18.9),
('King Prawn', '41b', 18.9),
('King Prawn', '45', 18.9),
('King Prawn', '46', 18.9),
('Lamb', '26', 16.9),
('Lamb', '27a', 16.9),
('Lamb', '35b', 16.9),
('Mixed', '10', 7),
('Mixed Seafood', '38', 18.9),
('Pork', '10', 7),
('Pork', '31', 13.9),
('Pork', '31a', 11.9),
('Prawn', '32', 18.9),
('Prawn', '44b', 18.9),
('Prawn', '86b', 18.9),
('Soft Shell Crab', '86b', 19.9),
('Tofu', '10', 7),
('Tofu', '31a', 11.9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_slug`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dish_code`),
  ADD KEY `FK_DISH_CAT_SLUG` (`cat_slug`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `FK_ITEM_DISK_CODE` (`dish_code`),
  ADD KEY `FK_ITEM_ORDER_ID` (`order_id`),
  ADD KEY `FK_ITEM_VAR_NAME` (`var_name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_ORDER_USER_ID` (`user_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `FK_RECEIPTS_ORDER_ID` (`order_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`dish_code`,`user_id`),
  ADD KEY `FK_REVIEW_USER_ID` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`var_name`,`dish_code`),
  ADD KEY `FK_VARIATION_DISH_CODE` (`dish_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `FK_DISH_CAT_SLUG` FOREIGN KEY (`cat_slug`) REFERENCES `categories` (`cat_slug`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `FK_ITEM_DISK_CODE` FOREIGN KEY (`dish_code`) REFERENCES `dishes` (`dish_code`),
  ADD CONSTRAINT `FK_ITEM_ORDER_ID` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_ITEM_VAR_NAME` FOREIGN KEY (`var_name`) REFERENCES `variations` (`var_name`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_ORDER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `FK_RECEIPTS_ORDER_ID` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_REVIEW_DISH_CODE` FOREIGN KEY (`dish_code`) REFERENCES `dishes` (`dish_code`),
  ADD CONSTRAINT `FK_REVIEW_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `FK_VARIATION_DISH_CODE` FOREIGN KEY (`dish_code`) REFERENCES `dishes` (`dish_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
