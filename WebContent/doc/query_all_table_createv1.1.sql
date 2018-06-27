-- �Խ���
CREATE TABLE "board" (
	"bnum"     VARCHAR2(100) NOT NULL, -- �۹�ȣ
	"bid"      VARCHAR2(100) NULL,     -- ���̵�
	"bsubject" VARCHAR2(100) NULL,     -- ����
	"bcontent" VARCHAR2(100) NULL,     -- ����
	"bhit"     VARCHAR2(100) NULL,     -- ��ȸ��
	"bdate"    VARCHAR2(100) NULL,     -- ���ۼ��ð�
	"bimage"   VARCHAR2(100) NULL,     -- �̹���
	"blnum"    VARCHAR2(100) NULL      -- �Խ��ǹ�ȣ
);

-- �Խ��� �⺻Ű
CREATE UNIQUE INDEX "PK_board"
	ON "board" ( -- �Խ���
		"bnum" ASC -- �۹�ȣ
	);

-- �Խ���
ALTER TABLE "board"
	ADD
		CONSTRAINT "PK_board" -- �Խ��� �⺻Ű
		PRIMARY KEY (
			"bnum" -- �۹�ȣ
		);

-- ȸ��
CREATE TABLE "member" (
	"mid"       VARCHAR2(100) NOT NULL, -- ���̵�
	"mpass"     VARCHAR2(50)  NULL,     -- ��й�ȣ
	"mname"     VARCHAR2(50)  NULL,     -- �̸�
	"memail1"   VARCHAR2(50)  NULL,     -- �̸��Ͼ��̵�
	"memail2"   VARCHAR2(50)  NULL,     -- �̸��ϵ�����
	"mjoindate" VARCHAR2(50)  NULL      -- ������
);

-- ȸ�� �⺻Ű
CREATE UNIQUE INDEX "PK_member"
	ON "member" ( -- ȸ��
		"mid" ASC -- ���̵�
	);

-- ȸ��
ALTER TABLE "member"
	ADD
		CONSTRAINT "PK_member" -- ȸ�� �⺻Ű
		PRIMARY KEY (
			"mid" -- ���̵�
		);

-- �Խ��Ǹ��
CREATE TABLE "boardlist" (
	"blnum"  VARCHAR2(100) NOT NULL, -- �Խ��ǹ�ȣ
	"blname" VARCHAR2(100) NULL,     -- �Խ����̸�
	"bltype" VARCHAR2(100) NULL,     -- �Խ�������
	"canum"  VARCHAR2(100) NULL      -- ī�װ���ȣ2
);

-- �Խ��Ǹ�� �⺻Ű
CREATE UNIQUE INDEX "PK_boardlist"
	ON "boardlist" ( -- �Խ��Ǹ��
		"blnum" ASC -- �Խ��ǹ�ȣ
	);

-- �Խ��Ǹ��
ALTER TABLE "boardlist"
	ADD
		CONSTRAINT "PK_boardlist" -- �Խ��Ǹ�� �⺻Ű
		PRIMARY KEY (
			"blnum" -- �Խ��ǹ�ȣ
		);

-- ȸ����
CREATE TABLE "member_detail" (
	"mid"        VARCHAR2(100) NOT NULL, -- ���̵�
	"mdzipcode"  VARCHAR2(20)  NULL,     -- �����ȣ
	"mdaddr"     VARCHAR2(100) NULL,     -- �ּ�
	"mdaddr2"    VARCHAR2(100) NULL,     -- ���ּ�
	"mdlocation" VARCHAR2(100) NULL,     -- �������
	"mdtel1"     VARCHAR2(30)  NULL,     -- ��ȭ��ȣ1
	"mdtel2"     VARCHAR2(30)  NULL,     -- ��ȭ��ȣ2
	"mdtel3"     VARCHAR2(30)  NULL,     -- ��ȭ��ȣ3
	"canum"      VARCHAR2(100) NULL      -- ī�װ���ȣ
);

-- ȸ���� �⺻Ű
CREATE UNIQUE INDEX "PK_member_detail"
	ON "member_detail" ( -- ȸ����
		"mid" ASC -- ���̵�
	);

