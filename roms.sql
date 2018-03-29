-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 01:51 PM
-- Server version: 5.7.21
-- PHP Version: 7.1.7

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
CREATE DATABASE IF NOT EXISTS `roms` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `roms`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `cat_slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_slug`, `name`, `description`) VALUES
('appertizers', 'Appetizers', ''),
('beef_lamb_pork', 'Beef, Lamb & Pork', ''),
('chef_recommended', 'Chef Recommended', ''),
('chicken', 'Chicken', ''),
('mains', 'Mains', ''),
('thai_vietnamese', 'Thai & Vietnamese', ''),
('vergetarian', 'Vegetarian', '');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
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
('1', 'appertizers', 'Vegetarian Spring Rolls (3 pcs)', 'Taro slices & vegetables wrapped in a light pastry, deep-fried and served with sweet and sour sauce'),
('10', 'appertizers', 'Salad Rolls (3 pcs)', 'Vietnamese rice paper with sliced king prawns, rice vermicelli, mints, lettuces, cucumbers and bean sprouts and served with special dipping sauce'),
('11', 'appertizers', 'Sang Choi Bao', 'Lemongrass infused chicken breast pieces served with green leaves capsicums, onions and coriander'),
('12', 'appertizers', 'Salt & Spicy Calamari', 'Tempura battered five-spice & chilli squid slices'),
('12a', 'appertizers', 'Fish Cakes (4 pcs)', 'Spicy fish cakes served with lime sweet chilli sauce'),
('12c', 'appertizers', 'Tamarind King Prawns (4pcs)', 'Tempura battered tail-on king prawns glazed in a tasty mild chili tamarind sauce on crispy glass noodles. '),
('12d', 'appertizers', 'Salt and Spicy Chicken or Tofu', 'Tempura battered (Ive spice and chilli chicken breast pieces or tofu. '),
('12e', 'appertizers', 'Golden Bags', 'A combination of ground chicken, prawn meat, water chestnuts, fresh coriander wrapped in light pastry, deep-fried and served with lime sweet chili sauce. '),
('12f', 'appertizers', 'Wing Wing', 'De-boned chicken wing, filled with a combination of ground pork, Mung bean noodles, water chestnuts and coriander. Crumbed, deep-fried and served with a lime sweet chili sauce. '),
('12g', 'appertizers', 'Soft Shell Crab', 'Tempura battered five-spice and chilli soft shell crab dipped with sweet vinegar'),
('12h', 'appertizers', 'Beef Look Luck', 'Marinated bee( fillet cubes, capsicums, onions and shallots, wok-tossed with black pepper sauce. '),
('12i', 'appertizers', 'Wontons (4pcs)', 'A traditional & popular Chinese entree, deep fried and served with sweet and sour sauce'),
('12j', 'appertizers', 'Peking Duck Wraps (2pcs)', 'Roasted Peking duck breast slices wrapped with fresh cucumber, coriander, shallots and traditional sauce'),
('12k', 'appertizers', 'Nibble Nibble (4 pcs)', 'Marinated chicken nibbles deep fried and served with lime sweet chilli sauce'),
('17', 'mains', 'Basil Chilli Black Bean Mussels', 'Steamed 1/2 New Zealand mussels with special chilli black bean sauce and sweet basil leaves'),
('18', 'mains', 'Thai Kra Chai Fish (Mixed Seafood or Deep Fried Fish Fillets)', 'Tempura battered fillet of fish wok tossed with Thai Krachai, fresh chilli, peppercorns, capsicum, zucchini, and carrot in a creamy red curry'),
('19', 'mains', 'Peking King Prawn', 'A popular Chinese sauce made from celery, carrot, tomatoes wok tossed with tail on king prawns, onion, tomatoes, pineapple and capsicum'),
('1a', 'appertizers', 'Vegetarian Curry Puffs (3 pcs)', 'Sweet potatoes, onions & curry spices wrapped in a pastry, deep fried and served with a lime sweet chilli sauce'),
('2', 'appertizers', 'Homemade Spring Rolls (3 pcs)', 'Minced pork and vegetables wrapped in a light pastry. deep-fried and served with a sweet and sour sauce. '),
('20', 'mains', 'King Prawn Cashew Nuts', 'Tail-on king prawns wok-tossed with seasonal vegetables in a garlic oyster sauce topped with roasted cashew nuts. '),
('21', 'mains', 'Garlic King Prawn', 'Garlic infused tail on king prawns with seasonal vegetables'),
('22', 'mains', 'Ginger Shallot King Prawn', 'Tail-on king prawns wok-tossed in fresh ginger, shallots and seasonal vegetables. '),
('23', 'mains', 'Tasty King Prawn', 'Coriander infused tail-on king prawns wok-tossed in a gourmet Vietnamese blend and seasonal vegetables. '),
('24', 'mains', 'Szechuan Calamari', 'Tender calamari pieces in special blended chilli, Szechuan sauce and seasonal vegetables'),
('24a', 'mains', 'Prik Phao Calamari (Roasted Chilli Paste)', 'Roasted chilli paste, aromatic basil leaves and calamari, wok tossed with seasonal vegetables'),
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
('3', 'appertizers', 'Honey Sesame Chicken', 'Tempura battered chicken breast pieces glazed with honey & roasted sesame seeds on crispy glass noodles'),
('30', 'chicken', 'Ginger and Shallot Chicken', 'Ginger infused chicken breast pieces wok-tossed with seasonal vegetables.'),
('31', 'chicken', 'Sweet and Sour Chicken or Pork', 'Golden tempura battered chicken breast fillet or tender pork pieces glazed in a special sweet and sour blend of pineapple, celery and tomatoes'),
('31a', 'chicken', 'Salty & Spicy Pork, Chicken or Tofu', 'Light battered spicy pork, chicken or tofu with fresh chilli'),
('32', 'chicken', 'Honey Lemon Chicken', 'Tempura battered chicken breast fillet or king prawns glazed with a house-made honey lemon sauce and roasted sesame seeds. '),
('32a', 'chicken', 'Satay Chicken', 'Tender chicken breast pieces and seasonal vegetables wok-tossed with homemade peanut satay sauce. '),
('32b', 'chicken', 'Chicken Chow Mein', 'Tender chicken breast pieces stir-fried with seasonal vegetables on a bed of thin egg noodles. '),
('32c', 'chicken', 'Chicken Foo Young Egg', 'Tender chicken breast pieces scrambled with eggs and vegetables'),
('32d', 'chicken', 'Teriyaki Chicken', 'Tender chicken breast pieces wok-tossed in a tasty Teriyaki sauce with onions and seasonal vegetables . '),
('33', 'thai_vietnamese', 'Chilli Lemongrass', 'A classic Vietnamese style, fresh lemongrass and chilli with your choice of tender chicken, beef or king prawns'),
('33a', 'thai_vietnamese', 'Ah-Sam (Hot Tamarind Base)', 'A fresh new style of a hot tamarind base, saw-leaves, coriander and seasonal vegetables stir-fried with your choice of tender chicken, beef or king prawns. '),
('34', 'thai_vietnamese', 'Thai Red Curry', 'A creamy and spicy red curry with your choice of tender chicken, beef or king prawn, wok tossed with seasonal vegetables'),
('35', 'thai_vietnamese', 'Thai Green Curry', 'A hot and spicy green curry with your choice of tender chicken, beef or king prawns, wok-tossed with seasonal vegetables. '),
('35a', 'thai_vietnamese', 'Yellow Curry', ''),
('35b', 'thai_vietnamese', 'Panang Curry', 'A creamy aromatic curry wok-tossed with onion and kaffir lime leaves with your choice of lamb, chicken, beef or king prawns. '),
('35c', 'thai_vietnamese', 'Mussaman Beef', 'Tender beef pieces cooked with potatoes, onion, peanuts and coconut milk.'),
('36', 'thai_vietnamese', 'Pong Ca Ri', 'A mild sweet yellow curry without coconut cream wok-tossed with seasonal vegetables and your choice of chicken, beef or king prawns. (contains egg)'),
('37', 'thai_vietnamese', 'Sweet & Chilli Fish', 'Deep-fried snapper fillet smothered in sweet chill sauce with pineapple, tomato and celery.'),
('38', 'thai_vietnamese', 'Prik Khing (Dry Red Curry)', 'Red curry paste stir-fried with green beans and aromatic kaffir lime leaves. Suitable for curry lovers who enjoy the aroma and flavours of fresh curry without the coconut cream. '),
('39', 'thai_vietnamese', 'Prik Phao (Roasted Chilli Paste)', 'Roasted chilli paste and aromatic basil leaves wok-tossed with seasonal vegetables and your choice of tender chicken, beef or king prawns. '),
('4', 'appertizers', 'Cha Tofu', 'Freshly deep fried tofu with sweet and sour and soy sauce'),
('40', 'thai_vietnamese', 'Basil Chilli Black Bean', 'A new way of combining chilli, black bean sauce and sweet basil, wok-tossed with seasonal vegetables and your choice of tender chicken, beef or king prawns. '),
('41', 'thai_vietnamese', 'Pad Thai', 'A popular Thai style noodle dish in our special homemade sauce wok-tossed with tender chicken, flat rice noodles, egg, shallots, onion, bean sprouts and ground peanuts. '),
('41a', 'thai_vietnamese', 'Pad Se Heaw', 'Tender chicken breast wok-tossed with flat rice noodles, egg, Chinese vegetables, bean sprouts and shallots. '),
('41b', 'thai_vietnamese', 'Char Kway Teaw', 'Flat rice noodles, fresh garlic, chilli, egg, bean sprouts and shallots wok-tossed with your choice of chicken, king prawns or seafood. '),
('41c', 'thai_vietnamese', 'Ho Fun Chicken', 'Garlic infused chicken or seafood, stir fried with seasonal vegetables and fiat rice noodles. '),
('42', 'thai_vietnamese', 'Thai Fried Rice', 'Tender chicken breast pieces, king prawn and mixed seasonal vegetables wok-tossed with egg and roasted chilli paste.'),
('42a', 'thai_vietnamese', 'Green Coconut Chicken Fried Rice', 'Creamy green curry wok-tossed with chicken breast pieces and mixed seasonal vegetables with egg, sweet basil and aromatic kaffir lime leaves. '),
('43', 'thai_vietnamese', 'Nasi Goreng', '3 meats - chicken, pork and beef wok-tossed with mixed seasonal vegetables, egg, spicy curry and chilli. '),
('44', 'thai_vietnamese', 'Chicken Jasmine Fried Rice', 'Tender chicken breast pieces wok-tossed with mixed seasonal vegetables and egg. '),
('44a', 'thai_vietnamese', 'Young Chow Fried Rice', 'Tail-on king prawns, roast park wok-tossed with mixed seasonal vegetables and egg. '),
('44b', 'thai_vietnamese', 'Pineapple Prawn Fried Rice', 'Tailless king prawn wok-tossed with egg, seasonal vegetables, pineapple and aromatic spicy curry. '),
('45', 'thai_vietnamese', 'Tom Yum', 'Thin rice noodles and seasonal vegetables in a traditional sour and spicy Tom Yum broth with your choice of tender chicken, beef or king prawns. '),
('46', 'thai_vietnamese', 'Laksa', 'Combination of Hokkien noodles, thin rice noodles and seasonal vegetables in a creamy coconut chilli broth with your choice of tender chicken, beef or king prawns. '),
('47', 'vergetarian', 'Chilli Lemongrass Tofu', 'Deep-fried tofu slices wok-tossed with fresh chilli lemongrass and seasonal vegetables garnished with roasted cashew nuts. '),
('47a', 'vergetarian', 'Thai Spicy Tofu Vegetarian', 'Seasonal vegetables and tofu wok-tossed with dried red curry paste and aromatic kaffir lime leaves. '),
('48', 'vergetarian', 'Vegetarian Delight', 'Snow peas, broccoli and seasonal vegetables wak-tossed in garlic oyster sauce and garnished with roasted cashew nuts. '),
('49', 'vergetarian', 'Vegetarian Thai Pad', 'A popular Thai style noodle dish in our special homemade sauce wok-tossed with vegetables, flat rice noodles, egg, bean spouts and shallots garnished with roasted cashew nuts and ground peanuts. '),
('5', 'appertizers', 'Steamed Homemade Dim Sims (4 pcs)', 'Traditional Chinese wrap with pork, water chestnuts, shallots, coriander and served with soy sauce. '),
('50', 'vergetarian', 'Thai Red, Green or Panang Vegetarian', 'Seasonal vegetables and your choice of spicy red curry, hot Green curry or aromatic Panang curry. All coconut cream based. '),
('51', 'vergetarian', 'Satay Vegetarian', 'Seasonal vegetables wok-tossed with homemade peanut satay sauce and garnished with roasted cashew nuts. '),
('52', 'vergetarian', 'Chilli Black Bean Basil Tofu', 'Deep fried tofu slices and seasonal vegetables wok-tossed in a special black bean sauce with fresh chilli and sweet basil leaves, garnished with roasted cashew nuts. '),
('53', 'vergetarian', 'Basil Prik Phao Vegetarian', 'Seasonal vegetables wok-tossed in roasted chill paste and sweet basil leaves garnished with roasted cashew nuts.'),
('54', 'vergetarian', 'Vegetarian Jasmine Fried Rice', 'Seasonal vegetables wok-tossed with egg and rice.'),
('55', 'vergetarian', 'Basil Tofu', 'Deep-fried tofu slices wok-tossed with seasonal vegetables and sweet basil leaves garnished with roasted cashew nuts.'),
('57', 'vergetarian', 'Vegetarian Thai Fried Rice', 'Seasonal vegetables wok-tossed with egg and roasted chilli paste. '),
('57a', 'vergetarian', 'Vegetarian Pineapple Fried Rice', 'Seasonal vegetables wok-tossed with egg, pineapple and aromatic spicy curry. '),
('58', 'vergetarian', 'Vegetarian Chow Mein', 'Seasonal vegetables stir-fried with garlic and oyster sauce on a bed of egg noodles.'),
('58a', 'vergetarian', 'Vegetarian Singapore Fried Noodles', 'Seasonal vegetables and thin rice noodles wok-tossed with egg, spicy curry and chilli. '),
('58b', 'vergetarian', 'Vegetarian Hokkien Stir Fry', 'Seasonal vegetables and Hakkien noodles wok-tossed with garlic and oyster sauce. '),
('58c', 'vergetarian', 'Vegetarian Pad Se Heaw', 'Seasonal Chinese vegetables wok-tossed with flat rice noodles, egg, bean sprouts and shallots. '),
('59', 'vergetarian', 'Vegetarian Foo Young Egg', 'Seasonal vegetables scrambled with egg.'),
('6', 'appertizers', 'Chicken Satay Sticks (3 pcs)', 'Chicken fillet marinated in an aromatic tumeric blend served with homemade peanut satay sauce. '),
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
('68', 'chef_recommended', 'Crisp Garlic Black Bean King Prawn', 'Chilli garlic infused tail-on king prawns, lightly battered, wok-tossed with fresh chilli and spicy black beans. '),
('69', 'chef_recommended', 'XO King Prawn', 'Chilli shrimps infused tail-on king prawns wok-tossed with seasonal vegetables. '),
('7', 'appertizers', 'Honey King Prawns (4 pcs)', 'Tempura battered tail-on king prawns glazed with honey and roasted sesame seeds on crispy glass noodles. '),
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
('7a', 'appertizers', 'Mach Tong Ngap', 'Honey glazed tender roast duck on a bed of crisp mixed leaves. '),
('8', 'appertizers', 'Coconut Prawns (4 pcs)', 'Coconut coated tail-on king prawns, deep fried and served with lime sweet chilli sauce'),
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
('88', 'chef_recommended', 'Spicy Pork Ribs', 'Tempura battered tasty pork ribs wok-tossed with garlic, fresh chilli, spicy black beans, capsicum, onion and shallots.'),
('9', 'appertizers', 'Paper Chicken (Deep-fried) (3 pcs)', 'Vietnamese rice paper rolls with marinated chicken, coriander and shallots, deep-fried and served with lime sweet chilli sauce. ');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `order_time` datetime NOT NULL,
  `pickup_time` datetime NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `first_name`, `last_name`, `email`) VALUES
