-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2026 at 07:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmisphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `his_accounts`
--

CREATE TABLE `his_accounts` (
  `acc_id` int(200) NOT NULL,
  `acc_name` varchar(200) DEFAULT NULL,
  `acc_desc` text DEFAULT NULL,
  `acc_type` varchar(200) DEFAULT NULL,
  `acc_number` varchar(200) DEFAULT NULL,
  `acc_amount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_accounts`
--

INSERT INTO `his_accounts` (`acc_id`, `acc_name`, `acc_desc`, `acc_type`, `acc_number`, `acc_amount`) VALUES
(1, 'Individual Retirement Account', '<p>IRA&rsquo;s are simply an account where you stash your money for retirement. The concept is pretty simple, your account balance is not taxed UNTIL you withdraw, at which point you pay the taxes there. This allows you to grow your account with interest without taxes taking away from the balance. The net result is you earn more money.</p>', 'Payable Account', '518703294', '25000'),
(2, 'Equity Bank', '<p>Find <em>bank account</em> stock <em>images</em> in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection. Thousands of new</p>', 'Receivable Account', '753680912', '12566'),
(3, 'Test Account Name', '<p>This is a demo test</p>', 'Payable Account', '620157843', '1100');

-- --------------------------------------------------------

--
-- Table structure for table `his_admin`
--

CREATE TABLE `his_admin` (
  `ad_id` int(20) NOT NULL,
  `ad_fname` varchar(200) DEFAULT NULL,
  `ad_lname` varchar(200) DEFAULT NULL,
  `ad_email` varchar(200) DEFAULT NULL,
  `ad_pwd` varchar(200) DEFAULT NULL,
  `ad_dpic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_admin`
--

INSERT INTO `his_admin` (`ad_id`, `ad_fname`, `ad_lname`, `ad_email`, `ad_pwd`, `ad_dpic`) VALUES
(1, 'System', 'Administrator', 'admin@hospital.test', '4c7f5919e957f354d57243d37f223cf31e9e7181', 'doc-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `his_assets`
--

CREATE TABLE `his_assets` (
  `asst_id` int(20) NOT NULL,
  `asst_name` varchar(200) DEFAULT NULL,
  `asst_desc` longtext DEFAULT NULL,
  `asst_vendor` varchar(200) DEFAULT NULL,
  `asst_status` varchar(200) DEFAULT NULL,
  `asst_dept` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_docs`
--

CREATE TABLE `his_docs` (
  `doc_id` int(20) NOT NULL,
  `doc_fname` varchar(200) DEFAULT NULL,
  `doc_lname` varchar(200) DEFAULT NULL,
  `doc_email` varchar(200) DEFAULT NULL,
  `doc_pwd` varchar(200) DEFAULT NULL,
  `doc_dept` varchar(200) DEFAULT NULL,
  `doc_number` varchar(200) DEFAULT NULL,
  `doc_dpic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_docs`
--

INSERT INTO `his_docs` (`doc_id`, `doc_fname`, `doc_lname`, `doc_email`, `doc_pwd`, `doc_dept`, `doc_number`, `doc_dpic`) VALUES
(5, 'Ibrahim', 'Wada', 'i.wada@amuphmsmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'Laboratory', 'BKTWQ', 'defaultimg.png'),
(6, 'Stella Adadevoh', 'Ameyo', 's.ameyo@amuphmsmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'Surgery | Theatre', 'YDS7L', 'WhatsApp Image 2026-05-17 at 5.57.47 AM.jpeg'),
(12, 'Banwat', 'Joseph', 'b.joseph@amuphmsmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'Accounting', '5VIFT', 'AMUP.png'),
(13, 'Babatunde', 'Rabiu', 'b.rabiu@amuphmsmail.com', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'Accounting', 'YVCAO', 'WhatsApp Image 2026-05-17 at 5.59.07 AM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `his_equipments`
--

CREATE TABLE `his_equipments` (
  `eqp_id` int(20) NOT NULL,
  `eqp_code` varchar(200) DEFAULT NULL,
  `eqp_name` varchar(200) DEFAULT NULL,
  `eqp_vendor` varchar(200) DEFAULT NULL,
  `eqp_desc` longtext DEFAULT NULL,
  `eqp_dept` varchar(200) DEFAULT NULL,
  `eqp_status` varchar(200) DEFAULT NULL,
  `eqp_qty` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_equipments`
--

INSERT INTO `his_equipments` (`eqp_id`, `eqp_code`, `eqp_name`, `eqp_vendor`, `eqp_desc`, `eqp_dept`, `eqp_status`, `eqp_qty`) VALUES
(2, '178640239', 'TestTubes', 'Casio', '<p>Testtubes are used to perform lab tests--</p>', 'Laboratory', 'Functioning', '700000'),
(3, '052367981', 'Surgical Robot', 'Nexus', '<p>Surgical Robots aid in surgey process.</p>', 'Surgical | Theatre', 'Functioning', '100');

-- --------------------------------------------------------

--
-- Table structure for table `his_laboratory`
--

CREATE TABLE `his_laboratory` (
  `lab_id` int(20) NOT NULL,
  `lab_pat_name` varchar(200) DEFAULT NULL,
  `lab_pat_ailment` varchar(200) DEFAULT NULL,
  `lab_pat_number` varchar(200) DEFAULT NULL,
  `lab_pat_tests` longtext DEFAULT NULL,
  `lab_pat_results` longtext DEFAULT NULL,
  `lab_number` varchar(200) DEFAULT NULL,
  `lab_date_rec` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_laboratory`
--

INSERT INTO `his_laboratory` (`lab_id`, `lab_pat_name`, `lab_pat_ailment`, `lab_pat_number`, `lab_pat_tests`, `lab_pat_results`, `lab_number`, `lab_date_rec`) VALUES
(1, 'Adedayo Abdulfatai', 'Kidney Dialysis', '39WNU', '<ul><li>Kidney function test</li><li>Blood urea nitrogen</li><li>Creatinine levels</li><li>Electrolyte panel</li></ul>', '<ul><li>Kidney function - Abnormal</li><li>Blood urea nitrogen - Elevated</li><li>Creatinine - High</li></ul>', 'K67PL', '2026-05-17 06:32:07'),
(2, 'Hafiz Magagi', 'Pulmonary Function Test', '0KP97', '<ul><li>Spirometry</li><li>Lung volume measurement</li><li>Diffusion capacity</li></ul>', '<ul><li>Spirometry - Reduced FEV1</li><li>Lung volume - Below normal range</li></ul>', '9DMN5', '2026-05-17 06:41:07'),
(3, 'Creed Omeje', 'Test', 'C89TJ', '<p>General diagnostic tests</p>', '<p>Results pending</p>', '90ZNX', '2026-05-17 06:31:48'),
(4, 'Stephanie Okeagwu', 'Eye Exam', 'PGXZW', '<p>Visual acuity test</p><p>Tonometry</p><p>Retinal examination</p>', '<p>Visual acuity - 20/40 (correctable)</p><p>Intraocular pressure - Normal</p>', 'G0VZU', '2026-05-17 06:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `his_medical_records`
--

CREATE TABLE `his_medical_records` (
  `mdr_id` int(20) NOT NULL,
  `mdr_number` varchar(200) DEFAULT NULL,
  `mdr_pat_name` varchar(200) DEFAULT NULL,
  `mdr_pat_adr` varchar(200) DEFAULT NULL,
  `mdr_pat_age` varchar(200) DEFAULT NULL,
  `mdr_pat_ailment` varchar(200) DEFAULT NULL,
  `mdr_pat_number` varchar(200) DEFAULT NULL,
  `mdr_pat_prescr` longtext DEFAULT NULL,
  `mdr_date_rec` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_medical_records`
--

INSERT INTO `his_medical_records` (`mdr_id`, `mdr_number`, `mdr_pat_name`, `mdr_pat_adr`, `mdr_pat_age`, `mdr_pat_ailment`, `mdr_pat_number`, `mdr_pat_prescr`, `mdr_date_rec`) VALUES
(1, 'ZNXI4', 'Hafiz Magagi', 'Kurudu, Abuja', '26', 'Pulmonary Function Test', '0KP97', '<ul><li>Bronchodilator therapy</li><li>Pulmonary rehabilitation</li></ul>', '2026-05-17 06:03:05.9839'),
(2, 'MIA9P', 'Adedayo Abdulfatai', 'Jikwoyi, Abuja', '23', 'Kidney Dialysis', '39WNU', NULL, '2026-05-17 06:07:46.7306'),
(3, 'F1ZHQ', 'Creed Omeje', 'Kubwa, Abuja', '21', 'Test', 'C89TJ', NULL, '2026-05-17 06:08:35.7938'),
(4, 'ZLN0Q', 'Stephanie Okeagwu', 'Apo, Abuja', '21', 'Eye Exam', 'PGXZW', '<ol><li>Corrective lenses prescribed</li><li>Follow-up in 6 months</li></ol>', '2026-05-17 06:22:15.7034');

-- --------------------------------------------------------

--
-- Table structure for table `his_patients`
--

CREATE TABLE `his_patients` (
  `pat_id` int(20) NOT NULL,
  `pat_fname` varchar(200) DEFAULT NULL,
  `pat_lname` varchar(200) DEFAULT NULL,
  `pat_dob` varchar(200) DEFAULT NULL,
  `pat_age` varchar(200) DEFAULT NULL,
  `pat_number` varchar(200) DEFAULT NULL,
  `pat_addr` varchar(200) DEFAULT NULL,
  `pat_phone` varchar(200) DEFAULT NULL,
  `pat_type` varchar(200) DEFAULT NULL,
  `pat_date_joined` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `pat_ailment` varchar(200) DEFAULT NULL,
  `pat_discharge_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_patients`
--

INSERT INTO `his_patients` (`pat_id`, `pat_fname`, `pat_lname`, `pat_dob`, `pat_age`, `pat_number`, `pat_addr`, `pat_phone`, `pat_type`, `pat_date_joined`, `pat_ailment`, `pat_discharge_status`) VALUES
(8, 'Stephanie', 'Okeagwu', '01/01/2005', '21', 'PGXZW', 'Apo, Abuja', '09136605210', 'OutPatient', '2026-05-17 06:28:51.469431', 'Eye Exam', NULL),
(9, 'Adedayo', 'Abdulfatai', '03/15/2003', '23', '39WNU', 'Jikwoyi, Abuja', '09049937494', 'InPatient', '2026-05-17 06:53:26.210951', 'Kidney Dialysis', NULL),
(10, 'Creed', 'Omeje', '06/10/2005', '21', 'C89TJ', 'Kubwa, Abuja', '08034567890', 'OutPatient', '2026-05-17 06:54:53.104490', 'Test', NULL),
(11, 'Hafiz', 'Magagi', '02/20/2000', '26', '0KP97', 'Kurudu, Abuja', '08106294261', 'InPatient', '2026-05-17 06:26:45.256878', 'Pulmonary Function Test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `his_patient_transfers`
--

CREATE TABLE `his_patient_transfers` (
  `t_id` int(20) NOT NULL,
  `t_hospital` varchar(200) DEFAULT NULL,
  `t_date` varchar(200) DEFAULT NULL,
  `t_pat_name` varchar(200) DEFAULT NULL,
  `t_pat_number` varchar(200) DEFAULT NULL,
  `t_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_patient_transfers`
--

INSERT INTO `his_patient_transfers` (`t_id`, `t_hospital`, `t_date`, `t_pat_name`, `t_pat_number`, `t_status`) VALUES
(1, 'Kenyatta National Hospital', '2020-01-11', 'Mart Developers', '9KXPM', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `his_payrolls`
--

CREATE TABLE `his_payrolls` (
  `pay_id` int(20) NOT NULL,
  `pay_number` varchar(200) DEFAULT NULL,
  `pay_doc_name` varchar(200) DEFAULT NULL,
  `pay_doc_number` varchar(200) DEFAULT NULL,
  `pay_doc_email` varchar(200) DEFAULT NULL,
  `pay_emp_salary` varchar(200) DEFAULT NULL,
  `pay_date_generated` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4),
  `pay_status` varchar(200) DEFAULT NULL,
  `pay_descr` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_payrolls`
--

INSERT INTO `his_payrolls` (`pay_id`, `pay_number`, `pay_doc_name`, `pay_doc_number`, `pay_doc_email`, `pay_emp_salary`, `pay_date_generated`, `pay_status`, `pay_descr`) VALUES
(2, 'JZPMS', 'Babatunde Rabiu', '5VIFT', 'b.rabiu@amuphmsmail.com', '6200', '2026-05-17 06:05:50.0000', 'Paid', '<p>Payroll for Babatunde Rabiu - Accounting Department</p>'),
(3, 'WY57U', 'Stella Adadevoh Ameyo', 'YDS7L', 's.ameyo@amuphmsmail.com', '15500', '2026-05-17 06:05:50.0000', 'Paid', '<p>Payroll for Stella Adadevoh Ameyo - Surgery | Theatre Department</p>'),
(4, 'ABMFN', 'Ibrahim Wada', 'BKTWQ', 'i.wada@amuphmsmail.com', '12000', '2026-05-17 06:05:50.0000', NULL, '<p>Payroll for Ibrahim Wada - Laboratory Department</p>'),
(5, '9LYIM', 'Banwat Joseph', 'YVCAO', 'b.joseph@amuphmsmail.com', '2800', '2026-05-17 06:05:50.0000', NULL, '<p>Payroll for Banwat Joseph - Accounting Department</p>');

-- --------------------------------------------------------

--
-- Table structure for table `his_pharmaceuticals`
--

CREATE TABLE `his_pharmaceuticals` (
  `phar_id` int(20) NOT NULL,
  `phar_name` varchar(200) DEFAULT NULL,
  `phar_bcode` varchar(200) DEFAULT NULL,
  `phar_desc` longtext DEFAULT NULL,
  `phar_qty` varchar(200) DEFAULT NULL,
  `phar_cat` varchar(200) DEFAULT NULL,
  `phar_vendor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_pharmaceuticals`
--

INSERT INTO `his_pharmaceuticals` (`phar_id`, `phar_name`, `phar_bcode`, `phar_desc`, `phar_qty`, `phar_cat`, `phar_vendor`) VALUES
(1, 'Paracetamol', '134057629', '<ul><li><strong>Paracetamol</strong>, also known as <strong>acetaminophen</strong>, is a medication used to treat pain and fever.</li></ul>', '500', 'Antipyretics', 'Dawa Limited Kenya'),
(2, 'Aspirin', '452760813', '<ul><li><strong>Aspirin</strong> is a medication used to reduce pain, fever, or inflammation.</li></ul>', '500', 'Analgesics', 'Cosmos Kenya Limited'),
(3, 'Test Pharma', '465931288', '<p>This is a demo test.</p>', '36', 'Antibiotics', 'Cosmos Pharmaceutical Limited');

-- --------------------------------------------------------

--
-- Table structure for table `his_pharmaceuticals_categories`
--

CREATE TABLE `his_pharmaceuticals_categories` (
  `pharm_cat_id` int(20) NOT NULL,
  `pharm_cat_name` varchar(200) DEFAULT NULL,
  `pharm_cat_vendor` varchar(200) DEFAULT NULL,
  `pharm_cat_desc` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_pharmaceuticals_categories`
--

INSERT INTO `his_pharmaceuticals_categories` (`pharm_cat_id`, `pharm_cat_name`, `pharm_cat_vendor`, `pharm_cat_desc`) VALUES
(1, 'Antipyretics', 'Cosmos Kenya Limited', '<p>Medications that reduce fever.</p>'),
(2, 'Analgesics', 'Dawa Limited Kenya', '<p>Medications used to relieve pain.</p>'),
(3, 'Antibiotics', 'Cosmos Kenya Limited', '<p>Antibiotics</p>');

-- --------------------------------------------------------

--
-- Table structure for table `his_prescriptions`
--

CREATE TABLE `his_prescriptions` (
  `pres_id` int(200) NOT NULL,
  `pres_pat_name` varchar(200) DEFAULT NULL,
  `pres_pat_age` varchar(200) DEFAULT NULL,
  `pres_pat_number` varchar(200) DEFAULT NULL,
  `pres_number` varchar(200) DEFAULT NULL,
  `pres_pat_addr` varchar(200) DEFAULT NULL,
  `pres_pat_type` varchar(200) DEFAULT NULL,
  `pres_date` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4),
  `pres_pat_ailment` varchar(200) DEFAULT NULL,
  `pres_ins` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_prescriptions`
--

INSERT INTO `his_prescriptions` (`pres_id`, `pres_pat_name`, `pres_pat_age`, `pres_pat_number`, `pres_number`, `pres_pat_addr`, `pres_pat_type`, `pres_date`, `pres_pat_ailment`, `pres_ins`) VALUES
(3, 'Creed Omeje', '21', 'C89TJ', 'J9DC6', 'Kubwa, Abuja', 'OutPatient', '2026-05-17 06:05:39.6963', 'Test', '<ul><li>General prescription pending results</li></ul>'),
(4, 'Adedayo Abdulfatai', '23', '39WNU', 'HZQ8J', 'Jikwoyi, Abuja', 'InPatient', '2026-05-17 06:08:46.7368', 'Kidney Dialysis', '<ul><li>Dialysis sessions 3x per week</li><li>Low potassium diet</li><li>Fluid restriction</li></ul>'),
(5, 'Hafiz Magagi', '26', '0KP97', 'HQC3D', 'Kurudu, Abuja', 'InPatient', '2026-05-17 06:19:30.3702', 'Pulmonary Function Test', '<ul><li>Bronchodilator inhaler</li><li>Pulmonary rehab referral</li></ul>'),
(6, 'Stephanie Okeagwu', '21', 'PGXZW', '09Y2P', 'Apo, Abuja', 'OutPatient', '2026-05-17 06:57:10.7496', 'Eye Exam', '<ol><li>Prescription glasses required.</li><li>Follow-up in 6 months.</li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `his_pwdresets`
--

CREATE TABLE `his_pwdresets` (
  `id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_surgery`
--

CREATE TABLE `his_surgery` (
  `s_id` int(200) NOT NULL,
  `s_number` varchar(200) DEFAULT NULL,
  `s_doc` varchar(200) DEFAULT NULL,
  `s_pat_number` varchar(200) DEFAULT NULL,
  `s_pat_name` varchar(200) DEFAULT NULL,
  `s_pat_ailment` varchar(200) DEFAULT NULL,
  `s_pat_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `s_pat_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_surgery`
--

INSERT INTO `his_surgery` (`s_id`, `s_number`, `s_doc`, `s_pat_number`, `s_pat_name`, `s_pat_ailment`, `s_pat_date`, `s_pat_status`) VALUES
(2, '8KQWD', 'Stella Adadevoh Ameyo', 'PGXZW', 'Stephanie Okeagwu', 'Eye Exam', '2026-05-17 06:50:10.649889', 'Successful'),
(3, '7K18R', 'Stella Adadevoh Ameyo', '39WNU', 'Adedayo Abdulfatai', 'Kidney Dialysis', '2026-05-17 06:26:44.053571', 'Successful'),
(4, 'ECF62', 'Ibrahim Wada', '0KP97', 'Hafiz Magagi', 'Pulmonary Function Test', '2026-05-17 06:03:33.765255', 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `his_vendor`
--

CREATE TABLE `his_vendor` (
  `v_id` int(20) NOT NULL,
  `v_number` varchar(200) DEFAULT NULL,
  `v_name` varchar(200) DEFAULT NULL,
  `v_adr` varchar(200) DEFAULT NULL,
  `v_mobile` varchar(200) DEFAULT NULL,
  `v_email` varchar(200) DEFAULT NULL,
  `v_phone` varchar(200) DEFAULT NULL,
  `v_desc` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_vendor`
--

INSERT INTO `his_vendor` (`v_id`, `v_number`, `v_name`, `v_adr`, `v_mobile`, `v_email`, `v_phone`, `v_desc`) VALUES
(1, '6ISKC', 'Cosmos Pharmaceutical Limited', 'P.O. Box 41433, GPO 00100 Nairobi, Kenya', '', 'info@cosmospharmaceuticallimited.com', '+254(20)550700-9', '<p>Pharmaceutical vendor for Ave Maria University Hospital.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `his_vitals`
--

CREATE TABLE `his_vitals` (
  `vit_id` int(20) NOT NULL,
  `vit_number` varchar(200) DEFAULT NULL,
  `vit_pat_number` varchar(200) DEFAULT NULL,
  `vit_bodytemp` varchar(200) DEFAULT NULL,
  `vit_heartpulse` varchar(200) DEFAULT NULL,
  `vit_resprate` varchar(200) DEFAULT NULL,
  `vit_bloodpress` varchar(200) DEFAULT NULL,
  `vit_daterec` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `his_vitals`
--

INSERT INTO `his_vitals` (`vit_id`, `vit_number`, `vit_pat_number`, `vit_bodytemp`, `vit_heartpulse`, `vit_resprate`, `vit_bloodpress`, `vit_daterec`) VALUES
(3, '1KB9V', '39WNU', '38', '77', '12', '90/60', '2026-05-17 06:10:16.904915'),
(4, 'ELYOM', 'BKTWQ', '38', '88', '12', '110/80', '2026-05-17 06:49:55.814783'),
(5, 'AL0J8', 'YDS7L', '36', '72', '15', '90/60', '2026-05-17 06:42:17.500662'),
(6, 'MS2OJ', '0KP97', '37', '70', '15', '120/80', '2026-05-17 06:01:52.148658');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `his_accounts`
--
ALTER TABLE `his_accounts`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `his_admin`
--
ALTER TABLE `his_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `his_assets`
--
ALTER TABLE `his_assets`
  ADD PRIMARY KEY (`asst_id`);

--
-- Indexes for table `his_docs`
--
ALTER TABLE `his_docs`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `his_equipments`
--
ALTER TABLE `his_equipments`
  ADD PRIMARY KEY (`eqp_id`);

--
-- Indexes for table `his_laboratory`
--
ALTER TABLE `his_laboratory`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `his_medical_records`
--
ALTER TABLE `his_medical_records`
  ADD PRIMARY KEY (`mdr_id`);

--
-- Indexes for table `his_patients`
--
ALTER TABLE `his_patients`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `his_patient_transfers`
--
ALTER TABLE `his_patient_transfers`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `his_payrolls`
--
ALTER TABLE `his_payrolls`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `his_pharmaceuticals`
--
ALTER TABLE `his_pharmaceuticals`
  ADD PRIMARY KEY (`phar_id`);

--
-- Indexes for table `his_pharmaceuticals_categories`
--
ALTER TABLE `his_pharmaceuticals_categories`
  ADD PRIMARY KEY (`pharm_cat_id`);

--
-- Indexes for table `his_prescriptions`
--
ALTER TABLE `his_prescriptions`
  ADD PRIMARY KEY (`pres_id`);

--
-- Indexes for table `his_pwdresets`
--
ALTER TABLE `his_pwdresets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `his_surgery`
--
ALTER TABLE `his_surgery`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `his_vendor`
--
ALTER TABLE `his_vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `his_vitals`
--
ALTER TABLE `his_vitals`
  ADD PRIMARY KEY (`vit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `his_accounts`
--
ALTER TABLE `his_accounts`
  MODIFY `acc_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `his_admin`
--
ALTER TABLE `his_admin`
  MODIFY `ad_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `his_assets`
--
ALTER TABLE `his_assets`
  MODIFY `asst_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `his_docs`
--
ALTER TABLE `his_docs`
  MODIFY `doc_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `his_equipments`
--
ALTER TABLE `his_equipments`
  MODIFY `eqp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `his_laboratory`
--
ALTER TABLE `his_laboratory`
  MODIFY `lab_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `his_medical_records`
--
ALTER TABLE `his_medical_records`
  MODIFY `mdr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `his_patients`
--
ALTER TABLE `his_patients`
  MODIFY `pat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `his_patient_transfers`
--
ALTER TABLE `his_patient_transfers`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `his_payrolls`
--
ALTER TABLE `his_payrolls`
  MODIFY `pay_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `his_pharmaceuticals`
--
ALTER TABLE `his_pharmaceuticals`
  MODIFY `phar_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `his_pharmaceuticals_categories`
--
ALTER TABLE `his_pharmaceuticals_categories`
  MODIFY `pharm_cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `his_prescriptions`
--
ALTER TABLE `his_prescriptions`
  MODIFY `pres_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `his_pwdresets`
--
ALTER TABLE `his_pwdresets`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `his_surgery`
--
ALTER TABLE `his_surgery`
  MODIFY `s_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `his_vendor`
--
ALTER TABLE `his_vendor`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `his_vitals`
--
ALTER TABLE `his_vitals`
  MODIFY `vit_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