-- ȸ����
ALTER TABLE "member_detail"
	ADD
		CONSTRAINT "PK_member_detail" -- ȸ���� �⺻Ű
		PRIMARY KEY (
			"mid" -- ���̵�
		);

-- ī�װ�
CREATE TABLE "category" (
	"canum"  VARCHAR2(100) NOT NULL, -- ī�װ���ȣ
	"caname" VARCHAR2(100) NULL      -- ī�װ��̸�
);

-- ī�װ� �⺻Ű
CREATE UNIQUE INDEX "PK_category"
	ON "category" ( -- ī�װ�
		"canum" ASC -- ī�װ���ȣ
	);

-- ī�װ�
ALTER TABLE "category"
	ADD
		CONSTRAINT "PK_category" -- ī�װ� �⺻Ű
		PRIMARY KEY (
			"canum" -- ī�װ���ȣ
		);

-- �ɻ�
CREATE TABLE "rate" (
	"ratenum"  VARCHAR2(100) NOT NULL, -- �ɻ��ȣ
	"ratename" VARCHAR2(100) NULL      -- �ɻ��̸�
);

-- �ɻ� �⺻Ű
CREATE UNIQUE INDEX "PK_rate"
	ON "rate" ( -- �ɻ�
		"ratenum" ASC -- �ɻ��ȣ
	);

-- �ɻ�
ALTER TABLE "rate"
	ADD
		CONSTRAINT "PK_rate" -- �ɻ� �⺻Ű
		PRIMARY KEY (
			"ratenum" -- �ɻ��ȣ
		);

-- ����
CREATE TABLE "service" (
	"snum"          VARCHAR2(100) NOT NULL, -- ���񽺹�ȣ
	"mid"           VARCHAR2(100) NOT NULL, -- ���̵�
	"scategorynum"  VARCHAR2(100) NULL,     -- ī�װ���ȣ
	"sprice"        VARCHAR2(100) NULL,     -- �ݾ�
	"speople"       VARCHAR2(100) NULL,     -- �ο�
	"sstart_date"   VARCHAR2(100) NULL,     -- ���۱Ⱓ
	"send_date"     VARCHAR2(100) NULL,     -- ����Ⱓ
	"sservice_name" VARCHAR2(100) NULL,     -- �����̸�
	"slocation1"    VARCHAR2(100) NULL,     -- ��������1
	"slocation2"    VARCHAR2(100) NULL,     -- ��������2
	"scontent"      VARCHAR2(100) NULL,     -- ����
	"simage_name"   VARCHAR2(100) NULL      -- �̹����̸�
);

-- ���� �⺻Ű
CREATE UNIQUE INDEX "PK_service"
	ON "service" ( -- ����
		"snum" ASC, -- ���񽺹�ȣ
		"mid"  ASC  -- ���̵�
	);

-- ����
ALTER TABLE "service"
	ADD
		CONSTRAINT "PK_service" -- ���� �⺻Ű
		PRIMARY KEY (
			"snum", -- ���񽺹�ȣ
			"mid"   -- ���̵�
		);

-- �ı�
CREATE TABLE "review" (
	"rnum"     VARCHAR2(100) NOT NULL, -- �ı��ȣ
	"rcontent" VARCHAR2(100) NULL,     -- ����
	"rregdate" VARCHAR2(100) NULL,     -- �������
	"rtest1"   VARCHAR2(100) NULL,     -- ��1
	"rtest2"   VARCHAR2(100) NULL,     -- ��2
	"rtest3"   VARCHAR2(100) NULL,     -- ��3
	"bnum"     VARCHAR2(100) NULL,     -- �۹�ȣ
	"mid"      VARCHAR2(100) NULL      -- ���̵�2
);

-- �ı� �⺻Ű
CREATE UNIQUE INDEX "PK_review"
	ON "review" ( -- �ı�
		"rnum" ASC -- �ı��ȣ
	);

-- �ı�
ALTER TABLE "review"
	ADD
		CONSTRAINT "PK_review" -- �ı� �⺻Ű
		PRIMARY KEY (
			"rnum" -- �ı��ȣ
		);

