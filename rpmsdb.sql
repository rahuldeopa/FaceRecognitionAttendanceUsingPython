SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8855223366, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-03-25 06:44:27');


CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(13, 'Duty Pass', '2023-03-27 14:03:02'),
(14, 'Pass On Privilege Account', '2023-03-27 14:03:16'),
(15, 'School Pass', '2023-03-27 14:03:30'),
(16, 'Post Retirement Complimentary Passes', '2023-03-27 14:03:44'),
(18, 'Residential Card Pass', '2023-03-27 14:04:10'),
(19, 'Special Passes', '2023-03-27 14:04:23'),
(20, 'Senior Citizens', '2023-03-30 10:03:28');


CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'rakesh kumar', 'rakesh@gmail.com', 'hfgghfghf', '2023-03-28 06:31:26', 1),
(2, 'Test', 'test@gmail.com', 'sample message', '2023-03-28 06:32:55', 1),
(3, 'Anuj', 'ak@gmail.com', 'This is testing purpose', '2023-03-30 12:20:30', 1);


CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>The rail pass management system is a web-based application. This application developed in PHP using MySQLi extension.</b></span></font>', NULL, NULL, '2023-03-30 12:19:41'),
(2, 'contactus', 'Contact Us', '                New Delhi Railway Station', 'infotest@gmail.com', 4654789799, '2023-03-30 12:20:10');

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `TrainClass` varchar(250) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `wayType` varchar(120) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `TrainClass`, `FromDate`, `ToDate`, `wayType`, `Cost`, `PasscreationDate`) VALUES
(1, '984463487', 'Mayank Tripathi', 'fc5bf5c9948c416f7c1046c8f91ba9a91679925964.png', 6446465464, 'may@gmail.com', 'Adhar Card', 'uyuiy78979789', 'Pass On Privilege Account', 'Delhi', 'Jaipur', 'II Class', '2023-03-28', '2023-04-27', 'Single Way', '200', '2023-03-27 14:06:04'),
(2, '837149403', 'Kanika Jha', '3dfb1c8dbdcc05745b5fefc573a2a85f1679980708.png', 8979797979, 'kanika@gmail.com', 'Adhar Card', 'ui7894ko45', 'Pass On Privilege Account', 'Delhi', 'Chandigarh', 'Slepper', '2023-03-28', '2023-04-30', 'Two Way', '1500', '2023-03-28 05:18:28'),
(3, '305788314', 'Ram Singh', '779b7513263ef185b6d094af290ef5401680178696.png', 785412600, 'rkm@test.com', 'Voter Card', 'NHJB4342485', 'Senior Citizens', 'Aligarh', 'Ghaziabad', 'General', '2023-04-01', '2023-10-31', 'Two Way', '1500', '2023-03-30 12:18:16');

ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
