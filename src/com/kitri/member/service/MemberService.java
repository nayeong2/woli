package com.kitri.member.service;

import java.util.List;

import com.kitri.member.model.*;

public interface MemberService { //비지니스 로직


	int idcheck(String id); //아이디 중복검사-아이디를 검색후 값이 없는 경우 0을 리턴 (사용 가능) 있는 경우 1을 리턴(사용 불가능)
	List<ZipDto> zipsearch(String dong); //우편번호 검색- 동을 입력하면 우편번호를 리턴 - 단, 동 입력시 값이 여러개임(ex: 삼성동 - 우편번호가 여러개)
	int registerMember(MemberDetailDto memberDetailDto); 	// 회원가입
	MemberDetailDto getMember(String id); 	// 회원정보 수정을 위해 회원 정보 로딩
	int modifyMember(MemberDetailDto memberDetailDto); //회원정보 수정- 아이디 검색 후
	void deleteMember(String id); //회원탈퇴  회원삭제 - 아이디를 가져온후 아이디 비밀번호가 맞으면 삭제
	MemberDto login(String id, String pass); //로그인 - 이름/아이디/이메일 로딩


}
