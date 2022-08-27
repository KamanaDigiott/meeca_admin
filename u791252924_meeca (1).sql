-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 07:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u791252924_meeca`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Role` varchar(200) NOT NULL,
  `DOB` date DEFAULT NULL,
  `MaritalStatus` varchar(255) NOT NULL,
  `StaffImage` varchar(255) NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `AdminStatus` int(11) NOT NULL DEFAULT 1 COMMENT '1-active, 0-deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Phone`, `Email`, `Password`, `Gender`, `Role`, `DOB`, `MaritalStatus`, `StaffImage`, `CreatedOn`, `LastEditedon`, `DeletedOn`, `AdminStatus`) VALUES
(1, 'Admin', 98989898, 'admin@abc.com', '0e7517141fb53f21ee439b355b5a1d0a', '', 'Administrator', NULL, '', '', '2022-08-02 19:13:46', '2022-08-02 21:13:08', NULL, 1),
(2, 'Test User', 9876543210, 'kamana@digiott.com', '', '', 'Partners', NULL, '', '', '2022-08-23 09:45:02', '2022-08-23 15:38:50', NULL, 1),
(3, 'test', 908768978897, 'test213@gmail.com', '', '', 'Marketing', NULL, '', '', '2022-08-23 10:16:32', '0000-00-00 00:00:00', '2022-08-23 10:22:28', 1),
(4, 'ADMIN', 9876543210, 'admin@gmail.com', '', '', 'Administration', NULL, '', '', '2022-08-24 06:22:36', '0000-00-00 00:00:00', NULL, 1),
(5, 'fxdfdfsdf', 9876543210, 'dfddfdna@digiott.com', '', 'Male', 'Marketing', '2022-08-01', 'Single', '', '2022-08-24 06:28:41', '2022-08-24 12:03:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `batteryservicebooking`
--

CREATE TABLE `batteryservicebooking` (
  `BookingID` bigint(20) NOT NULL,
  `AppoinmentNo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL,
  `BookingLocation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `VachileID` int(11) NOT NULL,
  `BatterytypeID` int(11) NOT NULL,
  `ServiceTypeID` int(11) NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  `UsedDeals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `PaymentStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrderPickupedBy` int(11) NOT NULL COMMENT 'Id of the Service person',
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batteryservicebooking`
--

INSERT INTO `batteryservicebooking` (`BookingID`, `AppoinmentNo`, `UserID`, `BookingLocation`, `VachileID`, `BatterytypeID`, `ServiceTypeID`, `BookingDate`, `BookingTime`, `UsedDeals`, `TotalAmount`, `PaymentStatus`, `BookingStatus`, `OrderPickupedBy`, `CreatedOn`, `LastEditedon`, `DeletedOn`) VALUES
(1, '22ZJK2T3', 6, 'Test Battery Booking Edit', 22, 12, 12, '2022-08-12', '17:53:52', 'Test123 Edit', 202, 'paid Edit', 'inprogress', 0, '2022-08-12 21:18:54', '2022-08-12 21:19:37', NULL),
(2, '228NOEZ8', 6, 'Test Tyre Booking 1', 1, 1, 1, '2022-08-11', '17:53:51', 'Test123', 201, 'paid', 'inprogress', 0, '2022-08-13 10:45:39', '0000-00-00 00:00:00', NULL),
(3, '222V4EFS', 6, 'demo', 1, 2, 3, '2022-08-25', '15:52:00', 'XDCS', 67, 'cash', 'inprogress', 0, '2022-08-17 08:22:56', '2022-08-17 09:22:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batteryservices`
--

CREATE TABLE `batteryservices` (
  `BatteryServiceID` bigint(20) NOT NULL,
  `BatteryServiceTitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BatteryServicePrice` int(11) NOT NULL,
  `BatteryServiceDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `BatteryServiceStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batteryservices`
--

INSERT INTO `batteryservices` (`BatteryServiceID`, `BatteryServiceTitle`, `BatteryServicePrice`, `BatteryServiceDescription`, `CreatedOn`, `LastEditedon`, `DeletedOn`, `BatteryServiceStatus`) VALUES
(16, 'test', 6666666, 'demo', '2022-08-24 11:33:44', '2022-08-24 17:06:29', NULL, 1),
(17, 'asda 2', 6666667, 'asdas2', '2022-08-24 11:33:44', '2022-08-24 17:06:29', NULL, 1),
(18, 'asda', 6666668, 'asdas', '2022-08-24 11:33:44', '2022-08-24 17:06:30', NULL, 1),
(19, 'aassaa', 888888, 'ccccccc', '2022-08-24 11:33:44', '2022-08-24 17:06:30', NULL, 0),
(20, 'aaaaaaaaaaa', 77777777, 'bbbbbbb', '2022-08-24 11:35:37', '2022-08-24 17:06:30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `batterytype`
--

CREATE TABLE `batterytype` (
  `BatterytypeID` int(11) NOT NULL,
  `BatteryType` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CarModel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BatteryWeight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedOn` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `BatterytypeStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batterytype`
--

INSERT INTO `batterytype` (`BatterytypeID`, `BatteryType`, `CarModel`, `BatteryWeight`, `CreatedOn`, `LastEditedOn`, `DeletedOn`, `BatterytypeStatus`) VALUES
(1, 'test 1', 'A4', '100005', '2022-08-12 18:31:07', '2022-08-24 16:30:49', NULL, 1),
(2, 'Test 2', 'A4', '100004', '2022-08-12 18:31:07', '2022-08-24 16:30:49', NULL, 1),
(3, 'demo type5', 'demo model', '56', '2022-08-17 08:19:06', '2022-08-17 08:19:16', '2022-08-17 08:19:33', 1),
(4, 'tedtt gr', 'A4', '100003', '2022-08-24 10:57:43', '2022-08-24 16:30:49', NULL, 1),
(5, 'test gfdgd', 'A4', '100002', '2022-08-24 10:57:43', '2022-08-24 16:30:49', NULL, 1),
(6, 'TEST 4', 'A4', '100006', '2022-08-24 11:00:49', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bugreports`
--

CREATE TABLE `bugreports` (
  `BugID` bigint(20) NOT NULL,
  `UserID` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BugDetails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BugStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AdminComments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline_time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedOn` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bugreports`
--

INSERT INTO `bugreports` (`BugID`, `UserID`, `BugDetails`, `BugStatus`, `AdminComments`, `deadline_date`, `deadline_time`, `CreatedOn`, `LastEditedOn`, `DeletedOn`) VALUES
(1, '6', 'Test Bug report 1', 'inprogress', '', '', '', '2022-08-12 21:15:00', '0000-00-00 00:00:00', NULL),
(2, 'A1', 'Service Person 1', 'inprogress', 'Best Person', '', '', '2022-08-17 12:12:33', '0000-00-00 00:00:00', '2022-08-17 12:12:40'),
(3, 'A1', 'demo not', 'inprogress', 'comments', '', '', '2022-08-17 13:00:18', '0000-00-00 00:00:00', '2022-08-17 13:34:20'),
(4, 'A1', 'report bug demo', 'inprogress', 'demo bug', '', '', '2022-08-17 13:30:06', '2022-08-17 13:32:59', '2022-08-17 13:34:19'),
(5, 'A1', 'demo not', 'inprogress', 'ty', '', '', '2022-08-19 10:40:20', '0000-00-00 00:00:00', NULL),
(6, 'A1', 'demo not', 'inprogress', 'ty', '', '', '2022-08-19 10:42:12', '0000-00-00 00:00:00', NULL),
(7, 'A1', 'demo not', 'inprogress', 'fd', '', '', '2022-08-19 10:52:12', '0000-00-00 00:00:00', NULL),
(8, 'A1', 'demo not', 'inprogress', 'hg', '2022-08-27', '18:23', '2022-08-19 10:53:16', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carservicebooking`
--

CREATE TABLE `carservicebooking` (
  `BookingID` bigint(20) NOT NULL,
  `AppoinmentID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `Location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `VachileID` int(11) NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  `ServiceType` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `PaymentStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingPickupedBy` bigint(20) NOT NULL COMMENT 'Car service partner ID	',
  `MileageReadingonServie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NextServiceMileage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastOilChanged` date NOT NULL,
  `NextOilChange` date NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carservicebooking`
--

INSERT INTO `carservicebooking` (`BookingID`, `AppoinmentID`, `UserID`, `Location`, `VachileID`, `BookingDate`, `BookingTime`, `ServiceType`, `TotalAmount`, `PaymentStatus`, `BookingStatus`, `BookingPickupedBy`, `MileageReadingonServie`, `NextServiceMileage`, `LastOilChanged`, `NextOilChange`, `CreatedOn`, `LastEditedon`, `DeletedOn`) VALUES
(1, 'XCRE345', 1, 'demo location', 5, '2022-08-26', '07:26:25', 'demo type', 5654, 'cash', 'inprogress', 2, 'demo', 'demo', '2022-08-24', '2022-08-31', '2022-08-26 05:58:56', '2022-08-26 07:56:25', NULL),
(2, 'XCRE345', 1, 'demo location 2', 5, '2022-08-26', '07:26:25', 'demo type 2', 5654, 'cash', 'inprogress', 2, 'demo 2', 'demo 2', '2022-08-24', '2022-08-31', '2022-08-26 05:59:26', '2022-08-26 12:04:43', '2022-08-26 06:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `carservicetype`
--

CREATE TABLE `carservicetype` (
  `CarServiceTypeID` int(11) NOT NULL,
  `CarServiceType` varchar(255) NOT NULL,
  `CarServiceDescription` text NOT NULL,
  `CarServiceTypePrice` varchar(200) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastEditedOn` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `CarServiceTypeStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carwashbookings`
--

CREATE TABLE `carwashbookings` (
  `BookingID` bigint(20) NOT NULL,
  `AppoinmentID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL,
  `BookingLocation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `VachileID` int(11) NOT NULL,
  `ServiceTypeID` int(11) NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  `ParkingType` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AdditionalNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ManualAddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingPlaceType` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'home, work',
  `UsedDealCode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `PaymentStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrderPickupedBy` int(11) NOT NULL COMMENT 'Id if the service person ',
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carwashbookings`
--

INSERT INTO `carwashbookings` (`BookingID`, `AppoinmentID`, `UserID`, `BookingLocation`, `VachileID`, `ServiceTypeID`, `BookingDate`, `BookingTime`, `ParkingType`, `AdditionalNotes`, `ManualAddress`, `BookingPlaceType`, `UsedDealCode`, `TotalAmount`, `PaymentStatus`, `BookingStatus`, `OrderPickupedBy`, `CreatedOn`, `LastEditedon`, `DeletedOn`) VALUES
(1, '22WEM1XT', 6, 'Test Edit 123', 2, 1, '2022-08-11', '17:53:51', 'Test Par Type Edit', 'Addnotes Edit', 'Test Manuel address Edit', 'home Edit', 'Test123 Edit', 201, 'paid Edit', 'processing', 0, '2022-08-12 12:59:21', '2022-08-16 15:18:42', NULL),
(2, '22F4KPNG', 6, 'demo', 1, 3, '2022-08-26', '17:47:00', 'test', 'test', 'test', 'test', 'test', 45, 'paystatus', 'inprogress', 0, '2022-08-17 08:18:13', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carwashtypes`
--

CREATE TABLE `carwashtypes` (
  `CarwashID` int(11) NOT NULL,
  `CarwashTitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CarwashPrice` int(11) NOT NULL,
  `CarwashDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LastEditedon` datetime NOT NULL DEFAULT current_timestamp(),
  `CarwashStatus` int(11) NOT NULL DEFAULT 1,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carwashtypes`
--

INSERT INTO `carwashtypes` (`CarwashID`, `CarwashTitle`, `CarwashPrice`, `CarwashDescription`, `CreatedOn`, `LastEditedon`, `CarwashStatus`, `DeletedOn`) VALUES
(1, 'Test Type 1', 100, 'Test', '2022-08-24 11:56:57', '2022-08-24 17:26:57', 1, NULL),
(2, 'Test Type 2', 150, 'vvvvvv', '2022-08-24 11:56:57', '2022-08-24 17:26:57', 1, NULL),
(3, 'car type test', 33, 'democv', '2022-08-24 11:57:27', '2022-08-24 17:26:57', 1, NULL),
(4, 'Carwash Demo type', 2340, 'Demo discription', '2022-08-17 16:15:04', '2022-08-17 16:14:47', 0, '2022-08-17 16:15:04'),
(5, 'demo car wash type', 877887, 'demo', '2022-08-24 11:57:24', '2022-08-24 17:26:57', 1, NULL),
(6, 'TEST CARWASH', 0, 'DEMO', '2022-08-24 11:57:21', '2022-08-24 17:26:57', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_service_type`
--

CREATE TABLE `car_service_type` (
  `CarServiceTypeID` int(11) NOT NULL,
  `CarServiceType` varchar(255) NOT NULL,
  `CarServiceDescription` text NOT NULL,
  `CarServiceTypePrice` varchar(200) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastEditedOn` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `CarServiceTypeStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `DealsID` bigint(20) NOT NULL,
  `DealsTitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DealsDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DealsActualPrice` int(11) NOT NULL,
  `DealsOfferPrice` int(11) NOT NULL,
  `DealsType` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DealsImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DealsStatus` int(11) NOT NULL DEFAULT 1,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`DealsID`, `DealsTitle`, `DealsDescription`, `DealsActualPrice`, `DealsOfferPrice`, `DealsType`, `DealsImage`, `CreatedOn`, `LastEditedon`, `DealsStatus`, `DeletedOn`) VALUES
(1, 'Test Deal', 'Test Deal Description', 110, 80, 'carwash', '', '2022-08-12 06:36:52', '2022-08-12 06:36:09', 1, NULL),
(2, 'Test Deal 2', 'Test Description 2', 150, 100, 'bundle', '', '2022-08-12 06:36:52', '2022-08-12 06:36:09', 1, NULL),
(3, 'dealtest', 'deal demo', 98, 90, 'demo1', '', '2022-08-17 08:15:04', '0000-00-00 00:00:00', 1, '2022-08-17 08:15:19'),
(4, 'Demo Deals', 'demo description', 658, 634, 'test', '', '2022-08-17 16:39:31', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `garagebooking`
--

CREATE TABLE `garagebooking` (
  `BookingID` bigint(20) NOT NULL,
  `AppoinmentID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `InsuranceDetails` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Manual entry or Image',
  `Carregistrationcard` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'File',
  `EmiratesID` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'File',
  `BookingTiming` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsuranceClaim` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yes or No',
  `PoliceReport` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'if InsuranceClaim yes means (File)',
  `customerConfirmation` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Yes or no to pickup the vechile',
  `VechileStatus` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'in garage or delivered',
  `gerageBookingStatus` int(11) NOT NULL DEFAULT 1 COMMENT 'active = 1\r\ninactive= 0\r\n',
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garagebooking`
--

INSERT INTO `garagebooking` (`BookingID`, `AppoinmentID`, `UserID`, `InsuranceDetails`, `Carregistrationcard`, `EmiratesID`, `BookingTiming`, `InsuranceClaim`, `PoliceReport`, `customerConfirmation`, `VechileStatus`, `gerageBookingStatus`, `CreatedOn`, `LastEditedon`, `DeletedOn`) VALUES
(1, 'AERCS466', 1, 'demo', 'demo', 'demo', '25/08/2022', 'demo', 'demo', 'demo', 'ingarage', 1, '2022-08-25 13:25:26', '2022-08-25 15:23:14', NULL),
(2, 'AERCS466', 1, 'demo2', 'demo2', 'demo2', '25/08/2022', 'demo2', 'demo2', 'demo2', 'ingarage', 0, '2022-08-25 13:25:53', '2022-08-25 20:40:03', '2022-08-25 15:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `NotificationID` bigint(20) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `booking_id` varchar(191) NOT NULL,
  `NotificationTitle` varchar(255) NOT NULL,
  `NotificationDescription` text NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `NotificationStatus` int(11) NOT NULL DEFAULT 1,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`NotificationID`, `user_id`, `booking_id`, `NotificationTitle`, `NotificationDescription`, `CreatedOn`, `LastEditedon`, `NotificationStatus`, `DeletedOn`) VALUES
(1, 'all', '', 'demo1', 'jj', '2022-08-17 08:04:31', '0000-00-00 00:00:00', 1, NULL),
(2, '1', '12', 'demo1', 'jj', '2022-08-16 14:11:53', '0000-00-00 00:00:00', 1, NULL),
(3, '1', '1', 'Booking Notifications', 'Your Order is $status', '2022-08-16 15:13:33', '0000-00-00 00:00:00', 0, '2022-08-16 14:11:19'),
(4, '1', '1', 'Booking Notifications', 'Your Order is $status', '2022-08-16 15:13:37', '0000-00-00 00:00:00', 0, '2022-08-16 14:11:09'),
(5, '1', '4', 'Booking Notifications', 'Your Order is $status', '2022-08-16 15:13:41', '0000-00-00 00:00:00', 0, '2022-08-16 14:11:06'),
(6, '1', '2', 'Booking Notifications', 'Your Order is $status', '2022-08-16 15:13:44', '0000-00-00 00:00:00', 1, '2022-08-16 14:10:59'),
(7, '2', '2', 'Booking Notifications', 'Your Order is $status', '2022-08-16 15:13:48', '0000-00-00 00:00:00', 1, '2022-08-16 14:08:31'),
(8, '6', '22WEM1XT', 'Booking Notifications', 'Your Order is inprogress', '2022-08-17 08:04:29', '0000-00-00 00:00:00', 1, NULL),
(9, '6', '22WEM1XT', 'Booking Notifications', 'Your Order is inprogress', '2022-08-17 08:04:28', '0000-00-00 00:00:00', 0, NULL),
(10, '6', '22WEM1XT', 'Booking Notifications', 'Your Order is completed', '2022-08-17 08:04:26', '0000-00-00 00:00:00', 1, NULL),
(11, '6', '22WEM1XT', 'Booking Notifications', 'Your Order is processing', '2022-08-17 16:18:54', '0000-00-00 00:00:00', 0, NULL),
(12, '6', '', 'demo notification', 'demos', '2022-08-17 08:04:23', '0000-00-00 00:00:00', 1, NULL),
(13, '6', '', 'demo1', 'hello5', '2022-08-17 08:13:46', '2022-08-17 08:13:43', 1, '2022-08-17 08:13:46'),
(14, '6', '222V4EFS', 'Booking Notifications', 'Your Order is ', '2022-08-17 16:18:58', '0000-00-00 00:00:00', 1, NULL),
(15, '6', '228RWQYW', 'Booking Notifications', 'Your Order is $status', '2022-08-17 08:29:47', '0000-00-00 00:00:00', 1, NULL),
(16, '6', '222V4EFS', 'Booking Notifications', 'Your Order is ', '2022-08-17 09:16:26', '0000-00-00 00:00:00', 1, NULL),
(17, 'all', '', 'This notification is for all users', 'Demo notification', '2022-08-17 16:05:47', '0000-00-00 00:00:00', 0, NULL),
(18, 'all', '', 'demo notification', 'demo notification', '2022-08-17 16:08:24', '0000-00-00 00:00:00', 1, NULL),
(19, '6', '228RWQYW', 'Booking Notifications', 'Your Order is $status', '2022-08-17 16:29:04', '0000-00-00 00:00:00', 1, NULL),
(20, 'all', '', 'demo notice', 'demo', '2022-08-18 10:43:10', '0000-00-00 00:00:00', 1, NULL),
(21, 'all', '', 'admin notification', 'hello', '2022-08-22 09:22:39', '0000-00-00 00:00:00', 1, NULL),
(22, 'all', '', 'demo notify', 'demoss', '2022-08-22 09:26:23', '0000-00-00 00:00:00', 1, NULL),
(23, 'all', '', 'fd', 'df', '2022-08-22 09:42:59', '0000-00-00 00:00:00', 1, NULL),
(24, 'all', '', 'fg', 'gf', '2022-08-22 09:44:01', '0000-00-00 00:00:00', 1, NULL),
(25, 'all', '', 'demo not', 'n', '2022-08-22 09:46:44', '0000-00-00 00:00:00', 1, NULL),
(26, 'all', '', 'demo not', 'gf', '2022-08-22 09:48:17', '0000-00-00 00:00:00', 1, NULL),
(27, 'all', '', 'demo not', 'bff', '2022-08-22 09:48:58', '0000-00-00 00:00:00', 1, NULL),
(28, 'all', '', 'demos', 'dkslskl', '2022-08-22 10:20:16', '0000-00-00 00:00:00', 1, NULL),
(29, 'all', '', 'demos', 'dkslskl', '2022-08-22 10:20:46', '0000-00-00 00:00:00', 1, NULL),
(30, 'all', '', 'demos', 'dkslskl', '2022-08-22 10:21:14', '0000-00-00 00:00:00', 1, NULL),
(31, 'all', '', 'demo not', 'demo', '2022-08-22 10:23:26', '0000-00-00 00:00:00', 1, NULL),
(32, 'all', '', 'demo not', 'demo', '2022-08-22 10:25:34', '0000-00-00 00:00:00', 1, NULL),
(33, 'all', '', 'demo not', 'demo', '2022-08-22 10:26:00', '0000-00-00 00:00:00', 1, NULL),
(34, 'all', '', 'n', 'n', '2022-08-22 10:26:48', '0000-00-00 00:00:00', 1, NULL),
(35, '2', '', 'df', 'ds', '2022-08-22 10:40:14', '0000-00-00 00:00:00', 1, NULL),
(36, '2', '', 'fd', 'gh', '2022-08-22 10:43:21', '0000-00-00 00:00:00', 1, NULL),
(37, '38', '', 'demo', 'Hello User', '2022-08-24 12:35:34', '0000-00-00 00:00:00', 1, '2022-08-24 12:35:34'),
(38, '38', '', 'demo', 'Hello User', '2022-08-24 12:34:11', '0000-00-00 00:00:00', 1, NULL),
(39, '5', '', 'demo notify', 'hiiii', '2022-08-24 12:36:40', '0000-00-00 00:00:00', 1, NULL),
(40, '6', '22P82OZ2', 'Booking Notifications', 'Your Order is $status', '2022-08-25 06:50:55', '0000-00-00 00:00:00', 1, NULL),
(41, '6', '22P82OZ2', 'Booking Notifications', 'Your Order is $status', '2022-08-25 06:51:04', '0000-00-00 00:00:00', 1, NULL),
(42, '1', 'AERCS466', 'Booking Notifications', 'Your Order is ingarage', '2022-08-25 14:41:09', '0000-00-00 00:00:00', 1, NULL),
(43, '1', 'AERCS466', 'Booking Notifications', 'Your Order is ingarage', '2022-08-25 14:43:47', '0000-00-00 00:00:00', 1, NULL),
(44, '1', 'AERCS466', 'Booking Notifications', 'Your Order is ingarage', '2022-08-25 15:06:43', '0000-00-00 00:00:00', 1, NULL),
(45, '1', 'AERCS466', 'Booking Notifications', 'Your Order is ingarage', '2022-08-25 15:10:03', '0000-00-00 00:00:00', 1, NULL),
(46, '1', 'XCRE345', 'Booking Notifications', 'Your Order is processing', '2022-08-26 06:18:12', '0000-00-00 00:00:00', 1, NULL),
(47, '1', 'XCRE345', 'Booking Notifications', 'Your Order is inprogress', '2022-08-26 06:18:16', '0000-00-00 00:00:00', 1, NULL),
(48, '1', 'XCRE345', 'Booking Notifications', 'Your Order is processing', '2022-08-26 06:18:20', '0000-00-00 00:00:00', 1, NULL),
(49, '1', 'XCRE345', 'Booking Notifications', 'Your Order is inprogress', '2022-08-26 06:18:33', '0000-00-00 00:00:00', 1, NULL),
(50, '1', 'XCRE345', 'Booking Notifications', 'Your Order is pickedup', '2022-08-26 06:34:32', '0000-00-00 00:00:00', 1, NULL),
(51, '1', 'XCRE345', 'Booking Notifications', 'Your Order is inprogress', '2022-08-26 06:34:43', '0000-00-00 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oilservicebooking`
--

CREATE TABLE `oilservicebooking` (
  `BookingID` bigint(20) NOT NULL,
  `AppoinmentNo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL,
  `BookingLocation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `VachileID` int(11) NOT NULL,
  `OiltypeID` int(11) NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  `UsedDeals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `PaymentStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrderPickupedBy` int(11) NOT NULL COMMENT 'Id of the service person',
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oilservicebooking`
--

INSERT INTO `oilservicebooking` (`BookingID`, `AppoinmentNo`, `UserID`, `BookingLocation`, `VachileID`, `OiltypeID`, `BookingDate`, `BookingTime`, `UsedDeals`, `TotalAmount`, `PaymentStatus`, `BookingStatus`, `OrderPickupedBy`, `CreatedOn`, `LastEditedon`, `DeletedOn`) VALUES
(1, '22J8G5FC', 6, 'Lucknow', 1, 1, '2022-08-17', '17:17:00', 'XYZ123', 100000, 'cash', 'inprogress', 0, '2022-08-17 11:47:26', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oiltypes`
--

CREATE TABLE `oiltypes` (
  `OilTypeID` bigint(20) NOT NULL,
  `OilTypeTitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `OilTypePrice` int(11) NOT NULL,
  `OilTypeDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `OilTypeStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oiltypes`
--

INSERT INTO `oiltypes` (`OilTypeID`, `OilTypeTitle`, `OilTypePrice`, `OilTypeDescription`, `CreatedOn`, `LastEditedon`, `DeletedOn`, `OilTypeStatus`) VALUES
(1, 'Petrol', 50000, 'Best Petrol', '2022-08-17 11:46:25', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicepersons`
--

CREATE TABLE `servicepersons` (
  `ServicePersonID` bigint(20) NOT NULL,
  `ServicePersonName` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ServicePersonMobile` bigint(20) NOT NULL,
  `ServicePersonEmail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ServiceCharge` int(11) NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `ServicePersonStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicepersons`
--

INSERT INTO `servicepersons` (`ServicePersonID`, `ServicePersonName`, `ServicePersonMobile`, `ServicePersonEmail`, `ServiceCharge`, `CreatedOn`, `LastEditedon`, `DeletedOn`, `ServicePersonStatus`) VALUES
(1, 'S1', 123456, 'test@gmail.com', 150, '2022-08-12 19:46:10', '2022-08-12 19:45:35', NULL, 1),
(2, 'S2', 654123, 'Test2@gamil.com', 200, '2022-08-12 19:46:10', '2022-08-12 19:45:35', NULL, 1),
(3, 'test pesonu', 8989898989, 'test213@gmail.com', 6556, '2022-08-17 12:52:29', '2022-08-17 12:57:58', '2022-08-17 12:58:05', 1),
(4, 'Person test', 9989898998, 'demo2543@gmail.com', 9898, '2022-08-17 12:56:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'Kamana Pandey', 9876543210, 'kamana@digiott.com', 566565, '2022-08-25 05:19:20', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `SuggestionsID` bigint(20) NOT NULL,
  `UserID` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Suggestions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `SuggestionStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AdminComments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedOn` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`SuggestionsID`, `UserID`, `Suggestions`, `SuggestionStatus`, `AdminComments`, `CreatedOn`, `LastEditedOn`, `DeletedOn`) VALUES
(1, '6', 'asdasda', 'inprogress', '', '2022-08-12 21:15:47', '0000-00-00 00:00:00', NULL),
(2, 'A1', 'demo n', 'inprogress', 'demo t', '2022-08-17 13:28:13', '2022-08-17 13:29:33', '2022-08-17 13:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `tyreservicebooking`
--

CREATE TABLE `tyreservicebooking` (
  `BookingID` bigint(20) NOT NULL,
  `AppoinmentNo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL,
  `BookingLocation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `VachileID` int(11) NOT NULL,
  `TyreSize` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  `UsedDeals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `PaymentStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookingStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrderPickupedBy` int(11) NOT NULL COMMENT 'Id of the service person',
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tyreservicebooking`
--

INSERT INTO `tyreservicebooking` (`BookingID`, `AppoinmentNo`, `UserID`, `BookingLocation`, `VachileID`, `TyreSize`, `BookingDate`, `BookingTime`, `UsedDeals`, `TotalAmount`, `PaymentStatus`, `BookingStatus`, `OrderPickupedBy`, `CreatedOn`, `LastEditedon`, `DeletedOn`) VALUES
(1, '22YMY67O', 6, 'Test Tyre Booking 1', 1, '12b', '2022-08-11', '17:53:51', 'Test123', 201, 'paid', 'cancelled', 2, '2022-08-12 21:17:12', '2022-08-12 21:23:55', NULL),
(2, '22YXUAZW', 6, 'Test Battery Booking Edit', 2, '12abc', '2022-08-12', '17:53:52', 'Test123 Edit', 202, 'paid Edit', 'inprogress', 1, '2022-08-12 21:22:02', '2022-08-13 12:59:58', NULL),
(3, '229GRJ23', 6, 'Test Tyre Booking', 1, '12b', '2022-08-12', '17:53:51', 'Test123', 201, 'paid', 'inprogress', 0, '2022-08-13 12:54:41', '0000-00-00 00:00:00', NULL),
(4, '22RU32Z9', 6, 'Test Tyre Booking', 1, '12b', '2022-08-15', '17:53:51', 'Test123', 201, 'paid', 'inprogress', 0, '2022-08-13 12:55:01', '2022-08-16 13:12:04', NULL),
(5, '228RWQYW', 6, 'demo', 1, '34', '2022-08-19', '13:00:00', 'XDCSR', 546, 'inprogress', 'inprogress', 0, '2022-08-17 08:29:34', '2022-08-17 16:29:04', NULL),
(6, '2295TOII', 6, 'demo', 5, '7878', '2022-08-26', '13:17:00', 'F45FG', 676, 'cash', 'inprogress', 0, '2022-08-25 06:47:46', '0000-00-00 00:00:00', NULL),
(7, '22P82OZ2', 6, 'Lucknow', 5, '8778', '2022-08-27', '13:18:00', 'DEALCODE', 766, 'cash', 'pickedup', 0, '2022-08-25 06:49:01', '2022-08-25 12:21:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` bigint(20) NOT NULL,
  `FullName` varchar(300) NOT NULL,
  `UserMobileno` bigint(20) NOT NULL,
  `UserEmail` varchar(300) NOT NULL,
  `UserAddress` text NOT NULL,
  `UserImage` varchar(255) NOT NULL,
  `UserToken` text NOT NULL,
  `Wallet` float NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedOn` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `UserStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `UserMobileno`, `UserEmail`, `UserAddress`, `UserImage`, `UserToken`, `Wallet`, `CreatedOn`, `LastEditedOn`, `DeletedOn`, `UserStatus`) VALUES
(1, 'User 101', 9865891211, 'edittest@gmail.com', 'Test Edit Address', '', '622a933d90cf42fe57dfe9683711eed9', 0, '2022-08-02 20:29:43', '2022-08-10 07:47:15', NULL, 1),
(2, 'kamana', 9865891, 'kamana@digiott.com', 'test address', '', '7395148ead7679a31419878b34be2712', 0, '2022-08-02 20:30:35', '2022-08-13 12:58:24', NULL, 1),
(3, 'User 2', 98658912, 'test@gmail.com', 'test address', '', 'c03be1ce01c949e19a1e4b741d1177d1', 0, '2022-08-02 20:31:10', '2022-08-09 18:25:05', '2022-08-23 10:18:20', 0),
(4, 'User 3', 9991234, 'test@gmail.com', 'test address', '', '48302335e61e8675e85d8a434069ab6e', 0, '2022-08-02 20:55:00', '2022-08-09 18:24:45', NULL, 1),
(5, 'User 4', 8945689652, 'test@gmail.com', 'test address 123', '', '2a3c689bbb0f3c68ecf7f5f7887f506c', 0, '2022-08-04 08:27:27', '2022-08-16 13:09:27', NULL, 1),
(6, 'User 1', 986589123, 'test@gmail.com', 'test address', '', '56d132948c7e68b77e3d9d724bc5b917', 5, '2022-08-10 07:23:06', '2022-08-13 13:03:27', NULL, 1),
(7, 'Test user', 7878877878, 'test45@gmail.com', 'demo5', '', '2cdb85a6a33da9e15ca969ff294ac802', 0, '2022-08-17 08:12:41', '2022-08-17 08:12:52', '2022-08-17 08:12:58', 1),
(8, 'test User', 9898989889, 'test89@gmail.com', 'demo', '', '8287200642095e63202ba0d0c732f47a', 0, '2022-08-17 16:04:25', '2022-08-17 16:05:00', '2022-08-17 16:05:04', 1),
(9, 'Test User 1', 9898899889, 'test213@gmail.com', 'demo user', '', '0b493a134161059a061e70403911f6e0', 0, '2022-08-17 16:06:34', '2022-08-17 16:07:03', '2022-08-17 16:07:08', 1),
(10, 'Test User 1', 9889898989, 'testUser@gmail.com', 'Test Users Adders', '', '7696e91b6a8d7919def3afc466e791d7', 0, '2022-08-18 10:42:45', '0000-00-00 00:00:00', NULL, 1),
(11, 'Kamana Pandey', 9876543210, 'admin@abc.com', 'lucknow 1', '', 'cb5edceb9ce785b5622704e8a97a705c', 0, '2022-08-19 09:20:07', '2022-08-19 15:04:45', NULL, 1),
(12, 'John Doe', 123, 'john.doe@gmail.com', 'lucknow', '', '', 0, '2022-08-22 08:30:33', '0000-00-00 00:00:00', NULL, 0),
(13, 'Gary Riley', 434, 'gary@hotmail.com', 'varanasi', '', '', 0, '2022-08-22 08:30:33', '0000-00-00 00:00:00', NULL, 0),
(14, 'Edward Siu', 986, 'siu.edward@gmail.com', 'varanasi', '', '', 0, '2022-08-22 08:30:34', '0000-00-00 00:00:00', NULL, 0),
(15, 'Betty Simons', 439, 'simons@example.com', 'lucknow', '', '', 0, '2022-08-22 08:30:34', '0000-00-00 00:00:00', NULL, 0),
(16, 'Frances Lieberman', 765, 'lieberman@gmail.com', 'varanasi', '', '', 0, '2022-08-22 08:30:34', '0000-00-00 00:00:00', NULL, 0),
(17, 'Jason Gregson', 567, 'jason@example.com', 'lucknow', '', '', 0, '2022-08-22 08:30:34', '0000-00-00 00:00:00', NULL, 0),
(18, 'John Doe', 1234567890, 'john.doe@gmail.com', 'lucknow', '', '', 0, '2022-08-22 14:55:17', '0000-00-00 00:00:00', NULL, 0),
(19, 'Gary Riley', 4345066483, 'gary@hotmail.com', 'varanasi', '', '', 0, '2022-08-22 14:55:17', '0000-00-00 00:00:00', NULL, 0),
(20, 'Edward Siu', 9864380040, 'siu.edward@gmail.com', 'varanasi', '', '', 0, '2022-08-22 14:55:18', '0000-00-00 00:00:00', NULL, 0),
(21, 'Betty Simons', 4394052345, 'simons@example.com', 'lucknow', '', '', 0, '2022-08-22 14:55:18', '0000-00-00 00:00:00', NULL, 0),
(22, 'Frances Lieberman', 765, 'lieberman@gmail.com', 'varanasi', '', '', 0, '2022-08-22 14:55:18', '0000-00-00 00:00:00', NULL, 0),
(23, 'Jason Gregson', 567, 'jason@example.com', 'lucknow', '', '', 0, '2022-08-22 14:55:18', '0000-00-00 00:00:00', NULL, 0),
(24, 'ABC', 987567575, 'bghvhjvyuvghvgnv@gmail.com', 'ashiyana', '', '', 0, '2022-08-22 14:55:18', '0000-00-00 00:00:00', NULL, 0),
(25, 'John Doe', 1234567890, 'john.doe@gmail.com', 'lucknow', '', '', 0, '2022-08-22 15:00:44', '0000-00-00 00:00:00', NULL, 0),
(26, 'Gary Riley', 4345066483, 'gary@hotmail.com', 'varanasi', '', '', 0, '2022-08-22 15:00:44', '0000-00-00 00:00:00', NULL, 0),
(27, 'Edward Siu', 9864380040, 'siu.edward@gmail.com', 'varanasi', '', '', 0, '2022-08-22 15:00:45', '0000-00-00 00:00:00', NULL, 0),
(28, 'Betty Simons', 4394052345, 'simons@example.com', 'lucknow', '', '', 0, '2022-08-22 15:00:45', '0000-00-00 00:00:00', NULL, 0),
(29, 'Frances Lieberman', 765, 'lieberman@gmail.com', 'varanasi', '', '', 0, '2022-08-22 15:00:45', '0000-00-00 00:00:00', NULL, 0),
(30, 'Jason Gregson', 567, 'jason@example.com', 'lucknow', '', '', 0, '2022-08-22 15:00:45', '0000-00-00 00:00:00', NULL, 0),
(31, 'ABC', 987567575, 'bghvhjvyuvghvgnv@gmail.com', 'ashiyana', '', '', 0, '2022-08-22 15:00:45', '0000-00-00 00:00:00', NULL, 0),
(32, 'John Doe', 1234567890, 'john.doe@gmail.com', 'lucknow', '', '', 0, '2022-08-22 15:23:36', '0000-00-00 00:00:00', NULL, 0),
(33, 'Gary Riley', 4345066483, 'gary@hotmail.com', 'varanasi', '', '', 0, '2022-08-22 15:23:36', '0000-00-00 00:00:00', NULL, 0),
(34, 'Edward Siu', 9864380040, 'siu.edward@gmail.com', 'varanasi', '', '', 0, '2022-08-22 15:23:37', '0000-00-00 00:00:00', NULL, 0),
(35, 'Betty Simons', 4394052345, 'simons@example.com', 'lucknow', '', '', 0, '2022-08-22 15:23:37', '0000-00-00 00:00:00', NULL, 0),
(36, 'Frances Lieberman', 765, 'lieberman@gmail.com', 'varanasi', '', '', 0, '2022-08-22 15:23:37', '0000-00-00 00:00:00', NULL, 0),
(37, 'Jason Gregson', 567, 'jason@example.com', 'lucknow', '', '', 0, '2022-08-22 15:23:37', '0000-00-00 00:00:00', NULL, 0),
(38, 'ABC', 987567575, 'bghvhjvyuvghvgnv@gmail.com', 'ashiyana', '', '', 0, '2022-08-22 15:23:37', '0000-00-00 00:00:00', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `VehicleID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `VehicleName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PlateNumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleColor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fuletype` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastEditedon` datetime NOT NULL,
  `DeletedOn` timestamp NULL DEFAULT NULL,
  `VehicleStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`VehicleID`, `UserID`, `VehicleName`, `PlateNumber`, `VehicleColor`, `Fuletype`, `CreatedOn`, `LastEditedon`, `DeletedOn`, `VehicleStatus`) VALUES
(1, 6, 'Audi A3', 'R1-USA-26984', 'green', 'normal', '2022-08-09 18:53:12', '2022-08-09 19:34:52', NULL, 1),
(2, 5, 'Audi A4', 'R-London-26984', 'White', 'Special 95', '2022-08-09 18:53:37', '0000-00-00 00:00:00', NULL, 1),
(3, 5, 'Audi A4', 'R-London-269842', 'White', 'Special 95', '2022-08-09 19:09:15', '0000-00-00 00:00:00', NULL, 1),
(4, 6, 'demos', '78879', 'red', 'red', '2022-08-17 08:14:13', '2022-08-17 08:14:28', '2022-08-17 08:14:31', 1),
(5, 1, 'Test Vehicle', '9878676', 'red', 'Special 95', '2022-08-18 09:00:40', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallethistory`
--

CREATE TABLE `wallethistory` (
  `ID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `UsedFor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tran_status` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'debit or credit',
  `Amount` int(11) NOT NULL,
  `Tans_ID` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallethistory`
--

INSERT INTO `wallethistory` (`ID`, `UserID`, `UsedFor`, `Tran_status`, `Amount`, `Tans_ID`, `CreatedOn`) VALUES
(1, 6, 'topup', 'credit', 5, '', '2022-08-13 13:03:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `batteryservicebooking`
--
ALTER TABLE `batteryservicebooking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `batteryservices`
--
ALTER TABLE `batteryservices`
  ADD PRIMARY KEY (`BatteryServiceID`);

--
-- Indexes for table `batterytype`
--
ALTER TABLE `batterytype`
  ADD PRIMARY KEY (`BatterytypeID`);

--
-- Indexes for table `bugreports`
--
ALTER TABLE `bugreports`
  ADD PRIMARY KEY (`BugID`);

--
-- Indexes for table `carservicebooking`
--
ALTER TABLE `carservicebooking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `carservicetype`
--
ALTER TABLE `carservicetype`
  ADD PRIMARY KEY (`CarServiceTypeID`);

--
-- Indexes for table `carwashbookings`
--
ALTER TABLE `carwashbookings`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `carwashtypes`
--
ALTER TABLE `carwashtypes`
  ADD PRIMARY KEY (`CarwashID`);

--
-- Indexes for table `car_service_type`
--
ALTER TABLE `car_service_type`
  ADD PRIMARY KEY (`CarServiceTypeID`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`DealsID`);

--
-- Indexes for table `garagebooking`
--
ALTER TABLE `garagebooking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`NotificationID`);

--
-- Indexes for table `oilservicebooking`
--
ALTER TABLE `oilservicebooking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `oiltypes`
--
ALTER TABLE `oiltypes`
  ADD PRIMARY KEY (`OilTypeID`);

--
-- Indexes for table `servicepersons`
--
ALTER TABLE `servicepersons`
  ADD PRIMARY KEY (`ServicePersonID`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`SuggestionsID`);

--
-- Indexes for table `tyreservicebooking`
--
ALTER TABLE `tyreservicebooking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`VehicleID`);

--
-- Indexes for table `wallethistory`
--
ALTER TABLE `wallethistory`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `batteryservicebooking`
--
ALTER TABLE `batteryservicebooking`
  MODIFY `BookingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `batteryservices`
--
ALTER TABLE `batteryservices`
  MODIFY `BatteryServiceID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `batterytype`
--
ALTER TABLE `batterytype`
  MODIFY `BatterytypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bugreports`
--
ALTER TABLE `bugreports`
  MODIFY `BugID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carservicebooking`
--
ALTER TABLE `carservicebooking`
  MODIFY `BookingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carservicetype`
--
ALTER TABLE `carservicetype`
  MODIFY `CarServiceTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carwashbookings`
--
ALTER TABLE `carwashbookings`
  MODIFY `BookingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carwashtypes`
--
ALTER TABLE `carwashtypes`
  MODIFY `CarwashID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_service_type`
--
ALTER TABLE `car_service_type`
  MODIFY `CarServiceTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `DealsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `garagebooking`
--
ALTER TABLE `garagebooking`
  MODIFY `BookingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `NotificationID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `oilservicebooking`
--
ALTER TABLE `oilservicebooking`
  MODIFY `BookingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oiltypes`
--
ALTER TABLE `oiltypes`
  MODIFY `OilTypeID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servicepersons`
--
ALTER TABLE `servicepersons`
  MODIFY `ServicePersonID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `SuggestionsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tyreservicebooking`
--
ALTER TABLE `tyreservicebooking`
  MODIFY `BookingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `VehicleID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallethistory`
--
ALTER TABLE `wallethistory`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
