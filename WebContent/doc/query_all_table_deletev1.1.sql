-- 게시판
ALTER TABLE "board"
	DROP CONSTRAINT "FK_boardlist_TO_board"; -- 게시판목록 -> 게시판

-- 게시판목록
ALTER TABLE "boardlist"
	DROP CONSTRAINT "FK_category_TO_boardlist"; -- 카테고리 -> 게시판목록

-- 회원상세
ALTER TABLE "member_detail"
	DROP CONSTRAINT "FK_member_TO_member_detail"; -- 회원 -> 회원상세

-- 회원상세
ALTER TABLE "member_detail"
	DROP CONSTRAINT "FK_category_TO_member_detail"; -- 카테고리 -> 회원상세

-- 서비스
ALTER TABLE "service"
	DROP CONSTRAINT "FK_in_seller_TO_service"; -- 개인판매자 -> 서비스

-- 서비스
ALTER TABLE "service"
	DROP CONSTRAINT "FK_li_seller_TO_service"; -- 사업자판매자 -> 서비스

-- 후기
ALTER TABLE "review"
	DROP CONSTRAINT "FK_board_TO_review"; -- 게시판 -> 후기

-- 후기
ALTER TABLE "review"
	DROP CONSTRAINT "FK_member_detail_TO_review"; -- 회원상세 -> 후기

-- 댓글
ALTER TABLE "reply"
	DROP CONSTRAINT "FK_board_TO_reply"; -- 게시판 -> 댓글

-- 판매자
ALTER TABLE "seller"
	DROP CONSTRAINT "FK_license_info_TO_seller"; -- 자격정보 -> 판매자

-- 판매자
ALTER TABLE "seller"
	DROP CONSTRAINT "FK_member_TO_seller"; -- 회원 -> 판매자

-- 개인판매자
ALTER TABLE "in_seller"
	DROP CONSTRAINT "FK_seller_TO_in_seller"; -- 판매자 -> 개인판매자

-- 사업자판매자
ALTER TABLE "li_seller"
	DROP CONSTRAINT "FK_seller_TO_li_seller"; -- 판매자 -> 사업자판매자

-- 게시판
ALTER TABLE "board"
	DROP CONSTRAINT "PK_board"; -- 게시판 기본키

-- 회원
ALTER TABLE "member"
	DROP CONSTRAINT "PK_member"; -- 회원 기본키

-- 게시판목록
ALTER TABLE "boardlist"
	DROP CONSTRAINT "PK_boardlist"; -- 게시판목록 기본키

-- 회원상세
ALTER TABLE "member_detail"
	DROP CONSTRAINT "PK_member_detail"; -- 회원상세 기본키

-- 카테고리
ALTER TABLE "category"
	DROP CONSTRAINT "PK_category"; -- 카테고리 기본키

-- 심사
ALTER TABLE "rate"
	DROP CONSTRAINT "PK_rate"; -- 심사 기본키

-- 서비스
ALTER TABLE "service"
	DROP CONSTRAINT "PK_service"; -- 서비스 기본키

-- 후기
ALTER TABLE "review"
	DROP CONSTRAINT "PK_review"; -- 후기 기본키

-- 댓글
ALTER TABLE "reply"
	DROP CONSTRAINT "PK_reply"; -- 댓글 기본키

-- 판매자
ALTER TABLE "seller"
	DROP CONSTRAINT "PK_seller"; -- 판매자 기본키

-- 개인판매자
ALTER TABLE "in_seller"
	DROP CONSTRAINT "PK_in_seller"; -- 개인판매자 기본키

-- 사업자판매자
ALTER TABLE "li_seller"
	DROP CONSTRAINT "PK_li_seller"; -- 사업자판매자 기본키

-- 자격정보
ALTER TABLE "license_info"
	DROP CONSTRAINT "PK_license_info"; -- 자격정보 기본키

-- 관리자
ALTER TABLE "admin"
	DROP CONSTRAINT "PK_admin"; -- 관리자 기본키

-- 게시판
DROP TABLE "board";

-- 회원
DROP TABLE "member";

-- 게시판목록
DROP TABLE "boardlist";

-- 회원상세
DROP TABLE "member_detail";

-- 카테고리
DROP TABLE "category";

-- 심사
DROP TABLE "rate";

-- 서비스
DROP TABLE "service";

-- 후기
DROP TABLE "review";

-- 댓글
DROP TABLE "reply";

-- 판매자
DROP TABLE "seller";

-- 개인판매자
DROP TABLE "in_seller";

-- 사업자판매자
DROP TABLE "li_seller";

-- 자격정보
DROP TABLE "license_info";

-- 관리자
DROP TABLE "admin";