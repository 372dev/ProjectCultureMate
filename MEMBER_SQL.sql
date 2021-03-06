CREATE SEQUENCE MEM_SEQ; -- ID

CREATE TABLE MEMBER(
    ID INT PRIMARY KEY,
    USER_ID VARCHAR2(20) NOT NULL UNIQUE,
    PASSWORD VARCHAR2(20) NOT NULL,
    USER_NICK VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(10) NOT NULL,
    USER_ROLE VARCHAR2(10) DEFAULT 'ROLE_USER', -- ROLE_USER / ROLE_ADMIN
    DATE_BIRTH DATE DEFAULT SYSDATE,
    GENDER VARCHAR2(10) NOT NULL,
    EMAIL VARCHAR2(100) NOT NULL,
    PHONE VARCHAR2(15) NOT NULL,
    POSTCODE VARCHAR2(15) NOT NULL,
    ROAD_ADDR VARCHAR2(100) NOT NULL,
    JIBUN_ADDR VARCHAR2(100) NOT NULL,
    DETAIL_ADDR VARCHAR2(100) NOT NULL,
    EXTRA_ADDR VARCHAR2(100) NOT NULL, -- 도로명주소를 지번주소로
    RANK VARCHAR2(20) NOT NULL,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N'))
);

SELECT * FROM MEMBER;

--DROP TABLE MEMBER;

COMMENT ON COLUMN MEMBER.ID IS '회원번호';
COMMENT ON COLUMN MEMBER.USER_ID IS '아이디';
COMMENT ON COLUMN MEMBER.PASSWORD IS '비밀번호';
COMMENT ON COLUMN MEMBER.USER_NICK IS '닉네임';
COMMENT ON COLUMN MEMBER.USER_NAME IS '본명';
COMMENT ON COLUMN MEMBER.USER_ROLE IS '회원타입';
COMMENT ON COLUMN MEMBER.DATE_BIRTH IS '생년월일';
COMMENT ON COLUMN MEMBER.GENDER IS '성별';
COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.PHONE IS '전화번호';
COMMENT ON COLUMN MEMBER.POSTCODE IS '우편번호';
COMMENT ON COLUMN MEMBER.ROAD_ADDR IS '도로명주소';
COMMENT ON COLUMN MEMBER.JIBUN_ADDR IS '지번주소';
COMMENT ON COLUMN MEMBER.DETAIL_ADDR IS '상세주소';
COMMENT ON COLUMN MEMBER.EXTRA_ADDR IS '참고항목';
COMMENT ON COLUMN MEMBER.RANK IS '회원등급';
COMMENT ON COLUMN MEMBER.STATUS IS '탈퇴여부';

