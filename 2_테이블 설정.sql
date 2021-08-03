# 날짜 : 2021/08/03
# 이름 : 박시현
# 내용 : 테이블 설정

# 실습하기 2-1
CREATE TABLE `user2` (
	`uid` VARCHAR(10) PRIMARY KEY, #중복이 되지 않는 대표 컬럼으로 설정 (중복값이 더이상 허용안됨)
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`age` INT
);

INSERT INTO `user2` VALUES ('A104','김춘추','010-1234-1111','23');
INSERT INTO `user2` VALUES ('A102','김유신','010-1234-2222','25');
INSERT INTO `user2` VALUES ('A103','장보고','010-1234-3333','31');



# 실습하기 2-2
CREATE TABLE `user3` (
	`uid` VARCHAR(10) PRIMARY KEY, #중복이 되지 않는 대표 컬럼으로 설정 (중복값이 더이상 허용안됨)
	`name` VARCHAR(10) , # primary key는 1개만 설정 가능, 따라서 unique로 설정해주어야 함
	`hp` CHAR(13) UNIQUE, # unique를 씀으로써 무결성을 유지하게 됨(데이터에 결함이 없음)
	`age` INT
);

INSERT INTO `user3` VALUES ('A104','김춘추','010-1234-4444','23');
INSERT INTO `user3` VALUES ('A102','김유신','010-1234-2222','25');
INSERT INTO `user3` VALUES ('A103','장보고','010-1234-3333','31');




# 실습하기 2-3
CREATE TABLE `user5`( 
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,	# 대표할만한 값이 없을때 seq로 지정하여 설정.
	`name` 	VARCHAR(10),
	`gender`	TINYINT,	# 1 아니면 2니까 굳이 INT를 쓸 필요가 없음(데이터 절약하자)
	`age`		TINYINT, # 100세 정도까지니까
	`addr`	VARCHAR(255) 
);

INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,25,'김해시'); #컬럼개수가 일치하지 않으므로 이땐 컬럼들을 지정해줘야함
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('선덕여왕',2,27,'경주시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('김춘추',1,25,'경주시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('신사임당',2,35,'강릉시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('이순신',1,51,'서울시');






