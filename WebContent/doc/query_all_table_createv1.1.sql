-- 게시판
CREATE TABLE "board" (
	"bnum"     VARCHAR2(100) NOT NULL, -- 글번호
	"bid"      VARCHAR2(100) NULL,     -- 아이디
	"bsubject" VARCHAR2(100) NULL,     -- 제목
	"bcontent" VARCHAR2(100) NULL,     -- 내용
	"bhit"     VARCHAR2(100) NULL,     -- 조회수
	"bdate"    VARCHAR2(100) NULL,     -- 글작성시간
	"bimage"   VARCHAR2(100) NULL,     -- 이미지
	"blnum"    VARCHAR2(100) NULL      -- 게시판번호
);

-- 게시판 기본키
CREATE UNIQUE INDEX "PK_board"
	ON "board" ( -- 게시판
		"bnum" ASC -- 글번호
	);

-- 게시판
ALTER TABLE "board"
	ADD
		CONSTRAINT "PK_board" -- 게시판 기본키
		PRIMARY KEY (
			"bnum" -- 글번호
		);

-- 회원
CREATE TABLE "member" (
	"mid"       VARCHAR2(100) NOT NULL, -- 아이디
	"mpass"     VARCHAR2(50)  NULL,     -- 비밀번호
	"mname"     VARCHAR2(50)  NULL,     -- 이름
	"memail1"   VARCHAR2(50)  NULL,     -- 이메일아이디
	"memail2"   VARCHAR2(50)  NULL,     -- 이메일도메인
	"mjoindate" VARCHAR2(50)  NULL      -- 가입일
);

-- 회원 기본키
CREATE UNIQUE INDEX "PK_member"
	ON "member" ( -- 회원
		"mid" ASC -- 아이디
	);

-- 회원
ALTER TABLE "member"
	ADD
		CONSTRAINT "PK_member" -- 회원 기본키
		PRIMARY KEY (
			"mid" -- 아이디
		);

-- 게시판목록
CREATE TABLE "boardlist" (
	"blnum"  VARCHAR2(100) NOT NULL, -- 게시판번호
	"blname" VARCHAR2(100) NULL,     -- 게시판이름
	"bltype" VARCHAR2(100) NULL,     -- 게시판형식
	"canum"  VARCHAR2(100) NULL      -- 카테고리번호2
);

-- 게시판목록 기본키
CREATE UNIQUE INDEX "PK_boardlist"
	ON "boardlist" ( -- 게시판목록
		"blnum" ASC -- 게시판번호
	);

-- 게시판목록
ALTER TABLE "boardlist"
	ADD
		CONSTRAINT "PK_boardlist" -- 게시판목록 기본키
		PRIMARY KEY (
			"blnum" -- 게시판번호
		);

-- 회원상세
CREATE TABLE "member_detail" (
	"mid"        VARCHAR2(100) NOT NULL, -- 아이디
	"mdzipcode"  VARCHAR2(20)  NULL,     -- 우편번호
	"mdaddr"     VARCHAR2(100) NULL,     -- 주소
	"mdaddr2"    VARCHAR2(100) NULL,     -- 상세주소
	"mdlocation" VARCHAR2(100) NULL,     -- 희망지역
	"mdtel1"     VARCHAR2(30)  NULL,     -- 전화번호1
	"mdtel2"     VARCHAR2(30)  NULL,     -- 전화번호2
	"mdtel3"     VARCHAR2(30)  NULL,     -- 전화번호3
	"canum"      VARCHAR2(100) NULL      -- 카테고리번호
);

-- 회원상세 기본키
CREATE UNIQUE INDEX "PK_member_detail"
	ON "member_detail" ( -- 회원상세
		"mid" ASC -- 아이디
	);

-- 회원상세
ALTER TABLE "member_detail"
	ADD
		CONSTRAINT "PK_member_detail" -- 회원상세 기본키
		PRIMARY KEY (
			"mid" -- 아이디
		);

-- 카테고리
CREATE TABLE "category" (
	"canum"  VARCHAR2(100) NOT NULL, -- 카테고리번호
	"caname" VARCHAR2(100) NULL      -- 카테고리이름
);

-- 카테고리 기본키
CREATE UNIQUE INDEX "PK_category"
	ON "category" ( -- 카테고리
		"canum" ASC -- 카테고리번호
	);

-- 카테고리
ALTER TABLE "category"
	ADD
		CONSTRAINT "PK_category" -- 카테고리 기본키
		PRIMARY KEY (
			"canum" -- 카테고리번호
		);

-- 심사
CREATE TABLE "rate" (
	"ratenum"  VARCHAR2(100) NOT NULL, -- 심사번호
	"ratename" VARCHAR2(100) NULL      -- 심사이름
);