-- ���
CREATE TABLE "reply" (
	"renum"     VARCHAR2(100) NOT NULL, -- ��۹�ȣ
	"reid"      VARCHAR2(100) NULL,     -- �ۼ��ھ��̵�
	"recontent" VARCHAR2(100) NULL,     -- ��۳���
	"redate"    VARCHAR2(100) NULL,     -- �ۼ��ð�
	"bnum"      VARCHAR2(100) NULL      -- �۹�ȣ
);

-- ��� �⺻Ű
CREATE UNIQUE INDEX "PK_reply"
	ON "reply" ( -- ���
		"renum" ASC -- ��۹�ȣ
	);

-- ���
ALTER TABLE "reply"
	ADD
		CONSTRAINT "PK_reply" -- ��� �⺻Ű
		PRIMARY KEY (
			"renum" -- ��۹�ȣ
		);

-- �Ǹ���
CREATE TABLE "seller" (
	"mid"              VARCHAR2(100) NOT NULL, -- ���̵�
	"snick"            VARCHAR2(100) NULL,     -- ��ȭ��
	"sorgproflie_flie" VARCHAR2(100) NULL,     -- ���������ʻ����̸�
	"ssvprofile_file"  VARCHAR2(100) NULL,     -- ���������ʻ����̸�
	"sorgint_flie"     VARCHAR2(100) NULL,     -- �����Ұ������̸�
	"ssvint_flie"      VARCHAR2(100) NULL,     -- ����Ұ������̸�
	"saddr1"           VARCHAR2(100) NULL,     -- �ּ�
	"saddr2"           VARCHAR2(100) NULL,     -- ���ּ�
	"szipcode"         VARCHAR2(100) NULL,     -- �����ȣ
	"sbank"            VARCHAR2(100) NULL,     -- ����
	"saccountnum"      VARCHAR2(100) NULL,     -- ���¹�ȣ
	"sorgaccount_flie" VARCHAR2(100) NULL,     -- �������»����̸�
	"ssvaccount_flie"  VARCHAR2(100) NULL,     -- ������»����̸�
	"sregiststate"     VARCHAR2(100) NULL,     -- �ɻ���Ȳ
	"lisence_num"      VARCHAR2(100) NULL      -- �ڰ��ڵ�
);

-- �Ǹ��� �⺻Ű
CREATE UNIQUE INDEX "PK_seller"
	ON "seller" ( -- �Ǹ���
		"mid" ASC -- ���̵�
	);

-- �Ǹ���
ALTER TABLE "seller"
	ADD
		CONSTRAINT "PK_seller" -- �Ǹ��� �⺻Ű
		PRIMARY KEY (
			"mid" -- ���̵�
		);

-- �����Ǹ���
CREATE TABLE "in_seller" (
	"mid"        VARCHAR2(100) NOT NULL, -- ���̵�
	"isocialnum" VARCHAR2(100) NULL      -- �ֹι�ȣ
);

-- �����Ǹ��� �⺻Ű
CREATE UNIQUE INDEX "PK_in_seller"
	ON "in_seller" ( -- �����Ǹ���
		"mid" ASC -- ���̵�
	);

-- �����Ǹ���
ALTER TABLE "in_seller"
	ADD
		CONSTRAINT "PK_in_seller" -- �����Ǹ��� �⺻Ű
		PRIMARY KEY (
			"mid" -- ���̵�
		);

