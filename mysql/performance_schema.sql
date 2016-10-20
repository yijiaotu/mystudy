/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : performance_schema

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-10-18 20:43:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL comment '用户',
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL comment '主机',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL comment '当前连接数',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL comment '总的连接数'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cond_instances
-- ----------------------------
DROP TABLE IF EXISTS `cond_instances`;
CREATE TABLE `cond_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_current
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_current`;
CREATE TABLE `events_stages_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL,
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_history
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_history`;
CREATE TABLE `events_stages_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL,
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_history_long
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_history_long`;
CREATE TABLE `events_stages_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `WORK_COMPLETED` bigint(20) unsigned DEFAULT NULL,
  `WORK_ESTIMATED` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_summary_by_account_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_summary_by_account_by_event_name`;
CREATE TABLE `events_stages_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_summary_by_host_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_summary_by_host_by_event_name`;
CREATE TABLE `events_stages_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_summary_by_thread_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_summary_by_thread_by_event_name`;
CREATE TABLE `events_stages_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_summary_by_user_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_summary_by_user_by_event_name`;
CREATE TABLE `events_stages_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_stages_summary_global_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_stages_summary_global_by_event_name`;
CREATE TABLE `events_stages_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_current
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_current`;
CREATE TABLE `events_statements_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SQL_TEXT` longtext,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) unsigned NOT NULL,
  `WARNINGS` bigint(20) unsigned NOT NULL,
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `ROWS_SENT` bigint(20) unsigned NOT NULL,
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SORT_SCAN` bigint(20) unsigned NOT NULL,
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_history
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_history`;
CREATE TABLE `events_statements_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SQL_TEXT` longtext,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) unsigned NOT NULL,
  `WARNINGS` bigint(20) unsigned NOT NULL,
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `ROWS_SENT` bigint(20) unsigned NOT NULL,
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SORT_SCAN` bigint(20) unsigned NOT NULL,
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_history_long
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_history_long`;
CREATE TABLE `events_statements_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SQL_TEXT` longtext,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `MYSQL_ERRNO` int(11) DEFAULT NULL,
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL,
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL,
  `ERRORS` bigint(20) unsigned NOT NULL,
  `WARNINGS` bigint(20) unsigned NOT NULL,
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `ROWS_SENT` bigint(20) unsigned NOT NULL,
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SORT_SCAN` bigint(20) unsigned NOT NULL,
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `NESTING_EVENT_LEVEL` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_by_account_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_by_account_by_event_name`;
CREATE TABLE `events_statements_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_by_digest
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_by_digest`;
CREATE TABLE `events_statements_summary_by_digest` (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_by_host_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_by_host_by_event_name`;
CREATE TABLE `events_statements_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_by_program
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_by_program`;
CREATE TABLE `events_statements_summary_by_program` (
  `OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) NOT NULL,
  `OBJECT_NAME` varchar(64) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_STATEMENTS` bigint(20) unsigned NOT NULL,
  `SUM_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_STATEMENTS_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_by_thread_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_by_thread_by_event_name`;
CREATE TABLE `events_statements_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_by_user_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_by_user_by_event_name`;
CREATE TABLE `events_statements_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_statements_summary_global_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_statements_summary_global_by_event_name`;
CREATE TABLE `events_statements_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_current
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_current`;
CREATE TABLE `events_transactions_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL,
  `TRX_ID` bigint(20) unsigned DEFAULT NULL,
  `GTID` varchar(64) DEFAULT NULL,
  `XID_FORMAT_ID` int(11) DEFAULT NULL,
  `XID_GTRID` varchar(130) DEFAULT NULL,
  `XID_BQUAL` varchar(130) DEFAULT NULL,
  `XA_STATE` varchar(64) DEFAULT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL,
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL,
  `AUTOCOMMIT` enum('YES','NO') NOT NULL,
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_history
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_history`;
CREATE TABLE `events_transactions_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL,
  `TRX_ID` bigint(20) unsigned DEFAULT NULL,
  `GTID` varchar(64) DEFAULT NULL,
  `XID_FORMAT_ID` int(11) DEFAULT NULL,
  `XID_GTRID` varchar(130) DEFAULT NULL,
  `XID_BQUAL` varchar(130) DEFAULT NULL,
  `XA_STATE` varchar(64) DEFAULT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL,
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL,
  `AUTOCOMMIT` enum('YES','NO') NOT NULL,
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_history_long
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_history_long`;
CREATE TABLE `events_transactions_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `STATE` enum('ACTIVE','COMMITTED','ROLLED BACK') DEFAULT NULL,
  `TRX_ID` bigint(20) unsigned DEFAULT NULL,
  `GTID` varchar(64) DEFAULT NULL,
  `XID_FORMAT_ID` int(11) DEFAULT NULL,
  `XID_GTRID` varchar(130) DEFAULT NULL,
  `XID_BQUAL` varchar(130) DEFAULT NULL,
  `XA_STATE` varchar(64) DEFAULT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `ACCESS_MODE` enum('READ ONLY','READ WRITE') DEFAULT NULL,
  `ISOLATION_LEVEL` varchar(64) DEFAULT NULL,
  `AUTOCOMMIT` enum('YES','NO') NOT NULL,
  `NUMBER_OF_SAVEPOINTS` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_ROLLBACK_TO_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `NUMBER_OF_RELEASE_SAVEPOINT` bigint(20) unsigned DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_summary_by_account_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_summary_by_account_by_event_name`;
CREATE TABLE `events_transactions_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_summary_by_host_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_summary_by_host_by_event_name`;
CREATE TABLE `events_transactions_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_summary_by_thread_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_summary_by_thread_by_event_name`;
CREATE TABLE `events_transactions_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_summary_by_user_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_summary_by_user_by_event_name`;
CREATE TABLE `events_transactions_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_transactions_summary_global_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_transactions_summary_global_by_event_name`;
CREATE TABLE `events_transactions_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_ONLY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_ONLY` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_current
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_current`;
CREATE TABLE `events_waits_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `SPINS` int(10) unsigned DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_history
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_history`;
CREATE TABLE `events_waits_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `SPINS` int(10) unsigned DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_history_long
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_history_long`;
CREATE TABLE `events_waits_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_ID` bigint(20) unsigned NOT NULL,
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `TIMER_START` bigint(20) unsigned DEFAULT NULL,
  `TIMER_END` bigint(20) unsigned DEFAULT NULL,
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL,
  `SPINS` int(10) unsigned DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(512) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `NESTING_EVENT_TYPE` enum('TRANSACTION','STATEMENT','STAGE','WAIT') DEFAULT NULL,
  `OPERATION` varchar(32) NOT NULL,
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL,
  `FLAGS` int(10) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_summary_by_account_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_account_by_event_name`;
CREATE TABLE `events_waits_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_summary_by_host_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_host_by_event_name`;
CREATE TABLE `events_waits_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_summary_by_instance
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_instance`;
CREATE TABLE `events_waits_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_summary_by_thread_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_thread_by_event_name`;
CREATE TABLE `events_waits_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_summary_by_user_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_by_user_by_event_name`;
CREATE TABLE `events_waits_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for events_waits_summary_global_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `events_waits_summary_global_by_event_name`;
CREATE TABLE `events_waits_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for file_instances
-- ----------------------------
DROP TABLE IF EXISTS `file_instances`;
CREATE TABLE `file_instances` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OPEN_COUNT` int(10) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for file_summary_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `file_summary_by_event_name`;
CREATE TABLE `file_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for file_summary_by_instance
-- ----------------------------
DROP TABLE IF EXISTS `file_summary_by_instance`;
CREATE TABLE `file_summary_by_instance` (
  `FILE_NAME` varchar(512) NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for global_status
-- ----------------------------
DROP TABLE IF EXISTS `global_status`;
CREATE TABLE `global_status` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for global_variables
-- ----------------------------
DROP TABLE IF EXISTS `global_variables`;
CREATE TABLE `global_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hosts
-- ----------------------------
DROP TABLE IF EXISTS `hosts`;
CREATE TABLE `hosts` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for host_cache
-- ----------------------------
DROP TABLE IF EXISTS `host_cache`;
CREATE TABLE `host_cache` (
  `IP` varchar(64) NOT NULL,
  `HOST` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST_VALIDATED` enum('YES','NO') NOT NULL,
  `SUM_CONNECT_ERRORS` bigint(20) NOT NULL,
  `COUNT_HOST_BLOCKED_ERRORS` bigint(20) NOT NULL,
  `COUNT_NAMEINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_NAMEINFO_PERMANENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_FORMAT_ERRORS` bigint(20) NOT NULL,
  `COUNT_ADDRINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_ADDRINFO_PERMANENT_ERRORS` bigint(20) NOT NULL,
  `COUNT_FCRDNS_ERRORS` bigint(20) NOT NULL,
  `COUNT_HOST_ACL_ERRORS` bigint(20) NOT NULL,
  `COUNT_NO_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL,
  `COUNT_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL,
  `COUNT_HANDSHAKE_ERRORS` bigint(20) NOT NULL,
  `COUNT_PROXY_USER_ERRORS` bigint(20) NOT NULL,
  `COUNT_PROXY_USER_ACL_ERRORS` bigint(20) NOT NULL,
  `COUNT_AUTHENTICATION_ERRORS` bigint(20) NOT NULL,
  `COUNT_SSL_ERRORS` bigint(20) NOT NULL,
  `COUNT_MAX_USER_CONNECTIONS_ERRORS` bigint(20) NOT NULL,
  `COUNT_MAX_USER_CONNECTIONS_PER_HOUR_ERRORS` bigint(20) NOT NULL,
  `COUNT_DEFAULT_DATABASE_ERRORS` bigint(20) NOT NULL,
  `COUNT_INIT_CONNECT_ERRORS` bigint(20) NOT NULL,
  `COUNT_LOCAL_ERRORS` bigint(20) NOT NULL,
  `COUNT_UNKNOWN_ERRORS` bigint(20) NOT NULL,
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FIRST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for memory_summary_by_account_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `memory_summary_by_account_by_event_name`;
CREATE TABLE `memory_summary_by_account_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for memory_summary_by_host_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `memory_summary_by_host_by_event_name`;
CREATE TABLE `memory_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for memory_summary_by_thread_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `memory_summary_by_thread_by_event_name`;
CREATE TABLE `memory_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for memory_summary_by_user_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `memory_summary_by_user_by_event_name`;
CREATE TABLE `memory_summary_by_user_by_event_name` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for memory_summary_global_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `memory_summary_global_by_event_name`;
CREATE TABLE `memory_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_ALLOC` bigint(20) unsigned NOT NULL,
  `COUNT_FREE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_ALLOC` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_FREE` bigint(20) unsigned NOT NULL,
  `LOW_COUNT_USED` bigint(20) NOT NULL,
  `CURRENT_COUNT_USED` bigint(20) NOT NULL,
  `HIGH_COUNT_USED` bigint(20) NOT NULL,
  `LOW_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `CURRENT_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL,
  `HIGH_NUMBER_OF_BYTES_USED` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for metadata_locks
-- ----------------------------
DROP TABLE IF EXISTS `metadata_locks`;
CREATE TABLE `metadata_locks` (
  `OBJECT_TYPE` varchar(64) NOT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `LOCK_TYPE` varchar(32) NOT NULL,
  `LOCK_DURATION` varchar(32) NOT NULL,
  `LOCK_STATUS` varchar(32) NOT NULL,
  `SOURCE` varchar(64) DEFAULT NULL,
  `OWNER_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `OWNER_EVENT_ID` bigint(20) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mutex_instances
-- ----------------------------
DROP TABLE IF EXISTS `mutex_instances`;
CREATE TABLE `mutex_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for objects_summary_global_by_type
-- ----------------------------
DROP TABLE IF EXISTS `objects_summary_global_by_type`;
CREATE TABLE `objects_summary_global_by_type` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for performance_timers
-- ----------------------------
DROP TABLE IF EXISTS `performance_timers`;
CREATE TABLE `performance_timers` (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL,
  `TIMER_FREQUENCY` bigint(20) DEFAULT NULL,
  `TIMER_RESOLUTION` bigint(20) DEFAULT NULL,
  `TIMER_OVERHEAD` bigint(20) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for prepared_statements_instances
-- ----------------------------
DROP TABLE IF EXISTS `prepared_statements_instances`;
CREATE TABLE `prepared_statements_instances` (
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `STATEMENT_ID` bigint(20) unsigned NOT NULL,
  `STATEMENT_NAME` varchar(64) DEFAULT NULL,
  `SQL_TEXT` longtext NOT NULL,
  `OWNER_THREAD_ID` bigint(20) unsigned NOT NULL,
  `OWNER_EVENT_ID` bigint(20) unsigned NOT NULL,
  `OWNER_OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') DEFAULT NULL,
  `OWNER_OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OWNER_OBJECT_NAME` varchar(64) DEFAULT NULL,
  `TIMER_PREPARE` bigint(20) unsigned NOT NULL,
  `COUNT_REPREPARE` bigint(20) unsigned NOT NULL,
  `COUNT_EXECUTE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_EXECUTE` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_applier_configuration
-- ----------------------------
DROP TABLE IF EXISTS `replication_applier_configuration`;
CREATE TABLE `replication_applier_configuration` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `DESIRED_DELAY` int(11) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_applier_status
-- ----------------------------
DROP TABLE IF EXISTS `replication_applier_status`;
CREATE TABLE `replication_applier_status` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `SERVICE_STATE` enum('ON','OFF') NOT NULL,
  `REMAINING_DELAY` int(10) unsigned DEFAULT NULL,
  `COUNT_TRANSACTIONS_RETRIES` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_applier_status_by_coordinator
-- ----------------------------
DROP TABLE IF EXISTS `replication_applier_status_by_coordinator`;
CREATE TABLE `replication_applier_status_by_coordinator` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SERVICE_STATE` enum('ON','OFF') NOT NULL,
  `LAST_ERROR_NUMBER` int(11) NOT NULL,
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL,
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_applier_status_by_worker
-- ----------------------------
DROP TABLE IF EXISTS `replication_applier_status_by_worker`;
CREATE TABLE `replication_applier_status_by_worker` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `WORKER_ID` bigint(20) unsigned NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SERVICE_STATE` enum('ON','OFF') NOT NULL,
  `LAST_SEEN_TRANSACTION` char(57) NOT NULL,
  `LAST_ERROR_NUMBER` int(11) NOT NULL,
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL,
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_connection_configuration
-- ----------------------------
DROP TABLE IF EXISTS `replication_connection_configuration`;
CREATE TABLE `replication_connection_configuration` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PORT` int(11) NOT NULL,
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NETWORK_INTERFACE` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AUTO_POSITION` enum('1','0') NOT NULL,
  `SSL_ALLOWED` enum('YES','NO','IGNORED') NOT NULL,
  `SSL_CA_FILE` varchar(512) NOT NULL,
  `SSL_CA_PATH` varchar(512) NOT NULL,
  `SSL_CERTIFICATE` varchar(512) NOT NULL,
  `SSL_CIPHER` varchar(512) NOT NULL,
  `SSL_KEY` varchar(512) NOT NULL,
  `SSL_VERIFY_SERVER_CERTIFICATE` enum('YES','NO') NOT NULL,
  `SSL_CRL_FILE` varchar(255) NOT NULL,
  `SSL_CRL_PATH` varchar(255) NOT NULL,
  `CONNECTION_RETRY_INTERVAL` int(11) NOT NULL,
  `CONNECTION_RETRY_COUNT` bigint(20) unsigned NOT NULL,
  `HEARTBEAT_INTERVAL` double(10,3) unsigned NOT NULL COMMENT 'Number of seconds after which a heartbeat will be sent .',
  `TLS_VERSION` varchar(255) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_connection_status
-- ----------------------------
DROP TABLE IF EXISTS `replication_connection_status`;
CREATE TABLE `replication_connection_status` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `GROUP_NAME` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SOURCE_UUID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SERVICE_STATE` enum('ON','OFF','CONNECTING') NOT NULL,
  `COUNT_RECEIVED_HEARTBEATS` bigint(20) unsigned NOT NULL DEFAULT '0',
  `LAST_HEARTBEAT_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Shows when the most recent heartbeat signal was received.',
  `RECEIVED_TRANSACTION_SET` longtext NOT NULL,
  `LAST_ERROR_NUMBER` int(11) NOT NULL,
  `LAST_ERROR_MESSAGE` varchar(1024) NOT NULL,
  `LAST_ERROR_TIMESTAMP` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_group_members
-- ----------------------------
DROP TABLE IF EXISTS `replication_group_members`;
CREATE TABLE `replication_group_members` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `MEMBER_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MEMBER_HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MEMBER_PORT` int(11) DEFAULT NULL,
  `MEMBER_STATE` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for replication_group_member_stats
-- ----------------------------
DROP TABLE IF EXISTS `replication_group_member_stats`;
CREATE TABLE `replication_group_member_stats` (
  `CHANNEL_NAME` char(64) NOT NULL,
  `VIEW_ID` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MEMBER_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `COUNT_TRANSACTIONS_IN_QUEUE` bigint(20) unsigned NOT NULL,
  `COUNT_TRANSACTIONS_CHECKED` bigint(20) unsigned NOT NULL,
  `COUNT_CONFLICTS_DETECTED` bigint(20) unsigned NOT NULL,
  `COUNT_TRANSACTIONS_ROWS_VALIDATING` bigint(20) unsigned NOT NULL,
  `TRANSACTIONS_COMMITTED_ALL_MEMBERS` longtext NOT NULL,
  `LAST_CONFLICT_FREE_TRANSACTION` text NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rwlock_instances
-- ----------------------------
DROP TABLE IF EXISTS `rwlock_instances`;
CREATE TABLE `rwlock_instances` (
  `NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `WRITE_LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `READ_LOCKED_BY_COUNT` int(10) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for session_account_connect_attrs
-- ----------------------------
DROP TABLE IF EXISTS `session_account_connect_attrs`;
CREATE TABLE `session_account_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `ORDINAL_POSITION` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for session_connect_attrs
-- ----------------------------
DROP TABLE IF EXISTS `session_connect_attrs`;
CREATE TABLE `session_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL,
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `ORDINAL_POSITION` int(11) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for session_status
-- ----------------------------
DROP TABLE IF EXISTS `session_status`;
CREATE TABLE `session_status` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for session_variables
-- ----------------------------
DROP TABLE IF EXISTS `session_variables`;
CREATE TABLE `session_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setup_actors
-- ----------------------------
DROP TABLE IF EXISTS `setup_actors`;
CREATE TABLE `setup_actors` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `ROLE` char(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `HISTORY` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setup_consumers
-- ----------------------------
DROP TABLE IF EXISTS `setup_consumers`;
CREATE TABLE `setup_consumers` (
  `NAME` varchar(64) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setup_instruments
-- ----------------------------
DROP TABLE IF EXISTS `setup_instruments`;
CREATE TABLE `setup_instruments` (
  `NAME` varchar(128) NOT NULL,
  `ENABLED` enum('YES','NO') NOT NULL,
  `TIMED` enum('YES','NO') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setup_objects
-- ----------------------------
DROP TABLE IF EXISTS `setup_objects`;
CREATE TABLE `setup_objects` (
  `OBJECT_TYPE` enum('EVENT','FUNCTION','PROCEDURE','TABLE','TRIGGER') NOT NULL DEFAULT 'TABLE',
  `OBJECT_SCHEMA` varchar(64) DEFAULT '%',
  `OBJECT_NAME` varchar(64) NOT NULL DEFAULT '%',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `TIMED` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setup_timers
-- ----------------------------
DROP TABLE IF EXISTS `setup_timers`;
CREATE TABLE `setup_timers` (
  `NAME` varchar(64) NOT NULL,
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for socket_instances
-- ----------------------------
DROP TABLE IF EXISTS `socket_instances`;
CREATE TABLE `socket_instances` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `SOCKET_ID` int(11) NOT NULL,
  `IP` varchar(64) NOT NULL,
  `PORT` int(11) NOT NULL,
  `STATE` enum('IDLE','ACTIVE') NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for socket_summary_by_event_name
-- ----------------------------
DROP TABLE IF EXISTS `socket_summary_by_event_name`;
CREATE TABLE `socket_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for socket_summary_by_instance
-- ----------------------------
DROP TABLE IF EXISTS `socket_summary_by_instance`;
CREATE TABLE `socket_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_MISC` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status_by_account
-- ----------------------------
DROP TABLE IF EXISTS `status_by_account`;
CREATE TABLE `status_by_account` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status_by_host
-- ----------------------------
DROP TABLE IF EXISTS `status_by_host`;
CREATE TABLE `status_by_host` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status_by_thread
-- ----------------------------
DROP TABLE IF EXISTS `status_by_thread`;
CREATE TABLE `status_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status_by_user
-- ----------------------------
DROP TABLE IF EXISTS `status_by_user`;
CREATE TABLE `status_by_user` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for table_handles
-- ----------------------------
DROP TABLE IF EXISTS `table_handles`;
CREATE TABLE `table_handles` (
  `OBJECT_TYPE` varchar(64) NOT NULL,
  `OBJECT_SCHEMA` varchar(64) NOT NULL,
  `OBJECT_NAME` varchar(64) NOT NULL,
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL,
  `OWNER_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `OWNER_EVENT_ID` bigint(20) unsigned DEFAULT NULL,
  `INTERNAL_LOCK` varchar(64) DEFAULT NULL,
  `EXTERNAL_LOCK` varchar(64) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for table_io_waits_summary_by_index_usage
-- ----------------------------
DROP TABLE IF EXISTS `table_io_waits_summary_by_index_usage`;
CREATE TABLE `table_io_waits_summary_by_index_usage` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `INDEX_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_FETCH` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `COUNT_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `COUNT_DELETE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for table_io_waits_summary_by_table
-- ----------------------------
DROP TABLE IF EXISTS `table_io_waits_summary_by_table`;
CREATE TABLE `table_io_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_FETCH` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL,
  `COUNT_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL,
  `COUNT_DELETE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for table_lock_waits_summary_by_table
-- ----------------------------
DROP TABLE IF EXISTS `table_lock_waits_summary_by_table`;
CREATE TABLE `table_lock_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL,
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL,
  `OBJECT_NAME` varchar(64) DEFAULT NULL,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `COUNT_READ` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL,
  `COUNT_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL,
  `COUNT_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL,
  `COUNT_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL,
  `COUNT_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for threads
-- ----------------------------
DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `NAME` varchar(128) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `PROCESSLIST_ID` bigint(20) unsigned DEFAULT NULL,
  `PROCESSLIST_USER` varchar(32) DEFAULT NULL,
  `PROCESSLIST_HOST` varchar(60) DEFAULT NULL,
  `PROCESSLIST_DB` varchar(64) DEFAULT NULL,
  `PROCESSLIST_COMMAND` varchar(16) DEFAULT NULL,
  `PROCESSLIST_TIME` bigint(20) DEFAULT NULL,
  `PROCESSLIST_STATE` varchar(64) DEFAULT NULL,
  `PROCESSLIST_INFO` longtext,
  `PARENT_THREAD_ID` bigint(20) unsigned DEFAULT NULL,
  `ROLE` varchar(64) DEFAULT NULL,
  `INSTRUMENTED` enum('YES','NO') NOT NULL,
  `HISTORY` enum('YES','NO') NOT NULL,
  `CONNECTION_TYPE` varchar(16) DEFAULT NULL,
  `THREAD_OS_ID` bigint(20) unsigned DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `USER` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL,
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_variables_by_thread
-- ----------------------------
DROP TABLE IF EXISTS `user_variables_by_thread`;
CREATE TABLE `user_variables_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` longblob
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for variables_by_thread
-- ----------------------------
DROP TABLE IF EXISTS `variables_by_thread`;
CREATE TABLE `variables_by_thread` (
  `THREAD_ID` bigint(20) unsigned NOT NULL,
  `VARIABLE_NAME` varchar(64) NOT NULL,
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;
