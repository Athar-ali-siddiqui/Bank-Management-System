-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 01:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank-management-sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `a_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `interest_rate` int(11) NOT NULL,
  `min_bal` double DEFAULT NULL,
  `min_open_bal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`a_id`, `name`, `interest_rate`, `min_bal`, `min_open_bal`) VALUES
(1, 'Term deposit', 7, 0, 100),
(2, 'Saving', 6, 0, 1000),
(3, 'Current', 0, 5000, 1000),
(4, 'SME bank', 0, 500, 500),
(5, 'Money Market', 5, 10000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `bank_teller`
--

CREATE TABLE `bank_teller` (
  `bt_id` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `cnic` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `bcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_teller`
--

INSERT INTO `bank_teller` (`bt_id`, `fname`, `lname`, `cnic`, `email`, `contact_no`, `salary`, `grade`, `password`, `bcode`) VALUES
(1, 'Electa', 'Boyle', '42206-4098575-3', 'ebert.gaston@yahoo.com', '0344-5267120', 132910, 'senior', 'eat', 2),
(2, 'Velva', 'Boehm', '42201-6804276-2', 'mercedes.smith@yahoo.com', '0333-2576853', 163930, 'senior', 'toj', 1),
(3, 'Austyn', 'Torp', '42208-4728292-3', 'alford46@gmail.com', '0392-3880492', 116108, 'fresh', 'kae', 3),
(4, 'Hilton', 'O\'Conner', '42206-8883912-5', 'skylar.rodriguez@gmail.com', '0343-1950848', 79838, 'junior', 'wme', 1),
(5, 'Henri', 'Leuschke', '42204-3709944-2', 'harold.erdman@gmail.com', '0371-1128377', 117655, 'junior', 'dks', 1),
(6, 'Ali', 'Stroman', '42200-3564158-4', 'virginia.bode@hotmail.com', '0363-2199118', 193062, 'senior', 'gvy', 3),
(7, 'Schuyler', 'Rutherford', '42209-8391206-7', 'sryan@gmail.com', '0371-5415710', 194283, 'junior', 'brq', 2),
(8, 'Megane', 'Franecki', '42203-7680611-7', 'hlemke@hotmail.com', '0347-0191967', 125769, 'fresh', 'eyi', 1),
(9, 'Nettie', 'Herzog', '42209-7094983-0', 'abernathy.cornell@gmail.com', '0314-3241613', 132355, 'senior', 'doc', 1),
(10, 'Abdul', 'Kub', '42201-3694547-7', 'von.juana@gmail.com', '0395-0308532', 197582, 'fresh', 'wua', 1),
(11, 'Elian', 'Grady', '42203-5871588-0', 'tstokes@yahoo.com', '0387-4838051', 186944, 'fresh', 'eag', 1),
(12, 'Jasper', 'Johns', '42205-4815026-8', 'vicenta.kutch@gmail.com', '0352-4525914', 139525, 'junior', 'zzw', 1),
(13, 'Fabiola', 'Pollich', '42209-5797758-0', 'immanuel.bailey@yahoo.com', '0375-8480527', 103077, 'fresh', 'ozv', 3),
(14, 'Clemmie', 'Purdy', '42204-5145385-6', 'o\'connell.hal@hotmail.com', '0334-7593715', 164472, 'senior', 'fdn', 3),
(15, 'Leilani', 'Hermiston', '42201-0192538-9', 'johnson.jerrold@gmail.com', '0326-8833899', 108270, 'junior', 'jlg', 3),
(16, 'Andre', 'Jacobson', '42209-8271795-9', 'trent.gaylord@yahoo.com', '0356-7637844', 89364, 'fresh', 'ylj', 2),
(17, 'Jesse', 'Carter', '42204-8034799-9', 'elisa37@hotmail.com', '0369-9170515', 63396, 'junior', 'ftg', 1),
(18, 'Angela', 'Adams', '42209-1322909-4', 'ernie.bergstrom@hotmail.com', '0361-7491640', 185162, 'fresh', 'rlm', 2),
(19, 'Bryon', 'Schulist', '42205-7363695-5', 'richard.cormier@yahoo.com', '0378-5680804', 53712, 'senior', 'lkh', 2),
(20, 'Stephania', 'Christiansen', '42207-9355560-4', 'edyth.jaskolski@gmail.com', '0373-1308531', 174818, 'junior', 'jct', 2),
(21, 'Suzanne', 'Kohler', '42208-7000777-5', 'feil.juwan@yahoo.com', '0347-4096908', 131119, 'fresh', 'sco', 2),
(22, 'Jazmyn', 'Breitenberg', '42203-3755998-1', 'johann68@yahoo.com', '0315-9634991', 135776, 'fresh', 'ydp', 2),
(23, 'Mackenzie', 'White', '42209-1532719-1', 'terence.hammes@hotmail.com', '0354-5123089', 186003, 'fresh', 'ptf', 1),
(24, 'Don', 'Beier', '42204-8015672-4', 'fabiola.ernser@hotmail.com', '0349-2775081', 93764, 'junior', 'yij', 2),
(25, 'Melany', 'Roberts', '42207-7072891-6', 'matilde16@hotmail.com', '0333-5144030', 192412, 'senior', 'rgt', 1),
(26, 'Nikki', 'Runte', '42209-5988370-4', 'solon.thompson@hotmail.com', '0351-1605190', 45540, 'fresh', 'xij', 2),
(27, 'Johnson', 'Altenwerth', '42202-0313698-4', 'genesis72@hotmail.com', '0329-1565174', 59162, 'senior', 'csn', 2),
(28, 'Sophia', 'Kunze', '42200-3749654-5', 'ohuels@yahoo.com', '0327-2771215', 65558, 'fresh', 'mft', 1),
(29, 'Josiah', 'Torp', '42209-4735517-2', 'kraig94@yahoo.com', '0310-3153534', 145408, 'senior', 'heg', 2),
(30, 'Deja', 'Bayer', '42201-9062262-9', 'kdicki@gmail.com', '0387-7691870', 121626, 'senior', 'icy', 2),
(31, 'Mallory', 'Dooley', '42207-3399107-1', 'cwunsch@yahoo.com', '0392-9428397', 63138, 'senior', 'nwd', 2),
(32, 'Amina', 'Ritchie', '42207-5230644-8', 'khowell@gmail.com', '0303-1729965', 71018, 'fresh', 'xxt', 3),
(33, 'Mervin', 'Considine', '42202-4515472-0', 'tsipes@yahoo.com', '0379-0595214', 108677, 'senior', 'may', 2),
(34, 'Tito', 'Pacocha', '42201-3592872-7', 'raymond52@hotmail.com', '0379-8125125', 84095, 'senior', 'sfy', 3),
(35, 'Roscoe', 'Mitchell', '42201-3333338-8', 'bridie14@hotmail.com', '0301-0613910', 111190, 'senior', 'uaz', 3),
(36, 'Sabina', 'Marquardt', '42202-6264561-2', 'shad.ferry@yahoo.com', '0353-8676198', 144922, 'fresh', 'wpu', 3),
(37, 'Marlen', 'Kertzmann', '42208-0500308-5', 'savanah18@gmail.com', '0355-7747641', 187450, 'senior', 'oig', 2),
(38, 'Devon', 'Schneider', '42202-9315009-2', 'shawn92@yahoo.com', '0373-8344616', 172685, 'senior', 'svn', 3),
(39, 'Kris', 'Johnson', '42201-3939403-8', 'koepp.miller@gmail.com', '0374-2784718', 133101, 'senior', 'nln', 3),
(40, 'Hanna', 'Hoeger', '42201-5177717-3', 'lortiz@yahoo.com', '0353-9641513', 47217, 'fresh', 'thf', 1),
(41, 'Hallie', 'Stehr', '42208-2760842-1', 'raul59@gmail.com', '0305-8834634', 56434, 'senior', 'eqa', 1),
(42, 'Gianni', 'Rowe', '42207-9178839-6', 'wilkinson.ted@yahoo.com', '0328-8431711', 111081, 'junior', 'kmk', 2),
(43, 'Ryley', 'Friesen', '42205-1710194-3', 'reggie.kuhic@hotmail.com', '0335-8018622', 169544, 'senior', 'tzh', 2),
(44, 'Jameson', 'Spinka', '42205-1924931-3', 'qprohaska@yahoo.com', '0388-2702704', 77203, 'junior', 'xmz', 2),
(45, 'Helga', 'Wuckert', '42201-3820205-9', 'viva60@hotmail.com', '0333-9175124', 58160, 'senior', 'qno', 3),
(46, 'Jessika', 'Crona', '42206-0170126-4', 'cornelius23@hotmail.com', '0350-5131223', 192617, 'senior', 'ncr', 3),
(47, 'Marisa', 'Lowe', '42200-8170864-7', 'cale.treutel@hotmail.com', '0386-0461886', 78664, 'junior', 'mau', 2),
(48, 'Ahmad', 'Hettinger', '42207-2233662-6', 'liam58@yahoo.com', '0387-9836520', 118790, 'fresh', 'ggm', 1),
(49, 'Jaqueline', 'Murazik', '42206-2279846-3', 'dwalker@hotmail.com', '0397-3429376', 131251, 'fresh', 'zlx', 1),
(50, 'Otilia', 'Gaylord', '42208-3257877-9', 'newton74@gmail.com', '0332-0965600', 92322, 'senior', 'gpf', 1),
(51, 'amna', 'shehzad', '23457689089', 'amnashe@gmail.com', '234576890', 45376890, 'shehzad', 'sam', 1),
(52, 'Ali', 'Abd', '231521513', 'ali@gmail.com', '45376890', 34234, 'Abd', 'tiq', 2),
(53, 'abce', 'mnb', 'fghjhk', 'uhads', 'cgvjbn', 57689, 'mnb', 'abc', 2),
(54, 'viraad', 'baig', 'ababa', 'ter.com', '1515263', 12345, 'baig', 'aaa', 2),
(55, 'werty', 'dfghjk', '2345678', 'sdfghjkl;', '346576898', 657890, 'dfghjk', 'ter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bcode` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bcode`, `name`, `location`) VALUES
(1, 'Golden', 'Gulshan-e-Iqbal'),
(2, 'Silver', 'Gulistan-e-jauhar'),
(3, 'Bronze', 'Gulzar-e-hijri');

-- --------------------------------------------------------

--
-- Table structure for table `branch_manager`
--

CREATE TABLE `branch_manager` (
  `bm_id` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `cnic` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  `bcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_manager`
--

INSERT INTO `branch_manager` (`bm_id`, `fname`, `lname`, `cnic`, `email`, `contact_no`, `salary`, `password`, `bcode`) VALUES
(1, 'Pasquale', 'Hoeger', '4220-5591813-3', 'dubuque.natalie@gmail.com', '0319-1947406', 477406, 'bve', 1),
(2, 'Makayla', 'Harris', '4220-0627643-5', 'yrippin@gmail.com', '0373-2883739', 346402, 'tth', 2),
(3, 'Garfield', 'Mills', '4220-6829590-4', 'myrl56@gmail.com', '0322-6631912', 255860, 'swh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `cnic` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `fname`, `lname`, `cnic`, `email`, `password`) VALUES
(1, 'Albina', 'Fahey', '42203-9099350-7', 'nikolaus.hudson@okon.net', 'feh'),
(2, 'Kailee', 'Koch', '42207-8699674-7', 'paucek.amaya@hoegergoyette.org', 'lwz'),
(3, 'Beau', 'Wehner', '42206-4603458-2', 'andre41@hotmail.com', 'bha'),
(4, 'Zita', 'Hyatt', '42205-0226729-6', 'weissnat.prudence@larson.com', 'eel'),
(5, 'Jefferey', 'Gulgowski', '42204-0550931-0', 'lyla60@hermann.info', 'fbn'),
(6, 'Deontae', 'Ritchie', '42201-2011598-8', 'cartwright.august@gmail.com', 'qdu'),
(7, 'Gayle', 'Krajcik', '42204-1180841-5', 'izaiah.gusikowski@hotmail.com', 'ggw'),
(8, 'Camille', 'Quitzon', '42206-8898609-9', 'rohan.dexter@bradtkejacobson.com', 'mbw'),
(9, 'Celia', 'Gibson', '42200-0128066-6', 'orlando92@mccullough.com', 'ofl'),
(10, 'Tia', 'Mraz', '42201-2066056-4', 'langosh.eula@watsica.info', 'ewm'),
(11, 'Alysson', 'Monahan', '42209-3737977-2', 'adams.sheldon@gmail.com', 'uvq'),
(12, 'Adah', 'Reinger', '42200-1751811-4', 'efranecki@prosacco.com', 'hlb'),
(13, 'Quinton', 'Parker', '42200-4822343-5', 'jaydon.strosin@hermann.com', 'kye'),
(14, 'Claire', 'Harvey', '42203-3964800-7', 'nat.weber@koepp.com', 'ron'),
(15, 'Dorris', 'Sauer', '42207-8679468-3', 'oberbrunner.domenick@west.com', 'ess'),
(16, 'Kitty', 'Schimmel', '42208-1235858-2', 'shania.feil@hotmail.com', 'bbj'),
(17, 'Lavon', 'Wisoky', '42208-5203853-6', 'laverne.gutkowski@hotmail.com', 'vqx'),
(18, 'Gaston', 'Monahan', '42207-1640813-2', 'hermiston.bonnie@yahoo.com', 'qrp'),
(19, 'Zoie', 'Monahan', '42205-2317348-3', 'fblick@kuphal.com', 'ugt'),
(20, 'Jensen', 'Hilpert', '42200-8023143-1', 'johnson.rafaela@hotmail.com', 'hbl'),
(21, 'Vincenza', 'Halvorson', '42207-6452207-0', 'evert17@yahoo.com', 'laf'),
(22, 'Loy', 'Auer', '42202-1068072-5', 'macejkovic.peter@hotmail.com', 'fdy'),
(23, 'Shaina', 'Marks', '42209-1831303-7', 'rmuller@gmail.com', 'prw'),
(24, 'Jakayla', 'Mraz', '42203-3496490-7', 'ebony99@hotmail.com', 'uep'),
(25, 'Angeline', 'Abshire', '42208-3399039-5', 'friedrich81@muller.com', 'ywu'),
(26, 'Ally', 'Hammes', '42209-8532977-0', 'idell.wisoky@little.com', 'rgc'),
(27, 'Hayden', 'Runolfsdottir', '42209-6111893-1', 'baby67@fadel.org', 'plt'),
(28, 'Colby', 'Quitzon', '42200-0110900-3', 'haskell61@hotmail.com', 'nts'),
(29, 'Nakia', 'Lind', '42206-4364275-7', 'ahand@gmail.com', 'ihe'),
(30, 'Monica', 'Fahey', '42207-0136593-8', 'tyson.green@yahoo.com', 'kst'),
(31, 'Clementine', 'Morissette', '42200-2398791-9', 'cornelius.wisoky@yahoo.com', 'btc'),
(32, 'Leonardo', 'Trantow', '42200-7647038-3', 'blick.brennon@leschmonahan.com', 'lmi'),
(33, 'Mark', 'Schinner', '42207-7835730-5', 'guy.ruecker@runolfsson.org', 'zly'),
(34, 'Odell', 'Hoppe', '42204-0849406-5', 'kmertz@bartellortiz.com', 'hhj'),
(35, 'Marielle', 'Nikolaus', '42203-0646676-5', 'rutherford.cordell@gmail.com', 'ivo'),
(36, 'Raoul', 'Stokes', '42206-6452415-6', 'qconn@jenkinslynch.info', 'dlf'),
(37, 'Hayden', 'Johnson', '42206-6203160-1', 'anjali23@yahoo.com', 'fme'),
(38, 'Landen', 'Adams', '42204-0059588-2', 'rice.jaiden@yahoo.com', 'bxo'),
(39, 'Jana', 'Ortiz', '42204-4882415-9', 'fisher.lucienne@yahoo.com', 'gjt'),
(40, 'Giles', 'Collins', '42202-2305187-1', 'vita.kunde@spinka.com', 'koe'),
(41, 'Sanford', 'Goodwin', '42204-5526446-4', 'jaydon.batz@crooks.com', 'kem'),
(42, 'Sydney', 'Reichert', '42204-4106491-6', 'jdooley@hotmail.com', 'kst'),
(43, 'Chester', 'Steuber', '42208-7973194-5', 'loyal49@spencer.com', 'qsg'),
(44, 'Felton', 'Stanton', '42200-4410007-2', 'lorenzo91@murazik.com', 'ywy'),
(45, 'Emiliano', 'Thiel', '42208-8161497-8', 'orin.brakus@gmail.com', 'puo'),
(46, 'Americo', 'Powlowski', '42207-2060074-2', 'hahn.august@gmail.com', 'pnb'),
(47, 'Felipe', 'Dach', '42201-8766374-1', 'lupe.lind@lang.info', 'rwk'),
(48, 'Lamont', 'Moore', '42206-7168845-3', 'hackett.ona@carter.biz', 'yhq'),
(49, 'Mohamed', 'Heaney', '42204-9905389-2', 'cleta41@yahoo.com', 'dvd'),
(50, 'Estrella', 'Mann', '42209-0710133-3', 'jacinthe74@gmail.com', 'dao'),
(51, 'Ophelia', 'Jacobi', '42200-6626029-4', 'vblanda@gmail.com', 'imw'),
(52, 'Jannie', 'Green', '42203-7407601-9', 'kristy18@macejkovicdickinson.net', 'und'),
(53, 'Pascale', 'Wuckert', '42207-5406478-2', 'makayla.schaefer@hotmail.com', 'ebl'),
(54, 'Callie', 'Bashirian', '42200-2322055-6', 'pnicolas@bergnaumwest.com', 'ldo'),
(55, 'Hulda', 'Cummings', '42202-2622383-6', 'karelle30@yahoo.com', 'qqe'),
(56, 'Reggie', 'Marks', '42207-1127081-8', 'mreinger@gmail.com', 'rcu'),
(57, 'Marguerite', 'Connelly', '42201-3711627-8', 'emile.orn@yahoo.com', 'cfx'),
(58, 'Keeley', 'Gulgowski', '42208-8552909-2', 'isaias.o\'connell@gmail.com', 'qll'),
(59, 'Christ', 'Towne', '42208-0020843-3', 'harmstrong@hotmail.com', 'pql'),
(60, 'Savanah', 'Hoeger', '42208-4070199-0', 'chelsie59@yahoo.com', 'fek'),
(61, 'Felipe', 'Huel', '42209-9566032-1', 'akeem71@yahoo.com', 'wjm'),
(62, 'Cordia', 'Robel', '42201-8382564-3', 'damaris33@gmail.com', 'zmg'),
(63, 'Kaelyn', 'Runolfsdottir', '42209-6481759-2', 'fay.carlotta@yahoo.com', 'ruv'),
(64, 'Enos', 'Price', '42206-1130898-8', 'marcelina.mcglynn@yahoo.com', 'fuy'),
(65, 'Marisa', 'Mosciski', '42202-7563328-1', 'pgreenholt@gmail.com', 'fwt'),
(66, 'Stone', 'Lindgren', '42207-5342358-9', 'schultz.milford@yahoo.com', 'jgq'),
(67, 'Camren', 'Hegmann', '42209-1675988-1', 'hfritsch@kozey.com', 'wnm'),
(68, 'Lonie', 'Emmerich', '42200-4424980-4', 'kailyn03@gmail.com', 'fvd'),
(69, 'Jarrell', 'Wilderman', '42207-8082037-3', 'schmidt.yvonne@bayerdurgan.info', 'fpo'),
(70, 'Darian', 'Glover', '42208-3262179-6', 'ziemann.tina@ortiz.com', 'aaa'),
(71, 'Zelma', 'Gulgowski', '42201-4330589-1', 'eleanore73@hahnheller.com', 'esi'),
(72, 'Katelynn', 'Kiehn', '42202-4647628-2', 'schultz.reinhold@stehrwunsch.com', 'fje'),
(73, 'Janiya', 'Howell', '42205-4961141-0', 'kub.antonina@hotmail.com', 'rrx'),
(74, 'Salma', 'Heller', '42206-9492418-8', 'wbednar@hotmail.com', 'yza'),
(75, 'Janae', 'Pacocha', '42201-5381970-1', 'janet97@swift.com', 'wec'),
(76, 'Granville', 'Wunsch', '42201-8631041-8', 'fboyer@daugherty.com', 'drb'),
(77, 'Ward', 'Dickens', '42202-2305128-3', 'clovis09@walshberge.com', 'bnb'),
(78, 'Xander', 'Ruecker', '42209-9968681-9', 'ycrooks@howe.com', 'lbc'),
(79, 'Felicita', 'Greenholt', '42208-9908227-6', 'merlin57@hotmail.com', 'pxj'),
(80, 'Lincoln', 'Hintz', '42200-1033182-5', 'jermey.watsica@doyleharvey.com', 'bzy'),
(81, 'Emerson', 'Roberts', '42200-8120731-5', 'derek61@yahoo.com', 'wjg'),
(82, 'Harmony', 'Lesch', '42207-3117357-4', 'gillian.terry@gmail.com', 'nym'),
(83, 'Adelia', 'Block', '42200-6293112-0', 'mayert.jaime@reillygoldner.com', 'ujz'),
(84, 'Yvonne', 'Beatty', '42209-2765591-0', 'zemlak.eduardo@blandaskiles.com', 'zqf'),
(85, 'Vella', 'Schinner', '42208-2939052-3', 'sratke@raynor.com', 'idf'),
(86, 'Nola', 'Huels', '42208-7236782-9', 'amiya.kuhlman@yahoo.com', 'quq'),
(87, 'Bianka', 'Okuneva', '42209-6537247-6', 'wehner.scottie@kuvalis.com', 'evu'),
(88, 'Deron', 'Haley', '42209-5429055-9', 'keara83@hotmail.com', 'fut'),
(89, 'Lindsey', 'Luettgen', '42202-8019554-5', 'edmund.schaefer@hotmail.com', 'udb'),
(90, 'Adele', 'Rolfson', '42203-8172551-3', 'gay60@schamberger.biz', 'dhs'),
(91, 'Candace', 'Rau', '42204-3809865-8', 'danika.hessel@yahoo.com', 'hwv'),
(92, 'Hattie', 'Mraz', '42203-3723984-4', 'lois.wintheiser@yahoo.com', 'crv'),
(93, 'Luella', 'Tillman', '42202-7562428-7', 'tremblay.cayla@kling.com', 'sdm'),
(94, 'Demarco', 'Goyette', '42204-4776351-3', 'lorenzo.corkery@bailey.com', 'lbb'),
(95, 'Jonas', 'Marks', '42206-8860234-3', 'wstamm@pacochanicolas.com', 'qwj'),
(96, 'Ada', 'Gleason', '42208-8422040-5', 'kbauch@hotmail.com', 'bso'),
(97, 'Chet', 'Hamill', '42204-5426745-1', 'piper.ward@jast.biz', 'ysz'),
(98, 'Myrna', 'Wolf', '42204-7783465-2', 'fwilkinson@gmail.com', 'vql'),
(99, 'Desmond', 'Daniel', '42203-9020855-0', 'willa94@hoppetrantow.com', 'jur'),
(100, 'Clementina', 'Wisozk', '42204-8707058-8', 'waelchi.palma@lowe.org', 'yuf');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `c_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `bt_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`c_id`, `a_id`, `bt_id`, `date_created`, `balance`) VALUES
(61, 2, 41, '2021-08-09', 1302066),
(94, 1, 36, '2022-02-04', 6430091),
(87, 2, 39, '2022-03-11', 4891604),
(86, 5, 35, '2021-12-02', 7841123),
(20, 2, 3, '2022-06-03', 8729396),
(61, 3, 22, '2021-11-10', 2373764),
(98, 5, 36, '2021-10-10', 5042079),
(80, 5, 23, '2021-08-05', 6729781),
(59, 2, 19, '2021-10-27', 4085711),
(33, 3, 27, '2021-06-29', 8885779),
(52, 4, 14, '2021-10-18', 6502622),
(34, 4, 13, '2021-07-05', 7596149),
(91, 2, 41, '2022-04-03', 3163702),
(93, 2, 15, '2021-06-05', 3482904),
(22, 2, 38, '2021-08-19', 3327957),
(87, 2, 11, '2022-05-06', 1183271),
(75, 4, 47, '2022-04-08', 3312214),
(80, 4, 16, '2021-07-02', 9307901),
(28, 5, 6, '2021-07-13', 8798582),
(59, 5, 10, '2022-04-30', 7890645),
(76, 5, 23, '2022-04-08', 2605524),
(96, 1, 8, '2021-09-10', 5772149),
(25, 5, 29, '2022-04-07', 5646972),
(8, 3, 20, '2021-10-15', 6398924),
(19, 2, 31, '2021-06-12', 4326093),
(61, 5, 32, '2022-04-17', 7826009),
(59, 2, 32, '2021-06-30', 3292825),
(6, 5, 32, '2022-04-17', 6141689),
(2, 5, 4, '2021-12-31', 4325587),
(11, 1, 27, '2021-10-09', 8743261),
(10, 2, 25, '2022-01-25', 5989487),
(57, 5, 34, '2021-11-21', 56324),
(46, 1, 39, '2022-02-22', 6309616),
(15, 3, 10, '2021-10-02', 5536624),
(38, 3, 43, '2022-05-04', 5273872),
(56, 3, 43, '2021-06-06', 8363698),
(81, 3, 29, '2021-12-21', 6663862),
(60, 3, 15, '2022-03-04', 7966039),
(5, 2, 6, '2021-12-10', 5668750),
(65, 1, 28, '2022-04-22', 5329810),
(46, 3, 31, '2021-12-07', 5542930),
(40, 3, 29, '2021-06-08', 7604849),
(3, 2, 21, '2022-03-31', 8490125),
(13, 3, 28, '2021-06-14', 5609253),
(84, 5, 13, '2021-06-19', 6712544),
(58, 5, 32, '2022-01-08', 8222166),
(41, 4, 49, '2022-03-29', 7285298),
(35, 3, 45, '2021-08-01', 3348686),
(54, 1, 43, '2021-06-23', 3107680),
(13, 2, 26, '2022-04-18', 715056),
(38, 3, 20, '2021-12-17', 2998042),
(85, 5, 48, '2021-09-08', 3657163),
(73, 3, 24, '2021-12-17', 2191573),
(78, 5, 27, '2022-03-21', 7084093),
(100, 3, 33, '2021-06-27', 7786606),
(37, 5, 20, '2021-12-17', 5516343),
(66, 5, 37, '2021-10-01', 1680),
(68, 2, 38, '2021-06-26', 1290247),
(64, 3, 18, '2022-04-11', 3626075),
(1, 5, 19, '2021-08-11', 2134887),
(6, 3, 17, '2022-03-25', 6597849),
(71, 1, 37, '2022-04-21', 467244),
(87, 2, 30, '2022-05-12', 4938872),
(35, 4, 3, '2021-06-24', 8460359),
(4, 1, 33, '2022-05-14', 1507575),
(34, 2, 42, '2021-07-09', 4806965),
(70, 5, 3, '2021-10-26', 994413),
(43, 3, 15, '2021-08-09', 97565),
(40, 1, 27, '2021-12-15', 5597965),
(95, 2, 8, '2021-07-15', 1240901),
(69, 5, 45, '2022-04-20', 3991564),
(22, 5, 10, '2021-07-22', 7770084),
(87, 1, 24, '2022-03-10', 8793633),
(23, 3, 40, '2021-12-06', 9927773),
(92, 4, 30, '2022-02-18', 2085989),
(45, 1, 22, '2021-10-20', 7926189),
(52, 3, 46, '2021-12-28', 6235340),
(16, 2, 22, '2021-09-22', 6861829),
(21, 5, 2, '2022-05-05', 1368036),
(7, 3, 14, '2022-01-09', 4041716),
(81, 5, 26, '2021-12-19', 6871466),
(68, 2, 8, '2021-11-07', 9338743),
(18, 2, 10, '2022-01-21', 4365557),
(87, 4, 48, '2021-08-19', 1905096),
(50, 2, 36, '2021-12-26', 9705608),
(23, 2, 4, '2021-07-11', 451958),
(61, 1, 24, '2022-03-24', 7035151),
(44, 2, 48, '2021-12-30', 5643873),
(9, 2, 21, '2022-02-15', 8731365),
(79, 5, 21, '2021-07-25', 8172933),
(29, 1, 29, '2022-03-26', 9446846),
(5, 3, 2, '2022-03-08', 9165608),
(26, 3, 1, '2022-03-16', 9901879),
(76, 3, 2, '2022-04-15', 109357),
(75, 2, 42, '2022-04-18', 4008284),
(93, 5, 7, '2021-12-17', 9987067),
(63, 3, 16, '2022-03-26', 5933271),
(70, 5, 48, '2021-08-12', 1017814),
(86, 5, 43, '2021-07-27', 7497111),
(63, 2, 33, '2021-06-21', 833741),
(50, 5, 2, '2021-07-28', 5511610),
(32, 2, 25, '2021-06-06', 3409711),
(22, 5, 38, '2021-10-18', 3515243),
(58, 3, 26, '2021-06-18', 9647216),
(41, 5, 37, '2022-01-15', 5613910),
(54, 3, 45, '2021-10-19', 9795378),
(100, 1, 22, '2021-11-19', 2784570),
(77, 2, 44, '2021-10-13', 7780531),
(82, 5, 22, '2021-10-21', 6558174),
(5, 1, 49, '2021-12-01', 7583405),
(41, 1, 33, '2022-04-06', 1171597),
(16, 3, 34, '2022-03-01', 8127586),
(36, 4, 11, '2022-02-27', 6466495),
(7, 5, 33, '2022-04-10', 1336076),
(6, 5, 39, '2021-06-22', 1042465),
(82, 4, 38, '2021-09-19', 8977698),
(89, 3, 22, '2021-09-04', 2478683),
(51, 4, 40, '2021-11-07', 2422536),
(26, 1, 39, '2021-10-23', 9527385),
(96, 5, 9, '2022-04-13', 1059599),
(35, 1, 12, '2022-03-18', 9620312),
(38, 1, 29, '2021-07-25', 887470),
(38, 5, 14, '2021-09-25', 728098),
(17, 2, 33, '2022-04-30', 1292937),
(38, 4, 5, '2022-05-28', 483412),
(84, 5, 19, '2021-11-27', 6171553),
(82, 2, 19, '2021-09-24', 2074966),
(64, 1, 15, '2021-09-09', 4566404),
(38, 2, 38, '2022-02-27', 8891034),
(95, 5, 47, '2022-02-03', 4537261),
(2, 4, 22, '2022-06-07', 9123456),
(3, 3, 22, '2022-06-07', 2345678);

-- --------------------------------------------------------

--
-- Table structure for table `customer_loan`
--

CREATE TABLE `customer_loan` (
  `c_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `lo_id` int(11) NOT NULL,
  `date_availed` date NOT NULL,
  `availed_amount` double NOT NULL,
  `monthly_repay` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_loan`
--

INSERT INTO `customer_loan` (`c_id`, `l_id`, `lo_id`, `date_availed`, `availed_amount`, `monthly_repay`) VALUES
(28, 2, 7, '2022-02-02', 6726239, 183952),
(71, 1, 2, '2021-11-10', 3845161, 24090),
(96, 1, 9, '2021-09-12', 2091592, 192153),
(39, 1, 7, '2022-04-10', 2136505, 680891),
(54, 2, 8, '2021-09-15', 2943781, 213628),
(90, 4, 45, '2021-11-13', 5982362, 948383),
(32, 2, 5, '2021-08-13', 6111575, 130384),
(73, 3, 8, '2021-12-18', 966437, 672665),
(55, 4, 8, '2021-09-14', 5050720, 574224),
(15, 1, 2, '2021-12-10', 3535679, 627799),
(37, 4, 7, '2021-06-06', 836118, 167691),
(21, 3, 4, '2021-08-26', 3260743, 891355),
(60, 4, 23, '2021-11-22', 9071001, 951605),
(100, 2, 28, '2022-05-03', 9686270, 833828),
(96, 4, 7, '2021-12-22', 4427015, 778238),
(18, 2, 6, '2021-12-11', 1913243, 455120),
(21, 4, 22, '2021-10-27', 3802394, 185239),
(100, 4, 7, '2021-09-05', 3664335, 347543),
(47, 4, 6, '2021-10-13', 7661367, 251828),
(14, 1, 7, '2021-10-21', 2965815, 753940),
(55, 3, 28, '2022-05-31', 7705544, 564108),
(23, 4, 1, '2021-07-24', 1414486, 140039),
(26, 2, 7, '2021-07-16', 7553638, 154313),
(63, 3, 5, '2021-11-29', 7198619, 185766),
(57, 3, 12, '2021-09-14', 6794277, 827276),
(9, 3, 3, '2021-07-10', 8347842, 993764),
(32, 1, 26, '2021-09-29', 3217724, 310773),
(73, 1, 27, '2021-08-02', 4275101, 220295),
(78, 3, 3, '2021-10-17', 5941133, 985731),
(23, 3, 28, '2021-06-16', 8354012, 799395),
(97, 1, 40, '2021-11-01', 8121528, 323555),
(17, 1, 6, '2021-10-17', 3475805, 581688),
(49, 1, 40, '2022-02-28', 9795321, 534100),
(40, 3, 11, '2022-03-28', 8390725, 952222),
(63, 4, 50, '2021-06-10', 2423146, 64436),
(11, 1, 28, '2021-12-26', 1122843, 659321),
(25, 4, 15, '2022-04-21', 8779863, 145891),
(93, 3, 42, '2022-02-09', 1359626, 720219),
(45, 4, 36, '2021-12-24', 8637420, 964309),
(44, 3, 3, '2022-02-13', 4733744, 785596),
(85, 4, 49, '2022-05-28', 9417125, 428170),
(30, 2, 9, '2021-11-25', 6041761, 570258),
(17, 2, 14, '2022-04-25', 5820665, 761580),
(57, 2, 7, '2021-11-28', 4284397, 251395),
(6, 4, 26, '2022-03-14', 9014145, 760826),
(42, 2, 39, '2021-07-15', 5350736, 835705),
(94, 1, 34, '2022-01-28', 8001022, 450180),
(30, 1, 15, '2021-10-06', 9726922, 461443),
(12, 2, 3, '2022-01-29', 1137570, 622455),
(77, 4, 49, '2021-08-17', 2162786, 998803),
(87, 3, 47, '2022-01-12', 8352228, 38326),
(95, 3, 40, '2022-02-06', 1202849, 689844),
(93, 1, 6, '2021-11-10', 3373588, 286796),
(78, 4, 30, '2022-03-11', 6426106, 6810),
(18, 4, 36, '2022-04-30', 7564040, 627109),
(84, 3, 7, '2022-02-27', 4417975, 854476),
(1, 2, 42, '2021-10-18', 6235949, 648338),
(67, 4, 23, '2021-12-01', 9760336, 109397),
(46, 4, 22, '2021-08-24', 7961789, 439403),
(31, 4, 39, '2022-02-08', 8394200, 305369),
(18, 3, 19, '2021-10-25', 3721475, 767017),
(77, 1, 30, '2022-05-14', 7115964, 360647),
(33, 2, 1, '2021-12-12', 7433537, 189789),
(17, 1, 13, '2021-09-12', 6202025, 66435),
(91, 2, 34, '2021-07-04', 2187615, 27264),
(36, 4, 21, '2021-08-02', 6572695, 312626),
(25, 2, 11, '2022-04-05', 4399847, 543439),
(8, 4, 46, '2021-12-30', 8910043, 505509),
(70, 2, 12, '2022-03-17', 1340194, 673467),
(29, 1, 47, '2021-12-17', 2016307, 811460),
(53, 1, 45, '2021-12-15', 2070324, 761410),
(47, 1, 16, '2021-10-27', 2132305, 324732),
(71, 1, 26, '2021-11-12', 5605041, 214999),
(72, 4, 45, '2021-06-22', 1940535, 104673),
(96, 3, 9, '2022-04-14', 8984707, 620553),
(62, 1, 42, '2021-07-23', 704867, 596519),
(58, 1, 47, '2022-05-21', 7582382, 259733),
(85, 1, 46, '2022-01-12', 998909, 913264),
(94, 2, 31, '2022-04-24', 1882089, 18043),
(51, 3, 11, '2021-11-30', 4908076, 542543),
(17, 4, 41, '2022-03-19', 3174235, 880956),
(48, 1, 3, '2021-06-28', 1513678, 534222),
(69, 2, 46, '2022-03-12', 7222101, 772392),
(81, 4, 44, '2021-11-16', 1677666, 698202),
(28, 3, 29, '2021-07-13', 3106464, 389791),
(80, 2, 39, '2021-11-11', 5205321, 237274),
(67, 3, 33, '2021-09-05', 590937, 308601),
(9, 1, 31, '2021-08-06', 2637516, 886107),
(16, 1, 24, '2022-02-03', 9173466, 123493),
(7, 1, 25, '2021-06-11', 2514093, 838103),
(49, 4, 34, '2021-09-01', 583267, 205659),
(19, 4, 18, '2021-06-22', 6494402, 457234),
(8, 4, 2, '2021-10-15', 5324948, 786348),
(29, 3, 39, '2022-01-29', 6879157, 719739),
(22, 1, 21, '2022-04-20', 1104992, 565588),
(45, 2, 44, '2022-04-30', 3539209, 744368),
(45, 3, 44, '2021-10-22', 4627442, 872088),
(33, 2, 22, '2022-01-16', 2400849, 273000),
(30, 2, 43, '2021-08-10', 4912392, 180143),
(92, 4, 7, '2021-08-05', 2360080, 554122),
(13, 3, 19, '2022-04-13', 914240, 688409),
(34, 4, 42, '2022-01-04', 6780984, 515321),
(69, 3, 19, '2022-05-07', 5946373, 73597),
(46, 2, 37, '2021-08-07', 3392019, 622862),
(50, 1, 16, '2021-06-06', 3132581, 454234),
(50, 2, 25, '2022-06-02', 2142353, 982727),
(23, 1, 32, '2021-06-06', 4439981, 295203),
(28, 2, 44, '2022-03-02', 4755329, 72330),
(69, 4, 35, '2021-11-25', 6855970, 824727),
(95, 4, 22, '2021-10-12', 9930846, 537890),
(72, 2, 47, '2022-03-28', 6826783, 266927),
(82, 2, 36, '2021-09-26', 7148836, 826678),
(61, 3, 31, '2021-09-29', 9183627, 645668),
(34, 4, 43, '2022-05-15', 2755681, 213573),
(77, 4, 47, '2022-06-02', 7134762, 656955),
(25, 4, 3, '2021-11-27', 5842927, 695753),
(8, 4, 35, '2022-03-15', 862915, 256047),
(25, 2, 26, '2021-08-31', 3496114, 866524),
(44, 3, 26, '2022-03-26', 1086061, 33095),
(99, 1, 42, '2022-02-24', 9301575, 219451),
(69, 4, 6, '2021-12-24', 4111147, 999175),
(1, 1, 41, '2022-01-17', 8586125, 873219),
(45, 2, 20, '2021-07-20', 1868244, 899208),
(5, 4, 9, '2022-02-03', 8384354, 109156),
(71, 3, 6, '2022-03-26', 5450954, 527691),
(52, 2, 10, '2022-02-04', 5688432, 973402),
(47, 1, 28, '2021-08-25', 4752521, 801336),
(5, 1, 19, '2021-12-08', 852997, 413811),
(55, 1, 36, '2022-03-02', 2290595, 286075),
(76, 4, 36, '2021-09-22', 6637210, 366328),
(34, 1, 35, '2022-03-26', 1622107, 323830),
(8, 4, 40, '2022-04-23', 9529061, 824118),
(6, 1, 5, '2021-12-18', 4968957, 595819),
(50, 2, 23, '2022-05-06', 3729086, 94210),
(64, 4, 3, '2021-07-28', 5404532, 837971),
(56, 2, 28, '2021-12-21', 3710457, 188713),
(99, 2, 19, '2021-07-20', 8094553, 9210),
(28, 3, 37, '2021-06-04', 597860, 382414),
(77, 4, 28, '2021-09-26', 6113289, 743714),
(25, 4, 11, '2021-09-27', 8997866, 907212),
(97, 2, 26, '2022-02-16', 9562975, 20883),
(84, 3, 47, '2021-11-14', 5751756, 84559),
(19, 3, 49, '2021-11-20', 3988109, 83276),
(8, 2, 43, '2021-08-29', 8480082, 280112),
(97, 2, 13, '2021-09-07', 4777945, 759707),
(40, 2, 48, '2022-04-01', 7885546, 595381),
(8, 3, 50, '2021-10-20', 693348, 224388),
(73, 4, 20, '2022-03-24', 4663117, 290806),
(44, 1, 41, '2022-01-24', 5480573, 71764),
(68, 2, 39, '2021-07-09', 8294389, 397974),
(20, 1, 50, '2022-04-10', 7533021, 189796),
(8, 1, 19, '2022-03-25', 3480042, 874538),
(69, 3, 41, '2022-01-29', 4671123, 39758),
(98, 2, 36, '2021-12-31', 7783978, 457088),
(1, 2, 6, '2021-08-21', 4452307, 795415),
(78, 4, 40, '2022-02-24', 5824665, 995787),
(38, 4, 32, '2021-10-18', 2964962, 264427),
(44, 3, 21, '2022-01-08', 8851076, 934789),
(73, 2, 43, '2021-07-30', 7671154, 772132),
(78, 3, 23, '2021-08-28', 8899338, 119457),
(64, 3, 44, '2021-08-29', 9982302, 143175),
(9, 4, 5, '2021-06-20', 8537680, 750998),
(95, 1, 6, '2021-07-31', 8516273, 150936),
(47, 3, 29, '2021-12-19', 2570508, 664629),
(77, 1, 18, '2021-12-12', 6770813, 530967);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `l_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `avail_limit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`l_id`, `name`, `avail_limit`) VALUES
(1, 'Personal loan', 8000000),
(2, 'Swift finance', 10000000),
(3, 'Home finance', 5000000),
(4, 'Automobile finance', 2500000);

-- --------------------------------------------------------

--
-- Table structure for table `loan_officer`
--

CREATE TABLE `loan_officer` (
  `lo_id` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `cnic` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `bcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_officer`
--

INSERT INTO `loan_officer` (`lo_id`, `fname`, `lname`, `cnic`, `email`, `contact_no`, `salary`, `grade`, `password`, `bcode`) VALUES
(1, 'Kylie', 'Gerhold', '42203-8699430-2', 'eborer@wunsch.org', '0350-2455412', 86495, 'junior', 'gtj', 1),
(2, 'Gay', 'Pollich', '42209-4014905-3', 'trycia00@green.net', '0337-6752214', 198089, 'fresh', 'fqh', 1),
(3, 'Ivy', 'Kirlin', '42203-0601066-5', 'ignacio95@gmail.com', '0356-4059874', 152782, 'junior', 'pcs', 1),
(4, 'Jayde', 'Kihn', '42200-3277073-4', 'mueller.vern@mueller.net', '0305-9403550', 90711, 'senior', 'png', 2),
(5, 'Viviane', 'Okuneva', '42204-0696942-3', 'rbeahan@johnston.biz', '0344-9470845', 157292, 'senior', 'eat', 3),
(6, 'Jazmyne', 'Ratke', '42202-4950733-7', 'wlarson@hotmail.com', '0306-3574863', 43758, 'senior', 'ynu', 3),
(7, 'Evalyn', 'Larson', '42204-1884128-7', 'lyric.willms@gmail.com', '0303-1040301', 69370, 'fresh', 'ibp', 2),
(8, 'Bud', 'Beatty', '42203-1047654-0', 'joey87@hayes.info', '0393-7353249', 175592, 'senior', 'fnj', 1),
(9, 'Felicita', 'Emard', '42206-2782322-7', 'alyson.murphy@yahoo.com', '0313-4654561', 152293, 'fresh', 'bhn', 1),
(10, 'Vincent', 'McKenzie', '42207-7971817-6', 'antonietta61@gmail.com', '0392-6867819', 42352, 'junior', 'avn', 2),
(11, 'Serenity', 'Spinka', '42202-5163325-4', 'kohler.jordane@gmail.com', '0337-1451334', 127224, 'fresh', 'dyj', 2),
(12, 'Eusebio', 'Konopelski', '42200-1711685-3', 'koepp.maida@cummerata.com', '0361-3439758', 145148, 'junior', 'sgw', 1),
(13, 'Kenya', 'Collier', '42209-3644781-6', 'devonte03@stiedemann.com', '0332-4720058', 75314, 'senior', 'ppf', 3),
(14, 'Obie', 'Beer', '42208-7134454-2', 'aurore28@gmail.com', '0343-0881407', 71725, 'senior', 'rfq', 1),
(15, 'Leann', 'Dare', '42209-7743141-6', 'vpredovic@gmail.com', '0361-9707548', 176536, 'junior', 'nku', 1),
(16, 'Gaetano', 'Herzog', '42208-6795169-1', 'eugenia.schuster@swift.org', '0313-8200521', 49819, 'fresh', 'vyg', 1),
(17, 'Sydni', 'Wiegand', '42203-1224664-9', 'tate.hand@gmail.com', '0356-3382279', 82456, 'fresh', 'mkc', 1),
(18, 'Adrienne', 'Lakin', '42203-5191386-6', 'cruz.veum@green.com', '0332-0888603', 58060, 'fresh', 'mya', 1),
(19, 'Tristian', 'Gerlach', '42203-8636590-2', 'hildegard.blick@mcculloughconroy.com', '0300-3206406', 98860, 'senior', 'gya', 2),
(20, 'Trudie', 'Hirthe', '42200-0176225-4', 'padberg.wilma@lueilwitzwaters.biz', '0363-6976648', 111764, 'junior', 'mhc', 3),
(21, 'Mario', 'Flatley', '42208-2299939-3', 'okshlerin@pagac.org', '0346-2915138', 167647, 'junior', 'fdc', 1),
(22, 'Yesenia', 'Senger', '42208-7151126-6', 'zfisher@borersenger.biz', '0308-0519905', 81282, 'junior', 'hgl', 2),
(23, 'Fred', 'Heaney', '42205-6362944-8', 'hermann.clare@hotmail.com', '0361-9407118', 115504, 'fresh', 'pjc', 3),
(24, 'Nona', 'Jaskolski', '42207-5740330-5', 'lydia35@bosco.info', '0314-7131658', 59135, 'junior', 'rvn', 3),
(25, 'Alena', 'Kovacek', '42201-7947340-4', 'alice.white@gmail.com', '0371-9795717', 117661, 'senior', 'dhf', 1),
(26, 'Rodolfo', 'Emmerich', '42202-8859105-8', 'abbott.bernard@hermiston.com', '0362-8936785', 98072, 'fresh', 'tfj', 2),
(27, 'Michel', 'Hartmann', '42206-7378313-4', 'guadalupe.o\'connell@hotmail.com', '0323-2945671', 57917, 'fresh', 'bae', 1),
(28, 'Fabian', 'Kemmer', '42201-5816210-5', 'neal43@waelchibednar.com', '0333-1693216', 155833, 'senior', 'pjy', 2),
(29, 'Hayden', 'Weissnat', '42204-4650768-5', 'nash56@gmail.com', '0350-4475364', 196870, 'fresh', 'jog', 1),
(30, 'Kevon', 'Beier', '42207-1572297-7', 'marcelina39@yahoo.com', '0337-7882067', 121078, 'fresh', 'qtl', 3),
(31, 'Jarod', 'Okuneva', '42201-7842135-5', 'kmuller@bechtelar.com', '0392-9220615', 140614, 'senior', 'mcl', 1),
(32, 'Nathan', 'Hilpert', '42206-0914782-2', 'emmerich.stan@dietrichhodkiewicz.com', '0365-9630520', 148449, 'junior', 'xmf', 1),
(33, 'Maeve', 'Willms', '42200-1361357-3', 'clyde.rolfson@bergnaum.org', '0356-4237025', 168444, 'junior', 'mmb', 3),
(34, 'Enos', 'Crona', '42208-3053586-4', 'bgreenfelder@hotmail.com', '0392-0512321', 55608, 'junior', 'cni', 2),
(35, 'Natalie', 'Boyer', '42201-7192880-6', 'roscoe.dooley@welch.com', '0375-3726216', 125303, 'senior', 'zih', 3),
(36, 'Carmella', 'Hills', '42204-1384744-5', 'buster91@beatty.com', '0302-2379039', 154194, 'fresh', 'mym', 3),
(37, 'Damon', 'Reynolds', '42206-1398742-0', 'leffler.clement@koeppoconner.info', '0317-0039295', 185236, 'junior', 'eze', 2),
(38, 'Jevon', 'Kirlin', '42206-1987846-5', 'mdickens@yahoo.com', '0339-3270454', 83409, 'senior', 'orh', 3),
(39, 'Virgil', 'Wisozk', '42208-9286802-3', 'rowe.karine@gmail.com', '0399-8976295', 169387, 'fresh', 'ues', 1),
(40, 'Joanne', 'Pfeffer', '42207-4282319-1', 'towne.dayne@cassin.com', '0327-0522633', 83346, 'junior', 'xlw', 3),
(41, 'Francis', 'Moore', '42201-0994979-7', 'moore.paige@kilback.com', '0314-0360566', 72644, 'junior', 'dxx', 3),
(42, 'Nelle', 'Bode', '42208-5621617-7', 'zkshlerin@waelchisauer.com', '0315-1065069', 116845, 'senior', 'tnt', 1),
(43, 'Celia', 'Stroman', '42207-7898130-3', 'hilpert.johan@kozeyglover.net', '0387-7252864', 42280, 'junior', 'hsp', 3),
(44, 'Lois', 'Lowe', '42209-4507678-1', 'veda23@sawayn.net', '0338-9327673', 171377, 'senior', 'pqj', 2),
(45, 'Cory', 'Beier', '42208-7392336-5', 'wdaniel@ryan.biz', '0384-7466011', 92946, 'senior', 'aeb', 1),
(46, 'Edgardo', 'Gulgowski', '42202-8669244-2', 'christine59@hagenes.com', '0392-6609059', 130398, 'senior', 'tjo', 3),
(47, 'Elroy', 'Wisoky', '42205-7947989-8', 'ocasper@hudson.com', '0356-9250687', 167801, 'junior', 'clj', 2),
(48, 'Retta', 'Prohaska', '42205-0761698-7', 'powlowski.michelle@sipesgaylord.info', '0392-9182788', 105203, 'senior', 'wxs', 1),
(49, 'Alysson', 'Greenfelder', '42209-4924566-5', 'qmueller@mckenziestanton.com', '0372-2977974', 146931, 'fresh', 'cqk', 3),
(50, 'Hillary', 'O\'Reilly', '42205-4869194-2', 'lorena00@schaeferemard.biz', '0373-3947529', 99117, 'senior', 'mem', 3),
(53, 'sam', 'pro', '33564231', 'dsadas', '2312312', 123413, 'pro', 'dsadas', 1),
(54, 'fizza', 'alam', '23457689089', 'amnashe@gmail.com', '234576890', 45376890, 'alam', 'pro', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `bank_teller`
--
ALTER TABLE `bank_teller`
  ADD PRIMARY KEY (`bt_id`),
  ADD KEY `bcode` (`bcode`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bcode`);

--
-- Indexes for table `branch_manager`
--
ALTER TABLE `branch_manager`
  ADD PRIMARY KEY (`bm_id`),
  ADD KEY `bcode` (`bcode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD KEY `c_id` (`c_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `bt_id` (`bt_id`);

--
-- Indexes for table `customer_loan`
--
ALTER TABLE `customer_loan`
  ADD KEY `c_id` (`c_id`),
  ADD KEY `l_id` (`l_id`),
  ADD KEY `lo_id` (`lo_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `loan_officer`
--
ALTER TABLE `loan_officer`
  ADD PRIMARY KEY (`lo_id`),
  ADD KEY `bcode` (`bcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_teller`
--
ALTER TABLE `bank_teller`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `bcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch_manager`
--
ALTER TABLE `branch_manager`
  MODIFY `bm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_officer`
--
ALTER TABLE `loan_officer`
  MODIFY `lo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_teller`
--
ALTER TABLE `bank_teller`
  ADD CONSTRAINT `bank_teller_ibfk_1` FOREIGN KEY (`bcode`) REFERENCES `branch` (`bcode`);

--
-- Constraints for table `branch_manager`
--
ALTER TABLE `branch_manager`
  ADD CONSTRAINT `branch_manager_ibfk_1` FOREIGN KEY (`bcode`) REFERENCES `branch` (`bcode`);

--
-- Constraints for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD CONSTRAINT `customer_account_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `customer_account_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `account` (`a_id`),
  ADD CONSTRAINT `customer_account_ibfk_3` FOREIGN KEY (`bt_id`) REFERENCES `bank_teller` (`bt_id`);

--
-- Constraints for table `customer_loan`
--
ALTER TABLE `customer_loan`
  ADD CONSTRAINT `customer_loan_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `customer_loan_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `loan` (`l_id`),
  ADD CONSTRAINT `customer_loan_ibfk_3` FOREIGN KEY (`lo_id`) REFERENCES `loan_officer` (`lo_id`);

--
-- Constraints for table `loan_officer`
--
ALTER TABLE `loan_officer`
  ADD CONSTRAINT `loan_officer_ibfk_1` FOREIGN KEY (`bcode`) REFERENCES `branch` (`bcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