-- ������Ǹ���
CREATE TABLE "li_seller" (
	"mid"              VARCHAR2(100) NOT NULL, -- ���̵�
	"cnum"             VARCHAR2(100) NULL,     -- ����ڹ�ȣ
	"csepar"           VARCHAR2(100) NULL,     -- ����
	"cname"            VARCHAR2(100) NULL,     -- ȸ���
	"cownername"       VARCHAR2(100) NULL,     -- ��ǥ�ڸ�
	"ccondition"       VARCHAR2(100) NULL,     -- ����
	"cbusiness"        VARCHAR2(100) NULL,     -- ����
	"corglisence_file" VARCHAR2(100) NULL,     -- ��������ڻ����̸�
	"csvlisence_file"  VARCHAR2(100) NULL,     -- �������ڻ����̸�
	"ctel1"            VARCHAR2(100) NULL,     -- ��ǥ��ȣ1
	"ctel2"            VARCHAR2(100) NULL,     -- ��ǥ��ȣ2
	"ctel3"            VARCHAR2(100) NULL,     -- ��ǥ��ȣ3
	"cemail1"          VARCHAR2(100) NULL,     -- ��ǥ�̸��Ͼ��̵�
	"cemail2"          VARCHAR2(100) NULL,     -- ��ǥ�̸��ϵ�����
	"cfax1"            VARCHAR2(100) NULL,     -- ��ǥ�ѽ�1
	"cfax2"            VARCHAR2(100) NULL,     -- ��ǥ�ѽ�2
	"cfax3"            VARCHAR2(100) NULL,     -- ��ǥ�ѽ�3
	"sname"            VARCHAR2(100) NULL,     -- ������̸�
	"sposition"        VARCHAR2(100) NULL,     -- ����/��å
	"stel1"            VARCHAR2(100) NULL,     -- �������ȭ��ȣ1
	"stel2"            VARCHAR2(100) NULL,     -- �������ȭ��ȣ2
	"stel3"            VARCHAR2(100) NULL,     -- �������ȭ��ȣ3
	"sfax1"            VARCHAR2(100) NULL,     -- ������ѽ�1
	"sfax2"            VARCHAR2(100) NULL,     -- ������ѽ�2
	"sfax3"            VARCHAR2(100) NULL,     -- ������ѽ�3
	"semail1"          VARCHAR2(100) NULL,     -- ������̸��Ͼ��̵�
	"semail2"          VARCHAR2(100) NULL,     -- ������̸��ϵ�����
	"cid2"             VARCHAR2(100) NULL      -- ���̵�2
);

-- ������Ǹ��� �⺻Ű
CREATE UNIQUE INDEX "PK_li_seller"
	ON "li_seller" ( -- ������Ǹ���
		"mid" ASC -- ���̵�
	);

-- ������Ǹ���
ALTER TABLE "li_seller"
	ADD
		CONSTRAINT "PK_li_seller" -- ������Ǹ��� �⺻Ű
		PRIMARY KEY (
			"mid" -- ���̵�
		);

-- �ڰ�����
CREATE TABLE "license_info" (
	"lisence_num"  VARCHAR2(100) NOT NULL, -- �ڰ��ڵ�
	"lisence_info" VARCHAR2(100) NULL      -- �ڰ�����
);

-- �ڰ����� �⺻Ű
CREATE UNIQUE INDEX "PK_license_info"
	ON "license_info" ( -- �ڰ�����
		"lisence_num" ASC -- �ڰ��ڵ�
	);

-- �ڰ�����
ALTER TABLE "license_info"
	ADD
		CONSTRAINT "PK_license_info" -- �ڰ����� �⺻Ű
		PRIMARY KEY (
			"lisence_num" -- �ڰ��ڵ�
		);

-- ������
CREATE TABLE "admin" (
	"adid"   VARCHAR2(100) NOT NULL, -- �����ھ��̵�
	"adpass" VARCHAR2(100) NULL      -- �����ں�й�ȣ
);

-- ������ �⺻Ű
CREATE UNIQUE INDEX "PK_admin"
	ON "admin" ( -- ������
		"adid" ASC -- �����ھ��̵�
	);

-- ������
ALTER TABLE "admin"
	ADD
		CONSTRAINT "PK_admin" -- ������ �⺻Ű
		PRIMARY KEY (
			"adid" -- �����ھ��̵�
		);

-- �Խ���
ALTER TABLE "board"
	ADD
		CONSTRAINT "FK_boardlist_TO_board" -- �Խ��Ǹ�� -> �Խ���
		FOREIGN KEY (
			"blnum" -- �Խ��ǹ�ȣ
		)
		REFERENCES "boardlist" ( -- �Խ��Ǹ��
			"blnum" -- �Խ��ǹ�ȣ
		);