-- 심사 기본키
CREATE UNIQUE INDEX "PK_rate"
	ON "rate" ( -- 심사
		"ratenum" ASC -- 심사번호
	);

-- 심사
ALTER TABLE "rate"
	ADD
		CONSTRAINT "PK_rate" -- 심사 기본키
		PRIMARY KEY (
			"ratenum" -- 심사번호
		);

-- 서비스
CREATE TABLE "service" (
	"snum"          VARCHAR2(100) NOT NULL, -- 서비스번호
	"mid"           VARCHAR2(100) NOT NULL, -- 아이디
	"scategorynum"  VARCHAR2(100) NULL,     -- 카테고리번호
	"sprice"        VARCHAR2(100) NULL,     -- 금액
	"speople"       VARCHAR2(100) NULL,     -- 인원
	"sstart_date"   VARCHAR2(100) NULL,     -- 시작기간
	"send_date"     VARCHAR2(100) NULL,     -- 종료기간
	"sservice_name" VARCHAR2(100) NULL,     -- 서비스이름
	"slocation1"    VARCHAR2(100) NULL,     -- 서비스지역1
	"slocation2"    VARCHAR2(100) NULL,     -- 서비스지역2
	"scontent"      VARCHAR2(100) NULL,     -- 내용
	"simage_name"   VARCHAR2(100) NULL      -- 이미지이름
);

-- 서비스 기본키
CREATE UNIQUE INDEX "PK_service"
	ON "service" ( -- 서비스
		"snum" ASC, -- 서비스번호
		"mid"  ASC  -- 아이디
	);

-- 서비스
ALTER TABLE "service"
	ADD
		CONSTRAINT "PK_service" -- 서비스 기본키
		PRIMARY KEY (
			"snum", -- 서비스번호
			"mid"   -- 아이디
		);

-- 후기
CREATE TABLE "review" (
	"rnum"     VARCHAR2(100) NOT NULL, -- 후기번호
	"rcontent" VARCHAR2(100) NULL,     -- 내용
	"rregdate" VARCHAR2(100) NULL,     -- 등록일자
	"rtest1"   VARCHAR2(100) NULL,     -- 평가1
	"rtest2"   VARCHAR2(100) NULL,     -- 평가2
	"rtest3"   VARCHAR2(100) NULL,     -- 평가3
	"bnum"     VARCHAR2(100) NULL,     -- 글번호
	"mid"      VARCHAR2(100) NULL      -- 아이디2
);

-- 후기 기본키
CREATE UNIQUE INDEX "PK_review"
	ON "review" ( -- 후기
		"rnum" ASC -- 후기번호
	);

-- 후기
ALTER TABLE "review"
	ADD
		CONSTRAINT "PK_review" -- 후기 기본키
		PRIMARY KEY (
			"rnum" -- 후기번호
		);

-- 댓글
CREATE TABLE "reply" (
	"renum"     VARCHAR2(100) NOT NULL, -- 댓글번호
	"reid"      VARCHAR2(100) NULL,     -- 작성자아이디
	"recontent" VARCHAR2(100) NULL,     -- 댓글내용
	"redate"    VARCHAR2(100) NULL,     -- 작성시간
	"bnum"      VARCHAR2(100) NULL      -- 글번호
);

-- 댓글 기본키
CREATE UNIQUE INDEX "PK_reply"
	ON "reply" ( -- 댓글
		"renum" ASC -- 댓글번호
	);

-- 댓글
ALTER TABLE "reply"
	ADD
		CONSTRAINT "PK_reply" -- 댓글 기본키
		PRIMARY KEY (
			"renum" -- 댓글번호
		);

-- 판매자
CREATE TABLE "seller" (
	"mid"              VARCHAR2(100) NOT NULL, -- 아이디
	"snick"            VARCHAR2(100) NULL,     -- 대화명
	"sorgproflie_flie" VARCHAR2(100) NULL,     -- 원본프로필사진이름
	"ssvprofile_file"  VARCHAR2(100) NULL,     -- 저장프로필사진이름
	"sorgint_flie"     VARCHAR2(100) NULL,     -- 원본소개사진이름
	"ssvint_flie"      VARCHAR2(100) NULL,     -- 저장소개사진이름
	"saddr1"           VARCHAR2(100) NULL,     -- 주소
	"saddr2"           VARCHAR2(100) NULL,     -- 상세주소
	"szipcode"         VARCHAR2(100) NULL,     -- 우편번호
	"sbank"            VARCHAR2(100) NULL,     -- 은행
	"saccountnum"      VARCHAR2(100) NULL,     -- 계좌번호
	"sorgaccount_flie" VARCHAR2(100) NULL,     -- 원본계좌사진이름
	"ssvaccount_flie"  VARCHAR2(100) NULL,     -- 저장계좌사진이름
	"sregiststate"     VARCHAR2(100) NULL,     -- 심사현황
	"lisence_num"      VARCHAR2(100) NULL      -- 자격코드
);

