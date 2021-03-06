# MySQL dump of database 'surgana' on host 'localhost'
# Backup Date and Time: 2021-10-13 08:41
# Built by Ardwells Development System 1.0.0
# https://ardwells.com
# Company: Surgana Rasa Lestari
# User: Administrator

# Compatibility: 2.4.1


SET NAMES utf8;


### Structure of table `0_areas` ###

DROP TABLE IF EXISTS `0_areas`;

CREATE TABLE `0_areas` (
  `area_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_areas` ###

INSERT INTO `0_areas` VALUES
('1', 'Global', '0'),
('2', 'Jabodetabek', '0'),
('3', 'Tangerang', '0'),
('4', 'Jakarta selatan', '0'),
('5', 'Jakarta timur', '0'),
('6', 'Jakarta Barat', '0'),
('7', 'Jakarta utara', '0'),
('8', 'BSD', '0');

### Structure of table `0_attachments` ###

DROP TABLE IF EXISTS `0_attachments`;

CREATE TABLE `0_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_no` int(11) NOT NULL DEFAULT 0,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `unique_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `filetype` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_no` (`type_no`,`trans_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_attachments` ###


### Structure of table `0_audit_trail` ###

DROP TABLE IF EXISTS `0_audit_trail`;

CREATE TABLE `0_audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `trans_no` int(11) unsigned NOT NULL DEFAULT 0,
  `user` smallint(6) unsigned NOT NULL DEFAULT 0,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL DEFAULT 0,
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  KEY `Type_and_Number` (`type`,`trans_no`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_audit_trail` ###

INSERT INTO `0_audit_trail` VALUES
('1', '0', '1', '1', '2021-10-13 09:31:46', NULL, '2', '2021-10-13', '0'),
('2', '18', '1', '1', '2021-10-13 09:37:37', NULL, '2', '2021-10-13', '0'),
('3', '0', '2', '1', '2021-10-13 09:54:55', NULL, '2', '2021-10-13', '0'),
('4', '25', '1', '1', '2021-10-13 09:57:58', NULL, '2', '2021-10-13', '0'),
('5', '20', '1', '1', '2021-10-13 09:59:22', NULL, '2', '2021-10-13', '0'),
('6', '22', '1', '1', '2021-10-13 11:03:38', NULL, '2', '2021-10-13', '0'),
('7', '18', '2', '1', '2021-10-13 13:11:44', NULL, '2', '2021-10-13', '0'),
('8', '25', '2', '1', '2021-10-13 13:11:49', NULL, '2', '2021-10-13', '0'),
('9', '20', '2', '1', '2021-10-13 13:12:09', NULL, '2', '2021-10-13', '0'),
('10', '22', '2', '1', '2021-10-13 13:13:16', NULL, '2', '2021-10-13', '0'),
('11', '30', '1', '1', '2021-10-13 13:14:24', NULL, '2', '2021-10-13', '0'),
('12', '13', '1', '1', '2021-10-13 13:14:31', NULL, '2', '2021-10-13', '0'),
('15', '10', '1', '1', '2021-10-13 13:14:57', 'Updated.', '2', '2021-10-13', '0'),
('16', '30', '2', '1', '2021-10-13 13:18:58', NULL, '2', '2021-10-13', '0'),
('17', '13', '2', '1', '2021-10-13 13:19:15', NULL, '2', '2021-10-13', '0'),
('20', '10', '2', '1', '2021-10-13 13:19:30', 'Updated.', '2', '2021-10-13', '0'),
('21', '18', '3', '1', '2021-10-13 13:22:40', NULL, '2', '2021-10-13', '0'),
('22', '25', '3', '1', '2021-10-13 13:22:55', NULL, '2', '2021-10-13', '0'),
('23', '20', '3', '1', '2021-10-13 13:23:11', NULL, '2', '2021-10-13', '0'),
('24', '22', '3', '1', '2021-10-13 13:23:26', NULL, '2', '2021-10-13', '0'),
('25', '30', '3', '1', '2021-10-13 13:26:40', NULL, '2', '2021-10-13', '0'),
('26', '13', '3', '1', '2021-10-13 13:26:54', NULL, '2', '2021-10-13', '0'),
('27', '10', '3', '1', '2021-10-13 13:27:04', NULL, '2', '2021-10-13', '0'),
('28', '12', '1', '1', '2021-10-13 13:27:04', NULL, '2', '2021-10-13', '0'),
('29', '12', '2', '1', '2021-10-13 13:27:32', NULL, '2', '2021-10-13', '0');

### Structure of table `0_bank_accounts` ###

DROP TABLE IF EXISTS `0_bank_accounts`;

CREATE TABLE `0_bank_accounts` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` smallint(6) NOT NULL DEFAULT 0,
  `bank_account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT 0,
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `bank_charge_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `bank_account_name` (`bank_account_name`),
  KEY `bank_account_number` (`bank_account_number`),
  KEY `account_code` (`account_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_bank_accounts` ###

INSERT INTO `0_bank_accounts` VALUES
('11510', '0', 'Bank Central Asia (BCA)', '11510', 'Bank Central Asia (BCA)', NULL, 'IDR', '0', '1', '13010', '2021-10-11 00:00:00', '0', '0'),
('11520', '0', 'Bank Mandiri', '11520', 'Bank Mandiri', NULL, 'IDR', '0', '2', '13010', '2021-10-11 00:00:00', '0', '0'),
('11010', '3', 'Petty Cash (kas Kecil)', '11010', 'Petty Cash (kas Kecil)', NULL, 'IDR', '0', '3', '13010', '2021-10-11 00:00:00', '0', '0'),
('11020', '3', 'Petty Cash (Kas Besar)', '11020', 'Petty Cash (Kas Besar)', NULL, 'IDR', '0', '4', '13010', '2021-10-11 00:00:00', '0', '0');

### Structure of table `0_bank_trans` ###

DROP TABLE IF EXISTS `0_bank_trans`;

CREATE TABLE `0_bank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `person_type_id` int(11) NOT NULL DEFAULT 0,
  `person_id` tinyblob DEFAULT NULL,
  `reconciled` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_act` (`bank_act`,`ref`),
  KEY `type` (`type`,`trans_no`),
  KEY `bank_act_2` (`bank_act`,`reconciled`),
  KEY `bank_act_3` (`bank_act`,`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_bank_trans` ###

INSERT INTO `0_bank_trans` VALUES
('1', '0', '1', '3', '001/2021', '2021-10-13', '-100000', '0', '0', '0', NULL, NULL),
('2', '0', '2', '1', '002/2021', '2021-10-13', '100000000', '0', '0', '0', NULL, NULL),
('3', '22', '1', '1', '001/2021', '2021-10-13', '-1450500', '0', '0', '3', '1', NULL),
('4', '22', '2', '1', '002/2021', '2021-10-13', '-4500000', '0', '0', '3', '1', NULL),
('7', '22', '3', '1', '003/2021', '2021-10-13', '-55850000', '0', '0', '3', '1', NULL),
('8', '12', '1', '4', '001/2021', '2021-10-13', '65098500', '0', '0', '2', '3', NULL),
('9', '12', '2', '1', '002/2021', '2021-10-13', '1437000', '0', '0', '2', '3', NULL);

### Structure of table `0_bom` ###

DROP TABLE IF EXISTS `0_bom`;

CREATE TABLE `0_bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre_added` int(11) NOT NULL DEFAULT 0,
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  KEY `component` (`component`),
  KEY `id` (`id`),
  KEY `loc_code` (`loc_code`),
  KEY `parent` (`parent`,`loc_code`),
  KEY `workcentre_added` (`workcentre_added`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_bom` ###


### Structure of table `0_budget_trans` ###

DROP TABLE IF EXISTS `0_budget_trans`;

CREATE TABLE `0_budget_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `dimension_id` int(11) DEFAULT 0,
  `dimension2_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_budget_trans` ###


### Structure of table `0_chart_class` ###

DROP TABLE IF EXISTS `0_chart_class`;

CREATE TABLE `0_chart_class` (
  `cid` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_chart_class` ###

INSERT INTO `0_chart_class` VALUES
('001', 'KAS/BANK', '1', '0'),
('002', 'PIUTANG', '4', '0'),
('003', 'PERSEDIAAN', '6', '0'),
('004', 'HUTANG', '2', '0'),
('005', 'EKUITAS', '3', '0'),
('006', 'PENDAPATAN', '4', '0'),
('007', 'HARGA POKOK PENJUALAN', '4', '0'),
('008', 'BEBAN', '6', '0'),
('009', 'PENDAPATAN LAIN', '4', '0'),
('010', 'BEBAN LAIN-LAIN', '6', '0');

### Structure of table `0_chart_master` ###

DROP TABLE IF EXISTS `0_chart_master`;

CREATE TABLE `0_chart_master` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_code2` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_code`),
  KEY `account_name` (`account_name`),
  KEY `accounts_by_type` (`account_type`,`account_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_chart_master` ###

INSERT INTO `0_chart_master` VALUES
('11010', '11010', 'Kas Kecil', '11000', '0'),
('11020', '11020', 'Kas Besar', '11000', '0'),
('11510', '11510', 'Bank BCA', '11000', '0'),
('11520', '11520', 'Bank Mandiri', '11000', '0'),
('13010', '13010', 'Piutang Usaha', '13000', '0'),
('13510', '13510', 'Piutang Antar Cabang', '13500', '0'),
('14010', '14010', 'Piutang Dolarasia', '14000', '0'),
('14020', '14020', 'Piutang Efata', '14000', '0'),
('14510', '14510', 'Piutang Pemegang Saham', '14500', '0'),
('14520', '14520', 'Piutang Karyawan', '14500', '0'),
('14530', '14530', 'Piutang Bunga', '14500', '0'),
('14540', '14540', 'Piutang Lainnya', '14500', '0'),
('15000', '15000', 'PERSEDIAAN', '15000', '0'),
('15101', '15101', 'Persediaan Beras', '15100', '0'),
('15102', '15102', 'Persediaan Ayam', '15100', '0'),
('15103', '15103', 'Persediaan Daging', '15100', '0'),
('15104', '15104', 'Persediaan Telur', '15100', '0'),
('15105', '15105', 'Persediaan Bumbu', '15100', '0'),
('15106', '15106', 'Persediaan Sayuran', '15100', '0'),
('15107', '15107', 'Persediaan Cemilan', '15100', '0'),
('15108', '15108', 'Persediaan Ikan', '15100', '0'),
('15201', '15201', 'PERSEDIAAN MINUMAN OLAHAN (JUS)', '15200', '0'),
('15202', '15202', 'PERSEDEIAAN MINUMAN SOFT DRINK', '15200', '0'),
('15301', '15301', 'Persediaan Barang Jadi', '15300', '0'),
('15302', '15302', 'Persediaan Dalam Proses', '15300', '0'),
('21010', '21010', 'Hutang Usaha', '21000', '0'),
('31010', '31010', 'Modal Saham', '31000', '0'),
('32010', '32010', 'Laba Ditahan Tahun Lalu', '32000', '0'),
('32020', '32020', 'Laba Ditahan Tahun ini', '32000', '0'),
('40000', '40000', 'PENJUALAN', '40000', '0'),
('41010', '41010', 'Penjualan Makanan Semi Buffet', '41000', '0'),
('41020', '41020', 'Penjualan Makanan Ala Carte', '41000', '0'),
('42010', '42010', 'Penjualan Minuman Olahan (Jus)', '42000', '0'),
('42020', '42020', 'Penjualan Minuman Kemasan (Soft Drink)', '42000', '0'),
('43010', '43010', 'Penjualan Cemilan', '43000', '0'),
('44010', '44010', 'Potongan Penjualan Makanan', '44000', '0'),
('44020', '44020', 'Potongan Penjualan Minuman', '44000', '0'),
('44030', '44030', 'Potongan Penjualan Cemilan', '44000', '0'),
('51010', '51010', 'HPP Makanan Semi Buffet', '51000', '0'),
('51020', '51020', 'HPP Makanan Ala Carte', '51000', '0'),
('52010', '52010', 'HPP Minuman Olahan (Jus)', '52000', '0'),
('52020', '52020', 'HPP Minuman Kemasan (Soft Drink)', '52000', '0'),
('53010', '53010', 'HPP Cemilan', '53000', '0'),
('61010', '61010', 'Gaji Pokok', '61000', '0'),
('61020', '61020', 'Uang Makan dan Transport', '61000', '0'),
('61030', '61030', 'Tunjangan Hari Raya', '61000', '0'),
('61040', '61040', 'Seragam', '61000', '0'),
('61050', '61050', 'Komisi', '61000', '0'),
('61060', '61060', 'PPH Pasal 21', '61000', '0'),
('62000', '62000', 'KOMISI', '60000', '0'),
('62500', '62500', 'SEWA DAN SERVICE CHARGE', '60000', '0'),
('63000', '63000', 'PAJAK BUMI DAN BANGUNAN', '60000', '0'),
('63500', '63500', 'LISTRIK', '60000', '0'),
('64000', '64000', 'KOMUNIKASI', '60000', '0'),
('64500', '64500', 'TRANSPORTASI', '60000', '0'),
('65000', '65000', 'REPARASI DAN PEMELIHARAAN', '60000', '0'),
('65500', '65500', 'PERJALANAN DINAS', '60000', '0'),
('66000', '66000', 'PELAYANAN CUSTOMER', '60000', '0'),
('66500', '66500', 'PAJAK PAPAN REKLAME', '60000', '0'),
('67000', '67000', 'IKLAN DAN PROMOSI', '60000', '0'),
('67500', '67500', 'PERLENGKAPAN KANTOR', '60000', '0'),
('68000', '68000', 'KEPERLUAN KANTOR', '60000', '0'),
('68500', '68500', 'PERIZINAN', '60000', '0'),
('69000', '69000', 'REPRESENTASI', '60000', '0'),
('69500', '69500', 'ASURANSI', '60000', '0'),
('69600', '69600', 'ADMINISTRASI BANK', '60000', '0'),
('69710', '69710', 'Penyusutan Bangunan dan Prasarana', '69700', '0'),
('69720', '69720', 'Penyusutan Peralatan Kantor', '69700', '0'),
('69730', '69730', 'Penyusutan Kendaraan Bermotor', '69700', '0'),
('69810', '69810', 'Amortisasi Renovasi Bangunan', '69800', '0'),
('69820', '69820', 'Amortisasi Pra Operasi', '69800', '0'),
('69830', '69830', 'Amortisasi Biaya Organisasi', '69800', '0'),
('69840', '69840', 'Amortisasi Papan Reklame', '69800', '0'),
('69900', '69900', 'BIAYA LAIN-LAIN', '69800', '0'),
('71000', '71000', 'GAJI DAN TUNJANGAN', '70000', '0'),
('71500', '71500', 'SEWA DAN SERVICE CHARGE', '70000', '0'),
('72000', '72000', 'PAJAK BUMI DAN BANGUNAN', '70000', '0'),
('72500', '72500', 'ENERGI', '70000', '0'),
('73000', '73000', 'KOMUNIKASI', '70000', '0'),
('73500', '73500', 'TRANSPORTASI', '70000', '0'),
('74000', '74000', 'REPARASI DAN PEMELIHARAAN', '70000', '0'),
('74500', '74500', 'PERJALANAN DINAS', '70000', '0'),
('75000', '75000', 'PAJAK PAPAN REKLAME', '70000', '0'),
('75500', '75500', 'PERLENGKAPAN KANTOR', '70000', '0'),
('76000', '76000', 'KEPERLUAN KANTOR', '70000', '0'),
('76500', '76500', 'PERIZINAN', '70000', '0'),
('77000', '77000', 'REPRESENTASI', '70000', '0'),
('77500', '77500', 'ASURANSI', '70000', '0'),
('78000', '78000', 'ADMINISTRASI BANK', '70000', '0'),
('78500', '78500', 'PENYUSUTAN', '70000', '0'),
('78510', '78510', 'Penyusutan Bangunan dan Prasarana', '70000', '0'),
('78520', '78520', 'Penyusutan Peralatan Kantor', '70000', '0'),
('78530', '78530', 'Penyusutan Kendaraan Bermotor', '70000', '0'),
('79900', '79900', 'BIAYA LAIN-LAIN', '70000', '0'),
('80100', '80100', 'Pendapatan Bunga', '80000', '0'),
('81000', '81000', 'BIAYA BUNGA', '80000', '0'),
('82000', '82000', 'BIAYA BUNGA LEASING', '80000', '0'),
('83000', '83000', 'LABA/RUGI PENJUALAN AKTIVA TETAP', '80000', '0'),
('87000', '87000', 'LABA/RUGI SELISIH KURS', '80000', '0'),
('88000', '88000', 'BIAYA PROVISI BANK', '80000', '0'),
('89000', '89000', 'BIAYA LAIN-LAIN', '80000', '0'),
('90000', '90000', 'PAJAK PENGHASILAN', '80000', '0'),
('99900', '99900', 'KOMISI LABA BERSIH', '80000', '0');

### Structure of table `0_chart_types` ###

DROP TABLE IF EXISTS `0_chart_types`;

CREATE TABLE `0_chart_types` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_chart_types` ###

INSERT INTO `0_chart_types` VALUES
('10000', 'AKTIVA', '001', '', '0'),
('11000', 'KAS &amp; BANK', '001', '', '0'),
('11500', 'BANK', '001', '', '0'),
('13000', 'PIUTANG USAHA', '002', '', '0'),
('13500', 'PIUTANG ANTAR CABANG', '002', '', '0'),
('14000', 'PIUTANG AFILIASI', '002', '', '0'),
('14500', 'PIUTANG LANCAR LAINNYA', '002', '', '0'),
('15000', 'PERSEDIAAN', '003', '', '0'),
('15100', 'PERSEDIAAN BAHAN BAKU MAKANAN', '003', '', '0'),
('15200', 'PERSEDIAAN BAHAN BAKU MINUMAN', '003', '', '0'),
('15300', 'PERSEDIAAN DALAM PROSES', '003', '', '0'),
('20000', 'HUTANG', '004', '', '0'),
('21000', 'HUTANG USAHA', '004', '', '0'),
('30000', 'EKUITAS', '005', '', '0'),
('31000', 'MODAL SAHAM', '005', '', '0'),
('32000', 'LABA DITAHAN', '005', '', '0'),
('40000', 'PENJUALAN', '006', '', '0'),
('41000', 'PENJUALAN MAKANAN', '006', '', '0'),
('42000', 'PENJUALAN MINUMAN', '006', '', '0'),
('43000', 'PENJUALAN CEMILAN', '006', '', '0'),
('44000', 'POTONGAN PENJUALAN', '006', '', '0'),
('50000', 'HARGA POKOK PENJUALAN', '007', '', '0'),
('51000', 'HARGA POKOK PENJUALAN MAKANAN', '007', '', '0'),
('52000', 'HARGA POKOK PENJUALAN MINUMAN', '007', '', '0'),
('53000', 'HARGA POKOK PENJUALAN CEMILAN', '007', '', '0'),
('60000', 'BIAYA OPERASIONAL', '008', '', '0'),
('61000', 'GAJI DAN TUNJANGAN', '008', '', '0'),
('69700', 'PENYUSUTAN', '008', '', '0'),
('69800', 'AMORTISASI', '008', '', '0'),
('70000', 'BIAYA UMUM DAN ADMINISTRASI', '008', '', '0'),
('78500', 'PENYUSUTAN', '008', '', '0'),
('80000', 'PENDAPATAN (BIAYA) NON OPERASIONAL', '008', '', '0');

### Structure of table `0_comments` ###

DROP TABLE IF EXISTS `0_comments`;

CREATE TABLE `0_comments` (
  `type` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL DEFAULT 0,
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `type_and_id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_comments` ###

INSERT INTO `0_comments` VALUES
('12', '1', '2020-05-10', 'Cash invoice 1'),
('12', '2', '2020-05-07', 'Cash invoice 2'),
('13', '4', '2020-05-07', 'Recurrent Invoice covers period 04/01/2020 - 04/07/2020.'),
('10', '4', '2020-05-07', 'Recurrent Invoice covers period 04/01/2020 - 04/07/2020.'),
('12', '3', '2020-05-07', 'Cash invoice 4'),
('12', '4', '2021-01-21', 'Default #5'),
('0', '1', '2020-12-31', 'Closing Year'),
('22', '1', '2021-10-07', 'Payment for:1000 (PI1) '),
('22', '1', '2021-10-10', '1000'),
('12', '1', '2021-10-10', 'Default #1'),
('22', '2', '2021-10-11', '1001'),
('2', '1', '2021-10-11', 'modal awal (penambahan balance account)'),
('2', '2', '2021-10-11', 'modal awal (penambahan balance account)'),
('2', '1', '2021-10-11', 'modal awal (penambahan balance account)'),
('2', '2', '2021-10-11', 'modal awal (penambahan balance account)'),
('2', '3', '2021-10-11', 'modal awal (penambahan balance account)'),
('2', '4', '2021-10-11', 'modal awal (penambahan balance account)'),
('22', '1', '2021-10-11', '1000'),
('22', '2', '2021-10-11', '1003'),
('22', '3', '2021-10-11', '1001'),
('12', '1', '2021-10-11', 'Petty Cash (Kas Besar) #2'),
('22', '4', '2021-10-11', '1004'),
('0', '1', '2021-10-13', 'Pembayaran Listrik Nusa Loka'),
('0', '2', '2021-10-13', 'Modal yang di setor'),
('22', '3', '2021-10-13', '0001'),
('12', '1', '2021-10-13', 'Petty Cash (Kas Besar) #3');

### Structure of table `0_credit_status` ###

DROP TABLE IF EXISTS `0_credit_status`;

CREATE TABLE `0_credit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_description` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_description` (`reason_description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_credit_status` ###

INSERT INTO `0_credit_status` VALUES
('1', 'Good History', '0', '0'),
('3', 'No more work until payment received', '1', '0'),
('4', 'In liquidation', '1', '0');

### Structure of table `0_crm_categories` ###

DROP TABLE IF EXISTS `0_crm_categories`;

CREATE TABLE `0_crm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pure technical key',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'for category selector',
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`action`),
  UNIQUE KEY `type_2` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_crm_categories` ###

INSERT INTO `0_crm_categories` VALUES
('1', 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', '1', '0'),
('2', 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', '1', '0'),
('3', 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', '1', '0'),
('4', 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', '1', '0'),
('5', 'customer', 'general', 'General', 'General contact data for customer', '1', '0'),
('6', 'customer', 'order', 'Orders', 'Order confirmation', '1', '0'),
('7', 'customer', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('8', 'customer', 'invoice', 'Invoices', 'Invoice posting', '1', '0'),
('9', 'supplier', 'general', 'General', 'General contact data for supplier', '1', '0'),
('10', 'supplier', 'order', 'Orders', 'Order confirmation', '1', '0'),
('11', 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('12', 'supplier', 'invoice', 'Invoices', 'Invoice posting', '1', '0');

### Structure of table `0_crm_contacts` ###

DROP TABLE IF EXISTS `0_crm_contacts`;

CREATE TABLE `0_crm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT 0 COMMENT 'foreign key to crm_persons',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'entity id in related class table',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_crm_contacts` ###

INSERT INTO `0_crm_contacts` VALUES
('4', '2', 'supplier', 'general', '2'),
('5', '3', 'cust_branch', 'general', '1'),
('7', '3', 'customer', 'general', '1'),
('9', '4', 'cust_branch', 'general', '2'),
('10', '4', 'customer', 'general', '2'),
('11', '5', 'supplier', 'general', '1'),
('12', '6', 'cust_branch', 'general', '3'),
('14', '7', 'customer', 'general', '3'),
('15', '8', 'cust_branch', 'general', '5');

### Structure of table `0_crm_persons` ###

DROP TABLE IF EXISTS `0_crm_persons`;

CREATE TABLE `0_crm_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name2` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ref` (`ref`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_crm_persons` ###

INSERT INTO `0_crm_persons` VALUES
('2', 'Beefeater', 'Joe Oversea', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', '0'),
('3', 'Donald Easter', 'Donald Easter LLC', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', '0'),
('4', 'MoneyMaker', 'MoneyMaker Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('5', 'PT. Unilever Indonesia TBK', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('6', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('7', 'PT. Chandra Cahaya Nusantara', 'PT. Chandra Cahaya Nusantara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('8', 'Main Branch', 'Main Branch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0');

### Structure of table `0_currencies` ###

DROP TABLE IF EXISTS `0_currencies`;

CREATE TABLE `0_currencies` (
  `currency` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT 1,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`curr_abrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_currencies` ###

INSERT INTO `0_currencies` VALUES
('Rp', 'IDR', 'Rp', 'Indonesia', 'Rupiah', '1', '0'),
('USD', 'USD', '$', 'United of States', 'USD', '1', '0');

### Structure of table `0_cust_allocations` ###

DROP TABLE IF EXISTS `0_cust_allocations`;

CREATE TABLE `0_cust_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_cust_allocations` ###

INSERT INTO `0_cust_allocations` VALUES
('10', '3', '958000', '2021-10-13', '1', '12', '1', '10'),
('12', '3', '2874000', '2021-10-13', '1', '12', '2', '10'),
('13', '3', '65098500', '2021-10-13', '1', '12', '3', '10'),
('14', '3', '1437000', '2021-10-13', '2', '12', '1', '10');

### Structure of table `0_cust_branch` ###

DROP TABLE IF EXISTS `0_cust_branch`;

CREATE TABLE `0_cust_branch` (
  `branch_code` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL DEFAULT 0,
  `br_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `br_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `area` int(11) DEFAULT NULL,
  `salesman` int(11) NOT NULL DEFAULT 0,
  `default_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_group_id` int(11) DEFAULT NULL,
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `receivables_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default_ship_via` int(11) NOT NULL DEFAULT 1,
  `br_post_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT 0,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `bank_account` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`branch_code`,`debtor_no`),
  KEY `branch_ref` (`branch_ref`),
  KEY `group_no` (`group_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_cust_branch` ###

INSERT INTO `0_cust_branch` VALUES
('5', '3', 'PT. Chandra Cahaya Nusantara', 'PT. Chandra Cahaya Nusantara', '', '1', '1', 'DEF', '1', '40000', '40000', '13010', '11010', '1', '', '0', '', NULL, '0');

### Structure of table `0_debtor_trans` ###

DROP TABLE IF EXISTS `0_debtor_trans`;

CREATE TABLE `0_debtor_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT 0,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `version` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `debtor_no` int(11) unsigned NOT NULL,
  `branch_code` int(11) NOT NULL DEFAULT -1,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tpe` int(11) NOT NULL DEFAULT 0,
  `order_` int(11) NOT NULL DEFAULT 0,
  `ov_amount` double NOT NULL DEFAULT 0,
  `ov_gst` double NOT NULL DEFAULT 0,
  `ov_freight` double NOT NULL DEFAULT 0,
  `ov_freight_tax` double NOT NULL DEFAULT 0,
  `ov_discount` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  `prep_amount` double NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  `ship_via` int(11) DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`type`,`trans_no`,`debtor_no`),
  KEY `debtor_no` (`debtor_no`,`branch_code`),
  KEY `tran_date` (`tran_date`),
  KEY `order_` (`order_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_debtor_trans` ###

INSERT INTO `0_debtor_trans` VALUES
('1', '10', '0', '3', '5', '2021-10-13', '2021-10-13', '001/2021', '1', '1', '2395000', '0', '0', '0', '0', '2395000', '0', '1', '1', '6', '0', '4', '1'),
('2', '10', '0', '3', '5', '2021-10-13', '2021-10-13', '002/2021', '1', '2', '2874000', '0', '0', '0', '0', '2874000', '0', '1', '2', '6', '0', '4', '1'),
('3', '10', '0', '3', '5', '2021-10-13', '2021-10-13', '003/2021', '1', '3', '65098500', '0', '0', '0', '0', '65098500', '0', '1', '2', '6', '0', '4', '1'),
('1', '12', '0', '3', '5', '2021-10-13', '0000-00-00', '001/2021', '0', '0', '65098500', '0', '0', '0', '0', '68930500', '0', '1', '0', '0', '0', NULL, '0'),
('2', '12', '0', '3', '5', '2021-10-13', '0000-00-00', '002/2021', '0', '0', '1437000', '0', '0', '0', '0', '1437000', '0', '1', '0', '0', '0', NULL, '0'),
('1', '13', '1', '3', '5', '2021-10-13', '2021-10-14', '001/2021', '1', '1', '2395000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '1'),
('2', '13', '1', '3', '5', '2021-10-13', '2021-10-14', '002/2021', '1', '2', '2874000', '0', '0', '0', '0', '0', '0', '1', '2', '6', '0', '4', '1'),
('3', '13', '1', '3', '5', '2021-10-13', '2021-10-14', '003/2021', '1', '3', '65098500', '0', '0', '0', '0', '0', '0', '1', '2', '6', '0', '4', '1');

### Structure of table `0_debtor_trans_details` ###

DROP TABLE IF EXISTS `0_debtor_trans_details`;

CREATE TABLE `0_debtor_trans_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_trans_no` int(11) DEFAULT NULL,
  `debtor_trans_type` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `unit_tax` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `discount_percent` double NOT NULL DEFAULT 0,
  `standard_cost` double NOT NULL DEFAULT 0,
  `qty_done` double NOT NULL DEFAULT 0,
  `src_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  KEY `src_id` (`src_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_debtor_trans_details` ###

INSERT INTO `0_debtor_trans_details` VALUES
('1', '1', '13', '1000', 'Daging Ayam', '47900', '0', '50', '0', '45000', '50', '1'),
('3', '2', '13', '1000', 'Daging Ayam', '47900', '0', '60', '0', '45000', '60', '3'),
('5', '3', '13', '1003', 'Daging Bebek', '79900', '0', '515', '0', '66700', '515', '3'),
('6', '3', '13', '1000', 'Daging Ayam', '47900', '0', '500', '0', '45000', '500', '4'),
('7', '3', '10', '1003', 'Daging Bebek', '79900', '0', '515', '0', '66700', '0', '5'),
('8', '3', '10', '1000', 'Daging Ayam', '47900', '0', '500', '0', '45000', '0', '6');

### Structure of table `0_debtors_master` ###

DROP TABLE IF EXISTS `0_debtors_master`;

CREATE TABLE `0_debtors_master` (
  `debtor_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type` int(11) NOT NULL DEFAULT 1,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `credit_status` int(11) NOT NULL DEFAULT 0,
  `payment_terms` int(11) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `pymt_discount` double NOT NULL DEFAULT 0,
  `credit_limit` float NOT NULL DEFAULT 1000,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`debtor_no`),
  UNIQUE KEY `debtor_ref` (`debtor_ref`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_debtors_master` ###

INSERT INTO `0_debtors_master` VALUES
('3', 'PT. Chandra Cahaya Nusantara', 'PT. Chandra Cahaya Nusantara', NULL, '', 'IDR', '1', '0', '0', '1', '4', '0', '0', '1000', '', '0');

### Structure of table `0_dimensions` ###

DROP TABLE IF EXISTS `0_dimensions`;

CREATE TABLE `0_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT 1,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `date_` (`date_`),
  KEY `due_date` (`due_date`),
  KEY `type_` (`type_`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_dimensions` ###

INSERT INTO `0_dimensions` VALUES
('1', '001/2021', 'OFFICE', '1', '0', '2021-10-11', '2021-10-31'),
('2', '002/2021', 'ACCOUNTANT', '1', '0', '2021-10-11', '2021-10-31'),
('3', '003/2021', 'KITCHEN', '1', '0', '2021-10-11', '2021-10-31'),
('4', '004/2021', 'WAITER', '1', '0', '2021-10-11', '2021-10-31'),
('5', '005/2021', 'MARKETING', '1', '0', '2021-10-11', '2021-10-31'),
('6', '006/2021', 'SALES', '1', '0', '2021-10-11', '2021-10-31'),
('7', '007/2021', 'DIGITAL MARKETING', '1', '0', '2021-10-11', '2021-10-31'),
('8', '008/2021', 'PURCHASE', '1', '0', '2021-10-11', '2021-10-31'),
('9', '009/2021', 'WAREHOUSE', '1', '0', '2021-10-11', '2021-10-31');

### Structure of table `0_exchange_rates` ###

DROP TABLE IF EXISTS `0_exchange_rates`;

CREATE TABLE `0_exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT 0,
  `rate_sell` double NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `curr_code` (`curr_code`,`date_`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_exchange_rates` ###

INSERT INTO `0_exchange_rates` VALUES
('1', 'USD', '14202.117728412', '14202.117728412', '2021-10-11');

### Structure of table `0_fiscal_year` ###

DROP TABLE IF EXISTS `0_fiscal_year`;

CREATE TABLE `0_fiscal_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `begin` (`begin`),
  UNIQUE KEY `end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_fiscal_year` ###

INSERT INTO `0_fiscal_year` VALUES
('1', '2020-01-01', '2020-12-31', '1'),
('2', '2021-01-01', '2021-12-31', '0');

### Structure of table `0_gl_trans` ###

DROP TABLE IF EXISTS `0_gl_trans`;

CREATE TABLE `0_gl_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `type_no` int(11) NOT NULL DEFAULT 0,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob DEFAULT NULL,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `dimension_id` (`dimension_id`),
  KEY `dimension2_id` (`dimension2_id`),
  KEY `tran_date` (`tran_date`),
  KEY `account_and_tran_date` (`account`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_gl_trans` ###

INSERT INTO `0_gl_trans` VALUES
('1', '0', '1', '2021-10-13', '63500', 'Pemabayaran Listrik Nusa Loka', '100000', '2', '0', NULL, NULL),
('2', '0', '1', '2021-10-13', '11010', 'Pemabayaran Listrik Nusa Loka', '-100000', '2', '0', NULL, NULL),
('3', '0', '2', '2021-10-13', '11510', 'modal di setor', '100000000', '0', '0', NULL, NULL),
('4', '0', '2', '2021-10-13', '31010', 'modal di setor', '-100000000', '0', '0', NULL, NULL),
('5', '25', '1', '2021-10-13', '15103', '1000', '450000', '0', '0', NULL, NULL),
('6', '25', '1', '2021-10-13', '15103', '1003', '1000500', '0', '0', NULL, NULL),
('7', '25', '1', '2021-10-13', '1550', '', '-1450500', '0', '0', NULL, NULL),
('8', '20', '1', '2021-10-13', '21010', '', '-1450500', '0', '0', '3', '1'),
('9', '20', '1', '2021-10-13', '1550', '', '450000', '0', '0', NULL, NULL),
('10', '20', '1', '2021-10-13', '1550', '', '1000500', '0', '0', NULL, NULL),
('11', '22', '1', '2021-10-13', '21010', '', '1450500', '0', '0', '3', '1'),
('12', '22', '1', '2021-10-13', '11510', '', '-1450500', '0', '0', NULL, NULL),
('13', '25', '2', '2021-10-13', '15103', '1000', '4500000', '0', '0', NULL, NULL),
('14', '25', '2', '2021-10-13', '1550', '', '-4500000', '0', '0', NULL, NULL),
('15', '20', '2', '2021-10-13', '21010', '', '-4500000', '0', '0', '3', '1'),
('16', '20', '2', '2021-10-13', '1550', '', '4500000', '0', '0', NULL, NULL),
('17', '22', '2', '2021-10-13', '21010', '', '4500000', '3', '0', '3', '1'),
('18', '22', '2', '2021-10-13', '11510', '', '-4500000', '3', '0', NULL, NULL),
('19', '13', '1', '2021-10-13', '15000', '', '2250000', '0', '0', NULL, NULL),
('20', '13', '1', '2021-10-13', '15103', '', '-2250000', '0', '0', NULL, NULL),
('25', '10', '1', '2021-10-13', '40000', '', '-2395000', '6', '0', NULL, NULL),
('26', '10', '1', '2021-10-13', '13010', '', '2395000', '6', '0', '2', '3'),
('27', '13', '2', '2021-10-13', '15000', '', '2700000', '6', '0', NULL, NULL),
('28', '13', '2', '2021-10-13', '15103', '', '-2700000', '0', '0', NULL, NULL),
('33', '10', '2', '2021-10-13', '40000', '', '-2874000', '6', '0', NULL, NULL),
('34', '10', '2', '2021-10-13', '13010', '', '2874000', '6', '0', '2', '3'),
('35', '25', '3', '2021-10-13', '15103', '1003', '33350000', '0', '0', NULL, NULL),
('36', '25', '3', '2021-10-13', '15103', '1000', '22500000', '0', '0', NULL, NULL),
('37', '25', '3', '2021-10-13', '1550', '', '-55850000', '0', '0', NULL, NULL),
('38', '20', '3', '2021-10-13', '21010', '', '-55850000', '0', '0', '3', '1'),
('39', '20', '3', '2021-10-13', '1550', '', '33350000', '0', '0', NULL, NULL),
('40', '20', '3', '2021-10-13', '1550', '', '22500000', '0', '0', NULL, NULL),
('41', '22', '3', '2021-10-13', '21010', '', '55850000', '3', '0', '3', '1'),
('42', '22', '3', '2021-10-13', '11510', '', '-55850000', '3', '0', NULL, NULL),
('43', '13', '3', '2021-10-13', '40000', '', '34350500', '6', '0', NULL, NULL),
('44', '13', '3', '2021-10-13', '15103', '', '-34350500', '0', '0', NULL, NULL),
('45', '13', '3', '2021-10-13', '15000', '', '22500000', '6', '0', NULL, NULL),
('46', '13', '3', '2021-10-13', '15103', '', '-22500000', '0', '0', NULL, NULL),
('47', '10', '3', '2021-10-13', '40000', '', '-41148500', '6', '0', NULL, NULL),
('48', '10', '3', '2021-10-13', '40000', '', '-23950000', '6', '0', NULL, NULL),
('49', '10', '3', '2021-10-13', '13010', '', '65098500', '6', '0', '2', '3'),
('50', '12', '1', '2021-10-13', '11020', '', '65098500', '6', '0', NULL, NULL),
('51', '12', '1', '2021-10-13', '13010', '', '-65098500', '6', '0', '2', '3'),
('52', '12', '2', '2021-10-13', '11510', '', '1437000', '6', '0', NULL, NULL),
('53', '12', '2', '2021-10-13', '13010', '', '-1437000', '6', '0', '2', '3');

### Structure of table `0_grn_batch` ###

DROP TABLE IF EXISTS `0_grn_batch`;

CREATE TABLE `0_grn_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `delivery_date` (`delivery_date`),
  KEY `purch_order_no` (`purch_order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_grn_batch` ###

INSERT INTO `0_grn_batch` VALUES
('1', '1', '1', '001/2021', '2021-10-13', 'DEF', '1'),
('2', '1', '2', '002/2021', '2021-10-13', 'DEF', '1'),
('3', '1', '3', '003/2021', '2021-10-13', 'DEF', '1');

### Structure of table `0_grn_items` ###

DROP TABLE IF EXISTS `0_grn_items`;

CREATE TABLE `0_grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT 0,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty_recd` double NOT NULL DEFAULT 0,
  `quantity_inv` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `grn_batch_id` (`grn_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_grn_items` ###

INSERT INTO `0_grn_items` VALUES
('1', '1', '1', '1000', 'Daging Ayam', '10', '10'),
('2', '1', '2', '1003', 'Daging Bebek', '15', '15'),
('3', '2', '3', '1000', 'Daging Ayam', '100', '100'),
('4', '3', '4', '1003', 'Daging Bebek', '500', '500'),
('5', '3', '5', '1000', 'Daging Ayam', '500', '500');

### Structure of table `0_groups` ###

DROP TABLE IF EXISTS `0_groups`;

CREATE TABLE `0_groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_groups` ###


### Structure of table `0_item_codes` ###

DROP TABLE IF EXISTS `0_item_codes`;

CREATE TABLE `0_item_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` smallint(6) unsigned NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `is_foreign` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_codes` ###

INSERT INTO `0_item_codes` VALUES
('4', '1001', '1001', 'Daging Ayam', '6', '1', '0', '1'),
('5', '1000', '1000', 'Daging Ayam', '6', '1', '0', '0'),
('6', '1003', '1003', 'Daging Bebek', '7', '1', '0', '0');

### Structure of table `0_item_tax_type_exemptions` ###

DROP TABLE IF EXISTS `0_item_tax_type_exemptions`;

CREATE TABLE `0_item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT 0,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_tax_type_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_tax_type_exemptions` ###


### Structure of table `0_item_tax_types` ###

DROP TABLE IF EXISTS `0_item_tax_types`;

CREATE TABLE `0_item_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_tax_types` ###

INSERT INTO `0_item_tax_types` VALUES
('1', 'default', '1', '0');

### Structure of table `0_item_units` ###

DROP TABLE IF EXISTS `0_item_units`;

CREATE TABLE `0_item_units` (
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`abbr`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_units` ###

INSERT INTO `0_item_units` VALUES
('1 KG', 'per 1KG', '1', '0'),
('1 PCS', 'per 1 PCS', '1', '0'),
('380 ML / Botol', 'per 380ML / Botol', '1', '0');

### Structure of table `0_journal` ###

DROP TABLE IF EXISTS `0_journal`;

CREATE TABLE `0_journal` (
  `type` smallint(6) NOT NULL DEFAULT 0,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `tran_date` date DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_date` date DEFAULT '0000-00-00',
  `doc_date` date NOT NULL DEFAULT '0000-00-00',
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_journal` ###

INSERT INTO `0_journal` VALUES
('0', '1', '2021-10-13', '001/2021', '', '2021-10-13', '2021-10-13', 'IDR', '100000', '1'),
('0', '2', '2021-10-13', '002/2021', '', '2021-10-13', '2021-10-13', 'IDR', '100000000', '1');

### Structure of table `0_loc_stock` ###

DROP TABLE IF EXISTS `0_loc_stock`;

CREATE TABLE `0_loc_stock` (
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reorder_level` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`loc_code`,`stock_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_loc_stock` ###

INSERT INTO `0_loc_stock` VALUES
('DEF', '1000', '0'),
('DEF', '1001', '0'),
('DEF', '1003', '0'),
('DEF', '101', '0'),
('DEF', '102', '0'),
('DEF', '103', '0'),
('DEF', '201', '0'),
('DEF', '202', '0'),
('DEF', '301', '0');

### Structure of table `0_locations` ###

DROP TABLE IF EXISTS `0_locations`;

CREATE TABLE `0_locations` (
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fixed_asset` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`loc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_locations` ###

INSERT INTO `0_locations` VALUES
('DEF', 'Default', 'N/A', '', '', '', '', '', '0', '0');

### Structure of table `0_payment_terms` ###

DROP TABLE IF EXISTS `0_payment_terms`;

CREATE TABLE `0_payment_terms` (
  `terms_indicator` int(11) NOT NULL AUTO_INCREMENT,
  `terms` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT 0,
  `day_in_following_month` smallint(6) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`terms_indicator`),
  UNIQUE KEY `terms` (`terms`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_payment_terms` ###

INSERT INTO `0_payment_terms` VALUES
('1', 'Due 15th Of the Following Month', '0', '17', '0'),
('2', 'Due By End Of The Following Month', '0', '30', '0'),
('3', 'Payment due within 10 days', '10', '0', '0'),
('4', 'Cash Only', '0', '0', '0'),
('5', 'Prepaid', '-1', '0', '0'),
('6', 'Credit', '-1', '0', '0'),
('7', 'DP 50%', '-1', '0', '0'),
('8', 'DP 30%', '-1', '0', '0'),
('9', 'DP 20%', '-1', '0', '0'),
('10', 'DP 10%', '-1', '0', '0'),
('11', 'DP 5%', '-1', '0', '0');

### Structure of table `0_prices` ###

DROP TABLE IF EXISTS `0_prices`;

CREATE TABLE `0_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT 0,
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_prices` ###

INSERT INTO `0_prices` VALUES
('1', '101', '1', 'USD', '300'),
('2', '102', '1', 'USD', '250'),
('3', '103', '1', 'USD', '50'),
('6', '1000', '1', 'IDR', '47900'),
('7', '1003', '1', 'IDR', '79900');

### Structure of table `0_print_profiles` ###

DROP TABLE IF EXISTS `0_print_profiles`;

CREATE TABLE `0_print_profiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `report` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile` (`profile`,`report`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_print_profiles` ###

INSERT INTO `0_print_profiles` VALUES
('1', 'Out of office', NULL, '0'),
('2', 'Sales Department', NULL, '0'),
('3', 'Central', NULL, '2'),
('4', 'Sales Department', '104', '2'),
('5', 'Sales Department', '105', '2'),
('6', 'Sales Department', '107', '2'),
('7', 'Sales Department', '109', '2'),
('8', 'Sales Department', '110', '2'),
('9', 'Sales Department', '201', '2');

### Structure of table `0_printers` ###

DROP TABLE IF EXISTS `0_printers`;

CREATE TABLE `0_printers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `queue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `port` smallint(11) unsigned NOT NULL,
  `timeout` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_printers` ###

INSERT INTO `0_printers` VALUES
('1', 'QL500', 'Label printer', 'QL500', 'server', '127', '20'),
('2', 'Samsung', 'Main network printer', 'scx4521F', 'server', '515', '5'),
('3', 'Local', 'Local print server at user IP', 'lp', '', '515', '10');

### Structure of table `0_purch_data` ###

DROP TABLE IF EXISTS `0_purch_data`;

CREATE TABLE `0_purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  `suppliers_uom` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT 1,
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_purch_data` ###

INSERT INTO `0_purch_data` VALUES
('1', '1000', '45000', '1kg', '1', 'Daging Ayam'),
('1', '1003', '66700', '1kg', '1', 'Daging Bebek');

### Structure of table `0_purch_order_details` ###

DROP TABLE IF EXISTS `0_purch_order_details`;

CREATE TABLE `0_purch_order_details` (
  `po_detail_item` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT 0,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `act_price` double NOT NULL DEFAULT 0,
  `std_cost_unit` double NOT NULL DEFAULT 0,
  `quantity_ordered` double NOT NULL DEFAULT 0,
  `quantity_received` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`po_detail_item`),
  KEY `order` (`order_no`,`po_detail_item`),
  KEY `itemcode` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_purch_order_details` ###

INSERT INTO `0_purch_order_details` VALUES
('1', '1', '1000', 'Daging Ayam', '2021-10-23', '10', '45000', '45000', '45000', '10', '10'),
('2', '1', '1003', 'Daging Bebek', '2021-10-23', '15', '66700', '66700', '66700', '15', '15'),
('3', '2', '1000', 'Daging Ayam', '2021-10-23', '100', '45000', '45000', '45000', '100', '100'),
('4', '3', '1003', 'Daging Bebek', '2021-10-23', '500', '66700', '66700', '66700', '500', '500'),
('5', '3', '1000', 'Daging Ayam', '2021-10-23', '500', '45000', '45000', '45000', '500', '500');

### Structure of table `0_purch_orders` ###

DROP TABLE IF EXISTS `0_purch_orders`;

CREATE TABLE `0_purch_orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `comments` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `into_stock_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `prep_amount` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_no`),
  KEY `ord_date` (`ord_date`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_purch_orders` ###

INSERT INTO `0_purch_orders` VALUES
('1', '1', NULL, '2021-10-13', '001/2021', NULL, 'DEF', 'N/A', '1450500', '0', '0', '0'),
('2', '1', NULL, '2021-10-13', '002/2021', NULL, 'DEF', 'N/A', '4500000', '0', '0', '0'),
('3', '1', NULL, '2021-10-13', '003/2021', '0001', 'DEF', 'JL. Raya rawa buntu No 17 RT005/001 - Tangerang Selatan', '55850000', '0', '0', '0');

### Structure of table `0_quick_entries` ###

DROP TABLE IF EXISTS `0_quick_entries`;

CREATE TABLE `0_quick_entries` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `usage` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_amount` double NOT NULL DEFAULT 0,
  `base_desc` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_quick_entries` ###

INSERT INTO `0_quick_entries` VALUES
('1', '1', 'Maintenance', NULL, '0', 'Amount', '0'),
('2', '4', 'Phone', NULL, '0', 'Amount', '0'),
('3', '2', 'Cash Sales', 'Retail sales without invoice', '0', 'Amount', '0');

### Structure of table `0_quick_entry_lines` ###

DROP TABLE IF EXISTS `0_quick_entry_lines`;

CREATE TABLE `0_quick_entry_lines` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `qid` smallint(6) unsigned NOT NULL,
  `amount` double DEFAULT 0,
  `memo` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dest_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` smallint(6) unsigned DEFAULT NULL,
  `dimension2_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_quick_entry_lines` ###

INSERT INTO `0_quick_entry_lines` VALUES
('1', '1', '0', '', 't-', '1', '0', '0'),
('2', '2', '0', '', 't-', '1', '0', '0'),
('3', '3', '0', '', 't-', '1', '0', '0'),
('4', '3', '0', '', '=', '4010', '0', '0'),
('5', '1', '0', '', '=', '5765', '0', '0'),
('6', '2', '0', '', '=', '5780', '0', '0');

### Structure of table `0_recurrent_invoices` ###

DROP TABLE IF EXISTS `0_recurrent_invoices`;

CREATE TABLE `0_recurrent_invoices` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) unsigned NOT NULL,
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `group_no` smallint(6) unsigned DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `monthly` int(11) NOT NULL DEFAULT 0,
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_recurrent_invoices` ###

INSERT INTO `0_recurrent_invoices` VALUES
('1', 'Weekly Maintenance', '6', '1', '1', '7', '0', '2020-04-01', '2021-05-07', '2020-04-08');

### Structure of table `0_reflines` ###

DROP TABLE IF EXISTS `0_reflines`;

CREATE TABLE `0_reflines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` int(11) NOT NULL,
  `prefix` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pattern` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix` (`trans_type`,`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_reflines` ###

INSERT INTO `0_reflines` VALUES
('1', '0', '', '{001}/{YYYY}', '', '1', '0'),
('2', '1', '', '{001}/{YYYY}', '', '1', '0'),
('3', '2', '', '{001}/{YYYY}', '', '1', '0'),
('4', '4', '', '{001}/{YYYY}', '', '1', '0'),
('5', '10', '', '{001}/{YYYY}', '', '1', '0'),
('6', '11', '', '{001}/{YYYY}', '', '1', '0'),
('7', '12', '', '{001}/{YYYY}', '', '1', '0'),
('8', '13', '', '{001}/{YYYY}', '', '1', '0'),
('9', '16', '', '{001}/{YYYY}', '', '1', '0'),
('10', '17', '', '{001}/{YYYY}', '', '1', '0'),
('11', '18', '', '{001}/{YYYY}', '', '1', '0'),
('12', '20', '', '{001}/{YYYY}', '', '1', '0'),
('13', '21', '', '{001}/{YYYY}', '', '1', '0'),
('14', '22', '', '{001}/{YYYY}', '', '1', '0'),
('15', '25', '', '{001}/{YYYY}', '', '1', '0'),
('16', '26', '', '{001}/{YYYY}', '', '1', '0'),
('17', '28', '', '{001}/{YYYY}', '', '1', '0'),
('18', '29', '', '{001}/{YYYY}', '', '1', '0'),
('19', '30', '', '{001}/{YYYY}', '', '1', '0'),
('20', '32', '', '{001}/{YYYY}', '', '1', '0'),
('21', '35', '', '{001}/{YYYY}', '', '1', '0'),
('22', '40', '', '{001}/{YYYY}', '', '1', '0');

### Structure of table `0_refs` ###

DROP TABLE IF EXISTS `0_refs`;

CREATE TABLE `0_refs` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`type`),
  KEY `Type_and_Reference` (`type`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_refs` ###

INSERT INTO `0_refs` VALUES
('1', '0', '001/2021'),
('2', '0', '002/2021'),
('1', '1', '001/2021'),
('2', '1', '002/2021'),
('3', '1', '003/2021'),
('4', '1', '004/2021'),
('1', '2', '001/2021'),
('2', '2', '002/2021'),
('3', '2', '003/2021'),
('4', '2', '004/2021'),
('1', '4', '001/2021'),
('2', '4', '002/2021'),
('1', '10', '001/2021'),
('5', '10', '001/2021'),
('2', '10', '002/2021'),
('3', '10', '003/2021'),
('4', '10', '004/2020'),
('1', '12', '001/2021'),
('4', '12', '001/2021'),
('2', '12', '002/2021'),
('3', '12', '003/2020'),
('1', '13', '001/2021'),
('2', '13', '002/2021'),
('3', '13', '003/2021'),
('1', '18', '001/2021'),
('2', '18', '002/2021'),
('3', '18', '003/2021'),
('4', '18', '004/2021'),
('1', '20', '001/2021'),
('2', '20', '002/2021'),
('3', '20', '003/2021'),
('4', '20', '004/2021'),
('1', '21', '001/2021'),
('1', '22', '001/2021'),
('2', '22', '002/2021'),
('3', '22', '003/2021'),
('4', '22', '004/2021'),
('1', '25', '001/2021'),
('2', '25', '002/2021'),
('3', '25', '003/2021'),
('4', '25', '004/2021'),
('1', '26', '001/2020'),
('4', '26', '001/2021'),
('2', '26', '002/2020'),
('3', '26', '003/2020'),
('1', '28', '001/2021'),
('1', '30', '001/2021'),
('4', '30', '002/2020'),
('2', '30', '002/2021'),
('6', '30', '003/2020'),
('3', '30', '003/2021'),
('1', '32', '001/2021'),
('1', '40', '001/2021'),
('2', '40', '002/2021'),
('3', '40', '003/2021'),
('4', '40', '004/2021'),
('5', '40', '005/2021'),
('6', '40', '006/2021'),
('7', '40', '007/2021'),
('8', '40', '008/2021'),
('9', '40', '009/2021');

### Structure of table `0_sales_order_details` ###

DROP TABLE IF EXISTS `0_sales_order_details`;

CREATE TABLE `0_sales_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT 0,
  `trans_type` smallint(6) NOT NULL DEFAULT 30,
  `stk_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty_sent` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `invoiced` double NOT NULL DEFAULT 0,
  `discount_percent` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sorder` (`trans_type`,`order_no`),
  KEY `stkcode` (`stk_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_order_details` ###

INSERT INTO `0_sales_order_details` VALUES
('1', '1', '30', '1000', 'Daging Ayam', '50', '47900', '50', '0', '0'),
('2', '2', '30', '1000', 'Daging Ayam', '60', '47900', '60', '0', '0'),
('3', '3', '30', '1003', 'Daging Bebek', '515', '79900', '515', '0', '0'),
('4', '3', '30', '1000', 'Daging Ayam', '500', '47900', '500', '0', '0');

### Structure of table `0_sales_orders` ###

DROP TABLE IF EXISTS `0_sales_orders`;

CREATE TABLE `0_sales_orders` (
  `order_no` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT 30,
  `version` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `debtor_no` int(11) NOT NULL DEFAULT 0,
  `branch_code` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_ref` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int(11) NOT NULL DEFAULT 0,
  `ship_via` int(11) NOT NULL DEFAULT 0,
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `freight_cost` double NOT NULL DEFAULT 0,
  `from_stk_loc` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int(11) DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `prep_amount` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`trans_type`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_orders` ###

INSERT INTO `0_sales_orders` VALUES
('1', '30', '1', '0', '3', '5', '001/2021', '', NULL, '2021-10-13', '1', '1', '', NULL, NULL, 'PT. Chandra Cahaya Nusantara', '0', 'DEF', '2021-10-14', '4', '2395000', '0', '0'),
('2', '30', '1', '0', '3', '5', '002/2021', '', NULL, '2021-10-13', '1', '1', '', NULL, NULL, 'PT. Chandra Cahaya Nusantara', '0', 'DEF', '2021-10-14', '4', '2874000', '0', '0'),
('3', '30', '1', '0', '3', '5', '003/2021', '', NULL, '2021-10-13', '1', '1', '', NULL, NULL, 'PT. Chandra Cahaya Nusantara', '0', 'DEF', '2021-10-14', '4', '65098500', '0', '0');

### Structure of table `0_sales_pos` ###

DROP TABLE IF EXISTS `0_sales_pos`;

CREATE TABLE `0_sales_pos` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pos_account` smallint(6) unsigned NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_name` (`pos_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_pos` ###

INSERT INTO `0_sales_pos` VALUES
('1', 'Petty Cash (Kas Besar)', '1', '1', 'DEF', '4', '0'),
('2', 'Petty Cash (Kas Kecil)', '1', '1', 'DEF', '3', '0');

### Structure of table `0_sales_types` ###

DROP TABLE IF EXISTS `0_sales_types`;

CREATE TABLE `0_sales_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_type` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT 0,
  `factor` double NOT NULL DEFAULT 1,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_type` (`sales_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_types` ###

INSERT INTO `0_sales_types` VALUES
('1', 'Retail', '1', '1', '0'),
('2', 'Wholesale', '0', '0.7', '0');

### Structure of table `0_salesman` ###

DROP TABLE IF EXISTS `0_salesman`;

CREATE TABLE `0_salesman` (
  `salesman_code` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` char(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_phone` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_fax` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT 0,
  `break_pt` double NOT NULL DEFAULT 0,
  `provision2` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`salesman_code`),
  UNIQUE KEY `salesman_name` (`salesman_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_salesman` ###

INSERT INTO `0_salesman` VALUES
('1', 'Sales Person', '', '', '', '5', '1000', '4', '0');

### Structure of table `0_security_roles` ###

DROP TABLE IF EXISTS `0_security_roles`;

CREATE TABLE `0_security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sections` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `areas` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_security_roles` ###

INSERT INTO `0_security_roles` VALUES
('1', 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132;775', '0'),
('2', 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;9216;9472;9728;10496;10752;11008;13056;13312;15616;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;775;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;9217;9218;9220;9473;9474;9475;9476;9729;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15630;15629;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;16129;16130;16131;16132', '0'),
('3', 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873;775', '0'),
('4', 'Stock Manager', 'Stock Manager', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132;775', '0'),
('5', 'Production Manager', 'Production Manager', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('6', 'Purchase Officer', 'Purchase Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('7', 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', '0'),
('8', 'AP Officer', 'AP Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('9', 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', '0'),
('10', 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132;775', '0');

### Structure of table `0_shippers` ###

DROP TABLE IF EXISTS `0_shippers`;

CREATE TABLE `0_shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`shipper_id`),
  UNIQUE KEY `name` (`shipper_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_shippers` ###

INSERT INTO `0_shippers` VALUES
('1', 'Default', '', '', '', 'JL. Raya Rawa Buntu No. 17 RT 008 / 01 - Tangerang', '0'),
('2', 'PT. Surgana Rasa Lestari', '', '', '', 'JL. Raya Rawa Buntu No. 17 RT 008 / 01 - Tangerang', '0');

### Structure of table `0_sql_trail` ###

DROP TABLE IF EXISTS `0_sql_trail`;

CREATE TABLE `0_sql_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sql` text COLLATE utf8_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sql_trail` ###


### Structure of table `0_stock_category` ###

DROP TABLE IF EXISTS `0_stock_category`;

CREATE TABLE `0_stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT 1,
  `dflt_units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_wip_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT 0,
  `dflt_no_purchase` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_category` ###

INSERT INTO `0_stock_category` VALUES
('6', 'Daging Ayam', '1', '1 KG', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '1', '1'),
('7', 'Daging Bebek', '1', '1 KG', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '1', '1'),
('8', 'Daging Kambing', '1', '1 KG', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '1', '1'),
('9', 'Daging Sapi', '1', '1 KG', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '1', '1');

### Structure of table `0_stock_fa_class` ###

DROP TABLE IF EXISTS `0_stock_fa_class`;

CREATE TABLE `0_stock_fa_class` (
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `depreciation_rate` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fa_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_fa_class` ###


### Structure of table `0_stock_master` ###

DROP TABLE IF EXISTS `0_stock_master`;

CREATE TABLE `0_stock_master` (
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT 0,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cogs_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inventory_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wip_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `purchase_cost` double NOT NULL DEFAULT 0,
  `material_cost` double NOT NULL DEFAULT 0,
  `labour_cost` double NOT NULL DEFAULT 0,
  `overhead_cost` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  `no_sale` tinyint(1) NOT NULL DEFAULT 0,
  `no_purchase` tinyint(1) NOT NULL DEFAULT 0,
  `editable` tinyint(1) NOT NULL DEFAULT 0,
  `depreciation_method` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `depreciation_rate` double NOT NULL DEFAULT 0,
  `depreciation_factor` double NOT NULL DEFAULT 1,
  `depreciation_start` date NOT NULL DEFAULT '0000-00-00',
  `depreciation_date` date NOT NULL DEFAULT '0000-00-00',
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_master` ###

INSERT INTO `0_stock_master` VALUES
('1000', '6', '1', 'Daging Ayam', 'Daging ayam per 1kg', '1 KG', 'M', '40000', '15000', '15103', '40000', '15302', '0', '0', '45000', '45000', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('1001', '6', '1', 'Daging Ayam', 'Daging Ayam per 1KG', '1 PCS', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('1003', '7', '1', 'Daging Bebek', 'Daging bebek per 1kg', '1 KG', 'M', '40000', '40000', '15103', '15103', '15302', '0', '0', '66700', '66700', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', '');

### Structure of table `0_stock_moves` ###

DROP TABLE IF EXISTS `0_stock_moves`;

CREATE TABLE `0_stock_moves` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `price` double NOT NULL DEFAULT 0,
  `reference` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT 1,
  `standard_cost` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`trans_id`),
  KEY `type` (`type`,`trans_no`),
  KEY `Move` (`stock_id`,`loc_code`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_moves` ###

INSERT INTO `0_stock_moves` VALUES
('1', '1', '1000', '25', 'DEF', '2021-10-13', '45000', '', '10', '45000'),
('2', '1', '1003', '25', 'DEF', '2021-10-13', '66700', '', '15', '66700'),
('3', '2', '1000', '25', 'DEF', '2021-10-13', '45000', '', '100', '45000'),
('4', '1', '1000', '13', 'DEF', '2021-10-13', '47900', '001/2021', '-50', '45000'),
('5', '2', '1000', '13', 'DEF', '2021-10-13', '47900', '002/2021', '-60', '45000'),
('6', '3', '1003', '25', 'DEF', '2021-10-13', '66700', '', '500', '66700'),
('7', '3', '1000', '25', 'DEF', '2021-10-13', '45000', '', '500', '45000'),
('8', '3', '1003', '13', 'DEF', '2021-10-13', '79900', '003/2021', '-515', '66700'),
('9', '3', '1000', '13', 'DEF', '2021-10-13', '47900', '003/2021', '-500', '45000');

### Structure of table `0_supp_allocations` ###

DROP TABLE IF EXISTS `0_supp_allocations`;

CREATE TABLE `0_supp_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_supp_allocations` ###

INSERT INTO `0_supp_allocations` VALUES
('1', '1', '1450500', '2021-10-13', '1', '22', '1', '20'),
('2', '1', '4500000', '2021-10-13', '2', '22', '2', '20'),
('3', '1', '55850000', '2021-10-13', '3', '22', '3', '20');

### Structure of table `0_supp_invoice_items` ###

DROP TABLE IF EXISTS `0_supp_invoice_items`;

CREATE TABLE `0_supp_invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_trans_no` int(11) DEFAULT NULL,
  `supp_trans_type` int(11) DEFAULT NULL,
  `gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grn_item_id` int(11) DEFAULT NULL,
  `po_detail_item_id` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `unit_tax` double NOT NULL DEFAULT 0,
  `memo_` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_supp_invoice_items` ###

INSERT INTO `0_supp_invoice_items` VALUES
('1', '1', '20', '0', '1', '1', '1000', 'Daging Ayam', '10', '45000', '0', NULL, '0', '0'),
('2', '1', '20', '0', '2', '2', '1003', 'Daging Bebek', '15', '66700', '0', NULL, '0', '0'),
('3', '2', '20', '0', '3', '3', '1000', 'Daging Ayam', '100', '45000', '0', NULL, '0', '0'),
('4', '3', '20', '0', '4', '4', '1003', 'Daging Bebek', '500', '66700', '0', NULL, '0', '0'),
('5', '3', '20', '0', '5', '5', '1000', 'Daging Ayam', '500', '45000', '0', NULL, '0', '0');

### Structure of table `0_supp_trans` ###

DROP TABLE IF EXISTS `0_supp_trans`;

CREATE TABLE `0_supp_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT 0,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `supplier_id` int(11) unsigned NOT NULL,
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT 0,
  `ov_discount` double NOT NULL DEFAULT 0,
  `ov_gst` double NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  `alloc` double NOT NULL DEFAULT 0,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`type`,`trans_no`,`supplier_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_supp_trans` ###

INSERT INTO `0_supp_trans` VALUES
('1', '20', '1', '001/2021', '00001', '2021-10-13', '2021-10-13', '1450500', '0', '0', '1', '1450500', '0'),
('2', '20', '1', '002/2021', '0002', '2021-10-13', '2021-10-13', '4500000', '0', '0', '1', '4500000', '0'),
('3', '20', '1', '003/2021', '0001', '2021-10-13', '2021-10-13', '55850000', '0', '0', '1', '55850000', '0'),
('1', '22', '1', '001/2021', '', '2021-10-13', '2021-10-13', '-1450500', '0', '0', '1', '1450500', '0'),
('2', '22', '1', '002/2021', '', '2021-10-13', '2021-10-13', '-4500000', '0', '0', '1', '4500000', '0'),
('3', '22', '1', '003/2021', '', '2021-10-13', '2021-10-13', '-55850000', '0', '0', '1', '55850000', '0');

### Structure of table `0_suppliers` ###

DROP TABLE IF EXISTS `0_suppliers`;

CREATE TABLE `0_suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `gst_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  `dimension_id` int(11) DEFAULT 0,
  `dimension2_id` int(11) DEFAULT 0,
  `tax_group_id` int(11) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT 0,
  `purchase_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payable_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`supplier_id`),
  KEY `supp_ref` (`supp_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_suppliers` ###

INSERT INTO `0_suppliers` VALUES
('1', 'PT. Unilever Indonesia TBK', 'PT. Unilever Indonesia TBK', '', '', '', '', '', 'https://unilever,co.oid', '', 'IDR', '4', '0', '0', '0', '1', '0', '15000', '21010', '15000', '', '0');

### Structure of table `0_sys_prefs` ###

DROP TABLE IF EXISTS `0_sys_prefs`;

CREATE TABLE `0_sys_prefs` (
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sys_prefs` ###

INSERT INTO `0_sys_prefs` VALUES
('accounts_alpha', 'glsetup.general', 'tinyint', '1', '0'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', '1', '0'),
('add_pct', 'setup.company', 'int', '5', '-1'),
('allow_negative_prices', 'glsetup.inventory', 'tinyint', '1', '1'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', '1', '0'),
('alternative_tax_include_on_docs', 'setup.company', 'tinyint', '1', ''),
('auto_curr_reval', 'setup.company', 'smallint', '6', '1'),
('bank_charge_act', 'glsetup.general', 'varchar', '15', '5690'),
('barcodes_on_stock', 'setup.company', 'tinyint', '1', '0'),
('base_sales', 'setup.company', 'int', '11', '1'),
('bcc_email', 'setup.company', 'varchar', '100', ''),
('company_logo_report', 'setup.company', 'tinyint', '1', '0'),
('coy_logo', 'setup.company', 'varchar', '100', ''),
('coy_name', 'setup.company', 'varchar', '60', 'Surgana Rasa Lestari'),
('coy_no', 'setup.company', 'varchar', '25', ''),
('creditors_act', 'glsetup.purchase', 'varchar', '15', '2100'),
('curr_default', 'setup.company', 'char', '3', 'IDR'),
('debtors_act', 'glsetup.sales', 'varchar', '15', '1200'),
('default_adj_act', 'glsetup.items', 'varchar', '15', '5040'),
('default_cogs_act', 'glsetup.items', 'varchar', '15', '5010'),
('default_credit_limit', 'glsetup.customer', 'int', '11', '1000'),
('default_delivery_required', 'glsetup.sales', 'smallint', '6', '1'),
('default_dim_required', 'glsetup.dims', 'int', '11', '20'),
('default_inv_sales_act', 'glsetup.items', 'varchar', '15', '4010'),
('default_inventory_act', 'glsetup.items', 'varchar', '15', '1510'),
('default_loss_on_asset_disposal_act', 'glsetup.items', 'varchar', '15', '5660'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', '15', '4500'),
('default_quote_valid_days', 'glsetup.sales', 'smallint', '6', '30'),
('default_receival_required', 'glsetup.purchase', 'smallint', '6', '10'),
('default_sales_act', 'glsetup.sales', 'varchar', '15', '4010'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', '15', '4510'),
('default_wip_act', 'glsetup.items', 'varchar', '15', '1530'),
('default_workorder_required', 'glsetup.manuf', 'int', '11', '20'),
('deferred_income_act', 'glsetup.sales', 'varchar', '15', '2105'),
('depreciation_period', 'glsetup.company', 'tinyint', '1', '1'),
('dim_on_recurrent_invoice', 'setup.company', 'tinyint', '1', '0'),
('domicile', 'setup.company', 'varchar', '55', 'Tangerang selatan'),
('email', 'setup.company', 'varchar', '100', 'info@surganarasa.co.id'),
('exchange_diff_act', 'glsetup.general', 'varchar', '15', '4450'),
('f_year', 'setup.company', 'int', '11', '2'),
('fax', 'setup.company', 'varchar', '30', 'admin@surganarasa.co.id'),
('freight_act', 'glsetup.customer', 'varchar', '15', '4430'),
('gl_closing_date', 'setup.closing_date', 'date', '8', '2021-10-09'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', '15', '1550'),
('gst_no', 'setup.company', 'varchar', '25', ''),
('legal_text', 'glsetup.customer', 'tinytext', '0', ''),
('loc_notification', 'glsetup.inventory', 'tinyint', '1', '0'),
('login_tout', 'setup.company', 'smallint', '6', '600'),
('long_description_invoice', 'setup.company', 'tinyint', '1', '0'),
('max_days_in_docs', 'setup.company', 'smallint', '5', '180'),
('no_customer_list', 'setup.company', 'tinyint', '1', '0'),
('no_item_list', 'setup.company', 'tinyint', '1', '0'),
('no_supplier_list', 'setup.company', 'tinyint', '1', '0'),
('no_zero_lines_amount', 'glsetup.sales', 'tinyint', '1', '1'),
('past_due_days', 'glsetup.general', 'int', '11', '30'),
('phone', 'setup.company', 'varchar', '30', ''),
('po_over_charge', 'glsetup.purchase', 'int', '11', '10'),
('po_over_receive', 'glsetup.purchase', 'int', '11', '10'),
('postal_address', 'setup.company', 'tinytext', '0', 'JL. Raya Rawa Buntu No 17 RT008/01 - Tangerang Selatan - Banten'),
('print_dialog_direct', 'setup.company', 'tinyint', '1', '0'),
('print_invoice_no', 'glsetup.sales', 'tinyint', '1', '0'),
('print_item_images_on_quote', 'glsetup.inventory', 'tinyint', '1', '0'),
('profit_loss_year_act', 'glsetup.general', 'varchar', '15', '9990'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', '15', '5060'),
('ref_no_auto_increase', 'setup.company', 'tinyint', '1', '0'),
('retained_earnings_act', 'glsetup.general', 'varchar', '15', '3590'),
('round_to', 'setup.company', 'int', '5', '1'),
('shortname_name_in_list', 'setup.company', 'tinyint', '1', '0'),
('show_po_item_codes', 'glsetup.purchase', 'tinyint', '1', '0'),
('suppress_tax_rates', 'setup.company', 'tinyint', '1', ''),
('tax_algorithm', 'glsetup.customer', 'tinyint', '1', '1'),
('tax_last', 'setup.company', 'int', '11', '1'),
('tax_prd', 'setup.company', 'int', '11', '1'),
('time_zone', 'setup.company', 'tinyint', '1', '0'),
('use_dimension', 'setup.company', 'tinyint', '1', '1'),
('use_fixed_assets', 'setup.company', 'tinyint', '1', '1'),
('use_manufacturing', 'setup.company', 'tinyint', '1', '1'),
('version_id', 'system', 'varchar', '11', '2.4.1');

### Structure of table `0_tag_associations` ###

DROP TABLE IF EXISTS `0_tag_associations`;

CREATE TABLE `0_tag_associations` (
  `record_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tag_associations` ###


### Structure of table `0_tags` ###

DROP TABLE IF EXISTS `0_tags`;

CREATE TABLE `0_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tags` ###


### Structure of table `0_tax_group_items` ###

DROP TABLE IF EXISTS `0_tax_group_items`;

CREATE TABLE `0_tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT 0,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  `tax_shipping` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tax_group_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tax_group_items` ###

INSERT INTO `0_tax_group_items` VALUES
('1', '1', '1');

### Structure of table `0_tax_groups` ###

DROP TABLE IF EXISTS `0_tax_groups`;

CREATE TABLE `0_tax_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tax_groups` ###

INSERT INTO `0_tax_groups` VALUES
('1', 'Tax', '0'),
('2', 'Tax Exempt', '0');

### Structure of table `0_tax_types` ###

DROP TABLE IF EXISTS `0_tax_types`;

CREATE TABLE `0_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT 0,
  `sales_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tax_types` ###

INSERT INTO `0_tax_types` VALUES
('1', '5', '2150', '2150', 'Tax', '0');

### Structure of table `0_trans_tax_details` ###

DROP TABLE IF EXISTS `0_trans_tax_details`;

CREATE TABLE `0_trans_tax_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 0,
  `ex_rate` double NOT NULL DEFAULT 1,
  `included_in_price` tinyint(1) NOT NULL DEFAULT 0,
  `net_amount` double NOT NULL DEFAULT 0,
  `amount` double NOT NULL DEFAULT 0,
  `memo` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Type_and_Number` (`trans_type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_trans_tax_details` ###

INSERT INTO `0_trans_tax_details` VALUES
('1', '20', '1', '2021-10-13', '0', '0', '1', '0', '1450500', '0', '00001', '1'),
('2', '20', '2', '2021-10-13', '0', '0', '1', '0', '4500000', '0', '0002', '1'),
('3', '13', '1', '2021-10-13', '0', '0', '1', '1', '2395000', '0', '001/2021', NULL),
('5', '10', '1', '2021-10-13', '0', '0', '1', '1', '2395000', '0', '001/2021', '0'),
('6', '13', '2', '2021-10-13', '0', '0', '1', '1', '2874000', '0', '002/2021', NULL),
('8', '10', '2', '2021-10-13', '0', '0', '1', '1', '2874000', '0', '002/2021', '0'),
('9', '20', '3', '2021-10-13', '0', '0', '1', '0', '55850000', '0', '0001', '1'),
('10', '13', '3', '2021-10-13', '0', '0', '1', '1', '65098500', '0', '003/2021', NULL),
('11', '10', '3', '2021-10-13', '0', '0', '1', '1', '65098500', '0', '003/2021', '0');

### Structure of table `0_useronline` ###

DROP TABLE IF EXISTS `0_useronline`;

CREATE TABLE `0_useronline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_useronline` ###


### Structure of table `0_users` ###

DROP TABLE IF EXISTS `0_users`;

CREATE TABLE `0_users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL DEFAULT 1,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT 0,
  `date_sep` tinyint(1) NOT NULL DEFAULT 0,
  `tho_sep` tinyint(1) NOT NULL DEFAULT 0,
  `dec_sep` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `page_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A4',
  `prices_dec` smallint(6) NOT NULL DEFAULT 2,
  `qty_dec` smallint(6) NOT NULL DEFAULT 2,
  `rates_dec` smallint(6) NOT NULL DEFAULT 4,
  `percent_dec` smallint(6) NOT NULL DEFAULT 1,
  `show_gl` tinyint(1) NOT NULL DEFAULT 1,
  `show_codes` tinyint(1) NOT NULL DEFAULT 0,
  `show_hints` tinyint(1) NOT NULL DEFAULT 0,
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint(1) unsigned NOT NULL DEFAULT 10,
  `graphic_links` tinyint(1) DEFAULT 1,
  `pos` smallint(6) DEFAULT 1,
  `print_profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rep_popup` tinyint(1) DEFAULT 1,
  `sticky_doc_date` tinyint(1) DEFAULT 0,
  `startup_tab` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transaction_days` smallint(6) NOT NULL DEFAULT 30,
  `save_report_selections` smallint(6) NOT NULL DEFAULT 0,
  `use_date_picker` tinyint(1) NOT NULL DEFAULT 1,
  `def_print_destination` tinyint(1) NOT NULL DEFAULT 0,
  `def_print_orientation` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_users` ###

INSERT INTO `0_users` VALUES
('1', 'administrator', '5f4dcc3b5aa765d61d8327deb882cf99', 'Administrator', '2', '', 'adm@example.com', 'id_ID', '1', '0', '0', '0', 'dropdown', 'A4', '2', '2', '4', '1', '1', '0', '0', '2021-10-13 08:03:04', '10', '1', '1', 'Central', '1', '0', 'orders', '30', '0', '1', '1', '0', '0');

### Structure of table `0_voided` ###

DROP TABLE IF EXISTS `0_voided`;

CREATE TABLE `0_voided` (
  `type` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_voided` ###


### Structure of table `0_wo_costing` ###

DROP TABLE IF EXISTS `0_wo_costing`;

CREATE TABLE `0_wo_costing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `cost_type` tinyint(1) NOT NULL DEFAULT 0,
  `trans_type` int(11) NOT NULL DEFAULT 0,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `factor` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_costing` ###

INSERT INTO `0_wo_costing` VALUES
('1', '4', '0', '0', '1', '1');

### Structure of table `0_wo_issue_items` ###

DROP TABLE IF EXISTS `0_wo_issue_items`;

CREATE TABLE `0_wo_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  `unit_cost` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_issue_items` ###

INSERT INTO `0_wo_issue_items` VALUES
('1', '1000', '1', '500', '45000');

### Structure of table `0_wo_issues` ###

DROP TABLE IF EXISTS `0_wo_issues`;

CREATE TABLE `0_wo_issues` (
  `issue_no` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_no`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_issues` ###

INSERT INTO `0_wo_issues` VALUES
('1', '4', '001/2021', '2021-10-11', 'DEF', '1');

### Structure of table `0_wo_manufacture` ###

DROP TABLE IF EXISTS `0_wo_manufacture`;

CREATE TABLE `0_wo_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_manufacture` ###

INSERT INTO `0_wo_manufacture` VALUES
('1', '001/2020', '1', '2', '2020-05-05');

### Structure of table `0_wo_requirements` ###

DROP TABLE IF EXISTS `0_wo_requirements`;

CREATE TABLE `0_wo_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre` int(11) NOT NULL DEFAULT 0,
  `units_req` double NOT NULL DEFAULT 1,
  `unit_cost` double NOT NULL DEFAULT 0,
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_requirements` ###

INSERT INTO `0_wo_requirements` VALUES
('1', '1', '101', '1', '1', '200', 'DEF', '2'),
('2', '1', '102', '1', '1', '150', 'DEF', '2'),
('3', '1', '103', '1', '1', '10', 'DEF', '2'),
('4', '1', '301', '1', '1', '0', 'DEF', '2'),
('5', '2', '101', '1', '1', '200', 'DEF', '0'),
('6', '2', '102', '1', '1', '150', 'DEF', '0'),
('7', '2', '103', '1', '1', '10', 'DEF', '0'),
('8', '2', '301', '1', '1', '0', 'DEF', '0');

### Structure of table `0_workcentres` ###

DROP TABLE IF EXISTS `0_workcentres`;

CREATE TABLE `0_workcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_workcentres` ###

INSERT INTO `0_workcentres` VALUES
('1', 'Work Centre', '', '0');

### Structure of table `0_workorders` ###

DROP TABLE IF EXISTS `0_workorders`;

CREATE TABLE `0_workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT 1,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `released` tinyint(1) NOT NULL DEFAULT 0,
  `additional_costs` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wo_ref` (`wo_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_workorders` ###

INSERT INTO `0_workorders` VALUES
('1', '001/2020', 'DEF', '2', '201', '2020-05-05', '0', '2020-05-05', '2020-05-05', '2', '1', '1', '0'),
('2', '002/2020', 'DEF', '5', '201', '2020-05-07', '2', '2020-05-27', '2020-05-07', '0', '0', '1', '0'),
('3', '003/2020', 'DEF', '5', '201', '2020-05-07', '2', '2020-05-27', '0000-00-00', '0', '0', '0', '0'),
('4', '001/2021', 'DEF', '500', '1003', '2021-10-11', '2', '2021-10-31', '2021-10-11', '0', '0', '1', '0');