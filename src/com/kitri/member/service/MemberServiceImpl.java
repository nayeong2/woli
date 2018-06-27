package com.kitri.member.service;

import java.util.*;

import com.kitri.member.dao.MemberDao;
import com.kitri.member.dao.MemberDaoImpl;
import com.kitri.member.model.*;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;

	public MemberServiceImpl() {
		memberDao = new MemberDaoImpl();
	}

	@Override
	public int idcheck(String id) {
		return memberDao.idcheck(id);
	}

	@Override
	public List<ZipDto> zipsearch(String dong) {
		return memberDao.zipsearch(dong);
	}

	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		return memberDao.registerMember(memberDetailDto);
	}

	@Override
	public MemberDetailDto getMember(String id) {
		return memberDao.getMember(id);
	}

	@Override
	public int modifyMember(MemberDetailDto memberDetailDto) {
		return memberDao.modifyMember(memberDetailDto);
	}

	@Override
	public void deleteMember(String id) {

	}

	@Override
	public MemberDto login(String id, String pass) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", id);
		map.put("userpass", pass);
		return memberDao.login(map);
	}

}












