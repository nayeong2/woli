package com.kitri.member.service;

import java.util.List;

import com.kitri.member.model.*;

public interface MemberService { //�����Ͻ� ����


	int idcheck(String id); //���̵� �ߺ��˻�-���̵� �˻��� ���� ���� ��� 0�� ���� (��� ����) �ִ� ��� 1�� ����(��� �Ұ���)
	List<ZipDto> zipsearch(String dong); //�����ȣ �˻�- ���� �Է��ϸ� �����ȣ�� ���� - ��, �� �Է½� ���� ��������(ex: �Ｚ�� - �����ȣ�� ������)
	int registerMember(MemberDetailDto memberDetailDto); 	// ȸ������
	MemberDetailDto getMember(String id); 	// ȸ������ ������ ���� ȸ�� ���� �ε�
	int modifyMember(MemberDetailDto memberDetailDto); //ȸ������ ����- ���̵� �˻� ��
	void deleteMember(String id); //ȸ��Ż��  ȸ������ - ���̵� �������� ���̵� ��й�ȣ�� ������ ����
	MemberDto login(String id, String pass); //�α��� - �̸�/���̵�/�̸��� �ε�


}
