use db_basic;

-- 테이블 생성
create table post (
	id int not null auto_increment primary key,
	title varchar(255) not null,
	content text not null
);

create table usered (
	id int not null auto_increment primary key,
	name varchar(50) not null,
	phone varchar(30) not null,
	address varchar(100)
);

-- 데이터 추가
INSERT INTO post (title, content)
VALUES 
('java', '객체지향 언어'),
('html', '웹 표준 언어'),
('제목 수정 중', '본문 수정 중'),
('django', '풀스택 개발 프레임워크'),
('코딩', '재미있어요!');

INSERT INTO usered (name, phone, address)
VALUES 
('kim', '010-1111-1111', 'seoul'),
('lee', '010-2222-2222', 'seoul'),
('song', '010-3333-3333', 'daegu'),
('park', '010-4444-4444', 'pusan'),
('lee', '010-5555-5555', 'daegu');

-- 데이터 조회 명령
select title, content from post;

-- 데이터 추가
select * from post where id =2

-- 데이터 조회
select * from post where title like '코딩%';
SELECT title, content FROM post WHERE id BETWEEN 1 and 3;
SELECT * FROM usered WHERE address IN ('seoul', 'busan', 'deagu');

-- 데이터 추가
SELECT * FROM post ORDER BY title asc

-- 데이터 수정
UPDATE post 
SET title = '제목 수정 중',
content = '본문 수정 중'
WHERE id=6;

-- 데이터 삭제
DELETE FROM post WHERE id=6;