('0450087209', 'cd38a17a1a1b7ecf6b82a3e5f6e16c9f', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

DROP TABLE IF EXISTS `variations`;
CREATE TABLE `variations` (
  `var_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`var_name`, `dish_code`, `price`) VALUES
('Beef', '26', 13.9),
('Beef', '27a', 13.9),
('Beef', '33', 13.9),
('Beef', '33a', 13.9),
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
('Chicken', '33a', 13.9),
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
('Default', '1', 5),
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
('Default', '1a', 5),
('Default', '2', 6),
('Default', '20', 18.9),
('Default', '21', 18.9),
('Default', '22', 18.9),
('Default', '23', 18.9),
('Default', '24', 14.9),
('Default', '24a', 14.9),
('Default', '24b', 14.8),
('Default', '25', 13.9),
('Default', '25a', 13.9),
('Default', '27', 13.9),
('Default', '27b', 13.9),
('Default', '27c', 13.9),
('Default', '28', 14.9),
('Default', '28a', 14.9),
('Default', '28b', 14.9),
('Default', '28c', 13.9),
('Default', '28d', 13.9),
('Default', '29', 13.9),
('Default', '3', 7),
('Default', '30', 13.9),
('Default', '31', 13.9),
('Default', '31a', 11.903),
('Default', '32a', 13.9),
('Default', '32b', 13.9),
('Default', '32c', 13.9),
('Default', '32d', 13.9),
('Default', '35c', 14.9),
('Default', '37', 18.9),
('Default', '4', 5),
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
('Default', '5', 6),
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
('Default', '6', 6),
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
('Default', '7', 8),
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
('Default', '7a', 7),
('Default', '8', 8),
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
('Default', '9', 7),
('King Prawn', '10', 7),
('King Prawn', '33', 18.9),
('King Prawn', '33a', 18.9),
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
('Prawn', '32', 18.9),
('Prawn', '44b', 18.9),
('Prawn', '86b', 18.9),
('Soft Shell Crab', '86b', 19.9),
('Tofu', '10', 7);

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
  ADD KEY `FK_ITEM_ORDER_ID` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_ORDER_USER_ID` (`user_id`);

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
  ADD CONSTRAINT `FK_ITEM_ORDER_ID` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_ORDER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
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
