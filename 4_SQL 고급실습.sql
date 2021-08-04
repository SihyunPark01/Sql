# 날짜 : 2021/08/03
# 이름 : 박시현
# 내용 : SQL 고급실습


# 직원 테이블 생성하기
CREATE TABLE `MEMBER` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13),
	`pos`		VARCHAR(10),
	`dep`		TINYINT,
	`rdate`	DATETIME
);

# 부서 테이블 생성하기
CREATE TABLE `DEPART` (
	`depNo`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10),
	`tel`		CHAR(12)
);

# 매출 테이블 생성하기
CREATE TABLE `SALE` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(10),
	`year`	YEAR,
	`month`	TINYINT,
	`sales`	INT
);

# 직원 테이블 데이터 입력하기
INSERT INTO `MEMBER` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a110', '정약용',   '010-1234-1010', '사원', 105, '2020-11-19 11:39:48');
INSERT INTO `MEMBER` VALUES ('a111', '박지원',   '010-1234-1011', '사원', 105, '2020-11-19 11:39:48');

# 부서 테이블 데이터 입력하기
INSERT INTO `DEPART` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `DEPART` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `DEPART` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `DEPART` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `DEPART` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `DEPART` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `DEPART` VALUES (107, '인사부', '051-512-1007');

# 매출 테이블 데이터 입력하기
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a108', 2020, 2,  76000);


# 실습하기 4-1
SELECT * FROM `MEMBER` WHERE `name` != '김춘추';
SELECT * FROM `MEMBER` WHERE `name` <> '김춘추';
SELECT * FROM `MEMBER` WHERE `pos` = '사원' OR `pos` = '대리';
SELECT * FROM `MEMBER` WHERE `pos` IN('사원', '대리');
SELECT * FROM `MEMBER` WHERE `name` LIKE '%신';
SELECT * FROM `MEMBER` WHERE `name` LIKE '김%';
SELECT * FROM `MEMBER` WHERE `name` LIKE '김__';
SELECT * FROM `MEMBER` WHERE `name` LIKE '_성_';
SELECT * FROM `MEMBER` WHERE `name` LIKE '정_';
SELECT * FROM `SALE` WHERE `sales` > 50000;
SELECT * FROM `SALE` WHERE `sales` >= 50000 AND `sales` < 100000 AND `month`=1;
SELECT * FROM `SALE` WHERE `sales` BETWEEN 50000 AND 100000;
SELECT * FROM `SALE` WHERE `sales` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `SALE` WHERE `year` IN(2020);
SELECT * FROM `SALE` WHERE `month` IN(1,2);


# 실습하기 4-2
SELECT * FROM `SALE` ORDER BY `sales` ASC;
SELECT * FROM `SALE` ORDER BY `sales` DESC;
SELECT * FROM `MEMBER` ORDER BY `name`;
SELECT * FROM `MEMBER` ORDER BY `name` DESC;
SELECT * FROM `MEMBER` ORDER BY `rdate` ASC;

SELECT * FROM `SALE` WHERE `sales` > 50000
							ORDER BY `year`, `month`, `sales` DESC;
			
			
		
# 실습하기 4-3							
SELECT * FROM `SALE` LIMIT 3;

SELECT * FROM `SALE` LIMIT 0, 3; # 인덱스번호 0부터 3개
SELECT * FROM `SALE` LIMIT 1, 3;
SELECT * FROM `SALE` LIMIT 4, 5; # 인덱스번호 4부터 5개

SELECT * FROM `SALE` ORDER BY `sales` DESC LIMIT 3,5;

SELECT * FROM `SALE` WHERE `sales` >50000
							ORDER BY `year` DESC, `month`, `sales` DESC # 기본정렬은 오름차순 					
							LIMIT 5; #5 개만 추려
							

# 실습하기 4-4
SELECT SUM(`sales`) AS `합계` FROM `SALE`;
SELECT COUNT(*) AS `개수` FROM `SALE`;
SELECT SUBSTRING(`hp`, 10, 4) AS `전화번호 끝자리` FROM `MEMBER`;
INSERT INTO `MEMBER` VALUES ('b101','을지문덕','010-5555-1234','사장',107,NOW());


#확인문제1. 2018년 1월 매출의 총합을 구하시오
SELECT SUM(`sales`) AS `2018년 1월 총합` FROM `SALE` 
	WHERE `year`='2018' AND `month`=1;


#확인문제2. 2019년 2월달에 5만원 이상 매출에 대한 총합과 평균을 구하시오.
SELECT 
	SUM(`sales`) AS `총합`,
	AVG(`sales`) AS `평균`
FROM 
	`SALE` 
WHERE 
	`year`='2019' 	AND 
	`month`=2 		AND 
	`sales`>= 50000;


#확인문제3. 2020년 전체 매출 가운데 최저, 최고, 매출을 구하시오.
SELECT 
	MIN(`sales`) AS `최저`, 
	MAX(`sales`) AS `최고`
