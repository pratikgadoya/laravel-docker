-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2018 at 05:24 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.2.4-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sailsDemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`firstname`, `lastname`, `username`, `email`, `password`, `id`, `createdAt`, `updatedAt`) VALUES
('admin', 'admin', 'admin', 'admin@admin.com', '$2a$10$Du5x1Dd0YwmWSFKXS4nTRe3lOuWo/lAGym8I1jDsGq2OOEsgebMbW', 1, '2018-05-02 17:26:23', '2018-05-02 17:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `admingo`
--

CREATE TABLE `admingo` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admingo`
--

INSERT INTO `admingo` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@admin.com', '$2a$10$GO1fz75rnAyKgMFU1TePe.ylpDrLRB83wqAxszk8OPb0VaY8ji8Ni', '2018-05-04 16:12:39', '2018-05-04 16:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `from` longtext,
  `to` longtext,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `attachments` longtext,
  `data` longtext,
  `template` varchar(255) DEFAULT NULL,
  `tags` longtext,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gridoption`
--

CREATE TABLE `gridoption` (
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `from` longtext,
  `to` longtext,
  `message` longtext,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `userId` int(11) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `statusCode` varchar(255) DEFAULT NULL,
  `response` longtext,
  `responseType` varchar(255) DEFAULT NULL,
  `request` longtext,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`userId`, `domain`, `method`, `url`, `statusCode`, `response`, `responseType`, `request`, `id`, `createdAt`, `updatedAt`) VALUES
(1, 'http://luigi.3plcentral.com', 'POST', '/WebUI/Inventory/ManageAudits/SearchInfo', '400', '"{\\"GridOptions\\":null,\\"Audits\\":[{\\"CreationDate\\":\\"\\\\/Date(1525089583727)\\\\/\\",\\"Name\\":\\"asd\\",\\"Notes\\":\\"audit 1 notes\\",\\"AssignedTo\\":null,\\"Priority\\":9,\\"UseTrackBys\\":true,\\"Locations\\":[{\\"Id\\":107,\\"Name\\":\\"2-v-1-g\\",\\"Description\\":null},{\\"Id\\":2375,\\"Name\\":\\"22-33-44-55\\",\\"Description\\":null}],\\"EditUri\\":\\"/inventory/facilities/6/audits/2007\\",\\"Status\\":0,\\"NumberOfLocations\\":2}],\\"Users\\":[{\\"Name\\":\\"Fest\\",\\"Id\\":2},{\\"Name\\":\\"TrashME\\",\\"Id\\":3},{\\"Name\\":\\"Lock Me out\\",\\"Id\\":4},{\\"Name\\":\\"Testy McTestface\\",\\"Id\\":5},{\\"Name\\":\\"MJI\\",\\"Id\\":6},{\\"Name\\":\\"Mario Sr.\\",\\"Id\\":7},{\\"Name\\":\\"CustUser\\",\\"Id\\":13},{\\"Name\\":\\"User 2\\",\\"Id\\":16},{\\"Name\\":\\"test2\\",\\"Id\\":38},{\\"Name\\":\\"Delme\\",\\"Id\\":54},{\\"Name\\":\\"SIP\\",\\"Id\\":62},{\\"Name\\":\\"Shawn Gallagher\\",\\"Id\\":72},{\\"Name\\":\\"testuser\\",\\"Id\\":97},{\\"Name\\":\\"GoofyUser\\",\\"Id\\":99},{\\"Name\\":\\"George Francis\\",\\"Id\\":122},{\\"Name\\":\\"UserAminew data\\",\\"Id\\":128},{\\"Name\\":\\"CustUser1\\",\\"Id\\":151},{\\"Name\\":\\"South\\",\\"Id\\":156},{\\"Name\\":\\"11072017\\",\\"Id\\":312},{\\"Name\\":\\"new data\\",\\"Id\\":313},{\\"Name\\":\\"new data\\",\\"Id\\":314},{\\"Name\\":\\"new data\\",\\"Id\\":315},{\\"Name\\":\\"new data\\",\\"Id\\":316},{\\"Name\\":\\"new data\\",\\"Id\\":317},{\\"Name\\":\\"new data\\",\\"Id\\":318},{\\"Name\\":\\"new data\\",\\"Id\\":319},{\\"Name\\":\\"level1user\\",\\"Id\\":320},{\\"Name\\":\\"Pop7\\",\\"Id\\":321},{\\"Name\\":\\"new data\\",\\"Id\\":322},{\\"Name\\":\\"new data1\\",\\"Id\\":323},{\\"Name\\":\\"new data\\",\\"Id\\":325},{\\"Name\\":\\"new data\\",\\"Id\\":326},{\\"Name\\":\\"new data\\",\\"Id\\":327},{\\"Name\\":\\"new data\\",\\"Id\\":328},{\\"Name\\":\\"new data\\",\\"Id\\":329},{\\"Name\\":\\"new data\\",\\"Id\\":330},{\\"Name\\":\\"Asus\\",\\"Id\\":331},{\\"Name\\":\\"new data\\",\\"Id\\":332},{\\"Name\\":\\"New Manual User\\",\\"Id\\":333},{\\"Name\\":\\"User22\\",\\"Id\\":335},{\\"Name\\":\\"SmartUser\\",\\"Id\\":336},{\\"Name\\":\\"qweq\\",\\"Id\\":340},{\\"Name\\":\\"WareAdmin\\",\\"Id\\":1340},{\\"Name\\":\\"CUSAdmin\\",\\"Id\\":1341},{\\"Name\\":\\"Floor Manager\\",\\"Id\\":2342},{\\"Name\\":\\"DIYCentral\\",\\"Id\\":2343},{\\"Name\\":\\"Mahima\\",\\"Id\\":2344},{\\"Name\\":\\"DIY-Jim\\",\\"Id\\":2345},{\\"Name\\":\\"a\\",\\"Id\\":2346},{\\"Name\\":\\"teset123465\\",\\"Id\\":2349},{\\"Name\\":\\"teset1234\\",\\"Id\\":2350},{\\"Name\\":\\"testinguser0001\\",\\"Id\\":2351},{\\"Name\\":\\"testinguser\\",\\"Id\\":2352},{\\"Name\\":\\"bipin\\",\\"Id\\":2355}],\\"SearchInfo\\":{\\"HasData\\":true,\\"Data\\":{\\"JobName\\":null,\\"IndexOptionsJobName\\":0,\\"TrackBys\\":false,\\"Status\\":\\"Open\\",\\"IndexOptionsStatus\\":0,\\"UserName\\":null,\\"IndexOptionsUserName\\":0}}}"', 'json', '{"searchInfo":{"IndexOptionsJobName":0,"IndexOptionsStatus":0,"IndexOptionsUserName":3,"JobName":null,"Status":"Open","UserName":"TrashME","TrackBys":false}}', 1, '2018-05-02 18:27:03', '2018-05-02 18:27:03'),
(1, 'http://luigi.3plcentral.com', 'PUT', '/WebUI/Inventory/ManageItems/SearchInfo', '400', '"{\\"GridOptions\\":null,\\"Audits\\":[{\\"CreationDate\\":\\"\\\\/Date(1525089583727)\\\\/\\",\\"Name\\":\\"asd\\",\\"Notes\\":\\"audit 1 notes\\",\\"AssignedTo\\":null,\\"Priority\\":9,\\"UseTrackBys\\":true,\\"Locations\\":[{\\"Id\\":107,\\"Name\\":\\"2-v-1-g\\",\\"Description\\":null},{\\"Id\\":2375,\\"Name\\":\\"22-33-44-55\\",\\"Description\\":null}],\\"EditUri\\":\\"/inventory/facilities/6/audits/2007\\",\\"Status\\":0,\\"NumberOfLocations\\":2}],\\"Users\\":[{\\"Name\\":\\"Fest\\",\\"Id\\":2},{\\"Name\\":\\"TrashME\\",\\"Id\\":3},{\\"Name\\":\\"Lock Me out\\",\\"Id\\":4},{\\"Name\\":\\"Testy McTestface\\",\\"Id\\":5},{\\"Name\\":\\"MJI\\",\\"Id\\":6},{\\"Name\\":\\"Mario Sr.\\",\\"Id\\":7},{\\"Name\\":\\"CustUser\\",\\"Id\\":13},{\\"Name\\":\\"User 2\\",\\"Id\\":16},{\\"Name\\":\\"test2\\",\\"Id\\":38},{\\"Name\\":\\"Delme\\",\\"Id\\":54},{\\"Name\\":\\"SIP\\",\\"Id\\":62},{\\"Name\\":\\"Shawn Gallagher\\",\\"Id\\":72},{\\"Name\\":\\"testuser\\",\\"Id\\":97},{\\"Name\\":\\"GoofyUser\\",\\"Id\\":99},{\\"Name\\":\\"George Francis\\",\\"Id\\":122},{\\"Name\\":\\"UserAminew data\\",\\"Id\\":128},{\\"Name\\":\\"CustUser1\\",\\"Id\\":151},{\\"Name\\":\\"South\\",\\"Id\\":156},{\\"Name\\":\\"11072017\\",\\"Id\\":312},{\\"Name\\":\\"new data\\",\\"Id\\":313},{\\"Name\\":\\"new data\\",\\"Id\\":314},{\\"Name\\":\\"new data\\",\\"Id\\":315},{\\"Name\\":\\"new data\\",\\"Id\\":316},{\\"Name\\":\\"new data\\",\\"Id\\":317},{\\"Name\\":\\"new data\\",\\"Id\\":318},{\\"Name\\":\\"new data\\",\\"Id\\":319},{\\"Name\\":\\"level1user\\",\\"Id\\":320},{\\"Name\\":\\"Pop7\\",\\"Id\\":321},{\\"Name\\":\\"new data\\",\\"Id\\":322},{\\"Name\\":\\"new data1\\",\\"Id\\":323},{\\"Name\\":\\"new data\\",\\"Id\\":325},{\\"Name\\":\\"new data\\",\\"Id\\":326},{\\"Name\\":\\"new data\\",\\"Id\\":327},{\\"Name\\":\\"new data\\",\\"Id\\":328},{\\"Name\\":\\"new data\\",\\"Id\\":329},{\\"Name\\":\\"new data\\",\\"Id\\":330},{\\"Name\\":\\"Asus\\",\\"Id\\":331},{\\"Name\\":\\"new data\\",\\"Id\\":332},{\\"Name\\":\\"New Manual User\\",\\"Id\\":333},{\\"Name\\":\\"User22\\",\\"Id\\":335},{\\"Name\\":\\"SmartUser\\",\\"Id\\":336},{\\"Name\\":\\"qweq\\",\\"Id\\":340},{\\"Name\\":\\"WareAdmin\\",\\"Id\\":1340},{\\"Name\\":\\"CUSAdmin\\",\\"Id\\":1341},{\\"Name\\":\\"Floor Manager\\",\\"Id\\":2342},{\\"Name\\":\\"DIYCentral\\",\\"Id\\":2343},{\\"Name\\":\\"Mahima\\",\\"Id\\":2344},{\\"Name\\":\\"DIY-Jim\\",\\"Id\\":2345},{\\"Name\\":\\"a\\",\\"Id\\":2346},{\\"Name\\":\\"teset123465\\",\\"Id\\":2349},{\\"Name\\":\\"teset1234\\",\\"Id\\":2350},{\\"Name\\":\\"testinguser0001\\",\\"Id\\":2351},{\\"Name\\":\\"testinguser\\",\\"Id\\":2352},{\\"Name\\":\\"bipin\\",\\"Id\\":2355}],\\"SearchInfo\\":{\\"HasData\\":true,\\"Data\\":{\\"JobName\\":null,\\"IndexOptionsJobName\\":0,\\"TrackBys\\":false,\\"Status\\":\\"Open\\",\\"IndexOptionsStatus\\":0,\\"UserName\\":null,\\"IndexOptionsUserName\\":0}}}"', 'json', '{"searchInfo":{"IndexOptionsJobName":0,"IndexOptionsStatus":0,"IndexOptionsUserName":3,"JobName":null,"Status":"Open","UserName":"TrashME","TrackBys":false}}', 2, '2018-05-02 18:27:53', '2018-05-02 18:27:53'),
(2, 'http://luigi.3plcentral.com', 'PUT', '/WebUI/Inventory/ManageItems/SearchInfo', '400', '"{\\"GridOptions\\":null,\\"Audits\\":[{\\"CreationDate\\":\\"\\\\/Date(1525089583727)\\\\/\\",\\"Name\\":\\"asd\\",\\"Notes\\":\\"audit 1 notes\\",\\"AssignedTo\\":null,\\"Priority\\":9,\\"UseTrackBys\\":true,\\"Locations\\":[{\\"Id\\":107,\\"Name\\":\\"2-v-1-g\\",\\"Description\\":null},{\\"Id\\":2375,\\"Name\\":\\"22-33-44-55\\",\\"Description\\":null}],\\"EditUri\\":\\"/inventory/facilities/6/audits/2007\\",\\"Status\\":0,\\"NumberOfLocations\\":2}],\\"Users\\":[{\\"Name\\":\\"Fest\\",\\"Id\\":2},{\\"Name\\":\\"TrashME\\",\\"Id\\":3},{\\"Name\\":\\"Lock Me out\\",\\"Id\\":4},{\\"Name\\":\\"Testy McTestface\\",\\"Id\\":5},{\\"Name\\":\\"MJI\\",\\"Id\\":6},{\\"Name\\":\\"Mario Sr.\\",\\"Id\\":7},{\\"Name\\":\\"CustUser\\",\\"Id\\":13},{\\"Name\\":\\"User 2\\",\\"Id\\":16},{\\"Name\\":\\"test2\\",\\"Id\\":38},{\\"Name\\":\\"Delme\\",\\"Id\\":54},{\\"Name\\":\\"SIP\\",\\"Id\\":62},{\\"Name\\":\\"Shawn Gallagher\\",\\"Id\\":72},{\\"Name\\":\\"testuser\\",\\"Id\\":97},{\\"Name\\":\\"GoofyUser\\",\\"Id\\":99},{\\"Name\\":\\"George Francis\\",\\"Id\\":122},{\\"Name\\":\\"UserAminew data\\",\\"Id\\":128},{\\"Name\\":\\"CustUser1\\",\\"Id\\":151},{\\"Name\\":\\"South\\",\\"Id\\":156},{\\"Name\\":\\"11072017\\",\\"Id\\":312},{\\"Name\\":\\"new data\\",\\"Id\\":313},{\\"Name\\":\\"new data\\",\\"Id\\":314},{\\"Name\\":\\"new data\\",\\"Id\\":315},{\\"Name\\":\\"new data\\",\\"Id\\":316},{\\"Name\\":\\"new data\\",\\"Id\\":317},{\\"Name\\":\\"new data\\",\\"Id\\":318},{\\"Name\\":\\"new data\\",\\"Id\\":319},{\\"Name\\":\\"level1user\\",\\"Id\\":320},{\\"Name\\":\\"Pop7\\",\\"Id\\":321},{\\"Name\\":\\"new data\\",\\"Id\\":322},{\\"Name\\":\\"new data1\\",\\"Id\\":323},{\\"Name\\":\\"new data\\",\\"Id\\":325},{\\"Name\\":\\"new data\\",\\"Id\\":326},{\\"Name\\":\\"new data\\",\\"Id\\":327},{\\"Name\\":\\"new data\\",\\"Id\\":328},{\\"Name\\":\\"new data\\",\\"Id\\":329},{\\"Name\\":\\"new data\\",\\"Id\\":330},{\\"Name\\":\\"Asus\\",\\"Id\\":331},{\\"Name\\":\\"new data\\",\\"Id\\":332},{\\"Name\\":\\"New Manual User\\",\\"Id\\":333},{\\"Name\\":\\"User22\\",\\"Id\\":335},{\\"Name\\":\\"SmartUser\\",\\"Id\\":336},{\\"Name\\":\\"qweq\\",\\"Id\\":340},{\\"Name\\":\\"WareAdmin\\",\\"Id\\":1340},{\\"Name\\":\\"CUSAdmin\\",\\"Id\\":1341},{\\"Name\\":\\"Floor Manager\\",\\"Id\\":2342},{\\"Name\\":\\"DIYCentral\\",\\"Id\\":2343},{\\"Name\\":\\"Mahima\\",\\"Id\\":2344},{\\"Name\\":\\"DIY-Jim\\",\\"Id\\":2345},{\\"Name\\":\\"a\\",\\"Id\\":2346},{\\"Name\\":\\"teset123465\\",\\"Id\\":2349},{\\"Name\\":\\"teset1234\\",\\"Id\\":2350},{\\"Name\\":\\"testinguser0001\\",\\"Id\\":2351},{\\"Name\\":\\"testinguser\\",\\"Id\\":2352},{\\"Name\\":\\"bipin\\",\\"Id\\":2355}],\\"SearchInfo\\":{\\"HasData\\":true,\\"Data\\":{\\"JobName\\":null,\\"IndexOptionsJobName\\":0,\\"TrackBys\\":false,\\"Status\\":\\"Open\\",\\"IndexOptionsStatus\\":0,\\"UserName\\":null,\\"IndexOptionsUserName\\":0}}}"', 'json', '{"searchInfo":{"IndexOptionsJobName":0,"IndexOptionsStatus":0,"IndexOptionsUserName":3,"JobName":null,"Status":"Open","UserName":"TrashME","TrackBys":false}}', 3, '2018-05-02 18:31:11', '2018-05-02 18:31:11'),
(2, 'http://luigi.3plcentral.com', 'POST', '/WebUI/Inventory/ManageItems/SearchInfo', '400', '"{\\"GridOptions\\":null,\\"Audits\\":[{\\"CreationDate\\":\\"\\\\/Date(1525089583727)\\\\/\\",\\"Name\\":\\"asd\\",\\"Notes\\":\\"audit 1 notes\\",\\"AssignedTo\\":null,\\"Priority\\":9,\\"UseTrackBys\\":true,\\"Locations\\":[{\\"Id\\":107,\\"Name\\":\\"2-v-1-g\\",\\"Description\\":null},{\\"Id\\":2375,\\"Name\\":\\"22-33-44-55\\",\\"Description\\":null}],\\"EditUri\\":\\"/inventory/facilities/6/audits/2007\\",\\"Status\\":0,\\"NumberOfLocations\\":2}],\\"Users\\":[{\\"Name\\":\\"Fest\\",\\"Id\\":2},{\\"Name\\":\\"TrashME\\",\\"Id\\":3},{\\"Name\\":\\"Lock Me out\\",\\"Id\\":4},{\\"Name\\":\\"Testy McTestface\\",\\"Id\\":5},{\\"Name\\":\\"MJI\\",\\"Id\\":6},{\\"Name\\":\\"Mario Sr.\\",\\"Id\\":7},{\\"Name\\":\\"CustUser\\",\\"Id\\":13},{\\"Name\\":\\"User 2\\",\\"Id\\":16},{\\"Name\\":\\"test2\\",\\"Id\\":38},{\\"Name\\":\\"Delme\\",\\"Id\\":54},{\\"Name\\":\\"SIP\\",\\"Id\\":62},{\\"Name\\":\\"Shawn Gallagher\\",\\"Id\\":72},{\\"Name\\":\\"testuser\\",\\"Id\\":97},{\\"Name\\":\\"GoofyUser\\",\\"Id\\":99},{\\"Name\\":\\"George Francis\\",\\"Id\\":122},{\\"Name\\":\\"UserAminew data\\",\\"Id\\":128},{\\"Name\\":\\"CustUser1\\",\\"Id\\":151},{\\"Name\\":\\"South\\",\\"Id\\":156},{\\"Name\\":\\"11072017\\",\\"Id\\":312},{\\"Name\\":\\"new data\\",\\"Id\\":313},{\\"Name\\":\\"new data\\",\\"Id\\":314},{\\"Name\\":\\"new data\\",\\"Id\\":315},{\\"Name\\":\\"new data\\",\\"Id\\":316},{\\"Name\\":\\"new data\\",\\"Id\\":317},{\\"Name\\":\\"new data\\",\\"Id\\":318},{\\"Name\\":\\"new data\\",\\"Id\\":319},{\\"Name\\":\\"level1user\\",\\"Id\\":320},{\\"Name\\":\\"Pop7\\",\\"Id\\":321},{\\"Name\\":\\"new data\\",\\"Id\\":322},{\\"Name\\":\\"new data1\\",\\"Id\\":323},{\\"Name\\":\\"new data\\",\\"Id\\":325},{\\"Name\\":\\"new data\\",\\"Id\\":326},{\\"Name\\":\\"new data\\",\\"Id\\":327},{\\"Name\\":\\"new data\\",\\"Id\\":328},{\\"Name\\":\\"new data\\",\\"Id\\":329},{\\"Name\\":\\"new data\\",\\"Id\\":330},{\\"Name\\":\\"Asus\\",\\"Id\\":331},{\\"Name\\":\\"new data\\",\\"Id\\":332},{\\"Name\\":\\"New Manual User\\",\\"Id\\":333},{\\"Name\\":\\"User22\\",\\"Id\\":335},{\\"Name\\":\\"SmartUser\\",\\"Id\\":336},{\\"Name\\":\\"qweq\\",\\"Id\\":340},{\\"Name\\":\\"WareAdmin\\",\\"Id\\":1340},{\\"Name\\":\\"CUSAdmin\\",\\"Id\\":1341},{\\"Name\\":\\"Floor Manager\\",\\"Id\\":2342},{\\"Name\\":\\"DIYCentral\\",\\"Id\\":2343},{\\"Name\\":\\"Mahima\\",\\"Id\\":2344},{\\"Name\\":\\"DIY-Jim\\",\\"Id\\":2345},{\\"Name\\":\\"a\\",\\"Id\\":2346},{\\"Name\\":\\"teset123465\\",\\"Id\\":2349},{\\"Name\\":\\"teset1234\\",\\"Id\\":2350},{\\"Name\\":\\"testinguser0001\\",\\"Id\\":2351},{\\"Name\\":\\"testinguser\\",\\"Id\\":2352},{\\"Name\\":\\"bipin\\",\\"Id\\":2355}],\\"SearchInfo\\":{\\"HasData\\":true,\\"Data\\":{\\"JobName\\":null,\\"IndexOptionsJobName\\":0,\\"TrackBys\\":false,\\"Status\\":\\"Open\\",\\"IndexOptionsStatus\\":0,\\"UserName\\":null,\\"IndexOptionsUserName\\":0}}}"', 'json', '{"searchInfo":{"IndexOptionsJobName":0,"IndexOptionsStatus":0,"IndexOptionsUserName":3,"JobName":null,"Status":"Open","UserName":"TrashME","TrackBys":false}}', 6, '2018-05-03 18:26:31', '2018-05-03 18:26:31'),
(1, 'http://localhost', 'GET', '/WebUI/PanelServices/GaaGaaGooGoo', '400', '{"Source":0,"RequestorContextId":"SE.un4ofb42ifkl3uwmfzkx5ic0.3102","Descriptions":[{"ErrorClass":"ModelValidation","ErrorCode":"dumby","Descriptors":["Api","fruit=cake"],"Hint":"don\'t touch it"}]}', 'json', '', 7, '2018-05-11 11:30:08', '2018-05-11 11:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `requestuser`
--

CREATE TABLE `requestuser` (
  `userId` int(11) DEFAULT NULL,
  `tplId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestuser`
--

INSERT INTO `requestuser` (`userId`, `tplId`, `name`, `username`, `customerId`, `id`, `createdAt`, `updatedAt`) VALUES
(1, 6, 'admin', '', '13', 1, '2018-05-02 18:27:03', '2018-05-02 18:27:03'),
(2, 3, 'admin1', '', '2', 2, '2018-05-02 18:31:11', '2018-05-02 18:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `smsalert`
--

CREATE TABLE `smsalert` (
  `tplId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `timing` int(11) DEFAULT NULL,
  `fromTime` varchar(255) DEFAULT NULL,
  `toTime` varchar(255) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smsalert`
--

INSERT INTO `smsalert` (`tplId`, `name`, `mobileNumber`, `timing`, `fromTime`, `toTime`, `id`, `createdAt`, `updatedAt`) VALUES
(6, 'brant', '18016477702', 0, '', '', 2, '2018-05-04 16:50:12', '2018-05-04 16:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admingo`
--
ALTER TABLE `admingo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gridoption`
--
ALTER TABLE `gridoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestuser`
--
ALTER TABLE `requestuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smsalert`
--
ALTER TABLE `smsalert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admingo`
--
ALTER TABLE `admingo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gridoption`
--
ALTER TABLE `gridoption`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `requestuser`
--
ALTER TABLE `requestuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `smsalert`
--
ALTER TABLE `smsalert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