-- 판매자 기본키
CREATE UNIQUE INDEX "PK_seller"
	ON "seller" ( -- 판매자
		"mid" ASC -- 아이디
	);

-- 판매자
ALTER TABLE "seller"
	ADD
		CONSTRAINT "PK_seller" -- 판매자 기본키
		PRIMARY KEY (
			"mid" -- 아이디
		);

-- 개인판매자
CREATE TABLE "in_seller" (
	"mid"        VARCHAR2(100) NOT NULL, -- 아이디
	"isocialnum" VARCHAR2(100) NULL      -- 주민번호
);

-- 개인판매자 기본키
CREATE UNIQUE INDEX "PK_in_seller"
	ON "in_seller" ( -- 개인판매자
		"mid" ASC -- 아이디
	);

-- 개인판매자
ALTER TABLE "in_seller"
	ADD
		CONSTRAINT "PK_in_seller" -- 개인판매자 기본키
		PRIMARY KEY (
			"mid" -- 아이디
		);

-- 사업자판매자
CREATE TABLE "li_seller" (
	"mid"              VARCHAR2(100) NOT NULL, -- 아이디
	"cnum"             VARCHAR2(100) NULL,     -- 사업자번호
	"csepar"           VARCHAR2(100) NULL,     -- 구분
	"cname"            VARCHAR2(100) NULL,     -- 회사명
	"cownername"       VARCHAR2(100) NULL,     -- 대표자명
	"ccondition"       VARCHAR2(100) NULL,     -- 업태
	"cbusiness"        VARCHAR2(100) NULL,     -- 종목
	"corglisence_file" VARCHAR2(100) NULL,     -- 원본사업자사진이름
	"csvlisence_file"  VARCHAR2(100) NULL,     -- 저장사업자사진이름
	"ctel1"            VARCHAR2(100) NULL,     -- 대표번호1
	"ctel2"            VARCHAR2(100) NULL,     -- 대표번호2
	"ctel3"            VARCHAR2(100) NULL,     -- 대표번호3
	"cemail1"          VARCHAR2(100) NULL,     -- 대표이메일아이디
	"cemail2"          VARCHAR2(100) NULL,     -- 대표이메일도메인
	"cfax1"            VARCHAR2(100) NULL,     -- 대표팩스1
	"cfax2"            VARCHAR2(100) NULL,     -- 대표팩스2
	"cfax3"            VARCHAR2(100) NULL,     -- 대표팩스3
	"sname"            VARCHAR2(100) NULL,     -- 담당자이름
	"sposition"        VARCHAR2(100) NULL,     -- 직급/직책
	"stel1"            VARCHAR2(100) NULL,     -- 담당자전화번호1
	"stel2"            VARCHAR2(100) NULL,     -- 담당자전화번호2
	"stel3"            VARCHAR2(100) NULL,     -- 담당자전화번호3
	"sfax1"            VARCHAR2(100) NULL,     -- 담당자팩스1
	"sfax2"            VARCHAR2(100) NULL,     -- 담당자팩스2
	"sfax3"            VARCHAR2(100) NULL,     -- 담당자팩스3
	"semail1"          VARCHAR2(100) NULL,     -- 담당자이메일아이디
	"semail2"          VARCHAR2(100) NULL,     -- 담당자이메일도메인
	"cid2"             VARCHAR2(100) NULL      -- 아이디2
);

-- 사업자판매자 기본키
CREATE UNIQUE INDEX "PK_li_seller"
	ON "li_seller" ( -- 사업자판매자
		"mid" ASC -- 아이디
	);

-- 사업자판매자
ALTER TABLE "li_seller"
	ADD
		CONSTRAINT "PK_li_seller" -- 사업자판매자 기본키
		PRIMARY KEY (
			"mid" -- 아이디
		);

-- 자격정보
CREATE TABLE "license_info" (
	"lisence_num"  VARCHAR2(100) NOT NULL, -- 자격코드
	"lisence_info" VARCHAR2(100) NULL      -- 자격정보
);

-- 자격정보 기본키
CREATE UNIQUE INDEX "PK_license_info"
	ON "license_info" ( -- 자격정보
		"lisence_num" ASC -- 자격코드
	);

-- 자격정보
ALTER TABLE "license_info"
	ADD
		CONSTRAINT "PK_license_info" -- 자격정보 기본키
		PRIMARY KEY (
			"lisence_num" -- 자격코드
		);