FROM 
	`SALE` 
WHERE 
	`year`='2020'; # 해도되고
	# `year` IN (2020) 해도됨.
	

# 실습하기 4-5
SELECT * FROM `SALE` GROUP BY `uid`; #대표로 하는 그룹들만 추려내네
SELECT * FROM `SALE` GROUP BY `year`;
SELECT * FROM `SALE` GROUP BY `uid`,`year`;

SELECT `uid`, COUNT(*) AS '건수' FROM `SALE` GROUP BY `uid`;

SELECT `uid`, SUM(`sales`) AS '합계' FROM `SALE` GROUP BY `uid`;

SELECT `uid`, AVG(`sales`) AS '평균' FROM `SALE` GROUP BY `uid`;

SELECT `uid`, SUM(`sales`) AS '합계' FROM `SALE` GROUP BY `uid`;

SELECT `uid`, SUM(`sales`) AS '합계'
	FROM `SALE`
		GROUP BY `uid`; #uid로 그룹화해서 uid와 sum값만 도출하라
		
SELECT 
		`uid`, `year`, SUM(`sales`) AS '합계' 
	FROM 
		`SALE`
	WHERE 
		`sales` >= 50000  #5만원 이상만 
	GROUP by
		`uid`, `year`		#uid와 year을 기준으로 그룹핑하라
	ORDER by
		`합계` DESC; #합계가 큰 것 부터					







# 실습하기 4-7
CREATE TABLE `SALE2` LIKE `SALE`;
INSERT INTO `SALE2` SELECT * from `SALE`;
UPDATE `SALE2` SET `year` = `year` + 3;


SELECT * FROM `SALE`
UNION
SELECT * FROM `SALE2`;

# 실습하기 4-8 은 내가 하자

# 실습하기 4-9    그냥 join은 inner join임
SELECT * FROM `SALE` INNER JOIN `MEMBER` ON `SALE`.uid = `MEMBER`.uid;   #inner 는 생략가능

SELECT a.`seq`, a.`uid`, a.`sales`, b.`name`, b.`pos`
FROM `SALE` AS a
JOIN `MEMBER` AS b
USING(`uid`); # ON a.uid = b.uid;을 using함수로 대체 가능.

SELECT * FROM `SALE` AS a
JOIN `MEMBER` AS b ON a.uid = b.uid
JOIN `DEPART` AS c ON b.dep = c.depNo;

SELECT a.seq, a.uid, `sales`, `name`, `pos`
FROM `SALE` AS a,
JOIN `MEMBER` AS b
USING (uid)
WHERE `sales` >= 100000;

SELECT a.seq, a.uid, b.name, b.pos, `year`, SUM(`sales`) AS `합계`
FROM `SALE` AS a
JOIN `MEMBER` AS b
ON a.uid = b.uid
GROUP BY a.`uid`, a.`year`
HAVING `합계` >= 100000 # 그룹핑이후의 조건절은 having절을 사용함.
ORDER BY a.year ASC, `합계` DESC;



# 확인문제 1. 모든 직원의 아이디, 이름, 직급, 부서명을 조회하시오.

SELECT `uid`, a.`name`, `pos`, b.`name` #조인했기때문에 나머지는 "테이블명."을 쓸필요가 없음
FROM `MEMBER` AS a
JOIN `DEPART` AS b
ON a.`dep` = b.`depNO`; 
#위의 join문을 이렇게도 사용가능하고, 이렇게 많이들 쓴다.
SELECT `uid`, a.`name`, `pos`, b.`name` 
FROM `MEMBER` AS a, `DEPART` AS b 
WHERE a.dep = b.depNo;


# 확인문제 2. '김유신'직원의 2019년도 매출의 합을 조회하시오.

SELECT SUM(`sales`) AS '2019년 매출의 합'
FROM `SALE` AS a
JOIN `MEMBER` AS b
USING (`uid`)
WHERE b.`name` = '김유신' AND a.`year` = '2019';


# 확인문제 3. 2019년 매출이 50,000이상 100,000이하에 해당하는 직원의 이름, 부서명, 직급, 매출 합이 100000 이상만 큰 순서로 조회하시오
# 매출의 합은 5만이상 10만 이하에 대해서 집계 수행 (직원별로 구해야하니까 group by가 필요함)

SELECT b.`name`,c.`name`, b.`pos`,SUM(`sales`) AS `매출합`
FROM `SALE` AS a
JOIN `MEMBER` AS b USING (`uid`)
JOIN `DEPART` AS c ON b.dep = c.depNo; #3개를 조인해야 함.
WHERE `sales` >=50000 AND `sales` <=100000 # ( AND `year` = '2018')     #이미 조인했기 때문에 b.sales라고 쓸필요가 없음. 그냥 sales 쓰면 됨.
GROUP BY a.`uid`
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC; 


 














