-- �Խ��Ǹ��
ALTER TABLE "boardlist"
	ADD
		CONSTRAINT "FK_category_TO_boardlist" -- ī�װ� -> �Խ��Ǹ��
		FOREIGN KEY (
			"canum" -- ī�װ���ȣ2
		)
		REFERENCES "category" ( -- ī�װ�
			"canum" -- ī�װ���ȣ
		);

-- ȸ����
ALTER TABLE "member_detail"
	ADD
		CONSTRAINT "FK_member_TO_member_detail" -- ȸ�� -> ȸ����
		FOREIGN KEY (
			"mid" -- ���̵�
		)
		REFERENCES "member" ( -- ȸ��
			"mid" -- ���̵�
		);

-- ȸ����
ALTER TABLE "member_detail"
	ADD
		CONSTRAINT "FK_category_TO_member_detail" -- ī�װ� -> ȸ����
		FOREIGN KEY (
			"canum" -- ī�װ���ȣ
		)
		REFERENCES "category" ( -- ī�װ�
			"canum" -- ī�װ���ȣ
		);

-- ����
ALTER TABLE "service"
	ADD
		CONSTRAINT "FK_in_seller_TO_service" -- �����Ǹ��� -> ����
		FOREIGN KEY (
			"mid" -- ���̵�
		)
		REFERENCES "in_seller" ( -- �����Ǹ���
			"mid" -- ���̵�
		);

-- ����
ALTER TABLE "service"
	ADD
		CONSTRAINT "FK_li_seller_TO_service" -- ������Ǹ��� -> ����
		FOREIGN KEY (
			"mid" -- ���̵�
		)
		REFERENCES "li_seller" ( -- ������Ǹ���
			"mid" -- ���̵�
		);

-- �ı�
ALTER TABLE "review"
	ADD
		CONSTRAINT "FK_board_TO_review" -- �Խ��� -> �ı�
		FOREIGN KEY (
			"bnum" -- �۹�ȣ
		)
		REFERENCES "board" ( -- �Խ���
			"bnum" -- �۹�ȣ
		);

-- �ı�
ALTER TABLE "review"
	ADD
		CONSTRAINT "FK_member_detail_TO_review" -- ȸ���� -> �ı�
		FOREIGN KEY (
			"mid" -- ���̵�2
		)
		REFERENCES "member_detail" ( -- ȸ����
			"mid" -- ���̵�
		);

-- ���
ALTER TABLE "reply"
	ADD
		CONSTRAINT "FK_board_TO_reply" -- �Խ��� -> ���
		FOREIGN KEY (
			"bnum" -- �۹�ȣ
		)
		REFERENCES "board" ( -- �Խ���
			"bnum" -- �۹�ȣ
		);

-- �Ǹ���
ALTER TABLE "seller"
	ADD
		CONSTRAINT "FK_license_info_TO_seller" -- �ڰ����� -> �Ǹ���
		FOREIGN KEY (
			"lisence_num" -- �ڰ��ڵ�
		)
		REFERENCES "license_info" ( -- �ڰ�����
			"lisence_num" -- �ڰ��ڵ�
		);

-- �Ǹ���
ALTER TABLE "seller"
	ADD
		CONSTRAINT "FK_member_TO_seller" -- ȸ�� -> �Ǹ���
		FOREIGN KEY (
			"mid" -- ���̵�
		)
		REFERENCES "member" ( -- ȸ��
			"mid" -- ���̵�
		);

-- �����Ǹ���
ALTER TABLE "in_seller"
	ADD
		CONSTRAINT "FK_seller_TO_in_seller" -- �Ǹ��� -> �����Ǹ���
		FOREIGN KEY (
			"mid" -- ���̵�
		)
		REFERENCES "seller" ( -- �Ǹ���
			"mid" -- ���̵�
		);

-- ������Ǹ���
ALTER TABLE "li_seller"
	ADD
		CONSTRAINT "FK_seller_TO_li_seller" -- �Ǹ��� -> ������Ǹ���
		FOREIGN KEY (
			"mid" -- ���̵�
		)
		REFERENCES "seller" ( -- �Ǹ���
			"mid" -- ���̵�
		);