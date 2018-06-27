package com.kitri.member.dao;

import java.sql.*;
import java.util.*;

import com.kitri.member.model.*;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class MemberDaoImpl implements MemberDao {


	@Override
	public int idcheck(String id) {
		int cnt = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select count(id) cnt \n";
			sql += "from member \n";
			sql += "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
		} catch (SQLException e) {
			cnt = 1;
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return cnt;
	}

	@Override
	public List<ZipDto> zipsearch(String dong) {
		List<ZipDto> list = new ArrayList<ZipDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select zipcode, sido || ' ' || gugun || ' ' || doro as address \n";
			sql += "from zipcode \n";
			sql += "where doro like '%'||?||'%'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dong);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ZipDto zipDto = new ZipDto();
				zipDto.setZipcode(rs.getString("zipcode"));
				zipDto.setAddress(rs.getString("address"));

				list.add(zipDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "insert all \n";
			sql += "	into member (name, id, pass, email1, email2, joindate) \n";
			sql += "	values (?, ?, ?, ?, ?, sysdate) \n";
			sql += "	into member_detail (id, zipcode, addr1, addr2, tel1, tel2, tel3) \n";
			sql += "	values (?, ?, ?, ?, ?, ?, ?)";
			sql += "select * from dual";


			pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, memberDetailDto.getName());
			pstmt.setString(++idx, memberDetailDto.getId());
			pstmt.setString(++idx, memberDetailDto.getPass());
			pstmt.setString(++idx, memberDetailDto.getEmail1());
			pstmt.setString(++idx, memberDetailDto.getEmail2());
			pstmt.setString(++idx, memberDetailDto.getId());
			pstmt.setString(++idx, memberDetailDto.getZipcode());
			pstmt.setString(++idx, memberDetailDto.getAddr1());
			pstmt.setString(++idx, memberDetailDto.getAddr2());
			pstmt.setString(++idx, memberDetailDto.getTel1());
			pstmt.setString(++idx, memberDetailDto.getTel2());
			pstmt.setString(++idx, memberDetailDto.getTel3());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return cnt;
	}

	@Override
	public MemberDetailDto getMember(String id) {
		System.out.println("MEMBERDAO check >>> " + id);
		MemberDetailDto memberDetailDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select m.name, m.id, m.pass, m.email1, m.email2, m.joindate, md.zipcode, md.addr1, md.addr2, md.tel1, md.tel2, md.tel3 \n";
			sql += "from member m, member_detail md \n";
			sql += "where m.id = md.id";
			sql += "and m.id  = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				memberDetailDto = new MemberDetailDto();
				memberDetailDto.setId(rs.getString("id"));
				memberDetailDto.setName(rs.getString("name"));
				memberDetailDto.setPass(rs.getString("pass"));
				memberDetailDto.setEmail1(rs.getString("email1"));
				memberDetailDto.setEmail2(rs.getString("email2"));
				memberDetailDto.setJoindate(rs.getString("joindate"));
				memberDetailDto.setZipcode(rs.getString("zipcode"));
				memberDetailDto.setAddr1(rs.getString("addr1"));
				memberDetailDto.setAddr2(rs.getString("addr2"));
				memberDetailDto.setTel1(rs.getString("tel1"));
				memberDetailDto.setTel2(rs.getString("tel2"));
				memberDetailDto.setTel3(rs.getString("tel3"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return memberDetailDto;
	}

	@Override
	public int modifyMember(MemberDetailDto memberDetailDto) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "update member \n";
			sql += "set pass = \'?\', email1 = \'?\', email2 = \'?\' \n";
			sql += "where id = \'?\' ";
			sql += "update member_detail \n";
			sql += "set zipcode = \'?\', addr1 = \'?\', addr2 = \'?\',  tel1 = \'?\', tel2 = \'?\', tel3 = \'?\' \n";
			sql += "where id = \'?\' ";
			sql += "commit";

			pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, memberDetailDto.getPass());
			pstmt.setString(++idx, memberDetailDto.getEmail1());
			pstmt.setString(++idx, memberDetailDto.getEmail2());
			pstmt.setString(++idx, memberDetailDto.getId());
			pstmt.setString(++idx, memberDetailDto.getZipcode());
			pstmt.setString(++idx, memberDetailDto.getAddr1());
			pstmt.setString(++idx, memberDetailDto.getAddr2());
			pstmt.setString(++idx, memberDetailDto.getTel1());
			pstmt.setString(++idx, memberDetailDto.getTel2());
			pstmt.setString(++idx, memberDetailDto.getTel3());
			cnt = pstmt.executeUpdate();

		} catch (SQLException e) {
			String sql = "";
			sql += "rollback";
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

		return cnt;
	}

	@Override
	public void deleteMember(String id) {

	}

	@Override
	public MemberDto login(Map<String, String> map) {
		MemberDto memberDto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select id, name, email1, email2 \n";
			sql += "from member \n";
			sql += "where id = ? and pass= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpass"));
			rs = pstmt.executeQuery();
			if(rs.next()) {
				memberDto = new MemberDto();
				memberDto.setId(rs.getString("id"));
				memberDto.setName(rs.getString("name"));
				memberDto.setEmail1(rs.getString("email1"));
				memberDto.setEmail2(rs.getString("email2"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return memberDto;
	}

}
