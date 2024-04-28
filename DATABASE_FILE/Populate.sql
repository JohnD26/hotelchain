-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2024 at 04:28 AM
-- Server version: 8.0.36
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
                              `sr_no` int NOT NULL,
                              `admin_name` varchar(150) NOT NULL,
                              `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
    (1, 'Jonathan', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
                                   `sr_no` int NOT NULL,
                                   `booking_id` int NOT NULL,
                                   `room_name` varchar(100) NOT NULL,
                                   `price` int NOT NULL,
                                   `total_pay` int NOT NULL,
                                   `room_no` varchar(100) DEFAULT NULL,
                                   `user_name` varchar(100) NOT NULL,
                                   `phonenum` varchar(100) NOT NULL,
                                   `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
                                                                                                                                            (1, 1, 'Simple Room', 300, 300, NULL, 'James Bond', '123', 'ad'),
                                                                                                                                            (2, 2, 'Simple Room', 300, 600, 'a2', 'James Bond', '123', 'ad'),
                                                                                                                                            (3, 3, 'Simple Room', 300, 1800, NULL, 'James Bond', '123', 'ad'),
                                                                                                                                            (4, 4, 'Supreme deluxe room', 900, 4500, NULL, 'James Bond', '123', 'ad'),
                                                                                                                                            (5, 5, 'Supreme deluxe room', 900, 900, NULL, 'James Bond', '123', 'ad'),
                                                                                                                                            (6, 6, 'Supreme deluxe room', 900, 7200, '52', 'James Bond', '12323432', 'ad2342343'),
                                                                                                                                            (7, 7, 'Supreme deluxe room', 900, 900, NULL, 'James Bond', '123', 'ad'),
                                                                                                                                            (8, 8, 'Simple Room', 300, 600, NULL, 'James Bond', '123', 'ad'),
                                                                                                                                            (9, 9, 'Luxury Room', 600, 3000, '159A', 'kevin', '123', 'ad'),
                                                                                                                                            (10, 10, 'Luxury Room', 600, 1800, '15S', 'kevin', '123', 'ad'),
                                                                                                                                            (11, 11, 'Supreme deluxe room', 900, 2700, '1', 'kevin', '123', 'ad'),
                                                                                                                                            (12, 12, 'Simple Room', 300, 1200, '2', 'kevin', '123', 'ad'),
                                                                                                                                            (13, 13, 'Deluxe Room', 500, 3000, '23', 'kevin', '123', 'ad'),
                                                                                                                                            (14, 14, 'Luxury Room', 600, 2400, '44', 'kevin', '123', 'ad'),
                                                                                                                                            (15, 15, 'Luxury Room', 600, 1200, NULL, 'kevin', '123', 'ad'),
                                                                                                                                            (16, 16, 'Luxury Room', 600, 1200, '1', 'kevin', '123', 'ad'),
                                                                                                                                            (17, 17, 'Simple Room', 300, 900, '20A', 'kevin', '123', 'ad'),
                                                                                                                                            (18, 18, 'Supreme deluxe room', 900, 1800, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (19, 19, 'Supreme deluxe room', 900, 9000, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (20, 20, 'Supreme deluxe room', 900, 9000, '2', 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (21, 21, 'Supreme deluxe room', 900, 9000, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (22, 22, 'Supreme deluxe room', 900, 9000, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (23, 23, 'Supreme deluxe room', 900, 18000, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (24, 24, 'Supreme deluxe room', 900, 900, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (25, 25, 'Supreme deluxe room', 900, 900, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (26, 26, 'Supreme deluxe room', 900, 900, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (27, 27, 'Deluxe Room', 500, 500, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (28, 28, 'Supreme deluxe room', 900, 900, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (29, 29, 'Simple Room', 300, 300, NULL, 'Jonathan Domingue', '6132525459', '411 North River Vanier'),
                                                                                                                                            (30, 30, 'Supreme deluxe room', 900, 1800, NULL, 'Pedro Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (31, 31, 'Supreme deluxe room', 900, 1800, NULL, 'Pedro Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (32, 32, 'Supreme deluxe room', 900, 1800, NULL, 'Pedro Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (33, 33, 'Supreme deluxe room', 900, 1800, NULL, 'Pedro Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (34, 34, 'Supreme deluxe room', 900, 1800, '2', 'Mark Cuban', '6172727272', 'Los Angeles, California'),
                                                                                                                                            (35, 35, 'Deluxe Room', 500, 3000, '5', 'Mor', '6123434343', 'Ottawa'),
                                                                                                                                            (36, 36, 'Simple Room', 300, 300, NULL, 'Mor', '6123434343', 'Ottawa'),
                                                                                                                                            (37, 37, 'Supreme deluxe room', 900, 1800, NULL, 'Panda Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (38, 38, 'Supreme deluxe room', 900, 1800, NULL, 'Panda Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (39, 39, 'Supreme deluxe room', 900, 1800, NULL, 'Panda Ener', '6132445656', '800 king edwards'),
                                                                                                                                            (40, 40, 'Supreme deluxe room', 900, 1800, NULL, 'Panda Ener', '6132445656', '800 king edwards');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
                                 `booking_id` int NOT NULL,
                                 `user_id` int NOT NULL,
                                 `room_id` int NOT NULL,
                                 `check_in` date NOT NULL,
                                 `check_out` date NOT NULL,
                                 `arrival` int NOT NULL DEFAULT '0',
                                 `refund` int DEFAULT NULL,
                                 `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
                                 `order_id` varchar(150) NOT NULL,
                                 `trans_id` varchar(200) DEFAULT NULL,
                                 `trans_amt` int NOT NULL,
                                 `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
                                 `trans_resp_msg` varchar(200) DEFAULT NULL,
                                 `rate_review` int DEFAULT NULL,
                                 `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
                                                                                                                                                                                                                                        (1, 2, 3, '2022-07-20', '2022-07-21', 0, NULL, 'pending', 'ORD_21055700', NULL, 0, 'pending', NULL, NULL, '2022-07-20 01:50:12'),
                                                                                                                                                                                                                                        (2, 2, 3, '2022-07-20', '2022-07-22', 1, NULL, 'booked', 'ORD_24215693', '20220720111212800110168128204225279', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:14:44'),
                                                                                                                                                                                                                                        (3, 2, 3, '2022-07-20', '2022-07-26', 0, 1, 'cancelled', 'ORD_26312547', '20220720111212800110168165603901976', 1800, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:19:00'),
                                                                                                                                                                                                                                        (4, 2, 3, '2022-07-20', '2022-07-25', 0, NULL, 'payment failed', 'ORD_28394638', '20220720111212800110168372503893816', 4500, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', NULL, '2022-07-20 02:30:52'),
                                                                                                                                                                                                                                        (5, 2, 3, '2022-07-20', '2022-07-21', 0, 1, 'cancelled', 'ORD_22877860', '20220720111212800110168627705312020', 900, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:32:09'),
                                                                                                                                                                                                                                        (6, 2, 3, '2022-07-20', '2022-07-28', 1, NULL, 'booked', 'ORD_28689687', '20220720111212800110168303704048087', 7200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-07-20 02:34:46'),
                                                                                                                                                                                                                                        (7, 2, 3, '2022-07-29', '2022-07-30', 0, NULL, 'pending', 'ORD_24272313', NULL, 0, 'pending', NULL, NULL, '2022-07-29 01:13:42'),
                                                                                                                                                                                                                                        (8, 2, 3, '2022-08-14', '2022-08-16', 0, 1, 'cancelled', 'ORD_22541670', '20220814111212800110168092803967754', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-08-14 01:16:05'),
                                                                                                                                                                                                                                        (9, 2, 3, '2022-08-15', '2022-08-20', 1, NULL, 'booked', 'ORD_25267746', '20220815111212800110168656003990120', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-15 19:32:05'),
                                                                                                                                                                                                                                        (10, 2, 3, '2022-08-18', '2022-08-21', 1, NULL, 'booked', 'ORD_27668816', '20220815111212800110168905703947446', 1800, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-15 19:32:58'),
                                                                                                                                                                                                                                        (11, 2, 3, '2022-08-20', '2022-08-23', 1, NULL, 'booked', 'ORD_25750549', '20220820111212800110168431303975409', 2700, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:19:57'),
                                                                                                                                                                                                                                        (12, 2, 3, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:23'),
                                                                                                                                                                                                                                        (13, 2, 3, '2022-08-20', '2022-08-26', 1, NULL, 'booked', 'ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:45'),
                                                                                                                                                                                                                                        (14, 2, 3, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:21:06'),
                                                                                                                                                                                                                                        (15, 2, 3, '2022-08-25', '2022-08-27', 0, 1, 'cancelled', 'ORD_2240367', '20220825111212800110168807304010818', 1200, 'TXN_SUCCESS', 'Txn Success', NULL, '2019-08-21 01:51:28'),
                                                                                                                                                                                                                                        (16, 2, 3, '2022-08-26', '2022-08-28', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-25 01:52:04'),
                                                                                                                                                                                                                                        (17, 2, 3, '2022-09-08', '2022-09-11', 1, NULL, 'booked', 'ORD_21289330', '20220908111212800110168809204050263', 900, 'TXN_SUCCESS', 'Txn Success', 0, '2022-09-08 01:15:30'),
                                                                                                                                                                                                                                        (18, 5, 3, '2024-12-28', '2024-12-30', 0, NULL, 'pending', 'ORD_51689612', NULL, 1800, 'pending', NULL, NULL, '2024-03-29 17:33:52'),
                                                                                                                                                                                                                                        (19, 5, 3, '2024-12-12', '2024-12-22', 0, NULL, 'pending', 'ORD_5228428', NULL, 9000, 'pending', NULL, NULL, '2024-03-29 17:35:17'),
                                                                                                                                                                                                                                        (20, 5, 3, '2024-12-12', '2024-12-22', 1, NULL, 'pending', 'ORD_59585361', NULL, 9000, 'pending', NULL, 0, '2024-03-29 17:39:06'),
                                                                                                                                                                                                                                        (21, 5, 3, '2024-12-12', '2024-12-22', 0, NULL, 'pending', 'ORD_56134244', NULL, 9000, 'pending', NULL, NULL, '2024-03-29 17:42:23'),
                                                                                                                                                                                                                                        (22, 5, 3, '2024-12-12', '2024-12-22', 0, NULL, 'pending', 'ORD_55926415', NULL, 9000, 'pending', NULL, NULL, '2024-03-29 17:54:57'),
                                                                                                                                                                                                                                        (23, 5, 3, '2024-12-10', '2024-12-30', 0, NULL, 'pending', 'ORD_56412663', NULL, 18000, 'pending', NULL, NULL, '2024-03-29 17:55:34'),
                                                                                                                                                                                                                                        (24, 5, 3, '2025-12-10', '2025-12-11', 0, NULL, 'pending', 'ORD_59741409', NULL, 900, 'pending', NULL, NULL, '2024-03-29 18:01:04'),
                                                                                                                                                                                                                                        (25, 5, 3, '2024-12-10', '2024-12-11', 0, NULL, 'pending', 'ORD_52425887', NULL, 900, 'pending', NULL, NULL, '2024-03-29 18:20:13'),
                                                                                                                                                                                                                                        (26, 5, 3, '2027-12-10', '2027-12-11', 0, NULL, 'pending', 'ORD_58976935', NULL, 900, 'pending', NULL, NULL, '2024-03-29 18:23:01'),
                                                                                                                                                                                                                                        (27, 5, 3, '2027-12-05', '2027-12-06', 0, NULL, 'pending', 'ORD_55222913', NULL, 500, 'pending', NULL, NULL, '2024-03-29 18:38:22'),
                                                                                                                                                                                                                                        (28, 5, 6, '2024-12-12', '2024-12-13', 0, NULL, 'pending', 'ORD_56532903', NULL, 900, 'pending', NULL, NULL, '2024-03-31 02:11:12'),
                                                                                                                                                                                                                                        (29, 5, 3, '2024-12-10', '2024-12-11', 0, NULL, 'pending', 'ORD_52998288', NULL, 300, 'pending', NULL, NULL, '2024-03-31 05:54:11'),
                                                                                                                                                                                                                                        (30, 5, 6, '2024-12-12', '2024-12-14', 0, NULL, 'pending', 'ORD_9965828', NULL, 1800, 'pending', NULL, NULL, '2024-03-31 16:53:52'),
                                                                                                                                                                                                                                        (31, 5, 6, '2024-12-12', '2024-12-14', 0, NULL, 'pending', 'ORD_2246648', NULL, 1800, 'pending', NULL, NULL, '2024-03-31 16:54:02'),
                                                                                                                                                                                                                                        (32, 5, 6, '2024-12-12', '2024-12-14', 0, NULL, 'pending', 'ORD_9564344', NULL, 1800, 'pending', NULL, NULL, '2024-03-31 16:54:15'),
                                                                                                                                                                                                                                        (33, 5, 6, '2024-12-12', '2024-12-14', 0, NULL, 'pending', 'ORD_5859285', NULL, 1800, 'pending', NULL, NULL, '2024-03-31 16:54:19'),
                                                                                                                                                                                                                                        (34, 6, 6, '2025-12-12', '2025-12-14', 1, 0, 'confirmed', 'ORD_61045649', NULL, 1800, 'pending', NULL, 0, '2024-04-01 02:59:36'),
                                                                                                                                                                                                                                        (35, 9, 4, '2024-04-12', '2024-04-18', 1, NULL, 'confirmed', 'ORD_97186140', NULL, 3000, 'pending', NULL, 0, '2024-04-02 14:04:26'),
                                                                                                                                                                                                                                        (36, 9, 3, '2024-12-12', '2024-12-13', 0, NULL, 'pending', 'ORD_99363366', NULL, 300, 'pending', NULL, NULL, '2024-04-03 03:21:24'),
                                                                                                                                                                                                                                        (37, 5, 6, '2025-12-12', '2025-12-14', 0, NULL, 'pending', 'ORD_2426529', NULL, 1800, 'pending', NULL, NULL, '2024-04-06 16:53:37'),
                                                                                                                                                                                                                                        (38, 5, 6, '2025-12-12', '2025-12-14', 0, NULL, 'pending', 'ORD_7818578', NULL, 1800, 'pending', NULL, NULL, '2024-04-06 16:53:47'),
                                                                                                                                                                                                                                        (39, 5, 6, '2025-12-12', '2025-12-14', 0, NULL, 'pending', 'ORD_9863997', NULL, 1800, 'pending', NULL, NULL, '2024-04-06 16:53:54'),
                                                                                                                                                                                                                                        (40, 5, 6, '2025-12-12', '2025-12-14', 0, NULL, 'pending', 'ORD_5916353', NULL, 1800, 'pending', NULL, NULL, '2024-04-06 16:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
                            `sr_no` int NOT NULL,
                            `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
                                              (6, 'IMG_99736.png'),
                                              (8, 'IMG_40905.png'),
                                              (9, 'IMG_55677.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
                                   `sr_no` int NOT NULL,
                                   `address` varchar(50) NOT NULL,
                                   `gmap` varchar(100) NOT NULL,
                                   `pn1` bigint NOT NULL,
                                   `pn2` bigint NOT NULL,
                                   `email` varchar(100) NOT NULL,
                                   `fb` varchar(100) NOT NULL,
                                   `insta` varchar(100) NOT NULL,
                                   `tw` varchar(100) NOT NULL,
                                   `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
    (1, '800 King Edwards', 'https://goo.gl/maps/T1YM8d4fJsoczstd6', 6132525459, 6132525459, 'jdomi068@uottawa.ca', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.google.com/maps/place/SITE, 800 King Edward Ave, Ottawa, ON K1N 6N5/@45.4193637,-75.6812047,16z/data=!3m1!4b1!4m6!3m5!1s0x4cce05a74e93237b:0x2e6c2c10b7581602!8m2!3d45.4193637!4d-75.6786298!16s/g/1v1skvx8?entry=ttu');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
                              `id` int NOT NULL,
                              `icon` varchar(100) NOT NULL,
                              `name` varchar(50) NOT NULL,
                              `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
                                                                   (13, 'Wifi.svg', 'Wifi', 'Fast Optic Fibre wifi'),
                                                                   (14, 'Conditionner.svg', 'Air conditioner', 'Cool Air conditioning'),
                                                                   (15, 'TV.svg', 'Television', 'Canal++ and more channels'),
                                                                   (17, 'Spa.svg', 'Spa', 'Nice spa with Massage and saunas'),
                                                                   (18, 'Heater.svg', 'Room Heater', 'Heater to warm up in the winter'),
                                                                   (19, 'Gym.svg', 'Gym', 'Well Equipped gym for our fitness enthusiasts'),
                                                                   (20, 'Pool.svg', 'Swimming Pool', 'Nice heated swimming pool where you can swim'),
                                                                   (21, 'Bar.svg', 'Bar', 'Bar with a variety of cocktails (alcohol and non-alcohol)'),
                                                                   (22, 'Sauna.svg', 'Sauna', 'Sauna where you can relax');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
                            `id` int NOT NULL,
                            `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
                                          (13, 'bedroom'),
                                          (14, 'balcony'),
                                          (15, 'kitchen'),
                                          (17, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `head_offices`
--

CREATE TABLE `head_offices` (
                                `office_id` int NOT NULL,
                                `chain_id` int NOT NULL,
                                `office_address` varchar(255) NOT NULL,
                                `office_contact_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `head_offices`
--

INSERT INTO `head_offices` (`office_id`, `chain_id`, `office_address`, `office_contact_info`) VALUES
                                                                                                  (1, 1, '123 Blue Sky Ave, Beachtown', '555-1001'),
                                                                                                  (2, 2, '456 Cozy Wood St, Mountaintown', '555-2002'),
                                                                                                  (3, 3, '789 Silver St, Forestville', '555-3003'),
                                                                                                  (4, 4, '101 Emerald Way, Greentown', '555-4004'),
                                                                                                  (5, 5, '202 Ruby Rd, Downtown', '555-5005');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
                          `hotel_id` int NOT NULL,
                          `hotel_name` varchar(150) NOT NULL,
                          `location` varchar(255) NOT NULL,
                          `contact_info` varchar(255) NOT NULL,
                          `description` text NOT NULL,
                          `city` varchar(100) NOT NULL,
                          `chain_id` int NOT NULL,
                          `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `location`, `contact_info`, `description`, `city`, `chain_id`, `rating`) VALUES
                                                                                                                             (1, 'Azure Crest Resort - Malibu', 'Malibu', '555-0101', 'A serene beachfront resort offering the ultimate relaxation experience.', 'Malibu', 1, NULL),
                                                                                                                             (2, 'Golden Oak Hospitality - Aspen', 'Aspen', '555-0202', 'Cozy mountain lodgings with a homey feel in the heart of Aspen.', 'Aspen', 2, NULL),
                                                                                                                             (3, 'Silver Pine Hotel - Vail', 'Vail', '555-0303', 'Elegant accommodations nestled in the tranquility of Vail’s snowy landscapes.', 'Vail', 3, NULL),
                                                                                                                             (4, 'Emerald Enclave Inn - Miami', 'Miami', '555-0404', 'Eco-friendly inn surrounded by the lush biodiversity of Costa Rica.', 'Costa Rica', 4, NULL),
                                                                                                                             (5, 'Ruby Radiance Lodge - New York', 'New York', '555-0505', 'Experience the vibrant heart of the city in luxury at Ruby Radiance.', 'New York', 5, NULL),
                                                                                                                             (6, 'Azure Crest Beachside - Monterey', 'Monterey', '555-0606', 'Discover the beauty of the seaside in our Monterey resort.', 'Monterey', 1, 5.00),
                                                                                                                             (7, 'Azure Crest Bayside - San Diego', 'San Diego', '555-0707', 'Luxury meets scenic views at our San Diego bayfront resort.', 'San Diego', 1, 5.00),
                                                                                                                             (8, 'Azure Crest Sunscape - Key West', 'Key West', '555-0808', 'Soak up the sun in our Key West beachfront paradise.', 'Key West', 1, 5.00),
                                                                                                                             (9, 'Azure Crest Harbor - Seattle', 'Seattle', '555-0909', 'Elegant and serene, the perfect Pacific Northwest getaway.', 'Seattle', 1, 5.00),
                                                                                                                             (10, 'Golden Oak Mountain Lodge - Telluride', 'Telluride', '555-1010', 'A cozy retreat nestled in the heart of the Rocky Mountains.', 'Telluride', 2, 5.00),
                                                                                                                             (11, 'Golden Oak Alpine Resort - Lake Tahoe', 'Lake Tahoe', '555-1111', 'Your gateway to adventure in the stunning Sierra Nevadas.', 'Lake Tahoe', 2, 5.00),
                                                                                                                             (12, 'Golden Oak Summit Chalet - Banff', 'Banff', '555-1212', 'Experience unparalleled mountain luxury in Banff.', 'Banff', 2, 5.00),
                                                                                                                             (13, 'Golden Oak Glacier Hotel - Anchorage', 'Anchorage', '555-1313', 'Explore the beauty of Alaska with our Anchorage hotel.', 'Anchorage', 2, 5.00),
                                                                                                                             (14, 'Silver Pine Ski Haven - Jackson Hole', 'Jackson Hole', '555-1414', 'Ski-in/ski-out access in the heart of Jackson Hole.', 'Jackson Hole', 3, 5.00),
                                                                                                                             (15, 'Silver Pine Forest Retreat - Big Sky', 'Big Sky', '555-1515', 'Big Sky adventures start at our forested retreat.', 'Big Sky', 3, 5.00),
                                                                                                                             (16, 'Silver Pine Winter Lodge - Park City', 'Park City', '555-1616', 'Luxury lodge offering the best of Park City skiing.', 'Park City', 3, 5.00),
                                                                                                                             (17, 'Silver Pine Highland Inn - Asheville', 'Asheville', '555-1717', 'Escape to the Blue Ridge Mountains in Asheville.', 'Asheville', 3, 5.00),
                                                                                                                             (18, 'Emerald Enclave Beach Resort - Tamarindo', 'Tamarindo', '555-1818', 'Eco-luxury resort on the pristine beaches of Tamarindo.', 'Tamarindo', 4, 5.00),
                                                                                                                             (19, 'Emerald Enclave Jungle Lodge - Amazon Rainforest', 'Amazon Rainforest', '555-1919', 'Immerse yourself in the heart of the Amazon.', 'Amazon Rainforest', 4, 5.00),
                                                                                                                             (20, 'Emerald Enclave Island Escape - Fiji', 'Fiji', '555-2020', 'Exclusive island resort in the breathtaking Fiji islands.', 'Fiji', 4, 5.00),
                                                                                                                             (21, 'Emerald Enclave Oasis - Sedona', 'Sedona', '555-2121', 'Find your peace in the spiritual heartland of Sedona.', 'Sedona', 4, 5.00),
                                                                                                                             (22, 'Ruby Radiance Cityscape - Chicago', 'Chicago', '555-2222', 'Experience Chicago from our luxurious downtown hotel.', 'Chicago', 5, 5.00),
                                                                                                                             (23, 'Ruby Radiance Metro - Los Angeles', 'Los Angeles', '555-2323', 'Luxury in the heart of LA’s vibrant cultural scene.', 'Los Angeles', 5, 5.00),
                                                                                                                             (24, 'Ruby Radiance Capital Views - Washington D.C.', 'Washington D.C.', '555-2424', 'Elegance and history combine in our D.C. hotel.', 'Washington D.C.', 5, 5.00),
                                                                                                                             (25, 'Ruby Radiance Harborfront - Boston', 'Boston', '555-2525', 'Discover Boston’s charm from our waterfront hotel.', 'Boston', 5, 5.00),
                                                                                                                             (26, 'Azure Crest Mountain Retreat - Denver', 'Denver', '555-1011', 'A cozy mountain retreat located in the heart of Denver.', 'Denver', 1, 5.00),
                                                                                                                             (27, 'Azure Crest Urban Getaway - Toronto', 'Toronto', '555-1112', 'Discover urban elegance and comfort in the bustling city of Toronto.', 'Toronto', 1, 5.00),
                                                                                                                             (28, 'Azure Crest Lakeside Resort - Lake Tahoe', 'Lake Tahoe', '555-1213', 'Experience serene lakefront luxury at Lake Tahoe.', 'Lake Tahoe', 1, 5.00),
                                                                                                                             (29, 'Azure Crest City Hotel - New Orleans', 'New Orleans', '555-1314', 'Enjoy the vibrant culture and charm of New Orleans with us.', 'New Orleans', 1, 5.00),
                                                                                                                             (30, 'Golden Oak Ranch - Calgary', 'Calgary', '555-2020', 'Rustic luxury meets comfort at our Calgary ranch.', 'Calgary', 2, 5.00),
                                                                                                                             (31, 'Golden Oak Coastal Resort - Vancouver', 'Vancouver', '555-2121', 'A breathtaking coastal retreat in Vancouver.', 'Vancouver', 2, 5.00),
                                                                                                                             (32, 'Golden Oak City Escape - Chicago', 'Chicago', '555-2222', 'Experience the heart of Chicago with our luxurious accommodations.', 'Chicago', 2, 5.00),
                                                                                                                             (33, 'Golden Oak Countryside Inn - Austin', 'Austin', '555-2323', 'Discover the charm of the countryside in Austin.', 'Austin', 2, 5.00),
                                                                                                                             (34, 'Emerald Enclave Beach Resort - Cancun', 'Cancun', '555-4040', 'An exclusive beach resort experience in Cancun.', 'Cancun', 4, 5.00),
                                                                                                                             (35, 'Emerald Enclave City Inn - Seattle', 'Seattle', '555-4141', 'Your eco-friendly stay in the heart of Seattle.', 'Seattle', 4, 5.00),
                                                                                                                             (36, 'Emerald Enclave Mountain View Inn - Aspen', 'Aspen', '555-4242', 'Enjoy breathtaking mountain views in Aspen.', 'Aspen', 4, 5.00),
                                                                                                                             (37, 'Emerald Enclave Lakeside Lodge - Muskoka', 'Muskoka', '555-4343', 'Experience the serene beauty of Muskoka lakeside.', 'Muskoka', 4, 5.00),
                                                                                                                             (40, 'Ruby Radiance Urban Hotel - San Francisco', 'San Francisco', '555-5050', 'Discover luxury in the urban heart of San Francisco.', 'San Francisco', 5, 5.00),
                                                                                                                             (41, 'Ruby Radiance Coastal Inn - Los Angeles', 'Los Angeles', '555-5151', 'Elegant accommodations with stunning coastal views in LA.', 'Los Angeles', 5, 5.00),
                                                                                                                             (42, 'Ruby Radiance Mountain Resort - Whistler', 'Whistler', '555-5252', 'A luxurious mountain resort experience in Whistler.', 'Whistler', 5, 5.00),
                                                                                                                             (43, 'Ruby Radiance Cityscape Hotel - Boston', 'Boston', '555-5353', 'Enjoy the historic charm of Boston with modern luxury.', 'Boston', 5, 5.00),
                                                                                                                             (45, 'Silver Pine Seaside Hotel - Miami', 'Miami', '555-3030', 'Soak up the sun at our seaside hotel in Miami.', 'Miami', 3, 5.00),
                                                                                                                             (46, 'Silver Pine Desert Oasis - Phoenix', 'Phoenix', '555-3131', 'Find your oasis in the desert of Phoenix.', 'Phoenix', 3, 5.00),
                                                                                                                             (47, 'Silver Pine Urban Retreat - New York', 'New York', '555-3232', 'Escape to our urban retreat in the heart of New York City.', 'New York', 3, 5.00),
                                                                                                                             (48, 'Silver Pine Mountain Lodge - Banff', 'Banff', '555-3333', 'Experience mountain luxury at its finest in Banff.', 'Banff', 3, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_chains`
--

CREATE TABLE `hotel_chains` (
                                `chain_id` int NOT NULL,
                                `chain_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel_chains`
--

INSERT INTO `hotel_chains` (`chain_id`, `chain_name`) VALUES
                                                          (1, 'Azure Crest Resorts'),
                                                          (2, 'Golden Oak Hospitality'),
                                                          (3, 'Silver Pine Hotels'),
                                                          (4, 'Emerald Enclave Inns'),
                                                          (5, 'Ruby Radiance Lodges');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
                                 `sr_no` int NOT NULL,
                                 `booking_id` int NOT NULL,
                                 `room_id` int NOT NULL,
                                 `user_id` int NOT NULL,
                                 `rating` int NOT NULL,
                                 `review` varchar(200) NOT NULL,
                                 `seen` int NOT NULL DEFAULT '0',
                                 `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
                                                                                                                       (4, 14, 5, 2, 5, 'Good service. I keep coming back', 1, '2022-08-20 00:22:25'),
                                                                                                                       (5, 13, 4, 2, 3, 'Back I am good', 1, '2022-08-20 00:22:30'),
                                                                                                                       (6, 12, 3, 2, 1, 'Im gonna come back', 1, '2022-08-20 00:22:34'),
                                                                                                                       (8, 14, 5, 2, 5, 'Not too bad I am Kevin so Im gonna come back', 1, '2022-08-20 00:22:25'),
                                                                                                                       (9, 12, 3, 2, 1, 'Made me slightly happy', 1, '2022-08-20 00:22:34'),
                                                                                                                       (10, 12, 3, 2, 1, 'This was something', 1, '2022-08-20 00:22:34'),
                                                                                                                       (11, 16, 5, 2, 3, 'Maybe ill consider coming again', 1, '2022-09-08 01:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
                         `id` int NOT NULL,
                         `name` varchar(150) NOT NULL,
                         `area` int NOT NULL,
                         `price` int NOT NULL,
                         `quantity` int NOT NULL,
                         `adult` int NOT NULL,
                         `children` int NOT NULL,
                         `description` varchar(350) NOT NULL,
                         `status` tinyint NOT NULL DEFAULT '1',
                         `removed` int NOT NULL DEFAULT '0',
                         `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`, `hotel_id`) VALUES
                                                                                                                                         (1, 'simple room', 159, 58, 56, 12, 2, 'asdf asd', 1, 1, 1),
                                                                                                                                         (2, 'simple room 2', 785, 159, 85, 452, 10, 'adfasdfa sd', 1, 1, 1),
                                                                                                                                         (3, 'Economic Room', 250, 300, 10, 5, 3, 'Cozy room', 1, 0, 1),
                                                                                                                                         (4, 'Deluxe Room', 300, 500, 10, 3, 2, 'More luxurious room', 1, 0, 1),
                                                                                                                                         (5, 'Luxury Room', 600, 600, 2, 8, 6, 'Luxurious rooms for all your luxury needs', 1, 0, 1),
                                                                                                                                         (6, 'Luxurious suite', 500, 900, 12, 9, 10, 'Supremely luxurious suite', 1, 0, 1),
                                                                                                                                         (7, 'Standard Room', 200, 250, 5, 2, 1, 'A cozy yet elegant room for two.', 1, 0, 2),
                                                                                                                                         (8, 'Family Suite', 350, 500, 3, 4, 2, 'Spacious suite perfect for family stays.', 1, 0, 2),
                                                                                                                                         (9, 'Presidential Suite', 500, 1200, 2, 2, 0, 'Top-tier luxury and comfort.', 1, 0, 2),
                                                                                                                                         (10, 'Double Queen Room', 300, 400, 4, 4, 2, 'Two queen beds for extra comfort.', 1, 0, 2),
                                                                                                                                         (11, 'Economy Single', 150, 200, 10, 1, 0, 'Compact, affordable option for solo travelers.', 1, 0, 2),
                                                                                                                                         (12, 'Ski Lover Suite', 350, 650, 3, 3, 1, 'Direct access to ski slopes with a cozy fireplace.', 1, 0, 3),
                                                                                                                                         (13, 'Mountain View King', 300, 550, 4, 2, 0, 'King bed with stunning mountain views.', 1, 0, 3),
                                                                                                                                         (14, 'Adventurer Bunk', 250, 300, 6, 4, 4, 'Bunk beds for friends or family.', 1, 0, 3),
                                                                                                                                         (15, 'Romantic Getaway', 280, 600, 2, 2, 0, 'Perfect for couples celebrating any occasion.', 1, 0, 3),
                                                                                                                                         (16, 'Budget Twin', 180, 250, 8, 2, 0, 'Affordable, practical, and comfortable.', 1, 0, 3),
                                                                                                                                         (17, 'Eco Standard Room', 220, 300, 5, 2, 1, 'Sustainable living with comfort.', 1, 0, 4),
                                                                                                                                         (18, 'Beach View Suite', 320, 500, 3, 2, 2, 'Suite with panoramic beach views.', 1, 0, 4),
                                                                                                                                         (19, 'Family Eco Suite', 360, 600, 2, 4, 2, 'Spacious suite for the eco-conscious family.', 1, 0, 4),
                                                                                                                                         (20, 'Eco Deluxe Room', 280, 400, 4, 2, 0, 'Deluxe room with eco-friendly amenities.', 1, 0, 4),
                                                                                                                                         (21, 'Single Eco Room', 200, 250, 8, 1, 0, 'Compact, sustainable room for solo travelers.', 1, 0, 4),
                                                                                                                                         (22, 'Urban Deluxe Room', 240, 350, 5, 2, 0, 'Deluxe accommodations in the heart of the city.', 1, 0, 5),
                                                                                                                                         (23, 'City View Suite', 330, 450, 3, 2, 2, 'Suite with stunning city views.', 1, 0, 5),
                                                                                                                                         (24, 'Executive Suite', 375, 550, 2, 2, 1, 'For the traveling executive or luxury seeker.', 1, 0, 5),
                                                                                                                                         (25, 'Modern Single Room', 210, 300, 6, 1, 0, 'Modern, chic room for the solo traveler.', 1, 0, 5),
                                                                                                                                         (26, 'Penthouse', 460, 700, 1, 2, 0, 'Top-floor luxury with breathtaking views.', 1, 0, 5),
                                                                                                                                         (27, 'Seaside Room', 250, 400, 5, 2, 1, 'Room with direct seaside views.', 1, 0, 6),
                                                                                                                                         (28, 'Beachfront Suite', 300, 500, 3, 2, 2, 'Suite steps away from the beach.', 1, 0, 6),
                                                                                                                                         (29, 'Family Beach Room', 350, 600, 2, 4, 3, 'Perfect for family beach getaways.', 1, 0, 6),
                                                                                                                                         (30, 'Ocean King', 275, 450, 4, 2, 0, 'King-sized bed with ocean views.', 1, 0, 6),
                                                                                                                                         (31, 'Monterey Single', 225, 350, 6, 1, 0, 'Ideal for solo travelers seeking beach proximity.', 1, 0, 6),
                                                                                                                                         (32, 'Bayside Room', 260, 410, 5, 2, 1, 'Enjoy the serene bayside views.', 1, 0, 7),
                                                                                                                                         (33, 'San Diego Suite', 310, 520, 3, 2, 2, 'Suite with luxurious amenities and space.', 1, 0, 7),
                                                                                                                                         (34, 'Deluxe Family Room', 345, 620, 2, 4, 2, 'Spacious room for the whole family.', 1, 0, 7),
                                                                                                                                         (35, 'Deluxe King', 290, 480, 4, 2, 0, 'A king-sized bed with deluxe comforts.', 1, 0, 7),
                                                                                                                                         (36, 'Compact Single', 230, 360, 6, 1, 0, 'Compact and cozy for the solo adventurer.', 1, 0, 7),
                                                                                                                                         (37, 'Sunscape Room', 255, 420, 5, 2, 1, 'Bright, sunlit room with comfortable amenities.', 1, 0, 8),
                                                                                                                                         (38, 'Key West Suite', 315, 530, 3, 2, 2, 'Spacious suite with a taste of Key West.', 1, 0, 8),
                                                                                                                                         (39, 'Island Family Room', 340, 630, 2, 4, 2, 'Family-sized room for island enjoyment.', 1, 0, 8),
                                                                                                                                         (40, 'Beach King', 285, 470, 4, 2, 0, 'King bed with beach-inspired decor.', 1, 0, 8),
                                                                                                                                         (41, 'Key West Single', 220, 350, 6, 1, 0, 'Single room with Key West charm.', 1, 0, 8),
                                                                                                                                         (42, 'Harbor View Room', 250, 410, 5, 2, 1, 'Room with a beautiful view of the harbor.', 1, 0, 9),
                                                                                                                                         (43, 'Seattle Suite', 305, 515, 3, 2, 2, 'A suite with the essence of Seattle.', 1, 0, 9),
                                                                                                                                         (44, 'Urban Family Room', 335, 615, 2, 4, 2, 'Family room designed with urban flair.', 1, 0, 9),
                                                                                                                                         (45, 'Deluxe Harbor King', 280, 465, 4, 2, 0, 'King bed overlooking the harbor.', 1, 0, 9),
                                                                                                                                         (46, 'Compact Urban Single', 220, 355, 6, 1, 0, 'Cozy room for urban explorers.', 1, 0, 9),
                                                                                                                                         (47, 'Mountain Lodge Room', 255, 405, 5, 2, 1, 'A cozy lodge room with mountain views.', 1, 0, 10),
                                                                                                                                         (48, 'Telluride Suite', 310, 505, 3, 2, 2, 'Luxurious suite with Tellurides best.', 1, 0, 10),
                                                                                                                                         (49, 'Alpine Family Room', 330, 605, 2, 4, 2, 'Spacious room for mountain-loving families.', 1, 0, 10),
                                                                                                                                         (50, 'Ski-In Ski-Out King', 275, 455, 4, 2, 0, 'Direct access to the slopes from your bed.', 1, 0, 10),
                                                                                                                                         (51, 'Budget Alpine Single', 215, 350, 6, 1, 0, 'Affordable, cozy lodging for solo skiers.', 1, 0, 10),
                                                                                                                                         (52, 'Lakeside Room', 260, 420, 5, 2, 1, 'Comfort with views of Lake Tahoe.', 1, 0, 11),
                                                                                                                                         (53, 'Alpine Suite', 320, 520, 3, 2, 2, 'The spirit of the Alps in Lake Tahoe.', 1, 0, 11),
                                                                                                                                         (54, 'Tahoe Family Suite', 345, 625, 2, 4, 2, 'Your familys home away from home.', 1, 0, 11),
                                                                                                                                         (55, 'Lakeview King', 290, 470, 4, 2, 0, 'Wake up to the sight of crystal-clear waters.', 1, 0, 11),
                                                                                                                                         (56, 'Single Adventure Room', 225, 365, 6, 1, 0, 'For the solo adventurers.', 1, 0, 11),
                                                                                                                                         (57, 'Summit Room', 265, 430, 5, 2, 1, 'A room at the top of the world.', 1, 0, 12),
                                                                                                                                         (58, 'Banff Suite', 325, 525, 3, 2, 2, 'Suite luxury with a touch of wilderness.', 1, 0, 12),
                                                                                                                                         (59, 'Chalet Family Room', 340, 620, 2, 4, 2, 'A cozy stay for the whole family.', 1, 0, 12),
                                                                                                                                         (60, 'Royal Mountain King', 295, 480, 4, 2, 0, 'Royal comfort with a mountain view.', 1, 0, 12),
                                                                                                                                         (61, 'Explorers Single Room', 230, 370, 6, 1, 1, 'For those who seek adventure alone.', 1, 0, 12),
                                                                                                                                         (62, 'Glacier View Room', 270, 440, 5, 2, 1, 'Breathtaking views of the glaciers.', 1, 0, 13),
                                                                                                                                         (63, 'Anchorage Suite', 330, 530, 3, 2, 2, 'Urban suite with a view of the wild.', 1, 0, 13),
                                                                                                                                         (64, 'Northern Lights Family Room', 350, 630, 2, 4, 2, 'Watch the auroras from your room.', 1, 0, 13),
                                                                                                                                         (65, 'Alaskan King', 300, 490, 4, 2, 0, 'The spirit of Alaska in luxurious comfort.', 1, 0, 13),
                                                                                                                                         (66, 'Adventurer Single', 240, 380, 6, 1, 0, 'For the solo wilderness explorer.', 1, 0, 13),
                                                                                                                                         (67, 'Ski Haven Standard', 280, 460, 5, 2, 1, 'Direct access to the ski slopes.', 1, 0, 14),
                                                                                                                                         (68, 'Jackson Suite', 340, 540, 3, 2, 2, 'Spacious suite with breathtaking mountain views.', 1, 0, 14),
                                                                                                                                         (69, 'Family Ski Lodge', 360, 640, 2, 4, 2, 'A spacious lodge for the entire family.', 1, 0, 14),
                                                                                                                                         (70, 'Slopeview King', 310, 500, 4, 2, 0, 'King bed with views of the snowy slopes.', 1, 0, 14),
                                                                                                                                         (71, 'Single Snow Room', 250, 400, 6, 1, 0, 'For those who chase the snow solo.', 1, 0, 14),
                                                                                                                                         (72, 'Forest View Room', 290, 470, 5, 2, 1, 'Wake up to the serenity of the forest.', 1, 0, 15),
                                                                                                                                         (73, 'Big Sky Suite', 350, 550, 3, 2, 2, 'Enjoy the vast skies from your suite.', 1, 0, 15),
                                                                                                                                         (74, 'Woodland Family Room', 370, 650, 2, 4, 2, 'Comfortable family room nestled in the woods.', 1, 0, 15),
                                                                                                                                         (75, 'Retreat King', 320, 510, 4, 2, 0, 'A king-sized bed amidst the tranquility of nature.', 1, 0, 15),
                                                                                                                                         (76, 'Adventurer Single', 260, 420, 6, 1, 0, 'Perfect for the solo adventurer.', 1, 0, 15),
                                                                                                                                         (77, 'Winter Lodge Room', 300, 480, 5, 2, 1, 'A cozy room for winter enthusiasts.', 1, 0, 16),
                                                                                                                                         (78, 'Park City Suite', 360, 560, 3, 2, 2, 'Luxurious suite with elegant amenities.', 1, 0, 16),
                                                                                                                                         (79, 'Snowy Family Suite', 380, 660, 2, 4, 2, 'A suite for families to enjoy the snow.', 1, 0, 16),
                                                                                                                                         (80, 'Alpine King', 330, 520, 4, 2, 0, 'A king-sized bed with alpine decor.', 1, 0, 16),
                                                                                                                                         (81, 'Cozy Single', 270, 440, 6, 1, 0, 'A warm, inviting room for one.', 1, 0, 16),
                                                                                                                                         (82, 'Highland View Room', 310, 490, 5, 2, 1, 'Views of the highlands in a cozy setting.', 1, 0, 17),
                                                                                                                                         (83, 'Asheville Suite', 370, 570, 3, 2, 2, 'A suite with the charm of Asheville.', 1, 0, 17),
                                                                                                                                         (84, 'Mountain Family Room', 390, 670, 2, 4, 2, 'Spacious room for the mountain-loving family.', 1, 0, 17),
                                                                                                                                         (85, 'Blue Ridge King', 340, 530, 4, 2, 0, 'King-sized comfort with a view.', 1, 0, 17),
                                                                                                                                         (86, 'Explorer Single', 280, 450, 6, 1, 0, 'For explorers seeking a cozy retreat.', 1, 0, 17),
                                                                                                                                         (87, 'Beachfront Room', 320, 500, 5, 2, 1, 'Your private beachfront escape.', 1, 0, 18),
                                                                                                                                         (88, 'Tamarindo Suite', 380, 580, 3, 2, 2, 'Suite luxury with Tamarindo flair.', 1, 0, 18),
                                                                                                                                         (89, 'Surfer Family Suite', 400, 680, 2, 4, 2, 'A suite for surfers and their families.', 1, 0, 18),
                                                                                                                                         (90, 'Ocean King', 350, 540, 4, 2, 0, 'A king bed with ocean sounds.', 1, 0, 18),
                                                                                                                                         (91, 'Single Surfer', 290, 460, 6, 1, 0, 'A room for those who ride the waves alone.', 1, 0, 18),
                                                                                                                                         (92, 'Jungle Room', 330, 510, 5, 2, 1, 'Immerse yourself in the heart of the jungle.', 1, 0, 19),
                                                                                                                                         (93, 'Rainforest Suite', 390, 590, 3, 2, 2, 'Luxury amidst the vibrant rainforest.', 1, 0, 19),
                                                                                                                                         (94, 'Explorer Family Room', 410, 690, 2, 4, 2, 'For families ready to explore the Amazon.', 1, 0, 19),
                                                                                                                                         (95, 'Amazon King', 360, 550, 4, 2, 0, 'King-sized bed with rainforest views.', 1, 0, 19),
                                                                                                                                         (96, 'Adventurer Single', 300, 470, 6, 1, 0, 'Solo adventurers retreat.', 1, 0, 19),
                                                                                                                                         (97, 'Island Room', 340, 520, 5, 2, 1, 'Your island haven with beautiful views.', 1, 0, 20),
                                                                                                                                         (98, 'Fiji Suite', 400, 600, 3, 2, 2, 'A suite that captures the essence of Fiji.', 1, 0, 20),
                                                                                                                                         (99, 'Beachfront Family Suite', 420, 700, 2, 4, 2, 'Steps away from the sand and sea.', 1, 0, 20),
                                                                                                                                         (100, 'Coral King', 370, 560, 4, 2, 0, 'Sleep to the sound of the waves.', 1, 0, 20),
                                                                                                                                         (101, 'Diver Single', 310, 480, 6, 1, 0, 'For those who come for the coral reefs.', 1, 0, 20),
                                                                                                                                         (102, 'Oasis Room', 350, 530, 5, 2, 1, 'Find peace in our oasis rooms.', 1, 0, 21),
                                                                                                                                         (103, 'Sedona Suite', 410, 610, 3, 2, 2, 'Luxury suite with Sedonas red rock views.', 1, 0, 21),
                                                                                                                                         (104, 'Spiritual Family Suite', 430, 710, 2, 4, 2, 'Connect with nature and family.', 1, 0, 21),
                                                                                                                                         (105, 'Vortex King', 380, 570, 4, 2, 0, 'Energize in our vortex-facing rooms.', 1, 0, 21),
                                                                                                                                         (106, 'Hikers Single', 320, 490, 6, 1, 0, 'Rest well after a day of exploration.', 1, 0, 21),
                                                                                                                                         (107, 'Cityscape Room', 360, 540, 5, 2, 1, 'Urban elegance with stunning city views.', 1, 0, 22),
                                                                                                                                         (108, 'Chicago Suite', 420, 620, 3, 2, 2, 'The spirit of Chicago in a luxurious suite.', 1, 0, 22),
                                                                                                                                         (109, 'Urban Family Suite', 440, 720, 2, 4, 2, 'Space and comfort for the whole family.', 1, 0, 22),
                                                                                                                                         (110, 'Windy City King', 390, 580, 4, 2, 0, 'Luxury with a view of the Chicago skyline.', 1, 0, 22),
                                                                                                                                         (111, 'Explorers Single', 330, 500, 6, 1, 0, 'Ideal for the solo urban explorer.', 1, 0, 22),
                                                                                                                                         (112, 'Metro Room', 370, 550, 5, 2, 1, 'A stylish room in the heart of LA.', 1, 0, 23),
                                                                                                                                         (113, 'LA Suite', 430, 630, 3, 2, 2, 'Luxury suite with panoramic views of LA.', 1, 0, 23),
                                                                                                                                         (114, 'Hollywood Family Suite', 450, 730, 2, 4, 2, 'Live like the stars with your family.', 1, 0, 23),
                                                                                                                                         (115, 'Sunset King', 400, 590, 4, 2, 0, 'King-sized bed with sunset views.', 1, 0, 23),
                                                                                                                                         (116, 'Directors Single', 340, 510, 6, 1, 0, 'For those who dream big.', 1, 0, 23),
                                                                                                                                         (117, 'Capital Room', 380, 560, 5, 2, 1, 'Views of the capitals landmarks.', 1, 0, 24),
                                                                                                                                         (118, 'Presidential Suite', 440, 640, 3, 2, 2, 'Regal suite with unmatched luxury.', 1, 0, 24),
                                                                                                                                         (119, 'Diplomat Family Suite', 460, 740, 2, 4, 2, 'Spacious and elegant for diplomatic families.', 1, 0, 24),
                                                                                                                                         (120, 'Monument King', 410, 600, 4, 2, 0, 'King-sized bed with views of the monuments.', 1, 0, 24),
                                                                                                                                         (121, 'Patriot Single', 350, 520, 6, 1, 0, 'Perfect for the solo traveler.', 1, 0, 24),
                                                                                                                                         (122, 'Harbor Room', 390, 570, 5, 2, 1, 'Breathtaking harbor views.', 1, 0, 25),
                                                                                                                                         (123, 'Boston Suite', 450, 650, 3, 2, 2, 'Elegance and sophistication in Boston.', 1, 0, 25),
                                                                                                                                         (124, 'Seaport Family Suite', 470, 750, 2, 4, 2, 'A suite for sea lovers.', 1, 0, 25),
                                                                                                                                         (125, 'Liberty King', 420, 610, 4, 2, 0, 'Experience luxury with liberty.', 1, 0, 25),
                                                                                                                                         (126, 'Colonial Single', 360, 530, 6, 1, 0, 'Solo comfort with a touch of history.', 1, 0, 25),
                                                                                                                                         (127, 'Mountain Retreat Room', 400, 580, 5, 2, 1, 'Escape to the mountains.', 1, 0, 26),
                                                                                                                                         (128, 'Denver Suite', 460, 660, 3, 2, 2, 'Modern luxury meets mountain charm.', 1, 0, 26),
                                                                                                                                         (129, 'Rocky Family Suite', 480, 760, 2, 4, 2, 'Your basecamp for mountain adventures.', 1, 0, 26),
                                                                                                                                         (130, 'Peak King', 430, 620, 4, 2, 0, 'Reign over the Rockies.', 1, 0, 26),
                                                                                                                                         (131, 'Alpine Single', 370, 540, 6, 1, 0, 'For those who trek alone.', 1, 0, 26),
                                                                                                                                         (132, 'Urban Getaway Room', 410, 590, 5, 2, 1, 'The city at your doorstep.', 1, 0, 27),
                                                                                                                                         (133, 'Toronto Suite', 470, 670, 3, 2, 2, 'Sophisticated suite in the heart of Toronto.', 1, 0, 27),
                                                                                                                                         (134, 'Maple Family Suite', 490, 770, 2, 4, 2, 'Spacious suite for the urban family.', 1, 0, 27),
                                                                                                                                         (135, 'Cityscape King', 440, 630, 4, 2, 0, 'King-sized bed with cityscape views.', 1, 0, 27),
                                                                                                                                         (136, 'Explorer Single', 380, 550, 6, 1, 0, 'For urban explorers seeking adventure.', 1, 0, 27),
                                                                                                                                         (137, 'Lakeside Room', 420, 600, 5, 2, 1, 'Serene lakeside serenity.', 1, 0, 28),
                                                                                                                                         (138, 'Tahoe Suite', 480, 680, 3, 2, 2, 'Elegant suite with breathtaking lake views.', 1, 0, 28),
                                                                                                                                         (139, 'Waterside Family Suite', 500, 780, 2, 4, 2, 'Family fun by the lake.', 1, 0, 28),
                                                                                                                                         (140, 'Lakeview King', 450, 640, 4, 2, 0, 'Luxurious king bed with a lake view.', 1, 0, 28),
                                                                                                                                         (141, 'Nautical Single', 390, 560, 6, 1, 0, 'For the solo lake lover.', 1, 0, 28),
                                                                                                                                         (142, 'City Jazz Room', 430, 610, 5, 2, 1, 'A room inspired by the jazz soul of New Orleans.', 1, 0, 29),
                                                                                                                                         (143, 'Orleans Suite', 490, 690, 3, 2, 2, 'Luxury suite with a touch of local heritage.', 1, 0, 29),
                                                                                                                                         (144, 'Cajun Family Suite', 510, 790, 2, 4, 2, 'Spacious suite for families to enjoy the city.', 1, 0, 29),
                                                                                                                                         (145, 'Mardi Gras King', 460, 650, 4, 2, 0, 'Celebrate the spirit of Mardi Gras in comfort.', 1, 0, 29),
                                                                                                                                         (146, 'French Quarter Single', 400, 570, 6, 1, 0, 'Solo travelers gateway to the French Quarter.', 1, 0, 29),
                                                                                                                                         (147, 'Ranch View Room', 440, 620, 5, 2, 1, 'Views of the sprawling ranch and landscapes.', 1, 0, 30),
                                                                                                                                         (148, 'Calgary Suite', 500, 700, 3, 2, 2, 'A suite that embodies the spirit of Calgary.', 1, 0, 30),
                                                                                                                                         (149, 'Cowboy Family Suite', 520, 800, 2, 4, 2, 'A family suite with a cowboy twist.', 1, 0, 30),
                                                                                                                                         (150, 'Prairie King', 470, 660, 4, 2, 0, 'King-sized luxury with prairie views.', 1, 0, 30),
                                                                                                                                         (151, 'Stampede Single', 410, 580, 6, 1, 0, 'For those coming to experience the Stampede.', 1, 0, 30),
                                                                                                                                         (152, 'Coastal Room', 450, 630, 5, 2, 1, 'A room with stunning coastal views.', 1, 0, 31),
                                                                                                                                         (153, 'Vancouver Suite', 510, 710, 3, 2, 2, 'Modern luxury with panoramic views of Vancouver.', 1, 0, 31),
                                                                                                                                         (154, 'Harbor Family Suite', 530, 810, 2, 4, 2, 'Family suite overlooking the harbor.', 1, 0, 31),
                                                                                                                                         (155, 'Seawall King', 480, 670, 4, 2, 0, 'The comfort of the king with views of the seawall.', 1, 0, 31),
                                                                                                                                         (156, 'Explorer Single', 420, 590, 6, 1, 0, 'For solo travelers exploring the coast.', 1, 0, 31),
                                                                                                                                         (157, 'City Escape Room', 460, 640, 5, 2, 1, 'Your escape in the heart of the city.', 1, 0, 32),
                                                                                                                                         (158, 'Chicago Skyline Suite', 520, 720, 3, 2, 2, 'Suite with breathtaking skyline views.', 1, 0, 32),
                                                                                                                                         (159, 'Windy City Family Suite', 540, 820, 2, 4, 2, 'The perfect base for your family city adventure.', 1, 0, 32),
                                                                                                                                         (160, 'Magnificent Mile King', 490, 680, 4, 2, 0, 'King-sized bed with magnificent mile views.', 1, 0, 32),
                                                                                                                                         (161, 'Urban Single', 430, 600, 6, 1, 0, 'Ideal for those exploring Chicago solo.', 1, 0, 32),
                                                                                                                                         (162, 'Countryside Room', 470, 650, 5, 2, 1, 'A peaceful stay in the countryside.', 1, 0, 33),
                                                                                                                                         (163, 'Austin Suite', 530, 730, 3, 2, 2, 'Experience the best of Austin in luxury.', 1, 0, 33),
                                                                                                                                         (164, 'Hill Country Family Suite', 550, 830, 2, 4, 2, 'Spacious suite for enjoying the hill country.', 1, 0, 33),
                                                                                                                                         (165, 'Live Music King', 500, 690, 4, 2, 0, 'Enjoy Austins live music scene in style.', 1, 0, 33),
                                                                                                                                         (166, 'Lone Star Single', 440, 610, 6, 1, 0, 'For the solo travelers visiting Austin.', 1, 0, 33),
                                                                                                                                         (167, 'Seaside Retreat', 475, 660, 5, 2, 1, 'A retreat with direct seaside views.', 1, 0, 45),
                                                                                                                                         (168, 'Miami Vista Suite', 540, 740, 3, 2, 2, 'Suite with panoramic vistas of Miami Beach.', 1, 0, 45),
                                                                                                                                         (169, 'Beachfront Family Room', 560, 840, 2, 4, 2, 'A spacious room for beach-loving families.', 1, 0, 45),
                                                                                                                                         (170, 'Oceanfront King', 510, 700, 4, 2, 0, 'King-sized bed facing the ocean.', 1, 0, 45),
                                                                                                                                         (171, 'Surfers Paradise', 450, 620, 6, 1, 0, 'For those who come for the waves.', 1, 0, 45),
                                                                                                                                         (172, 'Desert View', 480, 670, 5, 2, 1, 'Enjoy the unique desert landscape.', 1, 0, 46),
                                                                                                                                         (173, 'Phoenix Suite', 550, 750, 3, 2, 2, 'A luxurious suite with modern amenities.', 1, 0, 46),
                                                                                                                                         (174, 'Cactus Family Suite', 570, 850, 2, 4, 2, 'Spacious suite with a touch of desert life.', 1, 0, 46),
                                                                                                                                         (175, 'Sunset King', 520, 710, 4, 2, 0, 'Witness breathtaking sunsets from your room.', 1, 0, 46),
                                                                                                                                         (176, 'Explorer Single', 460, 630, 6, 1, 0, 'Ideal for adventurers exploring the desert.', 1, 0, 46),
                                                                                                                                         (177, 'Urban Oasis', 485, 680, 5, 2, 1, 'A serene space amidst the urban hustle.', 1, 0, 47),
                                                                                                                                         (178, 'Broadway Suite', 560, 760, 3, 2, 2, 'Experience the excitement of Broadway.', 1, 0, 47),
                                                                                                                                         (179, 'Central Park Family Suite', 580, 860, 2, 4, 2, 'Family suite with views of Central Park.', 1, 0, 47),
                                                                                                                                         (180, 'Empire State King', 530, 720, 4, 2, 0, 'King bed with iconic city views.', 1, 0, 47),
                                                                                                                                         (181, 'Solo City Explorer', 470, 640, 6, 1, 0, 'Perfect for the solo city wanderer.', 1, 0, 47),
                                                                                                                                         (182, 'Mountain Haven', 490, 690, 5, 2, 1, 'Retreat with stunning mountain views.', 1, 0, 48),
                                                                                                                                         (183, 'Banff Springs Suite', 570, 770, 3, 2, 2, 'Springs-inspired suite with luxurious amenities.', 1, 0, 48),
                                                                                                                                         (184, 'Alpine Family Suite', 590, 870, 2, 4, 2, 'Comfort for the whole family with alpine charm.', 1, 0, 48),
                                                                                                                                         (185, 'Summit King', 540, 730, 4, 2, 0, 'A royal experience with summit views.', 1, 0, 48),
                                                                                                                                         (186, 'Lodge Single', 480, 650, 6, 1, 0, 'Cozy accommodation for the solo adventurer.', 1, 0, 48),
                                                                                                                                         (187, 'Tamarindo Beach View', 495, 705, 5, 2, 1, 'Spectacular beach views right from your balcony.', 1, 0, 18),
                                                                                                                                         (188, 'Surf Suite', 575, 775, 3, 2, 2, 'A suite designed for surf enthusiasts with easy beach access.', 1, 0, 18),
                                                                                                                                         (189, 'Tropical Family Suite', 610, 910, 2, 4, 2, 'A spacious suite for families with a tropical touch.', 1, 0, 18),
                                                                                                                                         (190, 'Oceanfront King', 550, 750, 4, 2, 0, 'King-sized bedding with direct oceanfront views.', 1, 0, 18),
                                                                                                                                         (191, 'Beach Bungalow Single', 500, 680, 6, 1, 0, 'A bungalow-style room for the beach-loving solo traveler.', 1, 0, 18),
                                                                                                                                         (192, 'Jungle Canopy Room', 505, 715, 5, 2, 1, 'Immersive experience in the canopy of the jungle.', 1, 0, 19),
                                                                                                                                         (193, 'Amazon River Suite', 585, 785, 3, 2, 2, 'Suite with views of the mighty Amazon River.', 1, 0, 19),
                                                                                                                                         (194, 'Rainforest Family Retreat', 620, 920, 2, 4, 2, 'Your familys gateway to the rainforest adventure.', 1, 0, 19),
                                                                                                                                         (195, 'Explorer King', 560, 760, 4, 2, 0, 'Explore the heart of the Amazon in comfort.', 1, 0, 19),
                                                                                                                                         (196, 'Adventurers Loft', 510, 690, 6, 1, 0, 'Elevated loft room for the solo jungle explorer.', 1, 0, 19),
                                                                                                                                         (197, 'Islander Retreat', 520, 730, 5, 2, 1, 'Island life at its finest, with all the comforts.', 1, 0, 20),
                                                                                                                                         (198, 'Fiji Lagoon Suite', 595, 795, 3, 2, 2, 'Luxury suite overlooking the tranquil lagoon.', 1, 0, 20),
                                                                                                                                         (199, 'Pacific Family Bungalow', 630, 930, 2, 4, 2, 'A bungalow for family fun in the Pacific sun.', 1, 0, 20),
                                                                                                                                         (200, 'Reef View King', 570, 770, 4, 2, 0, 'Stunning reef views from your king-sized bed.', 1, 0, 20),
                                                                                                                                         (201, 'Divers Den', 520, 700, 6, 1, 0, 'Designed for divers and sea enthusiasts.', 1, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
                                   `sr_no` int NOT NULL,
                                   `room_id` int NOT NULL,
                                   `facilities_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
                                                                        (50, 4, 14),
                                                                        (51, 4, 18),
                                                                        (52, 4, 19),
                                                                        (53, 5, 13),
                                                                        (54, 5, 14),
                                                                        (55, 5, 18),
                                                                        (61, 6, 13),
                                                                        (62, 6, 14),
                                                                        (63, 6, 15),
                                                                        (64, 6, 17),
                                                                        (65, 6, 18),
                                                                        (66, 6, 19),
                                                                        (67, 6, 20),
                                                                        (68, 6, 21),
                                                                        (69, 6, 22),
                                                                        (70, 3, 14),
                                                                        (71, 3, 15),
                                                                        (72, 3, 18),
                                                                        (73, 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
                                 `sr_no` int NOT NULL,
                                 `room_id` int NOT NULL,
                                 `features_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
                                                                    (34, 4, 13),
                                                                    (35, 4, 14),
                                                                    (36, 4, 15),
                                                                    (37, 5, 13),
                                                                    (38, 5, 14),
                                                                    (39, 5, 15),
                                                                    (43, 6, 13),
                                                                    (44, 6, 14),
                                                                    (45, 6, 15),
                                                                    (46, 3, 13),
                                                                    (47, 3, 14),
                                                                    (48, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
                               `sr_no` int NOT NULL,
                               `room_id` int NOT NULL,
                               `image` varchar(150) NOT NULL,
                               `thumb` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
                                                                     (15, 3, 'IMG_39782.png', 0),
                                                                     (16, 3, 'IMG_65019.png', 1),
                                                                     (17, 4, 'IMG_44867.png', 0),
                                                                     (18, 4, 'IMG_78809.png', 1),
                                                                     (19, 4, 'IMG_11892.png', 0),
                                                                     (21, 5, 'IMG_17474.png', 0),
                                                                     (22, 5, 'IMG_42663.png', 1),
                                                                     (23, 5, 'IMG_70583.png', 0),
                                                                     (24, 6, 'IMG_67761.png', 0),
                                                                     (25, 6, 'IMG_69824.png', 0),
                                                                     (26, 6, 'IMG_75375.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
                            `sr_no` int NOT NULL,
                            `site_title` varchar(50) NOT NULL,
                            `site_about` varchar(250) NOT NULL,
                            `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
    (1, 'eHotels', 'Making your Travel Dreams a Reality', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
                                `sr_no` int NOT NULL,
                                `name` varchar(50) NOT NULL,
                                `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
                                                            (989, 'Lionel  ', 'Messi.jpg'),
                                                            (999, 'Neymar', 'Neymar.jpg'),
                                                            (1000, 'Mbappé', 'Mbappe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
                             `id` int NOT NULL,
                             `name` varchar(100) NOT NULL,
                             `email` varchar(150) NOT NULL,
                             `address` varchar(120) NOT NULL,
                             `phonenum` varchar(100) NOT NULL,
                             `SIN` int NOT NULL,
                             `dob` date NOT NULL,
                             `profile` varchar(100) NOT NULL,
                             `password` varchar(200) NOT NULL,
                             `is_verified` int NOT NULL DEFAULT '0',
                             `token` varchar(200) DEFAULT NULL,
                             `t_expire` date DEFAULT NULL,
                             `status` int NOT NULL DEFAULT '1',
                             `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `SIN`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
                                                                                                                                                                           (2, 'kevin', 'kevin@gmail.com', 'ad', '123', 123324, '2022-06-12', 'Kevin.jpg', '1234', 1, NULL, NULL, 1, '2024-03-12 16:05:59'),
                                                                                                                                                                           (5, 'Jonathan Domingue', 'jdomi068@uottawa.ca', '411 North River Vanier', '6132525459', 1, '2020-12-12', 'IMG_70422.jpeg', '$2y$10$p5nUTtOHotgaglmd.kUzfe4lYimvgIJrCZEQx31WiHLcoXdaybwaW', 1, NULL, NULL, 1, '2024-03-27 20:05:37'),
                                                                                                                                                                           (6, 'Mark Cuban', 'mcuban@gmail.com', 'Los Angeles, California', '6172727272', 3, '1985-12-12', 'IMG_62238.jpeg', '$2y$10$NcWg8jzthNc8scNKyc8tSeAlyHWVP4MOmrbS3rMyi5X9Y3oCsULJy', 1, NULL, NULL, 1, '2024-03-31 03:37:31'),
                                                                                                                                                                           (7, 'Barry Allen', 'ballen@gmail.com', 'Central City', '6765654345', 4, '1980-10-10', 'IMG_95767.jpeg', '$2y$10$WyiwuDOzgly7cTxrX4hkuOFoLSLQKCLt9tyaaj1cV2rlkQ759.kLm', 1, NULL, NULL, 1, '2024-03-31 04:18:30'),
                                                                                                                                                                           (8, 'Walk-in Guest', 'ehotel@gmail.com', 'ehotel Branch', '0000000000', 123456788, '2012-12-12', 'IMG_54506.jpeg', '$2y$10$uCLE3QXvE.l/GxgB5esXG.SqTiCJOcGsLnH3QAHD7ovtTQ2jHBSiS', 1, NULL, NULL, 1, '2024-03-31 15:37:46'),
                                                                                                                                                                           (9, 'Mor', 'mor@gmail.com', 'Ottawa', '6123434343', 123, '2012-12-12', 'IMG_78919.jpeg', '$2y$10$E3gq8cL/Hi9lfsvYAA1.fOHkbdBeTRDkMwBeK56eFbE3kH97ykY3.', 1, NULL, NULL, 1, '2024-04-02 14:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
                                `sr_no` int NOT NULL,
                                `name` varchar(50) NOT NULL,
                                `email` varchar(150) NOT NULL,
                                `subject` varchar(200) NOT NULL,
                                `message` varchar(500) NOT NULL,
                                `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                `seen` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Views Implemented:


-- Views
-- View 1:
CREATE VIEW VueChambresDisponiblesParZone AS
SELECT h.city, COUNT(*) AS NombreDeChambresDisponibles
FROM rooms r
         JOIN hotels h ON r.hotel_id = h.hotel_id
WHERE r.status = 1
GROUP BY h.city;


-- View 2:
CREATE VIEW VueCapaciteHotel AS
SELECT hotel_id, SUM(adult + children) AS CapaciteTotale
FROM rooms
GROUP BY hotel_id;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
    ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
    ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
    ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
    ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
    ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head_offices`
--
ALTER TABLE `head_offices`
    ADD PRIMARY KEY (`office_id`),
  ADD KEY `chain_id` (`chain_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
    ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `chain_id` (`chain_id`);

--
-- Indexes for table `hotel_chains`
--
ALTER TABLE `hotel_chains`
    ADD PRIMARY KEY (`chain_id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
    ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
    ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
    ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
    ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
    ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
    ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
    ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
    MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `head_offices`
--
ALTER TABLE `head_offices`
    MODIFY `office_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
    MODIFY `hotel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `hotel_chains`
--
ALTER TABLE `hotel_chains`
    MODIFY `chain_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=963;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
    MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
    ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
    ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `head_offices`
--
ALTER TABLE `head_offices`
    ADD CONSTRAINT `head_offices_ibfk_1` FOREIGN KEY (`chain_id`) REFERENCES `hotel_chains` (`chain_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
    ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`chain_id`) REFERENCES `hotel_chains` (`chain_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
    ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
    ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
    ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`),
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
    ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
