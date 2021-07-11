-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 12:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tulongkabatang`
--

-- --------------------------------------------------------

--
-- Table structure for table `alertlevel`
--

CREATE TABLE `alertlevel` (
  `AlertID` varchar(50) NOT NULL,
  `A_Name` varchar(50) NOT NULL,
  `A_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alertlevel`
--

INSERT INTO `alertlevel` (`AlertID`, `A_Name`, `A_Desc`) VALUES
('SCN1', 'Storm Signal No. 1', 'The weather disturbance is expected in 36 hours once Public Storm Warning Signal No. 1 is raised.'),
('SCN2', 'Storm Signal No. 2', 'The weather disturbance is expected in 24 hours once Public Storm Warning Signal No. 2 is raised.\r\n'),
('SCN3', 'Storm Signal No. 3', 'The weather disturbance is expected in 12 hours once Public Storm Warning Signal No. 4 is raised.'),
('SCN4', 'Storm Signal No.4', 'The weather disturbance is expected in 12 hours once Public Storm Warning Signal No. 4 is raised.'),
('VAL No. 0', 'Quiet or  No Alert', 'All monitored parameters within background levels. Unremarkable level of volcanic earthquakes occurring within the volcano area. Generally weak steam emission.'),
('VAL No. 1', 'Low Level of Volcanic Unrest', 'Slight increase in volcanic earthquake and steam/gas activity.  Sporadic explosions from existing or new vents. Notable increase in the temperature of hot springs. Slight inflation or swelling of the edifice.'),
('VAL No. 2', 'Moderate Level of Volcanic Unrest', 'Elevated levels of any of the following: volcanic earthquake, steam/gas emission, ground deformation and hot spring temperature.  Intermittent steam/ash explosion and above baseline Sulfur Dioxide2(SO2) emission rates. Increased swelling of volcanic edifice.'),
('VAL No. 3', 'High Level of Volcanic Unrest', 'Sustained increases in the levels of volcanic earthquakes, some may be perceptible.  Occurrence of low-frequency earthquakes, volcanic tremor, rumbling sounds.\r\n\r\nForceful and voluminous steam/ash ejections. Sustained increases in SO2 emission rates, ground deformation/swelling of the edifice. Activity at the summit may involve dome growth and/or lava flow, resultant rockfall.'),
('VAL No. 4', 'Hazardous Eruption Imminent', 'Intensifying unrest characterized by earthquake swarms and volcanic tremor, many perceptible.  Frequent strong ash explosions.  Sustained increase, or sudden drop, of SO2 emission. Increasing rates of ground deformation and swelling of the edifice. Lava dome growth and/or lava flow increases, with increased frequency and volume of rockfall.'),
('VAL No. 5', 'Hazardous Eruption in Progress', 'Magmatic eruption characterized by explosive production of tall ash-laden eruption columns, or by massive collapses of summit lava dome. Generation of deadly pyroclastic flows, surges and/or lateral blasts and widespread ashfall.');

-- --------------------------------------------------------

--
-- Table structure for table `area_affected`
--

CREATE TABLE `area_affected` (
  `LocID` int(10) NOT NULL,
  `BarID` varchar(25) NOT NULL,
  `CalID` varchar(25) NOT NULL,
  `S_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area_affected`
--

INSERT INTO `area_affected` (`LocID`, `BarID`, `CalID`, `S_Date`) VALUES
(9, 'Tal02', 'TAAL2021', '2021-07-08 15:58:24'),
(10, 'Tal02', 'TAAL2021', '2021-07-08 15:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `BarID` varchar(25) NOT NULL,
  `B_Name` varchar(50) NOT NULL,
  `MunID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`BarID`, `B_Name`, `MunID`) VALUES
('Ago01', 'Adia', 'Agoncillo'),
('Ago02', 'Bagong Sikat', 'Agoncillo'),
('Ali01', 'Balagbag', 'Alitagtag'),
('Ali02', 'Concordia', 'Alitagtag'),
('Bau01', 'Aplaya', 'Bauan'),
('Bau02', 'Balayong', 'Bauan'),
('Cal01', 'Sinisian', 'Calaca'),
('Cal02', 'Niyugan', 'Calaca'),
('Lem01', 'Anak-Dagat', 'Lemery'),
('Lem02', 'Adia', 'Lemery'),
('Lia01', 'Matabungkay', 'Lian'),
('Lia02', 'Bagong Pook', 'Lian'),
('Lip01', 'Banaybanay', 'Lipa'),
('Lip02', 'Antipolo del Sur', 'Lipa'),
('NAS01', 'Wawa', 'Nasugbu'),
('NAS02', 'Bucana', 'Nasugbu'),
('Tal01', 'Aya', 'Talisay'),
('Tal02', 'Miranda', 'Talisay'),
('Tin01', 'Corona', 'Tingloy'),
('Tin02', 'San Jose', 'Tingloy');

-- --------------------------------------------------------

