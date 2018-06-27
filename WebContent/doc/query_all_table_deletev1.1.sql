-- �Խ���
ALTER TABLE "board"
	DROP CONSTRAINT "FK_boardlist_TO_board"; -- �Խ��Ǹ�� -> �Խ���

-- �Խ��Ǹ��
ALTER TABLE "boardlist"
	DROP CONSTRAINT "FK_category_TO_boardlist"; -- ī�װ� -> �Խ��Ǹ��

-- ȸ����
ALTER TABLE "member_detail"
	DROP CONSTRAINT "FK_member_TO_member_detail"; -- ȸ�� -> ȸ����

-- ȸ����
ALTER TABLE "member_detail"
	DROP CONSTRAINT "FK_category_TO_member_detail"; -- ī�װ� -> ȸ����

-- ����
ALTER TABLE "service"
	DROP CONSTRAINT "FK_in_seller_TO_service"; -- �����Ǹ��� -> ����

-- ����
ALTER TABLE "service"
	DROP CONSTRAINT "FK_li_seller_TO_service"; -- ������Ǹ��� -> ����

-- �ı�
ALTER TABLE "review"
	DROP CONSTRAINT "FK_board_TO_review"; -- �Խ��� -> �ı�

-- �ı�
ALTER TABLE "review"
	DROP CONSTRAINT "FK_member_detail_TO_review"; -- ȸ���� -> �ı�

-- ���
ALTER TABLE "reply"
	DROP CONSTRAINT "FK_board_TO_reply"; -- �Խ��� -> ���

-- �Ǹ���
ALTER TABLE "seller"
	DROP CONSTRAINT "FK_license_info_TO_seller"; -- �ڰ����� -> �Ǹ���

-- �Ǹ���
ALTER TABLE "seller"
	DROP CONSTRAINT "FK_member_TO_seller"; -- ȸ�� -> �Ǹ���

-- �����Ǹ���
ALTER TABLE "in_seller"
	DROP CONSTRAINT "FK_seller_TO_in_seller"; -- �Ǹ��� -> �����Ǹ���

-- ������Ǹ���
ALTER TABLE "li_seller"
	DROP CONSTRAINT "FK_seller_TO_li_seller"; -- �Ǹ��� -> ������Ǹ���

-- �Խ���
ALTER TABLE "board"
	DROP CONSTRAINT "PK_board"; -- �Խ��� �⺻Ű

-- ȸ��
ALTER TABLE "member"
	DROP CONSTRAINT "PK_member"; -- ȸ�� �⺻Ű

-- �Խ��Ǹ��
ALTER TABLE "boardlist"
	DROP CONSTRAINT "PK_boardlist"; -- �Խ��Ǹ�� �⺻Ű

-- ȸ����
ALTER TABLE "member_detail"
	DROP CONSTRAINT "PK_member_detail"; -- ȸ���� �⺻Ű

-- ī�װ�
ALTER TABLE "category"
	DROP CONSTRAINT "PK_category"; -- ī�װ� �⺻Ű

-- �ɻ�
ALTER TABLE "rate"
	DROP CONSTRAINT "PK_rate"; -- �ɻ� �⺻Ű

-- ����
ALTER TABLE "service"
	DROP CONSTRAINT "PK_service"; -- ���� �⺻Ű

-- �ı�
ALTER TABLE "review"
	DROP CONSTRAINT "PK_review"; -- �ı� �⺻Ű

-- ���
ALTER TABLE "reply"
	DROP CONSTRAINT "PK_reply"; -- ��� �⺻Ű

-- �Ǹ���
ALTER TABLE "seller"
	DROP CONSTRAINT "PK_seller"; -- �Ǹ��� �⺻Ű

-- �����Ǹ���
ALTER TABLE "in_seller"
	DROP CONSTRAINT "PK_in_seller"; -- �����Ǹ��� �⺻Ű

-- ������Ǹ���
ALTER TABLE "li_seller"
	DROP CONSTRAINT "PK_li_seller"; -- ������Ǹ��� �⺻Ű

-- �ڰ�����
ALTER TABLE "license_info"
	DROP CONSTRAINT "PK_license_info"; -- �ڰ����� �⺻Ű

-- ������
ALTER TABLE "admin"
	DROP CONSTRAINT "PK_admin"; -- ������ �⺻Ű

-- �Խ���
DROP TABLE "board";

-- ȸ��
DROP TABLE "member";

-- �Խ��Ǹ��
DROP TABLE "boardlist";

-- ȸ����
DROP TABLE "member_detail";

-- ī�װ�
DROP TABLE "category";

-- �ɻ�
DROP TABLE "rate";

-- ����
DROP TABLE "service";

-- �ı�
DROP TABLE "review";

-- ���
DROP TABLE "reply";

-- �Ǹ���
DROP TABLE "seller";

-- �����Ǹ���
DROP TABLE "in_seller";

-- ������Ǹ���
DROP TABLE "li_seller";

-- �ڰ�����
DROP TABLE "license_info";

-- ������
DROP TABLE "admin";