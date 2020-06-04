/*
Navicat MySQL Data Transfer

Source Server         : Lokal
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : kalingga

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-09-01 15:22:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_captcha`
-- ----------------------------
DROP TABLE IF EXISTS `cms_captcha`;
CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=5771 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms_captcha
-- ----------------------------
INSERT INTO `cms_captcha` VALUES ('5770', '1472714119', '::1', '546253');
INSERT INTO `cms_captcha` VALUES ('5769', '1472714108', '::1', '669535');

-- ----------------------------
-- Table structure for `cms_log`
-- ----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=563 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cms_log
-- ----------------------------
INSERT INTO `cms_log` VALUES ('1', '::1', '', '2016-05-25 10:14:10', 'Jabatan Tujuan di masukan<br />\r\n                    <ul><li><b>nip</b> dengan value <b>132308151</b></li><li><b>pangkat_awal</b> dengan value <b>1</b></li><li><b>pangkat_tujuan</b> dengan value <b>3</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('2', '::1', '', '2016-05-25 10:14:21', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>2</b></li><li><b>nilai</b> dengan value <b>50</b></li><li><b>nilai_fix</b> dengan value <b>50</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('3', '::1', '', '2016-05-25 10:14:50', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>4</b></li><li><b>nilai</b> dengan value <b>65</b></li><li><b>nilai_fix</b> dengan value <b>65</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('4', '::1', '', '2016-05-25 10:14:56', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>5</b></li><li><b>nilai</b> dengan value <b>6.5</b></li><li><b>nilai_fix</b> dengan value <b>6.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('5', '::1', '', '2016-05-25 10:15:02', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>17</b></li><li><b>nilai</b> dengan value <b>7</b></li><li><b>nilai_fix</b> dengan value <b>7</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('6', '::1', '', '2016-05-25 10:15:33', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>21</b></li><li><b>nilai</b> dengan value <b>3.5</b></li><li><b>nilai_fix</b> dengan value <b>3.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('7', '::1', '', '2016-05-25 10:15:41', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>25</b></li><li><b>nilai</b> dengan value <b>14</b></li><li><b>nilai_fix</b> dengan value <b>14</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('8', '::1', '', '2016-05-25 10:16:30', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>53</b></li><li><b>nilai</b> dengan value <b>30</b></li><li><b>nilai_fix</b> dengan value <b>30</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('9', '::1', '', '2016-05-25 10:16:42', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>55</b></li><li><b>nilai</b> dengan value <b>10</b></li><li><b>nilai_fix</b> dengan value <b>10</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('10', '::1', '', '2016-05-25 10:16:51', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>59</b></li><li><b>nilai</b> dengan value <b>3.6</b></li><li><b>nilai_fix</b> dengan value <b>3.6</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('11', '::1', '', '2016-05-25 11:28:18', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>67</b></li><li><b>nilai</b> dengan value <b>11</b></li><li><b>nilai_fix</b> dengan value <b>11</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('12', '::1', '', '2016-05-25 11:28:31', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>80</b></li><li><b>nilai</b> dengan value <b>10</b></li><li><b>nilai_fix</b> dengan value <b>10</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('13', '::1', '', '2016-05-25 11:28:59', 'Memperbarui Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>31</b></li><li><b>id_dosen</b> dengan value <b>132308151</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>67</b></li><li><b>nilai</b> dengan value <b>1</b></li><li><b>nilai_fix</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('14', '::1', '', '2016-05-26 02:11:23', 'Login  by JIHAN ALI AHMAD', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('15', '::1', '', '2016-05-26 03:07:09', 'Menyimpan Pengajuan Nilai PAK dengan data sbb:<br />\r\n                    <ul></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('16', '::1', '', '2016-05-26 03:09:56', 'Jabatan Tujuan di masukan<br />\r\n                    <ul><li><b>nip</b> dengan value <b>132308146</b></li><li><b>pangkat_awal</b> dengan value <b>3</b></li><li><b>pangkat_tujuan</b> dengan value <b>4</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('17', '::1', '', '2016-05-26 03:10:10', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>2</b></li><li><b>nilai</b> dengan value <b>50</b></li><li><b>nilai_fix</b> dengan value <b>50</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('18', '::1', '', '2016-05-26 03:11:22', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>6</b></li><li><b>nilai</b> dengan value <b>44</b></li><li><b>nilai_fix</b> dengan value <b>44</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('19', '::1', '', '2016-05-26 03:11:32', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>7</b></li><li><b>nilai</b> dengan value <b>3</b></li><li><b>nilai_fix</b> dengan value <b>3</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('20', '::1', '', '2016-05-26 03:11:38', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>14</b></li><li><b>nilai</b> dengan value <b>8</b></li><li><b>nilai_fix</b> dengan value <b>8</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('21', '::1', '', '2016-05-26 03:11:48', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>21</b></li><li><b>nilai</b> dengan value <b>9.5</b></li><li><b>nilai_fix</b> dengan value <b>9.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('22', '::1', '', '2016-05-26 03:11:59', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>24</b></li><li><b>nilai</b> dengan value <b>2</b></li><li><b>nilai_fix</b> dengan value <b>2</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('23', '::1', '', '2016-05-26 03:12:07', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>25</b></li><li><b>nilai</b> dengan value <b>15.5</b></li><li><b>nilai_fix</b> dengan value <b>15.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('24', '::1', '', '2016-05-26 03:12:12', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>26</b></li><li><b>nilai</b> dengan value <b>18</b></li><li><b>nilai_fix</b> dengan value <b>18</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('25', '::1', '', '2016-05-26 03:12:19', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>28</b></li><li><b>nilai</b> dengan value <b>8</b></li><li><b>nilai_fix</b> dengan value <b>8</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('26', '::1', '', '2016-05-26 03:12:26', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>37</b></li><li><b>nilai</b> dengan value <b>3</b></li><li><b>nilai_fix</b> dengan value <b>3</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('27', '::1', '', '2016-05-26 03:12:38', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>53</b></li><li><b>nilai</b> dengan value <b>28</b></li><li><b>nilai_fix</b> dengan value <b>28</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('28', '::1', '', '2016-05-26 03:12:49', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>55</b></li><li><b>nilai</b> dengan value <b>18.9</b></li><li><b>nilai_fix</b> dengan value <b>18.9</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('29', '::1', '', '2016-05-26 03:12:57', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>59</b></li><li><b>nilai</b> dengan value <b>2.24</b></li><li><b>nilai_fix</b> dengan value <b>2.24</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('30', '::1', '', '2016-05-26 03:13:11', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>69</b></li><li><b>nilai</b> dengan value <b>4</b></li><li><b>nilai_fix</b> dengan value <b>4</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('31', '::1', '', '2016-05-26 03:13:16', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>77</b></li><li><b>nilai</b> dengan value <b>3</b></li><li><b>nilai_fix</b> dengan value <b>3</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('32', '::1', '', '2016-05-26 03:13:30', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>93</b></li><li><b>nilai</b> dengan value <b>10</b></li><li><b>nilai_fix</b> dengan value <b>10</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('33', '::1', '', '2016-05-26 03:14:04', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>80</b></li><li><b>nilai</b> dengan value <b>1</b></li><li><b>nilai_fix</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('34', '::1', '', '2016-05-26 03:21:29', 'Memperbarui Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>80</b></li><li><b>nilai</b> dengan value <b>0</b></li><li><b>nilai_fix</b> dengan value <b>0</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('35', '::1', '', '2016-05-26 03:24:38', 'Menghapus Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>69</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('36', '::1', '', '2016-05-26 03:24:44', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>kosong</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>69</b></li><li><b>nilai</b> dengan value <b>1</b></li><li><b>nilai_fix</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('37', '::1', '', '2016-05-26 03:25:09', 'Menghapus Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>53</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('38', '::1', '', '2016-05-26 03:25:11', 'Menghapus Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>55</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('39', '::1', '', '2016-05-26 03:25:33', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>50</b></li><li><b>nilai</b> dengan value <b>30</b></li><li><b>nilai_fix</b> dengan value <b>30</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('40', '::1', '', '2016-05-26 03:25:56', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>55</b></li><li><b>nilai</b> dengan value <b>20</b></li><li><b>nilai_fix</b> dengan value <b>20</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('41', '::1', '', '2016-05-26 03:26:03', 'Menyimpan Pengajuan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>pangkat_awal</b> dengan value <b>3</b></li><li><b>pangkat_tujuan</b> dengan value <b>4</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('42', '::1', '', '2016-05-26 03:26:39', 'Menyetujui Permintaan Kenaikan Pangkat dengan data sbb:<br />\r\n                    <ul><li><b>nip</b> dengan value <b>132308146</b></li><li><b>keterangan</b> dengan value <b>lulus</b></li><li><b>kelebihan</b> dengan value <b>127.24</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('43', '::1', '', '2016-05-26 03:27:42', 'Logout SIM Penilaian Angka Kredit Dosen by JIHAN ALI AHMAD', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('44', '::1', '', '2016-05-26 03:37:18', 'Login  by JIHAN ALI AHMAD', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('45', '::1', '', '2016-05-26 03:38:29', 'Menambah PAK Lama dengan data sbb:<br />\r\n                    <ul><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>masa_penilaian_dari</b> dengan value <b>29-05-1993</b></li><li><b>masa_penilaian_sampai</b> dengan value <b>30-12-1999</b></li><li><b>nomor_pak</b> dengan value <b>JAA/2016/PAK/998</b></li><li><b>pendidikan_terakhir</b> dengan value <b>S2 Teknik Pendidikan Informatika Komputer</b></li><li><b>masa_kerja_lama_tahun</b> dengan value <b>13</b></li><li><b>masa_kerja_lama_bulan</b> dengan value <b>12</b></li><li><b>masa_kerja_baru_tahun</b> dengan value <b>13</b></li><li><b>masa_kerja_baru_bulan</b> dengan value <b>12</b></li><li><b>keterangan</b> dengan value <b>kosong</b></li><li><b>tanggal</b> dengan value <b>2016/06/07</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('46', '::1', '', '2016-05-26 03:42:50', 'Memperbarui Status PAK dengan data sbb:<br />\r\n                    <ul><li><b>nip</b> dengan value <b>132308146</b></li><li><b>pangkat_awal</b> dengan value <b>3</b></li><li><b>pangkat_tujuan</b> dengan value <b>4</b></li><li><b>status</b> dengan value <b>3</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('47', '::1', '', '2016-05-26 03:43:06', 'Memperbarui Status PAK dengan data sbb:<br />\r\n                    <ul><li><b>nip</b> dengan value <b>132308146</b></li><li><b>pangkat_awal</b> dengan value <b>3</b></li><li><b>pangkat_tujuan</b> dengan value <b>4</b></li><li><b>status</b> dengan value <b>4</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('48', '::1', '', '2016-05-26 05:52:09', 'Login  by JIHAN ALI AHMAD', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('49', '::1', '', '2016-05-26 06:31:46', 'Jabatan Tujuan di masukan<br />\r\n                    <ul><li><b>nip</b> dengan value <b>198406102012122001</b></li><li><b>pangkat_awal</b> dengan value <b>2</b></li><li><b>pangkat_tujuan</b> dengan value <b>2</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('50', '::1', '', '2016-05-26 06:32:01', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>4</b></li><li><b>nilai</b> dengan value <b>14</b></li><li><b>nilai_fix</b> dengan value <b>14</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('51', '::1', '', '2016-05-26 06:32:07', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>5</b></li><li><b>nilai</b> dengan value <b>0.5</b></li><li><b>nilai_fix</b> dengan value <b>0.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('52', '::1', '', '2016-05-26 06:32:18', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>44</b></li><li><b>nilai</b> dengan value <b>6</b></li><li><b>nilai_fix</b> dengan value <b>6</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('53', '::1', '', '2016-05-26 06:32:22', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>47</b></li><li><b>nilai</b> dengan value <b>1</b></li><li><b>nilai_fix</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('54', '::1', '', '2016-05-26 06:34:21', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>56</b></li><li><b>nilai</b> dengan value <b>1</b></li><li><b>nilai_fix</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('55', '::1', '', '2016-05-26 06:34:25', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>57</b></li><li><b>nilai</b> dengan value <b>10</b></li><li><b>nilai_fix</b> dengan value <b>10</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('56', '::1', '', '2016-05-26 06:34:31', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>58</b></li><li><b>nilai</b> dengan value <b>0.1</b></li><li><b>nilai_fix</b> dengan value <b>0.1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('57', '::1', '', '2016-05-26 06:34:40', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>67</b></li><li><b>nilai</b> dengan value <b>14</b></li><li><b>nilai_fix</b> dengan value <b>14</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('58', '::1', '', '2016-05-26 06:34:44', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>68</b></li><li><b>nilai</b> dengan value <b>0.5</b></li><li><b>nilai_fix</b> dengan value <b>0.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('59', '::1', '', '2016-05-26 06:34:51', 'Menghapus Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>68</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('60', '::1', '', '2016-05-26 06:35:00', 'Memperbarui Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>kosong</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>67</b></li><li><b>nilai</b> dengan value <b>2</b></li><li><b>nilai_fix</b> dengan value <b>2</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('61', '::1', '', '2016-05-26 06:35:07', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>80</b></li><li><b>nilai</b> dengan value <b>1</b></li><li><b>nilai_fix</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('62', '::1', '', '2016-05-26 06:35:09', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>32</b></li><li><b>id_dosen</b> dengan value <b>198406102012122001</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>81</b></li><li><b>nilai</b> dengan value <b>4</b></li><li><b>nilai_fix</b> dengan value <b>4</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('63', '::1', '', '2016-05-26 06:56:12', 'Menyimpan Pengajuan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>pangkat_awal</b> dengan value <b>2</b></li><li><b>pangkat_tujuan</b> dengan value <b>2</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('64', '::1', '', '2016-05-26 11:45:07', 'Login  by LUKMAN HARDI', 'LUKMAN HARDI');
INSERT INTO `cms_log` VALUES ('65', '::1', '', '2016-05-26 11:46:16', 'Logout SIM Penilaian Angka Kredit Dosen by LUKMAN HARDI', 'LUKMAN HARDI');
INSERT INTO `cms_log` VALUES ('66', '::1', '', '2016-05-27 04:34:57', 'Login  by JIHAN ALI AHMAD', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('67', '::1', '', '2016-05-27 04:35:38', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>6,6,6,6</b></li><li><b>cur_level</b> dengan value <b>6</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('68', '::1', '', '2016-05-27 04:36:08', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>5,5,5,5</b></li><li><b>cur_level</b> dengan value <b>5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('69', '::1', '', '2016-05-27 04:36:29', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>6,6,6,6</b></li><li><b>cur_level</b> dengan value <b>6</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('70', '::1', '', '2016-05-27 04:51:43', 'Jabatan Tujuan di masukan<br />\r\n                    <ul><li><b>nip</b> dengan value <b>132308146</b></li><li><b>pangkat_awal</b> dengan value <b>3</b></li><li><b>pangkat_tujuan</b> dengan value <b>4</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('71', '::1', '', '2016-05-27 04:51:53', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>2</b></li><li><b>nilai</b> dengan value <b>50</b></li><li><b>nilai_fix</b> dengan value <b>50</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('72', '::1', '', '2016-05-27 04:52:03', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>6</b></li><li><b>nilai</b> dengan value <b>44</b></li><li><b>nilai_fix</b> dengan value <b>44</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('73', '::1', '', '2016-05-27 04:52:08', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>7</b></li><li><b>nilai</b> dengan value <b>3</b></li><li><b>nilai_fix</b> dengan value <b>3</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('74', '::1', '', '2016-05-27 04:52:17', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>14</b></li><li><b>nilai</b> dengan value <b>8</b></li><li><b>nilai_fix</b> dengan value <b>8</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('75', '::1', '', '2016-05-27 04:52:31', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>21</b></li><li><b>nilai</b> dengan value <b>9.5</b></li><li><b>nilai_fix</b> dengan value <b>9.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('76', '::1', '', '2016-05-27 04:52:44', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>24</b></li><li><b>nilai</b> dengan value <b>2</b></li><li><b>nilai_fix</b> dengan value <b>2</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('77', '::1', '', '2016-05-27 04:52:48', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>25</b></li><li><b>nilai</b> dengan value <b>15.5</b></li><li><b>nilai_fix</b> dengan value <b>15.5</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('78', '::1', '', '2016-05-27 04:52:52', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>26</b></li><li><b>nilai</b> dengan value <b>18</b></li><li><b>nilai_fix</b> dengan value <b>18</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('79', '::1', '', '2016-05-27 05:04:52', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>28</b></li><li><b>nilai</b> dengan value <b>8</b></li><li><b>nilai_fix</b> dengan value <b>8</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('80', '::1', '', '2016-05-27 05:05:07', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>37</b></li><li><b>nilai</b> dengan value <b>3</b></li><li><b>nilai_fix</b> dengan value <b>3</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('81', '::1', '', '2016-05-27 05:08:07', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>53</b></li><li><b>nilai</b> dengan value <b>28</b></li><li><b>nilai_fix</b> dengan value <b>28</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('82', '::1', '', '2016-05-27 05:08:13', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>55</b></li><li><b>nilai</b> dengan value <b>18.9</b></li><li><b>nilai_fix</b> dengan value <b>18.9</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('83', '::1', '', '2016-05-27 05:08:22', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>59</b></li><li><b>nilai</b> dengan value <b>2.24</b></li><li><b>nilai_fix</b> dengan value <b>2.24</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('84', '::1', '', '2016-05-27 05:08:32', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>67</b></li><li><b>nilai</b> dengan value <b>7</b></li><li><b>nilai_fix</b> dengan value <b>7</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('85', '::1', '', '2016-05-27 05:08:39', 'Menyimpan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>id_pangkat</b> dengan value <b>33</b></li><li><b>id_dosen</b> dengan value <b>132308146</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>id_kode</b> dengan value <b>80</b></li><li><b>nilai</b> dengan value <b>10</b></li><li><b>nilai_fix</b> dengan value <b>10</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('86', '::1', '', '2016-05-27 05:08:50', 'Menyimpan Pengajuan Nilai PAK dengan data sbb:<br />\r\n                    <ul><li><b>pangkat_awal</b> dengan value <b>3</b></li><li><b>pangkat_tujuan</b> dengan value <b>4</b></li><li><b>id_penilai</b> dengan value <b>92052916011526</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'JIHAN ALI AHMAD');
INSERT INTO `cms_log` VALUES ('87', '::1', '', '2016-07-24 07:50:14', 'Login  by ', 'Tamu');
INSERT INTO `cms_log` VALUES ('88', '::1', '', '2016-07-24 07:51:58', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('89', '::1', '', '2016-07-24 07:55:18', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('90', '::1', '', '2016-07-24 07:58:13', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('91', '::1', '', '2016-07-24 08:00:37', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('92', '::1', '', '2016-07-24 09:59:12', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('93', '::1', '', '2016-07-24 10:40:56', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('94', '::1', '', '2016-07-24 10:41:09', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('95', '::1', '', '2016-07-24 10:49:22', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Buyer</b></li><li><b>deskripsi</b> dengan value <b>Buyer</b></li><li><b>alias</b> dengan value <b>buyer</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/buyer</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('96', '::1', '', '2016-07-24 11:44:03', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('97', '::1', '', '2016-07-24 11:56:10', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B123</b></li><li><b>nama</b> dengan value <b>Routefl</b></li><li><b>negara</b> dengan value <b>37</b></li><li><b>alamat</b> dengan value <b>jlkmjnini</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('98', '::1', '', '2016-07-24 12:36:45', 'Mengedit Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>B1232</b></li><li><b>nama</b> dengan value <b>Routefl</b></li><li><b>negara</b> dengan value <b>37</b></li><li><b>alamat</b> dengan value <b>jlkmjnini</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('99', '::1', '', '2016-07-24 15:10:27', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('100', '::1', '', '2016-07-24 18:01:01', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('101', '::1', '', '2016-07-24 18:01:45', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>supplier</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('102', '::1', '', '2016-07-24 18:03:03', 'Menambah Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>SUP001</b></li><li><b>nama</b> dengan value <b>Prima Jaya</b></li><li><b>alamat</b> dengan value <b>Jl. untung suropati no 9 Jepara</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('103', '::1', '', '2016-07-24 18:06:01', 'Mengedit Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>SUP001</b></li><li><b>nama</b> dengan value <b>Prima Jaya</b></li><li><b>telepon</b> dengan value <b>(023) 7878 12</b></li><li><b>alamat</b> dengan value <b>Jl. untung suropati no 9 Jepara</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('104', '::1', '', '2016-07-24 18:06:21', 'Mengedit Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>SUP001x</b></li><li><b>nama</b> dengan value <b>Prima Jayax</b></li><li><b>telepon</b> dengan value <b>(023) 7878 12x</b></li><li><b>alamat</b> dengan value <b>Jl. untung suropati no 9 Jeparax</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('105', '::1', '', '2016-07-24 18:07:12', 'Menambah Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>SU0090</b></li><li><b>nama</b> dengan value <b>Rimba Media</b></li><li><b>telepon</b> dengan value <b>(020)23 4222</b></li><li><b>alamat</b> dengan value <b>wkwkwkw</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('106', '::1', '', '2016-07-24 18:19:11', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Product</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>produk</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/produk</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('107', '::1', '', '2016-07-24 18:46:06', 'Logout CV. Allure Industries by ', 'Tamu');
INSERT INTO `cms_log` VALUES ('108', '::1', '', '2016-07-25 06:08:30', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('109', '::1', '', '2016-07-25 08:38:50', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('110', '::1', '', '2016-07-25 09:16:55', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('111', '::1', '', '2016-07-25 14:47:57', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('112', '::1', '', '2016-07-25 15:53:04', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>we12001</b></li><li><b>nama</b> dengan value <b>Meja jos</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>harga</b> dengan value <b>3000</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('113', '::1', '', '2016-07-25 17:04:50', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>undefined</b></li><li><b>kode</b> dengan value <b>undefined</b></li><li><b>nama</b> dengan value <b>undefined</b></li><li><b>size</b> dengan value <b>undefined</b></li><li><b>gambar</b> dengan value <b>files/2016/07/71c1c9b5516de3a9fc4414089884f399.png</b></li><li><b>harga</b> dengan value <b>undefined</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('114', '::1', '', '2016-07-25 18:21:52', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>undefined</b></li><li><b>kode</b> dengan value <b>undefined</b></li><li><b>nama</b> dengan value <b>undefined</b></li><li><b>size</b> dengan value <b>undefined</b></li><li><b>harga</b> dengan value <b>undefined</b></li><li><b>gambar</b> dengan value <b>/Logo-Transparan-Warna-360x480.png</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('115', '::1', '', '2016-07-25 18:23:13', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>undefined</b></li><li><b>kode</b> dengan value <b>undefined</b></li><li><b>nama</b> dengan value <b>undefined</b></li><li><b>size</b> dengan value <b>undefined</b></li><li><b>harga</b> dengan value <b>undefined</b></li><li><b>gambar</b> dengan value <b>/Logo-Transparan-Warna-360x480.png</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('116', '::1', '', '2016-07-25 18:37:25', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>undefined</b></li><li><b>kode</b> dengan value <b>undefined</b></li><li><b>nama</b> dengan value <b>undefined</b></li><li><b>size</b> dengan value <b>undefined</b></li><li><b>gambar</b> dengan value <b>files/2016/07/b843ac813626cd8461058b0c1cca8e3f.png</b></li><li><b>harga</b> dengan value <b>undefined</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('117', '::1', '', '2016-07-25 18:41:12', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>gs</b></li><li><b>nama</b> dengan value <b>gdrhdr</b></li><li><b>size</b> dengan value <b>dhrth</b></li><li><b>gambar</b> dengan value <b>files/2016/07/c999af6e25790a89cd558ea981660dad.png</b></li><li><b>harga</b> dengan value <b>1212</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('118', '::1', '', '2016-07-26 02:39:52', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('119', '::1', '', '2016-07-26 02:45:59', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>we1234</b></li><li><b>nama</b> dengan value <b>qwer</b></li><li><b>size</b> dengan value <b>11313</b></li><li><b>gambar</b> dengan value <b>files/2016/07/3afad50d3baaf44a6c73e47c196db186.png</b></li><li><b>harga</b> dengan value <b>12345</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('120', '::1', '', '2016-07-26 02:51:05', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>dasda</b></li><li><b>nama</b> dengan value <b>dadasd</b></li><li><b>size</b> dengan value <b>dsdsd</b></li><li><b>gambar</b> dengan value <b>files/2016/07/3fe227dcab0a61e6fe68bc22920d8714.png</b></li><li><b>harga</b> dengan value <b>3124124</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('121', '::1', '', '2016-07-26 02:54:29', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123131</b></li><li><b>nama</b> dengan value <b>1313</b></li><li><b>size</b> dengan value <b>31313</b></li><li><b>gambar</b> dengan value <b>files/2016/07/976f15c98be5678b7c34edd92fcd51d0.jpg</b></li><li><b>harga</b> dengan value <b>131313</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('122', '::1', '', '2016-07-26 02:56:34', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>fefr</b></li><li><b>nama</b> dengan value <b>referf</b></li><li><b>size</b> dengan value <b>ferfer</b></li><li><b>gambar</b> dengan value <b>files/2016/07/0012c0f364a57ac91adab0671d382275.png</b></li><li><b>harga</b> dengan value <b>rferferf</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('123', '::1', '', '2016-07-26 02:57:56', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>asdsad</b></li><li><b>nama</b> dengan value <b>dasdasd</b></li><li><b>size</b> dengan value <b>dads</b></li><li><b>gambar</b> dengan value <b>files/2016/07/439d7b6bfa3c6037780cd4b30af8c226.jpg</b></li><li><b>harga</b> dengan value <b>432424</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('124', '::1', '', '2016-07-26 02:58:56', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>grewg</b></li><li><b>nama</b> dengan value <b>wegwe</b></li><li><b>size</b> dengan value <b>gwehh</b></li><li><b>gambar</b> dengan value <b>files/2016/07/8eec50a6e5a2f6a0921ee52dbd153215.jpg</b></li><li><b>harga</b> dengan value <b>31313</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('125', '::1', '', '2016-07-26 09:25:49', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('126', '::1', '', '2016-07-26 14:25:07', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('127', '::1', '', '2016-07-26 14:44:19', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('128', '::1', '', '2016-07-26 14:49:21', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123</b></li><li><b>nama</b> dengan value <b>123</b></li><li><b>size</b> dengan value <b>123</b></li><li><b>gambar</b> dengan value <b>files/2016/07/8ca26be5f1c9d5b85f0cf47c3912a4bb.jpg</b></li><li><b>harga</b> dengan value <b>12333</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('129', '::1', '', '2016-07-26 14:55:01', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>qwdqwdedqdqd</b></li><li><b>nama</b> dengan value <b>dqdqdqd</b></li><li><b>size</b> dengan value <b>12212</b></li><li><b>gambar</b> dengan value <b>files/2016/07/ff59a37514eabf73404c56b6ce515454.jpg</b></li><li><b>harga</b> dengan value <b>12334</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('130', '::1', '', '2016-07-26 16:04:38', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>coba ya</b></li><li><b>nama</b> dengan value <b>caoba</b></li><li><b>size</b> dengan value <b>4567</b></li><li><b>gambar</b> dengan value <b>files/2016/07/cf892fc24c444b3029611dad1267c3ac.jpg</b></li><li><b>harga</b> dengan value <b>7000</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('131', '::1', '', '2016-07-26 16:10:18', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>9809090</b></li><li><b>nama</b> dengan value <b>9999999999</b></li><li><b>size</b> dengan value <b>124124</b></li><li><b>harga</b> dengan value <b>414124</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('132', '::1', '', '2016-07-26 16:17:53', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>we1234</b></li><li><b>nama</b> dengan value <b>qwer</b></li><li><b>size</b> dengan value <b>11313</b></li><li><b>gambar</b> dengan value <b>files/2016/07/20ed1b1d35c2dc3b1a8dbfaec518694d.jpg</b></li><li><b>harga</b> dengan value <b>12345</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('133', '::1', '', '2016-07-26 16:21:07', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>CH0001</b></li><li><b>nama</b> dengan value <b>Jihan Ali Ahmad</b></li><li><b>size</b> dengan value <b>56x78x90</b></li><li><b>gambar</b> dengan value <b>files/2016/07/9204ed9539cd08f0db933891f6961d74.png</b></li><li><b>harga</b> dengan value <b>2000000</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('134', '::1', '', '2016-07-26 16:28:55', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>CH0001</b></li><li><b>nama</b> dengan value <b>Jihan Ali Ahmad</b></li><li><b>size</b> dengan value <b>56x78x90</b></li><li><b>harga</b> dengan value <b>150000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('135', '::1', '', '2016-07-26 16:29:29', 'Menghapus menu dengan id 92', 'admin');
INSERT INTO `cms_log` VALUES ('136', '::1', '', '2016-07-26 16:29:34', 'Menghapus menu dengan id 93', 'admin');
INSERT INTO `cms_log` VALUES ('137', '::1', '', '2016-07-26 16:29:41', 'Menghapus menu dengan id 96', 'admin');
INSERT INTO `cms_log` VALUES ('138', '::1', '', '2016-07-26 16:29:49', 'Menghapus menu dengan id 97', 'admin');
INSERT INTO `cms_log` VALUES ('139', '::1', '', '2016-07-26 16:29:59', 'Menghapus menu dengan id 101', 'admin');
INSERT INTO `cms_log` VALUES ('140', '::1', '', '2016-07-26 16:30:04', 'Menghapus menu dengan id 100', 'admin');
INSERT INTO `cms_log` VALUES ('141', '::1', '', '2016-07-26 16:30:08', 'Menghapus menu dengan id 94', 'admin');
INSERT INTO `cms_log` VALUES ('142', '::1', '', '2016-07-26 16:30:15', 'Menghapus grup menu dengan id 17', 'admin');
INSERT INTO `cms_log` VALUES ('143', '::1', '', '2016-07-26 16:36:12', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>108</b></li><li><b>nama</b> dengan value <b>Super Product</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/produk</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('144', '::1', '', '2016-07-26 16:45:04', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Standart Product</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>produk_s</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/produk_s</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('145', '::1', '', '2016-07-26 16:47:25', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>s2111</b></li><li><b>nama</b> dengan value <b>Meja jos</b></li><li><b>size</b> dengan value <b>12x12x34</b></li><li><b>gambar</b> dengan value <b>files/2016/07/f50326c0c160513d00198754f54d7523.jpg</b></li><li><b>harga</b> dengan value <b>200000</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('146', '::1', '', '2016-07-26 16:47:39', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>s21110</b></li><li><b>nama</b> dengan value <b>Meja jos</b></li><li><b>size</b> dengan value <b>12x12x34</b></li><li><b>harga</b> dengan value <b>200000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('147', '::1', '', '2016-07-26 16:47:57', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>s21110</b></li><li><b>nama</b> dengan value <b>Meja jos</b></li><li><b>size</b> dengan value <b>12x12x34</b></li><li><b>gambar</b> dengan value <b>files/2016/07/8960754e12e80239cae45810fbb95e9d.JPEG</b></li><li><b>harga</b> dengan value <b>200000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('148', '::1', '', '2016-07-27 02:44:25', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('149', '::1', '', '2016-07-27 04:50:12', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Purchasing Invoice</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>invoice</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/invoice</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('150', '::1', '', '2016-07-27 14:43:49', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('151', '::1', '', '2016-07-28 02:05:19', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('152', '::1', '', '2016-07-28 07:31:28', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('153', '::1', '', '2016-07-28 08:20:48', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('154', '::1', '', '2016-07-28 16:45:44', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('155', '::1', '', '2016-07-29 03:47:33', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('156', '::1', '', '2016-07-29 03:56:20', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('157', '::1', '', '2016-07-29 17:45:44', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('158', '::1', '', '2016-07-30 06:50:39', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('159', '::1', '', '2016-07-30 06:51:08', 'Menghapus menu dengan id 103', 'admin');
INSERT INTO `cms_log` VALUES ('160', '::1', '', '2016-07-30 06:51:27', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>104</b></li><li><b>nama</b> dengan value <b>Beranda</b></li><li><b>deskripsi</b> dengan value <b>Status Pengajuan PAK</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6</b></li><li><b>url</b> dengan value <b>pak/dashboard/status_pak</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('161', '::1', '', '2016-07-30 06:53:33', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Produksi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>produksi</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>klg/produksi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('162', '::1', '', '2016-07-30 06:56:29', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pembelian ke Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>pembelian_supplier</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/pembelian_supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('163', '::1', '', '2016-08-02 02:08:14', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('164', '::1', '', '2016-08-02 02:13:24', 'Logout CV. Allure Industries by ', 'Tamu');
INSERT INTO `cms_log` VALUES ('165', '::1', '', '2016-08-02 05:25:22', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('166', '::1', '', '2016-08-02 05:54:45', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B001</b></li><li><b>nama</b> dengan value <b>Fontain</b></li><li><b>negara</b> dengan value <b>21</b></li><li><b>alamat</b> dengan value <b>M. André Dupont Rue du Cornet 6 B-4800 VERVIERS BELGIUM</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('167', '::1', '', '2016-08-02 05:55:35', 'Menambah Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>S001</b></li><li><b>nama</b> dengan value <b>Maju Sakti Meubel</b></li><li><b>telepon</b> dengan value <b>021 8901 900</b></li><li><b>alamat</b> dengan value <b>Jl. Pengkol Jepara</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('168', '::1', '', '2016-08-02 05:56:29', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>001</b></li><li><b>nama</b> dengan value <b>Table gold</b></li><li><b>size</b> dengan value <b>22x22x100</b></li><li><b>gambar</b> dengan value <b>files/2016/08/2abf2ecb98c8f837399ae5ca8102ae41.png</b></li><li><b>currency</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>200000</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('169', '::1', '', '2016-08-02 05:59:49', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B002</b></li><li><b>nama</b> dengan value <b>Cruisant</b></li><li><b>negara</b> dengan value <b>72</b></li><li><b>alamat</b> dengan value <b>Fake Address Generator provide Belgium address generator</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('170', '::1', '', '2016-08-02 06:00:50', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>0012</b></li><li><b>nama</b> dengan value <b>Chair Silver</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/534cb73a61969af2dfa962f8b6b1fea7.png</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>20</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('171', '::1', '', '2016-08-02 06:02:13', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>0012</b></li><li><b>nama</b> dengan value <b>Chair Silver</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/8149539de67fb6f1b3266e44e48779fc.JPG</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>20</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('172', '::1', '', '2016-08-02 06:02:22', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>001</b></li><li><b>nama</b> dengan value <b>Table gold</b></li><li><b>size</b> dengan value <b>22x22x100</b></li><li><b>gambar</b> dengan value <b>files/2016/08/bc9b781178372f483c5f7f4e1d010e32.jpg</b></li><li><b>currency</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>200000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('173', '::1', '', '2016-08-02 06:08:42', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>c001</b></li><li><b>nama</b> dengan value <b>table</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/57d0574a4f7071540102af76018e1709.jpg</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('174', '::1', '', '2016-08-02 06:09:51', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>c001</b></li><li><b>nama</b> dengan value <b>table</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>harga</b> dengan value <b>11</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('175', '::1', '', '2016-08-02 06:25:33', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('176', '::1', '', '2016-08-02 07:19:47', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('177', '::1', '', '2016-08-02 09:59:03', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('178', '::1', '', '2016-08-03 05:05:09', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('179', '::1', '', '2016-08-03 09:33:10', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('180', '::1', '', '2016-08-03 14:49:29', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('181', '::1', '', '2016-08-03 15:14:04', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>vb001</b></li><li><b>nama</b> dengan value <b>1234</b></li><li><b>size</b> dengan value <b>22x22x44</b></li><li><b>gambar</b> dengan value <b>files/2016/08/35fe7526650d144074cfd2d0a87d88f5.png</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>20</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('182', '::1', '', '2016-08-03 15:14:30', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>vb001</b></li><li><b>nama</b> dengan value <b>super chair</b></li><li><b>size</b> dengan value <b>22x22x44</b></li><li><b>harga</b> dengan value <b>20</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('183', '::1', '', '2016-08-03 15:14:53', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>001</b></li><li><b>nama</b> dengan value <b>Table gold</b></li><li><b>size</b> dengan value <b>22x22x100</b></li><li><b>harga</b> dengan value <b>200000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('184', '::1', '', '2016-08-03 15:15:04', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>0012</b></li><li><b>nama</b> dengan value <b>Chair Silver</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>harga</b> dengan value <b>20</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('185', '::1', '', '2016-08-04 00:46:57', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('186', '::1', '', '2016-08-04 03:28:51', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('187', '::1', '', '2016-08-04 03:42:24', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('188', '::1', '', '2016-08-04 03:42:28', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('189', '::1', '', '2016-08-04 05:35:19', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('190', '::1', '', '2016-08-04 09:44:59', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('191', '::1', '', '2016-08-04 10:05:25', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('192', '::1', '', '2016-08-04 10:30:01', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>user</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>user</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>cms/user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>100</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('193', '::1', '', '2016-08-04 14:47:55', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('194', '::1', '', '2016-08-04 16:01:00', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Dessy Damayanti</b></li><li><b>username</b> dengan value <b>dessy</b></li><li><b>password</b> dengan value <b>*65003962C8943CDA29E3332631118217CFB0A08B</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/c2fcb75559838302f03adb01dd96fde0.jpg</b></li><li><b>no_hp</b> dengan value <b>123</b></li><li><b>alamat</b> dengan value <b>qqweryy</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('195', '::1', '', '2016-08-04 16:01:09', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('196', '::1', '', '2016-08-04 16:01:23', 'Login  by Dessy Damayanti', 'dessy');
INSERT INTO `cms_log` VALUES ('197', '::1', '', '2016-08-04 16:01:29', 'Logout CV. Allure Industries by Dessy Damayanti', 'dessy');
INSERT INTO `cms_log` VALUES ('198', '::1', '', '2016-08-04 16:02:57', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('199', '::1', '', '2016-08-04 16:30:13', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/73af713cfa0be955255af7fedc7bf6be.jpg</b></li><li><b>no_hp</b> dengan value <b>0989990</b></li><li><b>alamat</b> dengan value <b>hjuj</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('200', '::1', '', '2016-08-04 16:30:22', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>0989990</b></li><li><b>alamat</b> dengan value <b>hjuj</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('201', '::1', '', '2016-08-04 16:30:24', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>0989990</b></li><li><b>alamat</b> dengan value <b>hjuj</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('202', '::1', '', '2016-08-04 16:33:39', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/f8435d15ac1eb10a7eb15270ea37491f.jpg</b></li><li><b>no_hp</b> dengan value <b>412443</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('203', '::1', '', '2016-08-04 16:35:04', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>4525245</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('204', '::1', '', '2016-08-04 16:35:08', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>4525245</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('205', '::1', '', '2016-08-04 16:38:37', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>4525245342</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('206', '::1', '', '2016-08-04 16:42:49', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/f0543e9a21199e049d6f3816414f9934.jpg</b></li><li><b>no_hp</b> dengan value <b>4525245342</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('207', '::1', '', '2016-08-04 16:43:03', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>4525245342erwr</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('208', '::1', '', '2016-08-04 16:44:15', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>vb001</b></li><li><b>nama</b> dengan value <b>super chair</b></li><li><b>size</b> dengan value <b>22x22x44</b></li><li><b>harga</b> dengan value <b>60</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('209', '::1', '', '2016-08-04 16:46:46', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/c5de60da15e14b6101acec97161da00e.jpg</b></li><li><b>no_hp</b> dengan value <b>4525245342erwr</b></li><li><b>alamat</b> dengan value <b>dsvfsvv</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('210', '::1', '', '2016-08-04 16:47:13', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>08799000</b></li><li><b>alamat</b> dengan value <b>Jl. Diponegoro no 9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('211', '::1', '', '2016-08-04 16:47:21', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('212', '::1', '', '2016-08-04 16:47:35', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('213', '::1', '', '2016-08-05 04:55:46', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('214', '::1', '', '2016-08-05 04:56:43', 'Menghapus menu dengan id 111', 'admin');
INSERT INTO `cms_log` VALUES ('215', '::1', '', '2016-08-05 05:13:42', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('216', '::1', '', '2016-08-05 08:30:36', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('217', '::1', '', '2016-08-05 08:43:19', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('218', '::1', '', '2016-08-05 14:02:40', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('219', '::1', '', '2016-08-06 04:13:28', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('220', '::1', '', '2016-08-06 04:16:36', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>2,2,2,2,2,2,2,2,2,2</b></li><li><b>cur_level</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('221', '::1', '', '2016-08-06 04:22:24', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('222', '::1', '', '2016-08-06 04:22:38', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('223', '::1', '', '2016-08-06 04:28:23', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('224', '::1', '', '2016-08-06 04:28:41', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('225', '::1', '', '2016-08-06 04:34:39', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/8862733a4d1cdf287082d0f91b32853d.jpg</b></li><li><b>no_hp</b> dengan value <b>08799000</b></li><li><b>alamat</b> dengan value <b>Jl. Diponegoro no 9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('226', '::1', '', '2016-08-06 04:34:44', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('227', '::1', '', '2016-08-06 04:34:59', 'Login  by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('228', '::1', '', '2016-08-06 04:40:01', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Stock Masuk Produksi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>stok_masuk_produksi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_masuk_produksi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('229', '::1', '', '2016-08-06 04:40:38', 'Mengedit Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan Ali Ahmad</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>08799000</b></li><li><b>alamat</b> dengan value <b>Jl. Diponegoro no 9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('230', '::1', '', '2016-08-06 04:40:40', 'Logout CV. Allure Industries by Jihan', 'admin');
INSERT INTO `cms_log` VALUES ('231', '::1', '', '2016-08-06 04:40:57', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('232', '::1', '', '2016-08-06 05:14:54', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-19</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-27</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('233', '::1', '', '2016-08-06 05:15:39', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>232</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>grade</b> dengan value <b>A</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('234', '::1', '', '2016-08-06 05:16:04', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>232</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>9</b></li><li><b>grade</b> dengan value <b>A</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('235', '::1', '', '2016-08-06 05:16:21', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>234</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('236', '::1', '', '2016-08-06 05:19:56', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>005/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-26</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-20</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('237', '::1', '', '2016-08-06 05:22:18', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-19</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-26</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>10</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('238', '::1', '', '2016-08-06 05:22:27', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('239', '::1', '', '2016-08-06 05:22:36', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('240', '::1', '', '2016-08-06 05:22:53', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('241', '::1', '', '2016-08-06 06:03:04', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>002/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>tgl</b> dengan value <b>2016-08-19</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-26</b></li><li><b>pembayaran</b> dengan value <b>3</b></li><li><b>dp</b> dengan value <b>100000</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('242', '::1', '', '2016-08-06 06:03:14', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>100</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('243', '::1', '', '2016-08-06 06:03:41', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>003/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-26</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-26</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>20</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('244', '::1', '', '2016-08-06 06:03:49', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('245', '::1', '', '2016-08-06 06:04:02', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('246', '::1', '', '2016-08-06 06:04:14', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>6</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('247', '::1', '', '2016-08-06 06:06:22', 'Menambah Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>S002</b></li><li><b>nama</b> dengan value <b>Semar Mandiri Meubel</b></li><li><b>telepon</b> dengan value <b>021 - 4119445</b></li><li><b>alamat</b> dengan value <b>jalan pegangsaaan timur nomor 1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('248', '::1', '', '2016-08-06 06:09:14', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>001/supplier/08/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-20</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>price</b> dengan value <b>100000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('249', '::1', '', '2016-08-06 06:10:18', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>002/supplier/08/2016</b></li><li><b>id_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-19</b></li><li><b>qty</b> dengan value <b>7</b></li><li><b>price</b> dengan value <b>100000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('250', '::1', '', '2016-08-06 06:41:58', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('251', '::1', '', '2016-08-06 09:47:00', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Stok Masuk Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>stok_supplier</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('252', '::1', '', '2016-08-06 09:57:01', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>115</b></li><li><b>nama</b> dengan value <b>Stock Masuk Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('253', '::1', '', '2016-08-06 13:55:57', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('254', '::1', '', '2016-08-06 16:14:14', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-09-09</b></li><li><b>qty</b> dengan value <b>3</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('255', '::1', '', '2016-08-07 02:20:12', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('256', '::1', '', '2016-08-07 02:52:02', 'Menghapus Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_detail</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('257', '::1', '', '2016-08-07 02:53:42', 'Menghapus Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_detail</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('258', '::1', '', '2016-08-07 02:55:27', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-09-08</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>note</b> dengan value <b>ini barang bagus</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('259', '::1', '', '2016-08-07 02:57:27', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-09-10</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>ini jos</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('260', '::1', '', '2016-08-07 03:00:44', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>tgl_terima</b> dengan value <b>2016-09-09</b></li><li><b>qty</b> dengan value <b>12</b></li><li><b>note</b> dengan value <b>joss</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('261', '::1', '', '2016-08-07 03:07:40', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Outstanding Barang</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>outstanding</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/outstanding</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('262', '::1', '', '2016-08-07 03:14:23', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>116</b></li><li><b>nama</b> dengan value <b>Outstanding Barang</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/outstanding</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>8</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('263', '::1', '', '2016-08-07 04:28:10', 'Logout CV. Allure Industries by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('264', '::1', '', '2016-08-07 04:28:31', 'Login  by Dessy Damayanti', 'dessy');
INSERT INTO `cms_log` VALUES ('265', '::1', '', '2016-08-08 07:19:46', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('266', '::1', '', '2016-08-08 07:39:19', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>note</b> dengan value <b>joss</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('267', '::1', '', '2016-08-08 07:40:40', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>mantav</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('268', '::1', '', '2016-08-08 07:42:40', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-08</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>note</b> dengan value <b>setuju</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('269', '::1', '', '2016-08-08 07:43:27', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-08</b></li><li><b>qty</b> dengan value <b>2</b></li><li><b>note</b> dengan value <b>sangar</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('270', '::1', '', '2016-08-08 07:46:12', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-08</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>k</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('271', '::1', '', '2016-08-08 07:46:47', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-08</b></li><li><b>qty</b> dengan value <b>2</b></li><li><b>note</b> dengan value <b>-</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('272', '::1', '', '2016-08-08 08:37:30', 'Logout CV. Allure Industries by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('273', '::1', '', '2016-08-08 16:27:05', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('274', '::1', '', '2016-08-09 02:03:25', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('275', '::1', '', '2016-08-09 02:18:48', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pengiriman Barang</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>pengiriman_barang</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/pengiriman_barang</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>8</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('276', '::1', '', '2016-08-09 04:12:51', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('277', '::1', '', '2016-08-09 04:14:18', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>117</b></li><li><b>nama</b> dengan value <b>Pengiriman Barang</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/pengiriman_barang</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>9</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('278', '::1', '', '2016-08-09 05:36:45', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>tod</b> dengan value <b>Kapal</b></li><li><b>date</b> dengan value <b>kosong</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('279', '::1', '', '2016-08-09 05:38:43', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>tod</b> dengan value <b>kapal</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>note</b> dengan value <b>kirim</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('280', '::1', '', '2016-08-09 06:52:49', 'Logout CV. Allure Industries by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('281', '::1', '', '2016-08-10 07:47:03', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-10</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-19</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>877</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('282', '::1', '', '2016-08-10 07:47:30', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>200</b></li><li><b>grade</b> dengan value <b>B</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('283', '::1', '', '2016-08-10 07:47:54', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>320</b></li><li><b>grade</b> dengan value <b>B</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('284', '::1', '', '2016-08-10 07:49:38', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>001/sup/8/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-03</b></li><li><b>qty</b> dengan value <b>100</b></li><li><b>price</b> dengan value <b>2000000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('285', '::1', '', '2016-08-10 07:50:36', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>001/sup/8/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-29</b></li><li><b>qty</b> dengan value <b>170</b></li><li><b>price</b> dengan value <b>500000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('286', '::1', '', '2016-08-10 07:51:51', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>002/sup/8/2016</b></li><li><b>id_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-23</b></li><li><b>qty</b> dengan value <b>100</b></li><li><b>price</b> dengan value <b>1900000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('287', '::1', '', '2016-08-10 07:53:02', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>002/sup/8/2016</b></li><li><b>id_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-24</b></li><li><b>qty</b> dengan value <b>150</b></li><li><b>price</b> dengan value <b>450000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('288', '::1', '', '2016-08-10 07:56:12', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>50</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('289', '::1', '', '2016-08-10 07:56:23', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>70</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('290', '::1', '', '2016-08-10 07:57:10', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-24</b></li><li><b>qty</b> dengan value <b>50</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('291', '::1', '', '2016-08-10 07:57:43', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-23</b></li><li><b>qty</b> dengan value <b>50</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('292', '::1', '', '2016-08-10 07:58:58', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>55</b></li><li><b>tod</b> dengan value <b>mkmk</b></li><li><b>date</b> dengan value <b>2016-09-02</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('293', '::1', '', '2016-08-10 07:59:05', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>23</b></li><li><b>tod</b> dengan value <b>mkmk</b></li><li><b>date</b> dengan value <b>2016-09-02</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('294', '::1', '', '2016-08-11 06:10:08', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('295', '::1', '', '2016-08-11 08:25:59', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan Ali Ahmad</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/eb6c5629908e63995b1fbec7b9f5d881.jpg</b></li><li><b>no_hp</b> dengan value <b>08799000</b></li><li><b>alamat</b> dengan value <b>Jl. Diponegoro no 9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('296', '::1', '', '2016-08-11 08:42:35', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>4</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-27</b></li><li><b>qty</b> dengan value <b>25</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('297', '::1', '', '2016-08-11 08:43:04', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>4</b></li><li><b>tgl_terima</b> dengan value <b>2016-08-30</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('298', '::1', '', '2016-08-11 08:44:04', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>50</b></li><li><b>tod</b> dengan value <b>mkmk</b></li><li><b>date</b> dengan value <b>2016-08-04</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('299', '::1', '', '2016-08-11 09:27:58', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('300', '::1', '', '2016-08-12 04:12:46', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('301', '::1', '', '2016-08-12 06:18:36', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('302', '::1', '', '2016-08-12 09:56:08', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('303', '::1', '', '2016-08-12 11:57:13', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('304', '::1', '', '2016-08-12 11:59:01', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Jihan Ali Ahmad</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2016/08/f14a6a388d0c650d89a041aab56db995.jpg</b></li><li><b>no_hp</b> dengan value <b>08799000</b></li><li><b>alamat</b> dengan value <b>Jl. Diponegoro no 9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('305', '::1', '', '2016-08-12 11:59:19', 'Logout CV. Allure Industries by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('306', '::1', '', '2016-08-12 11:59:37', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('307', '::1', '', '2016-08-12 12:00:17', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Outstanding</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('308', '::1', '', '2016-08-12 12:01:06', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>114</b></li><li><b>nama</b> dengan value <b>Stock Masuk Produksi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_produksi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('309', '::1', '', '2016-08-12 12:01:26', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>115</b></li><li><b>nama</b> dengan value <b>Stock Masuk Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('310', '::1', '', '2016-08-12 12:01:55', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>116</b></li><li><b>nama</b> dengan value <b>Outstanding Barang</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/outstanding</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>8</b></li><li><b>grup</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('311', '::1', '', '2016-08-12 12:08:00', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('312', '::1', '', '2016-08-12 12:08:46', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>002/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-24</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-18</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>10000</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('313', '::1', '', '2016-08-12 12:10:18', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('314', '::1', '', '2016-08-12 13:41:02', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>114</b></li><li><b>nama</b> dengan value <b>Stock Production</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_produksi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('315', '::1', '', '2016-08-12 13:41:22', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>115</b></li><li><b>nama</b> dengan value <b>Stock Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/stok_supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('316', '::1', '', '2016-08-12 13:41:35', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>116</b></li><li><b>nama</b> dengan value <b>Outstanding Product</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/outstanding</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>8</b></li><li><b>grup</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('317', '::1', '', '2016-08-12 13:42:07', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>104</b></li><li><b>nama</b> dengan value <b>Home</b></li><li><b>deskripsi</b> dengan value <b>Status Pengajuan PAK</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6</b></li><li><b>url</b> dengan value <b>pak/dashboard/status_pak</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('318', '::1', '', '2016-08-12 13:42:45', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>112</b></li><li><b>nama</b> dengan value <b>Buy to Supplier</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/pembelian_supplier</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('319', '::1', '', '2016-08-12 13:43:14', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>117</b></li><li><b>nama</b> dengan value <b>Sending Product</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/pengiriman_barang</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>9</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('320', '::1', '', '2016-08-12 13:49:01', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>108</b></li><li><b>nama</b> dengan value <b>Special Product</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/produk</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('321', '::1', '', '2016-08-13 02:44:38', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('322', '::1', '', '2016-08-13 03:22:42', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>003/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-20</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-20</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('323', '::1', '', '2016-08-13 03:24:43', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>tgl</b> dengan value <b>2016-09-01</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-01</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('324', '::1', '', '2016-08-13 03:25:00', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>4</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>ketek</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('325', '::1', '', '2016-08-13 03:25:22', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>dp</b> dengan value <b>500000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('326', '::1', '', '2016-08-13 11:07:32', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('327', '::1', '', '2016-08-13 11:13:54', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>6</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('328', '::1', '', '2016-08-13 11:22:12', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>112</b></li><li><b>id</b> dengan value <b>6</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('329', '::1', '', '2016-08-13 11:27:32', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>grade</b> dengan value <b>B</b></li><li><b>note</b> dengan value <b>12</b></li><li><b>id</b> dengan value <b>7</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('330', '::1', '', '2016-08-13 11:31:40', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>8</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('331', '::1', '', '2016-08-13 11:31:53', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('332', '::1', '', '2016-08-13 11:33:20', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>1</b></li><li><b>qty</b> dengan value <b>1</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>10</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('333', '::1', '', '2016-08-13 11:34:42', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('334', '::1', '', '2016-08-13 11:35:57', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>005/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-31</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-31</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('335', '::1', '', '2016-08-13 11:36:36', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>5</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>50</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>11</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('336', '::1', '', '2016-08-13 11:36:48', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>5</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>100</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>12</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('337', '::1', '', '2016-08-13 11:37:02', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>5</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>40</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>13</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('338', '::1', '', '2016-08-13 11:37:10', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>dp</b> dengan value <b>500</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('339', '::1', '', '2016-08-13 11:38:30', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('340', '::1', '', '2016-08-13 11:38:53', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>005/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>grade</b> dengan value <b>B</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>14</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('341', '::1', '', '2016-08-13 11:41:03', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('342', '::1', '', '2016-08-13 11:43:57', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('343', '::1', '', '2016-08-13 11:45:45', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('344', '::1', '', '2016-08-13 11:46:37', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('345', '::1', '', '2016-08-13 11:47:31', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>005/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>8</b></li><li><b>grade</b> dengan value <b>B</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>15</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('346', '::1', '', '2016-08-13 11:47:38', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('347', '::1', '', '2016-08-13 11:52:22', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('348', '::1', '', '2016-08-13 11:53:45', 'Menghapus Invoice Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('349', '::1', '', '2016-08-13 11:55:04', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>006/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-26</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-26</b></li><li><b>pembayaran</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>6</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('350', '::1', '', '2016-08-13 11:55:19', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>6</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>12</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('351', '::1', '', '2016-08-13 11:55:39', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>6</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>17</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('352', '::1', '', '2016-08-13 11:56:11', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>006/kalingga/08/2016</b></li><li><b>dp</b> dengan value <b>50</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('353', '::1', '', '2016-08-13 14:26:52', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('354', '::1', '', '2016-08-13 16:10:27', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>wswswdwd</b></li><li><b>nama</b> dengan value <b>wswssw</b></li><li><b>size</b> dengan value <b>wswswsw</b></li><li><b>gambar</b> dengan value <b>files/2016/08/74ad446972cc9f7832740e5e0dc3185e.jpg</b></li><li><b>currency</b> dengan value <b>kosong</b></li><li><b>harga</b> dengan value <b>40000</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('355', '::1', '', '2016-08-14 01:18:49', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('356', '::1', '', '2016-08-16 02:02:26', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('357', '::1', '', '2016-08-16 02:08:20', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>hiert</b></li><li><b>nama</b> dengan value <b>Max Chair</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/7d2c67fc29602fa27d96133f13d20122.jpg</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>90</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('358', '::1', '', '2016-08-16 02:21:21', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('359', '::1', '', '2016-08-16 02:21:53', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>max001</b></li><li><b>nama</b> dengan value <b>max</b></li><li><b>size</b> dengan value <b>22x22x44</b></li><li><b>gambar</b> dengan value <b>files/2016/08/4c866600087624a99eac9bcb2675ce9f.jpg</b></li><li><b>currency</b> dengan value <b>kosong</b></li><li><b>harga</b> dengan value <b>20</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('360', '::1', '', '2016-08-17 11:34:26', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('361', '::1', '', '2016-08-17 12:12:11', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>002</b></li><li><b>nama</b> dengan value <b>hi deck</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/079c806f67d96ecededf2c39e60b5ac2.JPG</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>200</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>attn</b> dengan value <b>qwerty</b></li><li><b>packing_l</b> dengan value <b>12</b></li><li><b>packing_w</b> dengan value <b>13</b></li><li><b>packing_h</b> dengan value <b>14</b></li><li><b>weight_nw</b> dengan value <b>undefined</b></li><li><b>weight_gw</b> dengan value <b>undefined</b></li><li><b>buyer_art</b> dengan value <b>code art</b></li><li><b>buyer_po</b> dengan value <b>po nmber</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('362', '::1', '', '2016-08-17 12:14:39', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>003</b></li><li><b>nama</b> dengan value <b>123</b></li><li><b>size</b> dengan value <b>23</b></li><li><b>gambar</b> dengan value <b>files/2016/08/f4b316152ea6a2641fb85ac7518ede9f.png</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>30</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>attn</b> dengan value <b>1234</b></li><li><b>packing_l</b> dengan value <b>11</b></li><li><b>packing_w</b> dengan value <b>11</b></li><li><b>packing_h</b> dengan value <b>11</b></li><li><b>weight_nw</b> dengan value <b>12</b></li><li><b>weight_gw</b> dengan value <b>12</b></li><li><b>buyer_art</b> dengan value <b>opo</b></li><li><b>buyer_po</b> dengan value <b>opo</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('363', '::1', '', '2016-08-17 12:29:29', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>003</b></li><li><b>nama</b> dengan value <b>123</b></li><li><b>size</b> dengan value <b>23</b></li><li><b>harga</b> dengan value <b>30</b></li><li><b>packing_l</b> dengan value <b>11</b></li><li><b>packing_w</b> dengan value <b>11</b></li><li><b>packing_h</b> dengan value <b>11</b></li><li><b>weight_nw</b> dengan value <b>44</b></li><li><b>weight_gw</b> dengan value <b>44</b></li><li><b>buyer_art</b> dengan value <b>opo</b></li><li><b>buyer_po</b> dengan value <b>opo</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('364', '::1', '', '2016-08-17 12:29:52', 'Mengupdate Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>003</b></li><li><b>nama</b> dengan value <b>123</b></li><li><b>size</b> dengan value <b>23</b></li><li><b>gambar</b> dengan value <b>files/2016/08/292d375b80ee74181dfd9feb0fab3e47.JPG</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>30</b></li><li><b>attn</b> dengan value <b>1234</b></li><li><b>packing_l</b> dengan value <b>22</b></li><li><b>packing_w</b> dengan value <b>22</b></li><li><b>packing_h</b> dengan value <b>22</b></li><li><b>weight_nw</b> dengan value <b>44</b></li><li><b>weight_gw</b> dengan value <b>44</b></li><li><b>buyer_art</b> dengan value <b>opo</b></li><li><b>buyer_po</b> dengan value <b>opo</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('365', '::1', '', '2016-08-17 12:40:25', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>s001</b></li><li><b>nama</b> dengan value <b>jihan</b></li><li><b>size</b> dengan value <b>9009</b></li><li><b>gambar</b> dengan value <b>files/2016/08/7ac0379b9aa14cab8ca042b2621583c3.jpg</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>100</b></li><li><b>status</b> dengan value <b>2</b></li><li><b>attn</b> dengan value <b>stan</b></li><li><b>packing_l</b> dengan value <b>1</b></li><li><b>packing_w</b> dengan value <b>2</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>1</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>q</b></li><li><b>buyer_po</b> dengan value <b>w</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('366', '::1', '', '2016-08-17 12:40:40', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>s001</b></li><li><b>nama</b> dengan value <b>jihan</b></li><li><b>size</b> dengan value <b>9009</b></li><li><b>harga</b> dengan value <b>100</b></li><li><b>packing_l</b> dengan value <b>1</b></li><li><b>packing_w</b> dengan value <b>2</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>1</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>q</b></li><li><b>buyer_po</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('367', '::1', '', '2016-08-17 12:40:55', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>s001</b></li><li><b>nama</b> dengan value <b>jihan</b></li><li><b>size</b> dengan value <b>9009</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>packing_l</b> dengan value <b>1</b></li><li><b>packing_w</b> dengan value <b>2</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>1</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>q</b></li><li><b>buyer_po</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('368', '::1', '', '2016-08-17 12:41:07', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>s001</b></li><li><b>nama</b> dengan value <b>jihan</b></li><li><b>size</b> dengan value <b>9009</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>packing_l</b> dengan value <b>1</b></li><li><b>packing_w</b> dengan value <b>2</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>1</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>q</b></li><li><b>buyer_po</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('369', '::1', '', '2016-08-17 12:42:18', 'Mengedit Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>s001</b></li><li><b>nama</b> dengan value <b>jihan</b></li><li><b>currency</b> dengan value <b>1</b></li><li><b>size</b> dengan value <b>9009</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>packing_l</b> dengan value <b>1</b></li><li><b>packing_w</b> dengan value <b>2</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>1</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>q</b></li><li><b>buyer_po</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('370', '::1', '', '2016-08-17 12:42:30', 'Mengupdate Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>id_buyer</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>s001</b></li><li><b>nama</b> dengan value <b>jihan</b></li><li><b>size</b> dengan value <b>9009</b></li><li><b>gambar</b> dengan value <b>files/2016/08/543774aea826531eef7bcefcbbcf9c25.JPG</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>attn</b> dengan value <b>stan</b></li><li><b>packing_l</b> dengan value <b>1</b></li><li><b>packing_w</b> dengan value <b>2</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>1</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>q</b></li><li><b>buyer_po</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('371', '::1', '', '2016-08-17 14:43:05', 'Menambah Pembelian Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>2</b></li><li><b>pi_supplier</b> dengan value <b>pi-supplier-002</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-31</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>price</b> dengan value <b>100000</b></li><li><b>dp</b> dengan value <b>200000</b></li><li><b>note</b> dengan value <b>note</b></li><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('372', '::1', '', '2016-08-18 13:40:49', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('373', '::1', '', '2016-08-18 15:00:54', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>1</b></li><li><b>id_supplier</b> dengan value <b>pi/sup/90</b></li><li><b>date</b> dengan value <b>2016-08-18</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('374', '::1', '', '2016-08-18 15:03:18', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>pi/890/90</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-18</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('375', '::1', '', '2016-08-18 15:10:49', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>4</b></li><li><b>pi_supplier</b> dengan value <b>svsvsv</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-18</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('376', '::1', '', '2016-08-22 03:28:17', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('377', '::1', '', '2016-08-22 03:29:58', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>001/supp/123/121</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-22</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('378', '::1', '', '2016-08-22 03:48:39', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>123/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-22</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('379', '::1', '', '2016-08-22 03:51:38', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-22</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('380', '::1', '', '2016-08-22 03:51:53', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>100</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>2016</b></li><li><b>date</b> dengan value <b>2016-08-22</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('381', '::1', '', '2016-08-23 14:46:40', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('382', '::1', '', '2016-08-23 14:52:01', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('383', '::1', '', '2016-08-23 14:53:01', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>harga</b> dengan value <b>200000</b></li><li><b>note</b> dengan value <b>good table</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('384', '::1', '', '2016-08-23 14:54:41', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('385', '::1', '', '2016-08-23 14:55:07', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>25</b></li><li><b>harga</b> dengan value <b>200000</b></li><li><b>note</b> dengan value <b>hujan rintik2</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('386', '::1', '', '2016-08-23 14:57:16', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('387', '::1', '', '2016-08-23 14:57:39', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>25</b></li><li><b>harga</b> dengan value <b>125000</b></li><li><b>note</b> dengan value <b>note this</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('388', '::1', '', '2016-08-23 14:58:17', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>harga</b> dengan value <b>200000</b></li><li><b>note</b> dengan value <b>note this</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('389', '::1', '', '2016-08-23 14:58:34', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>harga</b> dengan value <b>225000</b></li><li><b>note</b> dengan value <b>note this</b></li><li><b>date</b> dengan value <b>2016-08-23</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('390', '::1', '', '2016-08-23 15:01:47', 'Menambah DownPayment pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>1000000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('391', '::1', '', '2016-08-24 06:08:52', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('392', '::1', '', '2016-08-24 09:13:15', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('393', '::1', '', '2016-08-24 09:51:59', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('394', '::1', '', '2016-08-25 06:56:26', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('395', '::1', '', '2016-08-25 07:16:09', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>bismillah</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('396', '::1', '', '2016-08-25 07:16:56', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>jihan</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('397', '::1', '', '2016-08-25 07:18:04', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>ali</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('398', '::1', '', '2016-08-25 07:36:34', 'Memperbarui Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>bismillahku</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('399', '::1', '', '2016-08-25 07:41:10', 'Menghapus laporan dengan id 3', 'admin');
INSERT INTO `cms_log` VALUES ('400', '::1', '', '2016-08-25 08:00:33', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>dilarang makan dan minum sambil berdiri</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('401', '::1', '', '2016-08-25 14:51:09', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('402', '::1', '', '2016-08-26 04:40:10', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('403', '::1', '', '2016-08-26 06:13:44', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('404', '::1', '', '2016-08-26 08:28:56', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('405', '::1', '', '2016-08-26 08:32:56', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('406', '::1', '', '2016-08-26 08:33:05', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('407', '::1', '', '2016-08-26 08:34:10', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>12</b></li><li><b>note</b> dengan value <b>look</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('408', '::1', '', '2016-08-26 08:36:16', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>ji</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('409', '::1', '', '2016-08-26 08:37:15', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>12</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('410', '::1', '', '2016-08-26 08:37:56', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>2</b></li><li><b>note</b> dengan value <b>wer</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('411', '::1', '', '2016-08-26 12:00:22', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('412', '::1', '', '2016-08-26 14:01:21', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('413', '::1', '', '2016-08-26 14:02:13', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>susul</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('414', '::1', '', '2016-08-26 14:03:36', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>3</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>12</b></li><li><b>note</b> dengan value <b>12</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('415', '::1', '', '2016-08-26 14:07:33', 'Menghapus Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('416', '::1', '', '2016-08-26 15:01:59', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('417', '::1', '', '2016-08-26 15:02:16', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>12</b></li><li><b>note</b> dengan value <b>wer</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-26</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('418', '::1', '', '2016-08-26 16:14:56', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>tod</b> dengan value <b>dsff</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>note</b> dengan value <b>good table</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('419', '::1', '', '2016-08-27 02:57:53', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('420', '::1', '', '2016-08-27 03:00:37', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-27</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-08-31</b></li><li><b>pembayaran</b> dengan value <b>3</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('421', '::1', '', '2016-08-27 03:01:03', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>40</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('422', '::1', '', '2016-08-27 03:01:16', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('423', '::1', '', '2016-08-27 03:01:36', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('424', '::1', '', '2016-08-27 03:01:44', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>500</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('425', '::1', '', '2016-08-27 03:04:42', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>001/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('426', '::1', '', '2016-08-27 03:36:05', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>supp/12/123</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('427', '::1', '', '2016-08-27 03:39:01', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>9090</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('428', '::1', '', '2016-08-27 03:47:15', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>support</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('429', '::1', '', '2016-08-27 03:47:41', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>fu</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('430', '::1', '', '2016-08-27 03:48:10', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>harga</b> dengan value <b>30000</b></li><li><b>note</b> dengan value <b>fu</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('431', '::1', '', '2016-08-27 03:48:36', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>note</b> dengan value <b>fu</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('432', '::1', '', '2016-08-27 03:48:41', 'Menambah DownPayment pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>500000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('433', '::1', '', '2016-08-27 03:52:11', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('434', '::1', '', '2016-08-27 03:52:18', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('435', '::1', '', '2016-08-27 03:52:24', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('436', '::1', '', '2016-08-27 03:55:20', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('437', '::1', '', '2016-08-27 03:55:29', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('438', '::1', '', '2016-08-27 04:02:11', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>tod</b> dengan value <b>cnn</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('439', '::1', '', '2016-08-27 04:02:22', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>tod</b> dengan value <b>cnn</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('440', '::1', '', '2016-08-27 04:02:44', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>tod</b> dengan value <b>cnn</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('441', '::1', '', '2016-08-27 04:04:36', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>tod</b> dengan value <b>cash</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('442', '::1', '', '2016-08-27 04:05:04', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>tod</b> dengan value <b>cash</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('443', '::1', '', '2016-08-27 04:05:24', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>tod</b> dengan value <b>cash</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('444', '::1', '', '2016-08-27 04:09:13', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>tod</b> dengan value <b>joss</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('445', '::1', '', '2016-08-27 04:09:23', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>tod</b> dengan value <b>joss</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('446', '::1', '', '2016-08-27 04:09:28', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>tod</b> dengan value <b>joss</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('447', '::1', '', '2016-08-27 06:36:13', 'Mengedit Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>B001</b></li><li><b>nama</b> dengan value <b>Fontain</b></li><li><b>negara</b> dengan value <b>21</b></li><li><b>alamat</b> dengan value <b>M. André Dupont Rue du Cornet 6 B-4800 VERVIERS BELGIUM</b></li><li><b>attn</b> dengan value <b>Mr. Felix</b></li><li><b>telp</b> dengan value <b>2131-33</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('448', '::1', '', '2016-08-27 06:37:28', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B002</b></li><li><b>nama</b> dengan value <b>Matador</b></li><li><b>negara</b> dengan value <b>202</b></li><li><b>alamat</b> dengan value <b>St. Blanc Sinclair</b></li><li><b>attn</b> dengan value <b>Mr. Laurent</b></li><li><b>telp</b> dengan value <b>234</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('449', '::1', '', '2016-08-27 07:01:02', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Production</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>production</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/production</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>101</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('450', '::1', '', '2016-08-27 08:01:04', 'Menambah production dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_production</b> dengan value <b>001/pro/2016</b></li><li><b>start</b> dengan value <b>2016-08-27</b></li><li><b>finish</b> dengan value <b>2016-09-10</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('451', '::1', '', '2016-08-27 11:46:15', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('452', '::1', '', '2016-08-27 11:50:50', 'Menambah Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B004</b></li><li><b>nama</b> dengan value <b>Bleu</b></li><li><b>negara</b> dengan value <b>72</b></li><li><b>alamat</b> dengan value <b>paris</b></li><li><b>attn</b> dengan value <b>mr. duboir</b></li><li><b>telp</b> dengan value <b>09383-33</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('453', '::1', '', '2016-08-27 11:51:04', 'Mengedit Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>B003</b></li><li><b>nama</b> dengan value <b>Matador</b></li><li><b>negara</b> dengan value <b>202</b></li><li><b>alamat</b> dengan value <b>St. Blanc Sinclair</b></li><li><b>attn</b> dengan value <b>Mr. Laurent</b></li><li><b>telp</b> dengan value <b>234</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('454', '::1', '', '2016-08-27 11:51:34', 'Menambah Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>S003</b></li><li><b>nama</b> dengan value <b>Manunggal Jati</b></li><li><b>telepon</b> dengan value <b>898393-393</b></li><li><b>alamat</b> dengan value <b>jepara</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('455', '::1', '', '2016-08-27 11:55:02', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>004</b></li><li><b>nama</b> dengan value <b>Gold Chair</b></li><li><b>size</b> dengan value <b>22x10x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/345aa5b30fb805f7407e99c1b21edfee.JPG</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>50</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>attn</b> dengan value <b>mr. duboir</b></li><li><b>packing_l</b> dengan value <b>110</b></li><li><b>packing_w</b> dengan value <b>40</b></li><li><b>packing_h</b> dengan value <b>30</b></li><li><b>weight_nw</b> dengan value <b>40</b></li><li><b>weight_gw</b> dengan value <b>50</b></li><li><b>buyer_art</b> dengan value <b>coba</b></li><li><b>buyer_po</b> dengan value <b>coba</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('456', '::1', '', '2016-08-27 11:56:08', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>002/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>4</b></li><li><b>tgl</b> dengan value <b>2016-08-27</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-10</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('457', '::1', '', '2016-08-27 11:57:13', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>002/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('458', '::1', '', '2016-08-27 11:57:31', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>002/kalingga/08/2016</b></li><li><b>dp</b> dengan value <b>300</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('459', '::1', '', '2016-08-27 11:57:43', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>002/kalingga/08/2016</b></li><li><b>dp</b> dengan value <b>400</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('460', '::1', '', '2016-08-27 12:00:41', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>2</b></li><li><b>pi_supplier</b> dengan value <b>01/supp/120</b></li><li><b>id_supplier</b> dengan value <b>3</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('461', '::1', '', '2016-08-27 12:01:20', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('462', '::1', '', '2016-08-27 12:01:34', 'Menambah DownPayment pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>500000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('463', '::1', '', '2016-08-27 12:02:34', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>ketentuan</b> dengan value <b>coba1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('464', '::1', '', '2016-08-27 12:02:41', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>ketentuan</b> dengan value <b>coba2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('465', '::1', '', '2016-08-27 12:02:48', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>ketentuan</b> dengan value <b>coba3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('466', '::1', '', '2016-08-27 12:04:18', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>2</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('467', '::1', '', '2016-08-27 12:05:21', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>2</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('468', '::1', '', '2016-08-27 12:06:50', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>tod</b> dengan value <b>plane</b></li><li><b>date</b> dengan value <b>2016-08-27</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('469', '::1', '', '2016-08-27 12:23:20', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>3,3,3,3,3</b></li><li><b>cur_level</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('470', '::1', '', '2016-08-27 12:23:56', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>user</b></li><li><b>username</b> dengan value <b>user</b></li><li><b>password</b> dengan value <b>*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>gambar</b> dengan value <b>files/2016/08/123c1b3890fd94747c6131a245accd6b.png</b></li><li><b>no_hp</b> dengan value <b>9090</b></li><li><b>alamat</b> dengan value <b>ooook</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('471', '::1', '', '2016-08-27 12:23:58', 'Logout CV. Allure Industries by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('472', '::1', '', '2016-08-27 12:24:13', 'Login  by user', 'user');
INSERT INTO `cms_log` VALUES ('473', '::1', '', '2016-08-27 12:24:27', 'Logout CV. Allure Industries by user', 'user');
INSERT INTO `cms_log` VALUES ('474', '::1', '', '2016-08-27 12:25:32', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('475', '::1', '', '2016-08-28 02:11:10', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('476', '::1', '', '2016-08-29 14:09:45', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('477', '::1', '', '2016-08-29 14:38:31', 'Mengedit Master Buyer dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>B002</b></li><li><b>nama</b> dengan value <b>Cruisant</b></li><li><b>negara</b> dengan value <b>72</b></li><li><b>alamat</b> dengan value <b>Fake Address Generator provide Belgium address generator</b></li><li><b>attn</b> dengan value <b>Mr. Lambert</b></li><li><b>telp</b> dengan value <b>452435-3253</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('478', '::1', '', '2016-08-29 15:07:02', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>P001</b></li><li><b>nama</b> dengan value <b>Triangle Chair</b></li><li><b>size</b> dengan value <b>22x11x23</b></li><li><b>gambar</b> dengan value <b>files/2016/08/a2db873a48e06dccff7f629841d9f24e.JPG</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>20</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>packing_l</b> dengan value <b>110</b></li><li><b>packing_w</b> dengan value <b>50</b></li><li><b>packing_h</b> dengan value <b>60</b></li><li><b>weight_nw</b> dengan value <b>20</b></li><li><b>weight_gw</b> dengan value <b>30</b></li><li><b>buyer_art</b> dengan value <b>jijiji</b></li><li><b>buyer_po</b> dengan value <b>jijii</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('479', '::1', '', '2016-08-29 15:12:12', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>uuu1</b></li><li><b>nama</b> dengan value <b>Grand Table</b></li><li><b>size</b> dengan value <b>21x12x34</b></li><li><b>gambar</b> dengan value <b>files/2016/08/9acbdca1a9555306d282503e14d35215.jpg</b></li><li><b>currency</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>40</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>packing_l</b> dengan value <b>78</b></li><li><b>packing_w</b> dengan value <b>78</b></li><li><b>packing_h</b> dengan value <b>89</b></li><li><b>weight_nw</b> dengan value <b>89</b></li><li><b>weight_gw</b> dengan value <b>878</b></li><li><b>buyer_art</b> dengan value <b>huhu</b></li><li><b>buyer_po</b> dengan value <b>uhuh</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('480', '::1', '', '2016-08-29 15:31:51', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>009</b></li><li><b>nama</b> dengan value <b>Standart Charter</b></li><li><b>size</b> dengan value <b>24r23</b></li><li><b>gambar</b> dengan value <b>files/2016/08/01cee01f7bbdf38937850c7d5413b40e.JPG</b></li><li><b>currency</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>20</b></li><li><b>status</b> dengan value <b>2</b></li><li><b>packing_l</b> dengan value <b>38</b></li><li><b>packing_w</b> dengan value <b>8</b></li><li><b>packing_h</b> dengan value <b>8</b></li><li><b>weight_nw</b> dengan value <b>8</b></li><li><b>weight_gw</b> dengan value <b>8</b></li><li><b>buyer_art</b> dengan value <b>hu</b></li><li><b>buyer_po</b> dengan value <b>hu</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('481', '::1', '', '2016-08-30 02:14:19', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('482', '::1', '', '2016-08-30 02:16:15', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Bank Description</b></li><li><b>deskripsi</b> dengan value <b>bank</b></li><li><b>alias</b> dengan value <b>bank</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>klg/bank</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('483', '::1', '', '2016-08-30 02:19:29', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>119</b></li><li><b>nama</b> dengan value <b>Bank Description</b></li><li><b>deskripsi</b> dengan value <b>bank</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/bank</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>16</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('484', '::1', '', '2016-08-30 02:55:23', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('485', '::1', '', '2016-08-30 02:55:40', 'Mengupdate Bank Description:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>pimpinan</b> dengan value <b>RENSI EKA PRATISTYA</b></li><li><b>beneficiary_bank</b> dengan value <b>BNI 46, Jepara Branch</b></li><li><b>bank_add</b> dengan value <b>Jalan Pemuda No. 11A, Jepara</b></li><li><b>swift_code</b> dengan value <b>BNINIDJAJPR</b></li><li><b>beneficiary</b> dengan value <b>Djuniadi QQ CV. Allure Industries FURNITURE</b></li><li><b>address</b> dengan value <b>Jalan Raya Senenan No. 16, Jepara, Indonesia</b></li><li><b>tel</b> dengan value <b>0062 (0) 291597781</b></li><li><b>fax</b> dengan value <b>0062 (0) 291597784</b></li><li><b>beneficiary_no</b> dengan value <b>00 322 571 094</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('486', '::1', '', '2016-08-30 02:55:53', 'Mengupdate Bank Description:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>pimpinan</b> dengan value <b>RENSI EKA PRATISTYA</b></li><li><b>beneficiary_bank</b> dengan value <b>BNI 46, Jepara Branch</b></li><li><b>bank_add</b> dengan value <b>Jalan Pemuda No. 11A, Jepara</b></li><li><b>swift_code</b> dengan value <b>BNINIDJAJPR</b></li><li><b>beneficiary</b> dengan value <b>Djuniadi QQ CV. Allure Industries FURNITURE</b></li><li><b>address</b> dengan value <b>Jalan Raya Senenan No. 16, Jepara, Indonesia</b></li><li><b>tel</b> dengan value <b>0062 (0) 291597781</b></li><li><b>fax</b> dengan value <b>0062 (0) 2915977841</b></li><li><b>beneficiary_no</b> dengan value <b>00 322 571 094</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('487', '::1', '', '2016-08-30 02:56:14', 'Mengupdate Bank Description:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>pimpinan</b> dengan value <b>RENSI EKA PRATISTYA</b></li><li><b>beneficiary_bank</b> dengan value <b>BNI 46, Jepara Branch</b></li><li><b>bank_add</b> dengan value <b>Jalan Pemuda No. 11A, Jepara</b></li><li><b>swift_code</b> dengan value <b>BNINIDJAJPR</b></li><li><b>beneficiary</b> dengan value <b>Djuniadi QQ CV. Allure Industries FURNITURE</b></li><li><b>address</b> dengan value <b>Jalan Raya Senenan No. 16, Jepara, Indonesia</b></li><li><b>tel</b> dengan value <b>0062 (0) 291597781</b></li><li><b>fax</b> dengan value <b>0062 (0) 2915977841</b></li><li><b>beneficiary_no</b> dengan value <b>00 322 571 0941</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('488', '::1', '', '2016-08-30 02:56:54', 'Logout CV. Allure Industries by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('489', '::1', '', '2016-08-30 16:56:56', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('490', '::1', '', '2016-08-30 17:53:56', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2112</b></li><li><b>nama</b> dengan value <b>high table</b></li><li><b>size</b> dengan value <b>98x123x11</b></li><li><b>gambar</b> dengan value <b>files/2016/08/453825d54a2fdee61f7d7421f8f15fbc.jpg</b></li><li><b>currency</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>packing_l</b> dengan value <b>3</b></li><li><b>packing_w</b> dengan value <b>3</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>3</b></li><li><b>weight_gw</b> dengan value <b>kosong</b></li><li><b>buyer_art</b> dengan value <b>3</b></li><li><b>buyer_po</b> dengan value <b>33</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('491', '::1', '', '2016-08-30 17:54:34', 'Menambah Master produk dengan data sbb:<br />\r\n                    <ul><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>9990</b></li><li><b>nama</b> dengan value <b>hi</b></li><li><b>size</b> dengan value <b>j</b></li><li><b>gambar</b> dengan value <b>files/2016/08/2ba82b1c832ed8d2a0f1b0112283c69f.JPG</b></li><li><b>currency</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>3</b></li><li><b>status</b> dengan value <b>2</b></li><li><b>packing_l</b> dengan value <b>3</b></li><li><b>packing_w</b> dengan value <b>3</b></li><li><b>packing_h</b> dengan value <b>3</b></li><li><b>weight_nw</b> dengan value <b>3</b></li><li><b>weight_gw</b> dengan value <b>3</b></li><li><b>buyer_art</b> dengan value <b>3</b></li><li><b>buyer_po</b> dengan value <b>kosong</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('492', '::1', '', '2016-08-31 13:08:14', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('493', '::1', '', '2016-08-31 13:21:05', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>003/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>4</b></li><li><b>tgl</b> dengan value <b>2016-08-31</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-07</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('494', '::1', '', '2016-08-31 13:26:11', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>004/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-31</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-08</b></li><li><b>pembayaran</b> dengan value <b>3</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('495', '::1', '', '2016-08-31 13:29:49', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>003/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>11</b></li><li><b>qty</b> dengan value <b>6</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>ji</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('496', '::1', '', '2016-08-31 13:30:00', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>003/kalingga/08/2016</b></li><li><b>id_produk</b> dengan value <b>13</b></li><li><b>qty</b> dengan value <b>7</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>ji</b></li><li><b>id</b> dengan value <b>6</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('497', '::1', '', '2016-08-31 13:30:24', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>003/kalingga/08/2016</b></li><li><b>dp</b> dengan value <b>90</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('498', '::1', '', '2016-08-31 14:44:29', 'Menambah production dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_production</b> dengan value <b>001/product/2016</b></li><li><b>start</b> dengan value <b>2016-08-31</b></li><li><b>finish</b> dengan value <b>2016-09-08</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('499', '::1', '', '2016-08-31 14:49:21', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>note</b> dengan value <b>rempong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('500', '::1', '', '2016-08-31 14:52:32', 'Menghapus production Detail dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('501', '::1', '', '2016-08-31 14:53:00', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>20</b></li><li><b>note</b> dengan value <b>rempong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('502', '::1', '', '2016-08-31 15:21:59', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>4</b></li><li><b>note</b> dengan value <b>mo</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('503', '::1', '', '2016-08-31 17:27:33', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/08/2016</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2016-08-31</b></li><li><b>tgl_pengiriman</b> dengan value <b>2016-09-24</b></li><li><b>fsc_cert</b> dengan value <b>30HAN 0045</b></li><li><b>fsc_lisence</b> dengan value <b>78LI 7819 1</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('504', '::1', '', '2016-08-31 17:28:00', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('505', '::1', '', '2016-08-31 17:28:10', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('506', '::1', '', '2016-08-31 17:28:19', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('507', '::1', '', '2016-08-31 17:28:27', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('508', '::1', '', '2016-08-31 17:28:36', 'Menambah Invoice detail dengan data sbb:<br />\r\n                    <ul><li><b>id_invoice</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>grade</b> dengan value <b>A</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('509', '::1', '', '2016-08-31 17:29:05', 'Menambah DownPayment Invoice dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>500</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('510', '::1', '', '2016-08-31 17:32:09', 'Menambah Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>S004</b></li><li><b>nama</b> dengan value <b>JATI AYU</b></li><li><b>telepon</b> dengan value <b>09830</b></li><li><b>alamat</b> dengan value <b>Jl. Raya Jepara Senenan</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('511', '::1', '', '2016-08-31 17:32:19', 'Mengedit Master supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>S004</b></li><li><b>nama</b> dengan value <b>Jati Ayu</b></li><li><b>telepon</b> dengan value <b>09830</b></li><li><b>alamat</b> dengan value <b>Jl. Raya Jepara Senenan</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('512', '::1', '', '2016-08-31 17:32:54', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>S004/supp/2016</b></li><li><b>id_supplier</b> dengan value <b>4</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('513', '::1', '', '2016-08-31 17:33:45', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('514', '::1', '', '2016-08-31 17:34:10', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('515', '::1', '', '2016-08-31 17:34:32', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>harga</b> dengan value <b>55000</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('516', '::1', '', '2016-08-31 17:34:44', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>harga</b> dengan value <b>70000</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('517', '::1', '', '2016-08-31 17:35:01', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>note</b> dengan value <b>good</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('518', '::1', '', '2016-08-31 17:35:12', 'Menambah DownPayment pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>dp</b> dengan value <b>1000000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('519', '::1', '', '2016-08-31 17:41:32', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>blablablablabla blablablablabla blablablablabla blablablablabla blablablabla</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('520', '::1', '', '2016-08-31 17:41:51', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>gopotagopotagopotagopota gopotagopotagopota gopotagopota gopota gopotagopota gopota</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('521', '::1', '', '2016-08-31 17:42:06', 'Menambah Ketentuan Supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>ketentuan</b> dengan value <b>laiskelaiskelaiskelaiske laiskelaiske laiskelaiskelaiske laiskelaiske laiske</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('522', '::1', '', '2016-08-31 17:44:41', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>S002/supp/2019</b></li><li><b>id_supplier</b> dengan value <b>2</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('523', '::1', '', '2016-08-31 17:44:53', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>6</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('524', '::1', '', '2016-08-31 17:45:12', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>7</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('525', '::1', '', '2016-08-31 17:45:25', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>8</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('526', '::1', '', '2016-08-31 17:45:36', 'Menambah DownPayment pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>dp</b> dengan value <b>200000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('527', '::1', '', '2016-08-31 17:46:03', 'Menambah Purchasing pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_supplier</b> dengan value <b>S003/sipp/090</b></li><li><b>id_supplier</b> dengan value <b>3</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('528', '::1', '', '2016-08-31 17:46:13', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>9</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('529', '::1', '', '2016-08-31 17:46:29', 'Menambah pembelian_supplier detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pembelian</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-08-31</b></li><li><b>id</b> dengan value <b>10</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('530', '::1', '', '2016-08-31 17:46:34', 'Menambah DownPayment pembelian_supplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>dp</b> dengan value <b>200000</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('531', '::1', '', '2016-09-01 02:00:15', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('532', '::1', '', '2016-09-01 02:11:49', 'Menambah production dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>pi_production</b> dengan value <b>pro/soo/1203</b></li><li><b>start</b> dengan value <b>2016-09-01</b></li><li><b>finish</b> dengan value <b>2016-10-06</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('533', '::1', '', '2016-09-01 02:12:04', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('534', '::1', '', '2016-09-01 02:12:12', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>2</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('535', '::1', '', '2016-09-01 02:12:20', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>3</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('536', '::1', '', '2016-09-01 02:12:30', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>4</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('537', '::1', '', '2016-09-01 02:12:39', 'Menambah production detail dengan data sbb:<br />\r\n                    <ul><li><b>id_production</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>5</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('538', '::1', '', '2016-09-01 02:13:14', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('539', '::1', '', '2016-09-01 02:13:22', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('540', '::1', '', '2016-09-01 02:13:28', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('541', '::1', '', '2016-09-01 02:13:35', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('542', '::1', '', '2016-09-01 02:13:44', 'Menambah Stok Produksi Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('543', '::1', '', '2016-09-01 02:31:46', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('544', '::1', '', '2016-09-01 02:31:56', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('545', '::1', '', '2016-09-01 02:32:06', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('546', '::1', '', '2016-09-01 02:32:16', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('547', '::1', '', '2016-09-01 02:32:24', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>10</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('548', '::1', '', '2016-09-01 02:33:13', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('549', '::1', '', '2016-09-01 02:33:21', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>3</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('550', '::1', '', '2016-09-01 02:33:30', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>2</b></li><li><b>id_produk</b> dengan value <b>4</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('551', '::1', '', '2016-09-01 02:34:04', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>6</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('552', '::1', '', '2016-09-01 02:34:11', 'Menambah Stok Supplier Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>is_supplier</b> dengan value <b>1</b></li><li><b>id_pi_supplier</b> dengan value <b>3</b></li><li><b>id_produk</b> dengan value <b>7</b></li><li><b>qty</b> dengan value <b>5</b></li><li><b>note</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>1</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('553', '::1', '', '2016-09-01 09:15:18', 'Login  by Jihan Ali Ahmad', 'admin');
INSERT INTO `cms_log` VALUES ('554', '::1', '', '2016-09-01 09:21:02', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>kosong</b></li><li><b>tod</b> dengan value <b>ship</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-15</b></li><li><b>container_nr</b> dengan value <b>314424</b></li><li><b>seal_nr</b> dengan value <b>2432422</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('555', '::1', '', '2016-09-01 09:22:34', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>tod</b> dengan value <b>dsfs</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-01</b></li><li><b>container_nr</b> dengan value <b>4232r</b></li><li><b>seal_nr</b> dengan value <b>42231</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('556', '::1', '', '2016-09-01 09:25:39', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>tod</b> dengan value <b>ship</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-16</b></li><li><b>container_nr</b> dengan value <b>34r3</b></li><li><b>seal_nr</b> dengan value <b>rwreff</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('557', '::1', '', '2016-09-01 09:28:09', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>tod</b> dengan value <b>32434</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-01</b></li><li><b>container_nr</b> dengan value <b>342424</b></li><li><b>seal_nr</b> dengan value <b>4444</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('558', '::1', '', '2016-09-01 09:28:39', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>tod</b> dengan value <b>2242</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-01</b></li><li><b>container_nr</b> dengan value <b>wdfcfsfs</b></li><li><b>seal_nr</b> dengan value <b>vreve</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('559', '::1', '', '2016-09-01 09:31:15', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>tod</b> dengan value <b>e2342</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-01</b></li><li><b>container_nr</b> dengan value <b>3422</b></li><li><b>seal_nr</b> dengan value <b>242</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('560', '::1', '', '2016-09-01 09:31:35', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>15</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>note</b> dengan value <b>goood</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('561', '::1', '', '2016-09-01 09:38:14', 'Menambah Pengiriman Barang dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>tod</b> dengan value <b>123</b></li><li><b>stuffing_date</b> dengan value <b>2016-09-01</b></li><li><b>container_nr</b> dengan value <b>12311</b></li><li><b>seal_nr</b> dengan value <b>2233</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');
INSERT INTO `cms_log` VALUES ('562', '::1', '', '2016-09-01 09:39:06', 'Menambah Pengiriman Barang Detail dengan data sbb:<br />\r\n                    <ul><li><b>id_pi</b> dengan value <b>1</b></li><li><b>id_produk</b> dengan value <b>2</b></li><li><b>qty</b> dengan value <b>30</b></li><li><b>date</b> dengan value <b>2016-09-01</b></li><li><b>note</b> dengan value <b>goof</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'admin');

-- ----------------------------
-- Table structure for `cms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('3', 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', '1', '7', '1');
INSERT INTO `cms_menu` VALUES ('89', 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', '1', '1', '3');
INSERT INTO `cms_menu` VALUES ('35', 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', '1', '1', '3');
INSERT INTO `cms_menu` VALUES ('114', 'stok_produksi', 'Stock Production', '-', '+1+2+', 'klg/stok_produksi', '1', '5', '17');
INSERT INTO `cms_menu` VALUES ('88', 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', '1', '1', '3');
INSERT INTO `cms_menu` VALUES ('117', 'pengiriman_barang', 'Sending Product', '-', '+1+2+3+', 'klg/pengiriman_barang', '1', '9', '101');
INSERT INTO `cms_menu` VALUES ('109', 'produk_s', 'Standart Product', '-', '+1+2+', 'master/produk_s', '1', '5', '16');
INSERT INTO `cms_menu` VALUES ('102', 'log', 'Log System', 'Log System', '+1+', 'cms/catatan/catat', '1', '2', '1');
INSERT INTO `cms_menu` VALUES ('116', 'outstanding', 'Outstanding Product', '-', '+1+2+', 'klg/outstanding', '1', '8', '17');
INSERT INTO `cms_menu` VALUES ('115', 'stok_supplier', 'Stock Supplier', '-', '+1+2+', 'klg/stok_supplier', '1', '6', '17');
INSERT INTO `cms_menu` VALUES ('113', 'user', 'user', '-', '+1+2+', 'cms/user', '1', '3', '1');
INSERT INTO `cms_menu` VALUES ('110', 'invoice', 'Purchasing Invoice', '-', '+1+2+3+', 'klg/invoice', '1', '2', '101');
INSERT INTO `cms_menu` VALUES ('112', 'pembelian_supplier', 'Buy to Supplier', '-', '+1+2+', 'klg/pembelian_supplier', '1', '4', '101');
INSERT INTO `cms_menu` VALUES ('104', 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', '1', '1', '101');
INSERT INTO `cms_menu` VALUES ('106', 'buyer', 'Buyer', 'Buyer', '+1+2+', 'master/buyer', '1', '1', '16');
INSERT INTO `cms_menu` VALUES ('107', 'supplier', 'Supplier', '-', '+1+2+', 'master/supplier', '1', '2', '16');
INSERT INTO `cms_menu` VALUES ('108', 'produk', 'Special Product', '-', '+1+2+', 'master/produk', '1', '3', '16');
INSERT INTO `cms_menu` VALUES ('118', 'production', 'Production', '-', '+1+2+', 'klg/production', '1', '4', '101');
INSERT INTO `cms_menu` VALUES ('119', 'bank', 'Bank Description', 'bank', '+1+2+', 'master/bank', '1', '5', '16');

-- ----------------------------
-- Table structure for `cms_menu_grup`
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu_grup`;
CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_grup_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cms_menu_grup
-- ----------------------------
INSERT INTO `cms_menu_grup` VALUES ('3', 'Hidden Menu', null);
INSERT INTO `cms_menu_grup` VALUES ('1', 'Manajemen', 'fa fa-fw fa-book');
INSERT INTO `cms_menu_grup` VALUES ('16', 'Master', 'fa fa-fw fa-archive');
INSERT INTO `cms_menu_grup` VALUES ('101', 'Dashboard', 'fa fa-dashboard');
INSERT INTO `cms_menu_grup` VALUES ('17', 'Outstanding', 'fa fa-fw fa-book');

-- ----------------------------
-- Table structure for `cms_online`
-- ----------------------------
DROP TABLE IF EXISTS `cms_online`;
CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms_online
-- ----------------------------
INSERT INTO `cms_online` VALUES ('2', '');
INSERT INTO `cms_online` VALUES ('3', '');

-- ----------------------------
-- Table structure for `cms_user`
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` text,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('1', 'Jihan Ali Ahmad', 'files/2016/08/f14a6a388d0c650d89a041aab56db995.jpg', 'admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', '1', '08799000', 'Jl. Diponegoro no 9', '2016-09-01 09:15:18');
INSERT INTO `cms_user` VALUES ('2', 'Dessy Damayanti', 'files/2016/08/c2fcb75559838302f03adb01dd96fde0.jpg', 'dessy', '*65003962C8943CDA29E3332631118217CFB0A08B', '1', '123', 'qqweryy', '2016-08-07 04:28:31');
INSERT INTO `cms_user` VALUES ('3', 'user', 'files/2016/08/123c1b3890fd94747c6131a245accd6b.png', 'user', '*D5D9F81F5542DE067FFF5FF7A4CA4BDD322C578F', '3', '9090', 'ooook', '2016-08-27 12:24:13');

-- ----------------------------
-- Table structure for `data_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `data_invoice`;
CREATE TABLE `data_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pi` varchar(100) DEFAULT NULL,
  `id_buyer` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `tgl_pengiriman` date DEFAULT NULL,
  `dp` double DEFAULT '0',
  `pembayaran` int(11) DEFAULT NULL COMMENT '1:T/T , 2:L/C, 3:Cash',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status_ps` int(11) DEFAULT '1' COMMENT 'status pembelian supplier 1=''blm_beli''; 2=''sudah_beli',
  `status_smp` int(11) DEFAULT '1' COMMENT 'status stok masuk produksi: 1:''blm produksi'' ; 2:''sudah produksi''',
  `status_sms` int(11) DEFAULT '1' COMMENT 'status stok masuk supplier: 1:''blm stok'' ; 2:''sudah stok''',
  `status_p` int(11) DEFAULT '1',
  `fsc_cert` varchar(30) DEFAULT NULL,
  `fsc_lisence` varchar(30) DEFAULT NULL,
  `buyer_po_nr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_invoice
-- ----------------------------
INSERT INTO `data_invoice` VALUES ('1', '001/kalingga/08/2016', '1', '2016-08-31', '2016-09-24', '500', '2', '2016-08-31 22:27:33', '2', '2', '1', '2', '30HAN 0045', '78LI 7819 1', '3414');

-- ----------------------------
-- Table structure for `data_invoice_detail`
-- ----------------------------
DROP TABLE IF EXISTS `data_invoice_detail`;
CREATE TABLE `data_invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_invoice_detail
-- ----------------------------
INSERT INTO `data_invoice_detail` VALUES ('1', '1', '2', '30', 'A', '');
INSERT INTO `data_invoice_detail` VALUES ('2', '1', '3', '30', 'A', '');
INSERT INTO `data_invoice_detail` VALUES ('3', '1', '4', '30', 'A', '');
INSERT INTO `data_invoice_detail` VALUES ('4', '1', '6', '30', 'A', '');
INSERT INTO `data_invoice_detail` VALUES ('5', '1', '7', '30', 'A', '');

-- ----------------------------
-- Table structure for `data_outstanding`
-- ----------------------------
DROP TABLE IF EXISTS `data_outstanding`;
CREATE TABLE `data_outstanding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi` int(11) DEFAULT NULL,
  `is_supplier` int(11) DEFAULT '1' COMMENT '1: supplier 2: produksi',
  `id_pi_supplier` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `note` text,
  `status` int(11) DEFAULT NULL COMMENT '1: masuk ; 2: keluar',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_outstanding
-- ----------------------------
INSERT INTO `data_outstanding` VALUES ('1', '1', '2', null, '2', '15', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('2', '1', '2', null, '3', '15', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('3', '1', '2', null, '4', '15', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('4', '1', '2', null, '6', '15', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('5', '1', '2', null, '7', '15', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('6', '1', '1', '1', '2', '10', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('7', '1', '1', '1', '3', '10', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('8', '1', '1', '1', '4', '10', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('9', '1', '1', '1', '6', '10', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('10', '1', '1', '1', '7', '10', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('11', '1', '1', '2', '2', '5', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('12', '1', '1', '2', '3', '5', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('13', '1', '1', '2', '4', '5', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('14', '1', '1', '3', '6', '5', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('15', '1', '1', '3', '7', '5', '', '1', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('16', '1', '2', null, '2', '15', 'goood', '2', '2016-09-01');
INSERT INTO `data_outstanding` VALUES ('17', '1', '2', null, '2', '30', 'goof', '2', '2016-09-01');

-- ----------------------------
-- Table structure for `data_pembelian`
-- ----------------------------
DROP TABLE IF EXISTS `data_pembelian`;
CREATE TABLE `data_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi` int(11) DEFAULT NULL,
  `pi_supplier` varchar(100) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `dp` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_pembelian
-- ----------------------------
INSERT INTO `data_pembelian` VALUES ('1', '1', 'S004/supp/2016', '4', '1000000', '2016-08-31');
INSERT INTO `data_pembelian` VALUES ('2', '1', 'S002/supp/2019', '2', '200000', '2016-08-31');
INSERT INTO `data_pembelian` VALUES ('3', '1', 'S003/sipp/090', '3', '200000', '2016-08-31');

-- ----------------------------
-- Table structure for `data_pembelian_detail`
-- ----------------------------
DROP TABLE IF EXISTS `data_pembelian_detail`;
CREATE TABLE `data_pembelian_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_pembelian_detail
-- ----------------------------
INSERT INTO `data_pembelian_detail` VALUES ('1', '1', '2', '50000', '10', '2016-08-31', 'good');
INSERT INTO `data_pembelian_detail` VALUES ('2', '1', '3', '60000', '10', '2016-08-31', 'good');
INSERT INTO `data_pembelian_detail` VALUES ('3', '1', '4', '55000', '10', '2016-08-31', 'good');
INSERT INTO `data_pembelian_detail` VALUES ('4', '1', '6', '70000', '10', '2016-08-31', 'good');
INSERT INTO `data_pembelian_detail` VALUES ('5', '1', '7', '60000', '10', '2016-08-31', 'good');
INSERT INTO `data_pembelian_detail` VALUES ('6', '2', '2', '50000', '5', '2016-08-31', '');
INSERT INTO `data_pembelian_detail` VALUES ('7', '2', '3', '50000', '5', '2016-08-31', '');
INSERT INTO `data_pembelian_detail` VALUES ('8', '2', '4', '50000', '5', '2016-08-31', '');
INSERT INTO `data_pembelian_detail` VALUES ('9', '3', '6', '50000', '5', '2016-08-31', '');
INSERT INTO `data_pembelian_detail` VALUES ('10', '3', '7', '60000', '5', '2016-08-31', '');

-- ----------------------------
-- Table structure for `data_pembelian_ketentuan`
-- ----------------------------
DROP TABLE IF EXISTS `data_pembelian_ketentuan`;
CREATE TABLE `data_pembelian_ketentuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi_supplier` int(11) DEFAULT NULL,
  `ketentuan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_pembelian_ketentuan
-- ----------------------------
INSERT INTO `data_pembelian_ketentuan` VALUES ('1', '1', 'blablablablabla blablablablabla blablablablabla blablablablabla blablablabla');
INSERT INTO `data_pembelian_ketentuan` VALUES ('2', '1', 'gopotagopotagopotagopota gopotagopotagopota gopotagopota gopota gopotagopota gopota');
INSERT INTO `data_pembelian_ketentuan` VALUES ('3', '1', 'laiskelaiskelaiskelaiske laiskelaiske laiskelaiskelaiske laiskelaiske laiske');

-- ----------------------------
-- Table structure for `data_pengiriman`
-- ----------------------------
DROP TABLE IF EXISTS `data_pengiriman`;
CREATE TABLE `data_pengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi` int(11) DEFAULT NULL,
  `tod` varchar(50) DEFAULT NULL,
  `stuffing_date` date DEFAULT NULL,
  `container_nr` varchar(50) DEFAULT NULL,
  `seal_nr` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_pengiriman
-- ----------------------------
INSERT INTO `data_pengiriman` VALUES ('1', '1', '123', '2016-09-01', '12311', '2233', '2016-09-01');

-- ----------------------------
-- Table structure for `data_pengiriman_barang`
-- ----------------------------
DROP TABLE IF EXISTS `data_pengiriman_barang`;
CREATE TABLE `data_pengiriman_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_pengiriman_barang
-- ----------------------------
INSERT INTO `data_pengiriman_barang` VALUES ('1', '1', '2016-09-01', '2', '30', 'goof');

-- ----------------------------
-- Table structure for `data_production`
-- ----------------------------
DROP TABLE IF EXISTS `data_production`;
CREATE TABLE `data_production` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi` int(11) DEFAULT NULL,
  `pi_production` varchar(100) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `finish` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_production
-- ----------------------------
INSERT INTO `data_production` VALUES ('1', '1', 'pro/soo/1203', '2016-09-01', '2016-10-06', '2016-09-01');

-- ----------------------------
-- Table structure for `data_production_detail`
-- ----------------------------
DROP TABLE IF EXISTS `data_production_detail`;
CREATE TABLE `data_production_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_production` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_production_detail
-- ----------------------------
INSERT INTO `data_production_detail` VALUES ('1', '1', '2', '15', '2016-09-01', '');
INSERT INTO `data_production_detail` VALUES ('2', '1', '3', '15', '2016-09-01', '');
INSERT INTO `data_production_detail` VALUES ('3', '1', '4', '15', '2016-09-01', '');
INSERT INTO `data_production_detail` VALUES ('4', '1', '6', '15', '2016-09-01', '');
INSERT INTO `data_production_detail` VALUES ('5', '1', '7', '15', '2016-09-01', '');

-- ----------------------------
-- Table structure for `data_production_ketentuan`
-- ----------------------------
DROP TABLE IF EXISTS `data_production_ketentuan`;
CREATE TABLE `data_production_ketentuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pi_production` int(11) DEFAULT NULL,
  `ketentuan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_production_ketentuan
-- ----------------------------

-- ----------------------------
-- Table structure for `master_bank`
-- ----------------------------
DROP TABLE IF EXISTS `master_bank`;
CREATE TABLE `master_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pimpinan` text,
  `beneficiary_bank` text,
  `bank_add` text,
  `swift_code` text,
  `beneficiary` text,
  `address` text,
  `tel` text,
  `fax` text,
  `beneficiary_no` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_bank
-- ----------------------------
INSERT INTO `master_bank` VALUES ('1', 'RENSI EKA PRATISTYA', 'BNI 46, Jepara Branch', 'Jalan Pemuda No. 11A, Jepara', 'BNINIDJAJPR', 'Djuniadi QQ CV. Allure Industries FURNITURE', 'Jalan Raya Senenan No. 16, Jepara, Indonesia', '0062 (0) 291597781', '0062 (0) 2915977841', '00 322 571 0941');

-- ----------------------------
-- Table structure for `master_buyer`
-- ----------------------------
DROP TABLE IF EXISTS `master_buyer`;
CREATE TABLE `master_buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `negara` int(10) DEFAULT NULL,
  `alamat` text,
  `attn` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_buyer
-- ----------------------------
INSERT INTO `master_buyer` VALUES ('1', 'B001', 'Fontain', '21', 'M. André Dupont Rue du Cornet 6 B-4800 VERVIERS BELGIUM', 'Mr. Felix', '2131-33');
INSERT INTO `master_buyer` VALUES ('2', 'B002', 'Cruisant', '72', 'Fake Address Generator provide Belgium address generator', 'Mr. Lambert', '452435-3253');
INSERT INTO `master_buyer` VALUES ('3', 'B003', 'Matador', '202', 'St. Blanc Sinclair', 'Mr. Laurent', '234');
INSERT INTO `master_buyer` VALUES ('4', 'B004', 'Bleu', '72', 'paris', 'mr. duboir', '09383-33');

-- ----------------------------
-- Table structure for `master_currency`
-- ----------------------------
DROP TABLE IF EXISTS `master_currency`;
CREATE TABLE `master_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(10) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_currency
-- ----------------------------
INSERT INTO `master_currency` VALUES ('1', 'Rp.', 'IDR');
INSERT INTO `master_currency` VALUES ('2', '$', 'USD');
INSERT INTO `master_currency` VALUES ('3', '€', 'EUR');

-- ----------------------------
-- Table structure for `master_level`
-- ----------------------------
DROP TABLE IF EXISTS `master_level`;
CREATE TABLE `master_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_level
-- ----------------------------
INSERT INTO `master_level` VALUES ('1', 'Super Admin');
INSERT INTO `master_level` VALUES ('2', 'Admin');
INSERT INTO `master_level` VALUES ('3', 'Operator A');
INSERT INTO `master_level` VALUES ('4', 'Operator B');
INSERT INTO `master_level` VALUES ('5', 'Operator C');
INSERT INTO `master_level` VALUES ('6', 'Operator D');

-- ----------------------------
-- Table structure for `master_negara`
-- ----------------------------
DROP TABLE IF EXISTS `master_negara`;
CREATE TABLE `master_negara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_negara` varchar(2) NOT NULL DEFAULT '',
  `nama_negara` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_negara
-- ----------------------------
INSERT INTO `master_negara` VALUES ('1', 'AF', 'Afghanistan');
INSERT INTO `master_negara` VALUES ('2', 'AL', 'Albania');
INSERT INTO `master_negara` VALUES ('3', 'DZ', 'Algeria');
INSERT INTO `master_negara` VALUES ('4', 'DS', 'American Samoa');
INSERT INTO `master_negara` VALUES ('5', 'AD', 'Andorra');
INSERT INTO `master_negara` VALUES ('6', 'AO', 'Angola');
INSERT INTO `master_negara` VALUES ('7', 'AI', 'Anguilla');
INSERT INTO `master_negara` VALUES ('8', 'AQ', 'Antarctica');
INSERT INTO `master_negara` VALUES ('9', 'AG', 'Antigua and/or Barbuda');
INSERT INTO `master_negara` VALUES ('10', 'AR', 'Argentina');
INSERT INTO `master_negara` VALUES ('11', 'AM', 'Armenia');
INSERT INTO `master_negara` VALUES ('12', 'AW', 'Aruba');
INSERT INTO `master_negara` VALUES ('13', 'AU', 'Australia');
INSERT INTO `master_negara` VALUES ('14', 'AT', 'Austria');
INSERT INTO `master_negara` VALUES ('15', 'AZ', 'Azerbaijan');
INSERT INTO `master_negara` VALUES ('16', 'BS', 'Bahamas');
INSERT INTO `master_negara` VALUES ('17', 'BH', 'Bahrain');
INSERT INTO `master_negara` VALUES ('18', 'BD', 'Bangladesh');
INSERT INTO `master_negara` VALUES ('19', 'BB', 'Barbados');
INSERT INTO `master_negara` VALUES ('20', 'BY', 'Belarus');
INSERT INTO `master_negara` VALUES ('21', 'BE', 'Belgium');
INSERT INTO `master_negara` VALUES ('22', 'BZ', 'Belize');
INSERT INTO `master_negara` VALUES ('23', 'BJ', 'Benin');
INSERT INTO `master_negara` VALUES ('24', 'BM', 'Bermuda');
INSERT INTO `master_negara` VALUES ('25', 'BT', 'Bhutan');
INSERT INTO `master_negara` VALUES ('26', 'BO', 'Bolivia');
INSERT INTO `master_negara` VALUES ('27', 'BA', 'Bosnia and Herzegovina');
INSERT INTO `master_negara` VALUES ('28', 'BW', 'Botswana');
INSERT INTO `master_negara` VALUES ('29', 'BV', 'Bouvet Island');
INSERT INTO `master_negara` VALUES ('30', 'BR', 'Brazil');
INSERT INTO `master_negara` VALUES ('31', 'IO', 'British Indian Ocean Territory');
INSERT INTO `master_negara` VALUES ('32', 'BN', 'Brunei Darussalam');
INSERT INTO `master_negara` VALUES ('33', 'BG', 'Bulgaria');
INSERT INTO `master_negara` VALUES ('34', 'BF', 'Burkina Faso');
INSERT INTO `master_negara` VALUES ('35', 'BI', 'Burundi');
INSERT INTO `master_negara` VALUES ('36', 'KH', 'Cambodia');
INSERT INTO `master_negara` VALUES ('37', 'CM', 'Cameroon');
INSERT INTO `master_negara` VALUES ('38', 'CA', 'Canada');
INSERT INTO `master_negara` VALUES ('39', 'CV', 'Cape Verde');
INSERT INTO `master_negara` VALUES ('40', 'KY', 'Cayman Islands');
INSERT INTO `master_negara` VALUES ('41', 'CF', 'Central African Republic');
INSERT INTO `master_negara` VALUES ('42', 'TD', 'Chad');
INSERT INTO `master_negara` VALUES ('43', 'CL', 'Chile');
INSERT INTO `master_negara` VALUES ('44', 'CN', 'China');
INSERT INTO `master_negara` VALUES ('45', 'CX', 'Christmas Island');
INSERT INTO `master_negara` VALUES ('46', 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `master_negara` VALUES ('47', 'CO', 'Colombia');
INSERT INTO `master_negara` VALUES ('48', 'KM', 'Comoros');
INSERT INTO `master_negara` VALUES ('49', 'CG', 'Congo');
INSERT INTO `master_negara` VALUES ('50', 'CK', 'Cook Islands');
INSERT INTO `master_negara` VALUES ('51', 'CR', 'Costa Rica');
INSERT INTO `master_negara` VALUES ('52', 'HR', 'Croatia (Hrvatska)');
INSERT INTO `master_negara` VALUES ('53', 'CU', 'Cuba');
INSERT INTO `master_negara` VALUES ('54', 'CY', 'Cyprus');
INSERT INTO `master_negara` VALUES ('55', 'CZ', 'Czech Republic');
INSERT INTO `master_negara` VALUES ('56', 'DK', 'Denmark');
INSERT INTO `master_negara` VALUES ('57', 'DJ', 'Djibouti');
INSERT INTO `master_negara` VALUES ('58', 'DM', 'Dominica');
INSERT INTO `master_negara` VALUES ('59', 'DO', 'Dominican Republic');
INSERT INTO `master_negara` VALUES ('60', 'TP', 'East Timor');
INSERT INTO `master_negara` VALUES ('61', 'EC', 'Ecuador');
INSERT INTO `master_negara` VALUES ('62', 'EG', 'Egypt');
INSERT INTO `master_negara` VALUES ('63', 'SV', 'El Salvador');
INSERT INTO `master_negara` VALUES ('64', 'GQ', 'Equatorial Guinea');
INSERT INTO `master_negara` VALUES ('65', 'ER', 'Eritrea');
INSERT INTO `master_negara` VALUES ('66', 'EE', 'Estonia');
INSERT INTO `master_negara` VALUES ('67', 'ET', 'Ethiopia');
INSERT INTO `master_negara` VALUES ('68', 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `master_negara` VALUES ('69', 'FO', 'Faroe Islands');
INSERT INTO `master_negara` VALUES ('70', 'FJ', 'Fiji');
INSERT INTO `master_negara` VALUES ('71', 'FI', 'Finland');
INSERT INTO `master_negara` VALUES ('72', 'FR', 'France');
INSERT INTO `master_negara` VALUES ('73', 'FX', 'France, Metropolitan');
INSERT INTO `master_negara` VALUES ('74', 'GF', 'French Guiana');
INSERT INTO `master_negara` VALUES ('75', 'PF', 'French Polynesia');
INSERT INTO `master_negara` VALUES ('76', 'TF', 'French Southern Territories');
INSERT INTO `master_negara` VALUES ('77', 'GA', 'Gabon');
INSERT INTO `master_negara` VALUES ('78', 'GM', 'Gambia');
INSERT INTO `master_negara` VALUES ('79', 'GE', 'Georgia');
INSERT INTO `master_negara` VALUES ('80', 'DE', 'Germany');
INSERT INTO `master_negara` VALUES ('81', 'GH', 'Ghana');
INSERT INTO `master_negara` VALUES ('82', 'GI', 'Gibraltar');
INSERT INTO `master_negara` VALUES ('83', 'GK', 'Guernsey');
INSERT INTO `master_negara` VALUES ('84', 'GR', 'Greece');
INSERT INTO `master_negara` VALUES ('85', 'GL', 'Greenland');
INSERT INTO `master_negara` VALUES ('86', 'GD', 'Grenada');
INSERT INTO `master_negara` VALUES ('87', 'GP', 'Guadeloupe');
INSERT INTO `master_negara` VALUES ('88', 'GU', 'Guam');
INSERT INTO `master_negara` VALUES ('89', 'GT', 'Guatemala');
INSERT INTO `master_negara` VALUES ('90', 'GN', 'Guinea');
INSERT INTO `master_negara` VALUES ('91', 'GW', 'Guinea-Bissau');
INSERT INTO `master_negara` VALUES ('92', 'GY', 'Guyana');
INSERT INTO `master_negara` VALUES ('93', 'HT', 'Haiti');
INSERT INTO `master_negara` VALUES ('94', 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `master_negara` VALUES ('95', 'HN', 'Honduras');
INSERT INTO `master_negara` VALUES ('96', 'HK', 'Hong Kong');
INSERT INTO `master_negara` VALUES ('97', 'HU', 'Hungary');
INSERT INTO `master_negara` VALUES ('98', 'IS', 'Iceland');
INSERT INTO `master_negara` VALUES ('99', 'IN', 'India');
INSERT INTO `master_negara` VALUES ('100', 'IM', 'Isle of Man');
INSERT INTO `master_negara` VALUES ('101', 'ID', 'Indonesia');
INSERT INTO `master_negara` VALUES ('102', 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `master_negara` VALUES ('103', 'IQ', 'Iraq');
INSERT INTO `master_negara` VALUES ('104', 'IE', 'Ireland');
INSERT INTO `master_negara` VALUES ('105', 'IL', 'Israel');
INSERT INTO `master_negara` VALUES ('106', 'IT', 'Italy');
INSERT INTO `master_negara` VALUES ('107', 'CI', 'Ivory Coast');
INSERT INTO `master_negara` VALUES ('108', 'JE', 'Jersey');
INSERT INTO `master_negara` VALUES ('109', 'JM', 'Jamaica');
INSERT INTO `master_negara` VALUES ('110', 'JP', 'Japan');
INSERT INTO `master_negara` VALUES ('111', 'JO', 'Jordan');
INSERT INTO `master_negara` VALUES ('112', 'KZ', 'Kazakhstan');
INSERT INTO `master_negara` VALUES ('113', 'KE', 'Kenya');
INSERT INTO `master_negara` VALUES ('114', 'KI', 'Kiribati');
INSERT INTO `master_negara` VALUES ('115', 'KP', 'Korea, Democratic People\'s Republic of');
INSERT INTO `master_negara` VALUES ('116', 'KR', 'Korea, Republic of');
INSERT INTO `master_negara` VALUES ('117', 'XK', 'Kosovo');
INSERT INTO `master_negara` VALUES ('118', 'KW', 'Kuwait');
INSERT INTO `master_negara` VALUES ('119', 'KG', 'Kyrgyzstan');
INSERT INTO `master_negara` VALUES ('120', 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `master_negara` VALUES ('121', 'LV', 'Latvia');
INSERT INTO `master_negara` VALUES ('122', 'LB', 'Lebanon');
INSERT INTO `master_negara` VALUES ('123', 'LS', 'Lesotho');
INSERT INTO `master_negara` VALUES ('124', 'LR', 'Liberia');
INSERT INTO `master_negara` VALUES ('125', 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `master_negara` VALUES ('126', 'LI', 'Liechtenstein');
INSERT INTO `master_negara` VALUES ('127', 'LT', 'Lithuania');
INSERT INTO `master_negara` VALUES ('128', 'LU', 'Luxembourg');
INSERT INTO `master_negara` VALUES ('129', 'MO', 'Macau');
INSERT INTO `master_negara` VALUES ('130', 'MK', 'Macedonia');
INSERT INTO `master_negara` VALUES ('131', 'MG', 'Madagascar');
INSERT INTO `master_negara` VALUES ('132', 'MW', 'Malawi');
INSERT INTO `master_negara` VALUES ('133', 'MY', 'Malaysia');
INSERT INTO `master_negara` VALUES ('134', 'MV', 'Maldives');
INSERT INTO `master_negara` VALUES ('135', 'ML', 'Mali');
INSERT INTO `master_negara` VALUES ('136', 'MT', 'Malta');
INSERT INTO `master_negara` VALUES ('137', 'MH', 'Marshall Islands');
INSERT INTO `master_negara` VALUES ('138', 'MQ', 'Martinique');
INSERT INTO `master_negara` VALUES ('139', 'MR', 'Mauritania');
INSERT INTO `master_negara` VALUES ('140', 'MU', 'Mauritius');
INSERT INTO `master_negara` VALUES ('141', 'TY', 'Mayotte');
INSERT INTO `master_negara` VALUES ('142', 'MX', 'Mexico');
INSERT INTO `master_negara` VALUES ('143', 'FM', 'Micronesia, Federated States of');
INSERT INTO `master_negara` VALUES ('144', 'MD', 'Moldova, Republic of');
INSERT INTO `master_negara` VALUES ('145', 'MC', 'Monaco');
INSERT INTO `master_negara` VALUES ('146', 'MN', 'Mongolia');
INSERT INTO `master_negara` VALUES ('147', 'ME', 'Montenegro');
INSERT INTO `master_negara` VALUES ('148', 'MS', 'Montserrat');
INSERT INTO `master_negara` VALUES ('149', 'MA', 'Morocco');
INSERT INTO `master_negara` VALUES ('150', 'MZ', 'Mozambique');
INSERT INTO `master_negara` VALUES ('151', 'MM', 'Myanmar');
INSERT INTO `master_negara` VALUES ('152', 'NA', 'Namibia');
INSERT INTO `master_negara` VALUES ('153', 'NR', 'Nauru');
INSERT INTO `master_negara` VALUES ('154', 'NP', 'Nepal');
INSERT INTO `master_negara` VALUES ('155', 'NL', 'Netherlands');
INSERT INTO `master_negara` VALUES ('156', 'AN', 'Netherlands Antilles');
INSERT INTO `master_negara` VALUES ('157', 'NC', 'New Caledonia');
INSERT INTO `master_negara` VALUES ('158', 'NZ', 'New Zealand');
INSERT INTO `master_negara` VALUES ('159', 'NI', 'Nicaragua');
INSERT INTO `master_negara` VALUES ('160', 'NE', 'Niger');
INSERT INTO `master_negara` VALUES ('161', 'NG', 'Nigeria');
INSERT INTO `master_negara` VALUES ('162', 'NU', 'Niue');
INSERT INTO `master_negara` VALUES ('163', 'NF', 'Norfolk Island');
INSERT INTO `master_negara` VALUES ('164', 'MP', 'Northern Mariana Islands');
INSERT INTO `master_negara` VALUES ('165', 'NO', 'Norway');
INSERT INTO `master_negara` VALUES ('166', 'OM', 'Oman');
INSERT INTO `master_negara` VALUES ('167', 'PK', 'Pakistan');
INSERT INTO `master_negara` VALUES ('168', 'PW', 'Palau');
INSERT INTO `master_negara` VALUES ('169', 'PS', 'Palestine');
INSERT INTO `master_negara` VALUES ('170', 'PA', 'Panama');
INSERT INTO `master_negara` VALUES ('171', 'PG', 'Papua New Guinea');
INSERT INTO `master_negara` VALUES ('172', 'PY', 'Paraguay');
INSERT INTO `master_negara` VALUES ('173', 'PE', 'Peru');
INSERT INTO `master_negara` VALUES ('174', 'PH', 'Philippines');
INSERT INTO `master_negara` VALUES ('175', 'PN', 'Pitcairn');
INSERT INTO `master_negara` VALUES ('176', 'PL', 'Poland');
INSERT INTO `master_negara` VALUES ('177', 'PT', 'Portugal');
INSERT INTO `master_negara` VALUES ('178', 'PR', 'Puerto Rico');
INSERT INTO `master_negara` VALUES ('179', 'QA', 'Qatar');
INSERT INTO `master_negara` VALUES ('180', 'RE', 'Reunion');
INSERT INTO `master_negara` VALUES ('181', 'RO', 'Romania');
INSERT INTO `master_negara` VALUES ('182', 'RU', 'Russian Federation');
INSERT INTO `master_negara` VALUES ('183', 'RW', 'Rwanda');
INSERT INTO `master_negara` VALUES ('184', 'KN', 'Saint Kitts and Nevis');
INSERT INTO `master_negara` VALUES ('185', 'LC', 'Saint Lucia');
INSERT INTO `master_negara` VALUES ('186', 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `master_negara` VALUES ('187', 'WS', 'Samoa');
INSERT INTO `master_negara` VALUES ('188', 'SM', 'San Marino');
INSERT INTO `master_negara` VALUES ('189', 'ST', 'Sao Tome and Principe');
INSERT INTO `master_negara` VALUES ('190', 'SA', 'Saudi Arabia');
INSERT INTO `master_negara` VALUES ('191', 'SN', 'Senegal');
INSERT INTO `master_negara` VALUES ('192', 'RS', 'Serbia');
INSERT INTO `master_negara` VALUES ('193', 'SC', 'Seychelles');
INSERT INTO `master_negara` VALUES ('194', 'SL', 'Sierra Leone');
INSERT INTO `master_negara` VALUES ('195', 'SG', 'Singapore');
INSERT INTO `master_negara` VALUES ('196', 'SK', 'Slovakia');
INSERT INTO `master_negara` VALUES ('197', 'SI', 'Slovenia');
INSERT INTO `master_negara` VALUES ('198', 'SB', 'Solomon Islands');
INSERT INTO `master_negara` VALUES ('199', 'SO', 'Somalia');
INSERT INTO `master_negara` VALUES ('200', 'ZA', 'South Africa');
INSERT INTO `master_negara` VALUES ('201', 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `master_negara` VALUES ('202', 'ES', 'Spain');
INSERT INTO `master_negara` VALUES ('203', 'LK', 'Sri Lanka');
INSERT INTO `master_negara` VALUES ('204', 'SH', 'St. Helena');
INSERT INTO `master_negara` VALUES ('205', 'PM', 'St. Pierre and Miquelon');
INSERT INTO `master_negara` VALUES ('206', 'SD', 'Sudan');
INSERT INTO `master_negara` VALUES ('207', 'SR', 'Suriname');
INSERT INTO `master_negara` VALUES ('208', 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `master_negara` VALUES ('209', 'SZ', 'Swaziland');
INSERT INTO `master_negara` VALUES ('210', 'SE', 'Sweden');
INSERT INTO `master_negara` VALUES ('211', 'CH', 'Switzerland');
INSERT INTO `master_negara` VALUES ('212', 'SY', 'Syrian Arab Republic');
INSERT INTO `master_negara` VALUES ('213', 'TW', 'Taiwan');
INSERT INTO `master_negara` VALUES ('214', 'TJ', 'Tajikistan');
INSERT INTO `master_negara` VALUES ('215', 'TZ', 'Tanzania, United Republic of');
INSERT INTO `master_negara` VALUES ('216', 'TH', 'Thailand');
INSERT INTO `master_negara` VALUES ('217', 'TG', 'Togo');
INSERT INTO `master_negara` VALUES ('218', 'TK', 'Tokelau');
INSERT INTO `master_negara` VALUES ('219', 'TO', 'Tonga');
INSERT INTO `master_negara` VALUES ('220', 'TT', 'Trinidad and Tobago');
INSERT INTO `master_negara` VALUES ('221', 'TN', 'Tunisia');
INSERT INTO `master_negara` VALUES ('222', 'TR', 'Turkey');
INSERT INTO `master_negara` VALUES ('223', 'TM', 'Turkmenistan');
INSERT INTO `master_negara` VALUES ('224', 'TC', 'Turks and Caicos Islands');
INSERT INTO `master_negara` VALUES ('225', 'TV', 'Tuvalu');
INSERT INTO `master_negara` VALUES ('226', 'UG', 'Uganda');
INSERT INTO `master_negara` VALUES ('227', 'UA', 'Ukraine');
INSERT INTO `master_negara` VALUES ('228', 'AE', 'United Arab Emirates');
INSERT INTO `master_negara` VALUES ('229', 'GB', 'United Kingdom');
INSERT INTO `master_negara` VALUES ('230', 'US', 'United States');
INSERT INTO `master_negara` VALUES ('231', 'UM', 'United States minor outlying islands');
INSERT INTO `master_negara` VALUES ('232', 'UY', 'Uruguay');
INSERT INTO `master_negara` VALUES ('233', 'UZ', 'Uzbekistan');
INSERT INTO `master_negara` VALUES ('234', 'VU', 'Vanuatu');
INSERT INTO `master_negara` VALUES ('235', 'VA', 'Vatican City State');
INSERT INTO `master_negara` VALUES ('236', 'VE', 'Venezuela');
INSERT INTO `master_negara` VALUES ('237', 'VN', 'Vietnam');
INSERT INTO `master_negara` VALUES ('238', 'VG', 'Virgin Islands (British)');
INSERT INTO `master_negara` VALUES ('239', 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `master_negara` VALUES ('240', 'WF', 'Wallis and Futuna Islands');
INSERT INTO `master_negara` VALUES ('241', 'EH', 'Western Sahara');
INSERT INTO `master_negara` VALUES ('242', 'YE', 'Yemen');
INSERT INTO `master_negara` VALUES ('243', 'YU', 'Yugoslavia');
INSERT INTO `master_negara` VALUES ('244', 'ZR', 'Zaire');
INSERT INTO `master_negara` VALUES ('245', 'ZM', 'Zambia');
INSERT INTO `master_negara` VALUES ('246', 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for `master_produk`
-- ----------------------------
DROP TABLE IF EXISTS `master_produk`;
CREATE TABLE `master_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buyer` int(11) DEFAULT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL COMMENT '1:rupiah; 2:dollar',
  `harga` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=spesial, 2=standart',
  `packing_l` varchar(10) DEFAULT NULL,
  `packing_w` varchar(10) DEFAULT NULL,
  `packing_h` varchar(10) DEFAULT NULL,
  `weight_nw` varchar(10) DEFAULT NULL,
  `weight_gw` varchar(10) DEFAULT NULL,
  `buyer_art` varchar(10) DEFAULT NULL,
  `buyer_po` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_produk
-- ----------------------------
INSERT INTO `master_produk` VALUES ('1', '2', '001', 'Table gold', '22x22x100', 'files/2016/08/bc9b781178372f483c5f7f4e1d010e32.jpg', '1', '200000', '1', '12', '12', '12', '12', '11', '12', '12');
INSERT INTO `master_produk` VALUES ('2', '1', '0012', 'Chair Silver', '22x10x34', 'files/2016/08/8149539de67fb6f1b3266e44e48779fc.JPG', '2', '20', '1', '12', '12', '11', '11', '11', '11', '11');
INSERT INTO `master_produk` VALUES ('3', '1', 'c001', 'table', '22x10x34', 'files/2016/08/57d0574a4f7071540102af76018e1709.jpg', '2', '11', '2', '12', '11', '11', '11', '11', '11', '11');
INSERT INTO `master_produk` VALUES ('4', '1', 'vb001', 'super chair', '22x22x44', 'files/2016/08/35fe7526650d144074cfd2d0a87d88f5.png', '2', '60', '1', '11', '11', '11', '11', '11', '11', '11');
INSERT INTO `master_produk` VALUES ('5', '2', 'wswswdwd', 'wswssw', 'wswswsw', 'files/2016/08/74ad446972cc9f7832740e5e0dc3185e.jpg', '3', '40000', '2', '11', '11', '11', '11', '11', '11', '11');
INSERT INTO `master_produk` VALUES ('6', '1', 'hiert', 'Max Chair', '22x10x34', 'files/2016/08/7d2c67fc29602fa27d96133f13d20122.jpg', '2', '90', '1', '11', '11', '11', '11', '11', '11', '11');
INSERT INTO `master_produk` VALUES ('7', '1', 'max001', 'max', '22x22x44', 'files/2016/08/4c866600087624a99eac9bcb2675ce9f.jpg', '2', '20', '1', '11', '11', '11', '11', '11', '11', '11');
INSERT INTO `master_produk` VALUES ('8', '1', '002', 'hi deck', '22x10x34', 'files/2016/08/079c806f67d96ecededf2c39e60b5ac2.JPG', '2', '200', '1', '12', '13', '14', '12', '12', '12', '12');
INSERT INTO `master_produk` VALUES ('9', '2', '003', '123', '23', 'files/2016/08/292d375b80ee74181dfd9feb0fab3e47.JPG', '2', '30', '1', '22', '22', '22', '44', '44', 'opo', 'opo');
INSERT INTO `master_produk` VALUES ('10', '2', 's001', 'jihan', '9009', 'files/2016/08/543774aea826531eef7bcefcbbcf9c25.JPG', '2', '10000', '2', '1', '2', '3', '1', '3', 'q', '9');
INSERT INTO `master_produk` VALUES ('11', '4', '004', 'Gold Chair', '22x10x34', 'files/2016/08/345aa5b30fb805f7407e99c1b21edfee.JPG', '2', '50', '1', '110', '40', '30', '40', '50', 'coba', 'coba');
INSERT INTO `master_produk` VALUES ('12', '1', 'P001', 'Triangle Chair', '22x11x23', 'files/2016/08/a2db873a48e06dccff7f629841d9f24e.JPG', '2', '20', '1', '110', '50', '60', '20', '30', 'jijiji', 'jijii');
INSERT INTO `master_produk` VALUES ('13', '4', 'uuu1', 'Grand Table', '21x12x34', 'files/2016/08/9acbdca1a9555306d282503e14d35215.jpg', '3', '40', '1', '78', '78', '89', '89', '878', 'huhu', 'uhuh');
INSERT INTO `master_produk` VALUES ('14', '1', '009', 'Standart Charter', '24r23', 'files/2016/08/01cee01f7bbdf38937850c7d5413b40e.JPG', '3', '20', '2', '38', '8', '8', '8', '8', 'hu', 'hu');
INSERT INTO `master_produk` VALUES ('15', '1', '2112', 'high table', '98x123x11', 'files/2016/08/453825d54a2fdee61f7d7421f8f15fbc.jpg', '2', '10', '1', '3', '3', '3', '3', '', '3', '33');
INSERT INTO `master_produk` VALUES ('16', '1', '9990', 'hi', 'j', 'files/2016/08/2ba82b1c832ed8d2a0f1b0112283c69f.JPG', '3', '3', '2', '3', '3', '3', '3', '3', '3', '');

-- ----------------------------
-- Table structure for `master_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `master_supplier`;
CREATE TABLE `master_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_supplier
-- ----------------------------
INSERT INTO `master_supplier` VALUES ('1', 'S001', 'Maju Sakti Meubel', 'Jl. Pengkol Jepara', '021 8901 900');
INSERT INTO `master_supplier` VALUES ('2', 'S002', 'Semar Mandiri Meubel', 'jalan pegangsaaan timur nomor 1', '021 - 4119445');
INSERT INTO `master_supplier` VALUES ('3', 'S003', 'Manunggal Jati', 'jepara', '898393-393');
INSERT INTO `master_supplier` VALUES ('4', 'S004', 'Jati Ayu', 'Jl. Raya Jepara Senenan', '09830');

-- ----------------------------
-- Table structure for `master_user`
-- ----------------------------
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE `master_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_user
-- ----------------------------
INSERT INTO `master_user` VALUES ('2', 'jihan', '1');
