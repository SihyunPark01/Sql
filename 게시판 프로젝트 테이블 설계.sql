#날짜 : 2021/08/10
#이름 : 박시현
#내용 : 게시판 프로젝트 테이블 설계



#약관 테이블
CREATE TABLE `Jboard_terms` (
	`tearms` 	TEXT,
	`privacy` 	TEXT
);

#회원 테이블
CREATE TABLE `Jboard_member` (
	`uid`		VARCHAR(20) PRIMARY key,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick` 	VARCHAR(20) unique,
	`email`	VARCHAR(50) unique,
	`hp`		CHAR(13) unique,
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`regip`	VARCHAR(20),
	`rdate`	datetime	
);


#게시물 테이블

CREATE TABLE `Jboard_article` (
	`seq`			INT AUTO_INCREMENT PRIMARY key,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	text,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20),
	`regip`		VARCHAR(20),
	`rdate`		datetime
);


#파일 테이블
CREATE TABLE `Jboard_file` (
	`fseq`				INT AUTO_INCREMENT PRIMARY key,
	`parent`				INT,
	`oriName`			VARCHAR(255),
	`newName`			VARCHAR(255),
	`download`			INT DEFAULT 0,
	`rdate`				datetime
);
maro02260226




