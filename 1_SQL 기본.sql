# 날짜 : 2021/08/03
# 이름 : 박시현
# 내용 : 1. SQL 기본

# 실습하기 1-1
CREATE DATABASE `TestDB`;
DROP DATABASE `TestDB`;

# 실습하기 1-2
CREATE TABLE `user1`(		# 테이블 생성
	`uid` 	VARCHAR(10), #가변적인문자열 (이름의 길이는 다를거니까)
	`name`	VARCHAR(10),
	`hp`		CHAR(13),	#고정된문자열 (13자리 고정된 길이)
	`age`		INT
);


# 실습하기 1-3
INSERT INTO `user1` VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO `user1` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `user1` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `user1` (`age`,`name`,`uid`,`hp`) 
				VALUES(45,'강감찬','A104','010-1234-4444');
INSERT INTO `user1` SET 
								`name`='이순신', 
								`age`=51, 
								`hp`='010-1234-5555', 
								`uid`='A105';
								
# 실습하기 1-4
SELECT `uid`,`name`,`age`,`hp` FROM `user1`;
SELECT `name`,`uid`,`hp` FROM `user1`;
SELECT * FROM `user1`;
SELECT * FROM `user1` WHERE `uid`=`A101`;
SELECT * FROM `user1` WHERE `name`=`김춘추`;
SELECT * FROM `user1` WHERE `age` > 30;

# 실습하기 1-5
UPDATE `user1` SET `hp`='010-1234-1234';
UPDATE `user1` SET `uid`='B101', `name`='홍길동';
UPDATE `user1` SET 
						`uid`='A101', 
						`name`='김유신'
					where
						`age`=25;
						
UPDATE `user1` SET `hp`='010-1234-1111' 
					WHERE `name`='김유신';
					
UPDATE `user1` SET 
							`uid`='A102',
							`name`='김춘추',
							`hp`='010-1234-2222' 
					WHERE `age`=23;
						
						
# 실습하기 1-6
DELETE FROM `user1` WHERE `uid`='A101';
DELETE FROM `user1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `user1` WHERE `age` >= 30;












								