--
-- Table structure for table `calamity`
--

CREATE TABLE `calamity` (
  `CalID` varchar(50) NOT NULL,
  `C_Name` varchar(100) NOT NULL,
  `TypeID` varchar(100) NOT NULL,
  `AlertID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calamity`
--

INSERT INTO `calamity` (`CalID`, `C_Name`, `TypeID`, `AlertID`) VALUES
('PHStorm01', 'Tropical Storm Ambo', 'Tropical Storm', 'Storm Signal No. 2'),
('TAAL2021', 'Taal Volcano', 'Volcanic Eruption', 'High Level of Volcanic Unrest');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CatID` int(10) NOT NULL,
  `C_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CatID`, `C_Name`) VALUES
(1, 'Foods'),
(2, 'Drinks'),
(4, 'Cloths'),
(5, 'Hygiene'),
(6, 'Financial'),
(7, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `DonationID` int(10) NOT NULL,
  `EFID` int(10) NOT NULL,
  `TransID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`DonationID`, `EFID`, `TransID`) VALUES
(1, 101, 1004),
(2, 101, 1009);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `DonorID` int(10) NOT NULL,
  `D_FName` varchar(25) NOT NULL,
  `D_MName` varchar(25) NOT NULL,
  `D_LName` varchar(25) NOT NULL,
  `D_Contact` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`DonorID`, `D_FName`, `D_MName`, `D_LName`, `D_Contact`) VALUES
(1, 'Alfred', 'O', 'Miranda', '09132541245'),
(2, 'Jasmine', 'S.', 'Sanchez', '0956021354'),
(3, 'Mylene', 'L', 'Tumbaga', '09285642541'),
(4, 'Vianca', 'M', 'Macalindong', '09365425155'),
(5, 'Aaron', 'M', 'Miranda', '0956021377'),
(6, 'Ara', 'C', 'Malangbayan', '09132541248'),
(7, 'Viance', 'M', 'Arellano', '09365425234'),
(8, 'Mylene', 'O', 'Arimuhanan', '0956021124'),
(9, 'Jovy', 'M', 'Mendoza', '09364587613'),
(10, 'Joshua', 'A.', 'Mariano', '09546213587');

-- --------------------------------------------------------

--
-- Table structure for table `evacuationfacility`
--

CREATE TABLE `evacuationfacility` (
  `EFID` int(10) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Status` varchar(25) NOT NULL,
  `affected_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evacuationfacility`
--

INSERT INTO `evacuationfacility` (`EFID`, `Location`, `Status`, `affected_area`) VALUES
(101, 'NAS01', '2501/5000', 9),
(102, 'NAS02', '15052/10000', 10);

-- --------------------------------------------------------

--
-- Table structure for table `municipality`
--

CREATE TABLE `municipality` (
  `MunID` varchar(25) NOT NULL,
  `M_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `municipality`
--

INSERT INTO `municipality` (`MunID`, `M_Name`) VALUES
('4211', 'Agoncillo'),
('4205', 'Alitagtag'),
('4201', 'Bauan'),
('4212', 'Calaca'),
('4209', 'Lemery'),
('4216', 'Lian'),
('4217', 'Lipa'),
('4231', 'Nasugbu'),
('4220', 'Talisay'),
('4203', 'Tingloy');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransID` int(25) NOT NULL,
  `DonorID` int(11) NOT NULL,
  `CatID` int(11) NOT NULL,
  `Item` varchar(25) NOT NULL,
  `Amount` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransID`, `DonorID`, `CatID`, `Item`, `Amount`) VALUES
(1001, 5, 4, 'White T-Shrit', 7),
(1002, 5, 1, 'Sardines', 3),
(1003, 1, 1, 'White T-Shrit', 25),
(1004, 8, 7, 'Bed Sheet', 1),
(1006, 9, 5, 'Toothpaste', 10),
(1007, 3, 5, 'Soap', 3),
(1008, 10, 6, 'Money', 500),
(1009, 7, 2, 'Mineral water bottle', 20),
(1010, 2, 2, 'Zesto Juice', 12),
(1011, 2, 6, 'Money', 1000),
(1012, 6, 6, 'Money', 550),
(1013, 4, 7, 'Mosquito Repellant', 50);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TypeID` int(11) NOT NULL,
  `T_Name` varchar(50) NOT NULL,
  `T_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TypeID`, `T_Name`, `T_Desc`) VALUES
(2, 'Tropical Storm', 'a localized, very intense low-pressure wind system, forming over tropical oceans and with winds of hurricane force.'),
(3, 'Volcanic Eruption', 'Volcanic eruptions happen when lava and gas are discharged from a volcanic vent. The most common consequences of this are population movements as large numbers of people are often forced to flee the moving lava flow. Volcanic eruptions often cause temporary food shortages and volcanic ash landslides called Lahar.'),
(4, 'Tsunami', 'a long high sea wave caused by an earthquake, submarine landslide, or other disturbance.'),
(5, 'Earthquake', 'a sudden and violent shaking of the ground, sometimes causing great destruction, as a result of movements within the earth\'s crust or volcanic action.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `U_FName` varchar(50) NOT NULL,
  `U_MName` varchar(50) NOT NULL,
  `U_LName` varchar(50) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `U_Contact` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `EFID` int(10) NOT NULL,
  `UserTypeID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `useractivation`
