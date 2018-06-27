package com.kitri.admin.dao;

import java.sql.*;
import java.util.*;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.util.db.DBConnection;

public class AdminDaoImpl implements AdminDAO {

	@Override
	public List<MemberDetailDto> memberList(Map<String, String> map) {

		List<MemberDetailDto> list = new ArrayList<MemberDetailDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select m.id, m.name, m.email1, m.email2, m.joindate, ";
			sql += "		d.zipcode, d.addr1, d.addr2, d.tel1, d.tel2, d.tel3 \n";
			sql += "from member m, member_detail d \n";
			sql += "where m.id = d.id";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDetailDto memberDetailDto = new MemberDetailDto();
				memberDetailDto.setId(rs.getString("id"));
				memberDetailDto.setName(rs.getString("name"));
				memberDetailDto.setEmail1(rs.getString("email1"));
				memberDetailDto.setEmail2(rs.getString("email2"));
				memberDetailDto.setJoindate(rs.getString("joindate"));
				memberDetailDto.setZipcode(rs.getString("zipcode"));
				memberDetailDto.setAddr1(rs.getString("addr1"));
				memberDetailDto.setAddr2(rs.getString("addr2"));
				memberDetailDto.setTel1(rs.getString("tel1"));
				memberDetailDto.setTel2(rs.getString("tel2"));
				memberDetailDto.setTel3(rs.getString("tel3"));

				list.add(memberDetailDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