-- 관리자
CREATE TABLE "admin" (
	"adid"   VARCHAR2(100) NOT NULL, -- 관리자아이디
	"adpass" VARCHAR2(100) NULL      -- 관리자비밀번호
);

-- 관리자 기본키
CREATE UNIQUE INDEX "PK_admin"
	ON "admin" ( -- 관리자
		"adid" ASC -- 관리자아이디
	);

-- 관리자
ALTER TABLE "admin"
	ADD
		CONSTRAINT "PK_admin" -- 관리자 기본키
		PRIMARY KEY (
			"adid" -- 관리자아이디
		);

-- 게시판
ALTER TABLE "board"
	ADD
		CONSTRAINT "FK_boardlist_TO_board" -- 게시판목록 -> 게시판
		FOREIGN KEY (
			"blnum" -- 게시판번호
		)
		REFERENCES "boardlist" ( -- 게시판목록
			"blnum" -- 게시판번호
		);

-- 게시판목록
ALTER TABLE "boardlist"
	ADD
		CONSTRAINT "FK_category_TO_boardlist" -- 카테고리 -> 게시판목록
		FOREIGN KEY (
			"canum" -- 카테고리번호2
		)
		REFERENCES "category" ( -- 카테고리
			"canum" -- 카테고리번호
		);

-- 회원상세
ALTER TABLE "member_detail"
	ADD
		CONSTRAINT "FK_member_TO_member_detail" -- 회원 -> 회원상세
		FOREIGN KEY (
			"mid" -- 아이디
		)
		REFERENCES "member" ( -- 회원
			"mid" -- 아이디
		);

-- 회원상세
ALTER TABLE "member_detail"
	ADD
		CONSTRAINT "FK_category_TO_member_detail" -- 카테고리 -> 회원상세
		FOREIGN KEY (
			"canum" -- 카테고리번호
		)
		REFERENCES "category" ( -- 카테고리
			"canum" -- 카테고리번호
		);

-- 서비스
ALTER TABLE "service"
	ADD
		CONSTRAINT "FK_in_seller_TO_service" -- 개인판매자 -> 서비스
		FOREIGN KEY (
			"mid" -- 아이디
		)
		REFERENCES "in_seller" ( -- 개인판매자
			"mid" -- 아이디
		);

-- 서비스
ALTER TABLE "service"
	ADD
		CONSTRAINT "FK_li_seller_TO_service" -- 사업자판매자 -> 서비스
		FOREIGN KEY (
			"mid" -- 아이디
		)
		REFERENCES "li_seller" ( -- 사업자판매자
			"mid" -- 아이디
		);

-- 후기
ALTER TABLE "review"
	ADD
		CONSTRAINT "FK_board_TO_review" -- 게시판 -> 후기
		FOREIGN KEY (
			"bnum" -- 글번호
		)
		REFERENCES "board" ( -- 게시판
			"bnum" -- 글번호
		);

-- 후기
ALTER TABLE "review"
	ADD
		CONSTRAINT "FK_member_detail_TO_review" -- 회원상세 -> 후기
		FOREIGN KEY (
			"mid" -- 아이디2
		)
		REFERENCES "member_detail" ( -- 회원상세
			"mid" -- 아이디
		);

-- 댓글
ALTER TABLE "reply"
	ADD
		CONSTRAINT "FK_board_TO_reply" -- 게시판 -> 댓글
		FOREIGN KEY (
			"bnum" -- 글번호
		)
		REFERENCES "board" ( -- 게시판
			"bnum" -- 글번호
		);

-- 판매자
ALTER TABLE "seller"
	ADD
		CONSTRAINT "FK_license_info_TO_seller" -- 자격정보 -> 판매자
		FOREIGN KEY (
			"lisence_num" -- 자격코드
		)
		REFERENCES "license_info" ( -- 자격정보
			"lisence_num" -- 자격코드
		);

-- 판매자
ALTER TABLE "seller"
	ADD
		CONSTRAINT "FK_member_TO_seller" -- 회원 -> 판매자
		FOREIGN KEY (
			"mid" -- 아이디
		)
		REFERENCES "member" ( -- 회원
			"mid" -- 아이디
		);

-- 개인판매자
ALTER TABLE "in_seller"
	ADD
		CONSTRAINT "FK_seller_TO_in_seller" -- 판매자 -> 개인판매자
		FOREIGN KEY (
			"mid" -- 아이디
		)
		REFERENCES "seller" ( -- 판매자
			"mid" -- 아이디
		);

-- 사업자판매자
ALTER TABLE "li_seller"
	ADD
		CONSTRAINT "FK_seller_TO_li_seller" -- 판매자 -> 사업자판매자
		FOREIGN KEY (
			"mid" -- 아이디
		)
		REFERENCES "seller" ( -- 판매자
			"mid" -- 아이디
		);