--

CREATE TABLE `useractivation` (
  `ActID` int(10) NOT NULL,
  `LocID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `UserTypeID` int(10) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `U_Desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UserTypeID`, `Position`, `U_Desc`) VALUES
(2, 'Evacuation Manager', 'manage evacuation facility'),
(101, 'Administrator', 'Control other user');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `VID` int(10) NOT NULL,
  `V_Fname` varchar(50) NOT NULL,
  `V_MName` varchar(50) NOT NULL,
  `V_LName` varchar(50) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `V_Contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alertlevel`
--
ALTER TABLE `alertlevel`
  ADD PRIMARY KEY (`AlertID`),
  ADD KEY `A_Name` (`A_Name`);

--
-- Indexes for table `area_affected`
--
ALTER TABLE `area_affected`
  ADD PRIMARY KEY (`LocID`),
  ADD KEY `BarID` (`BarID`),
  ADD KEY `CalID` (`CalID`);

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`BarID`),
  ADD KEY `M_Name` (`MunID`);

--
-- Indexes for table `calamity`
--
ALTER TABLE `calamity`
  ADD PRIMARY KEY (`CalID`),
  ADD KEY `AlertID` (`AlertID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CatID`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`DonationID`),
  ADD KEY `EFID` (`EFID`),
  ADD KEY `TransID` (`TransID`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`DonorID`);

--
-- Indexes for table `evacuationfacility`
--
ALTER TABLE `evacuationfacility`
  ADD PRIMARY KEY (`EFID`),
  ADD KEY `Location` (`Location`),
  ADD KEY `affected_area` (`affected_area`);

--
-- Indexes for table `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`MunID`),
  ADD KEY `M_Name` (`M_Name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransID`),
  ADD KEY `ItemID` (`Item`),
  ADD KEY `CatID` (`CatID`),
  ADD KEY `DonorID` (`DonorID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TypeID`),
  ADD KEY `T_Name` (`T_Name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `UserTypeID` (`UserTypeID`),
  ADD KEY `EFID` (`EFID`),
  ADD KEY `Location` (`Location`);

--
-- Indexes for table `useractivation`
--
ALTER TABLE `useractivation`
  ADD PRIMARY KEY (`ActID`),
  ADD KEY `LocID` (`LocID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`UserTypeID`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`VID`),
  ADD KEY `Location` (`Location`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_affected`
--
ALTER TABLE `area_affected`
  MODIFY `LocID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `DonorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area_affected`
--
ALTER TABLE `area_affected`
  ADD CONSTRAINT `area_affected_ibfk_1` FOREIGN KEY (`BarID`) REFERENCES `barangays` (`BarID`),
  ADD CONSTRAINT `area_affected_ibfk_2` FOREIGN KEY (`CalID`) REFERENCES `calamity` (`CalID`);

--
-- Constraints for table `barangays`
--
ALTER TABLE `barangays`
  ADD CONSTRAINT `barangays_ibfk_1` FOREIGN KEY (`MunID`) REFERENCES `municipality` (`M_Name`);

--
-- Constraints for table `calamity`
--
ALTER TABLE `calamity`
  ADD CONSTRAINT `calamity_ibfk_4` FOREIGN KEY (`AlertID`) REFERENCES `alertlevel` (`A_Name`),
  ADD CONSTRAINT `calamity_ibfk_5` FOREIGN KEY (`TypeID`) REFERENCES `type` (`T_Name`);

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`EFID`) REFERENCES `evacuationfacility` (`EFID`),
  ADD CONSTRAINT `donation_ibfk_3` FOREIGN KEY (`TransID`) REFERENCES `transaction` (`TransID`);

--
-- Constraints for table `evacuationfacility`
--
ALTER TABLE `evacuationfacility`
  ADD CONSTRAINT `evacuationfacility_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `barangays` (`BarID`),
  ADD CONSTRAINT `evacuationfacility_ibfk_2` FOREIGN KEY (`affected_area`) REFERENCES `area_affected` (`LocID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`CatID`) REFERENCES `category` (`CatID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`DonorID`) REFERENCES `donors` (`DonorID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`UserTypeID`) REFERENCES `usertype` (`UserTypeID`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`EFID`) REFERENCES `evacuationfacility` (`EFID`),
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`Location`) REFERENCES `barangays` (`BarID`);

--
-- Constraints for table `useractivation`
--
ALTER TABLE `useractivation`
  ADD CONSTRAINT `useractivation_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `volunteers_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `barangays` (`BarID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
