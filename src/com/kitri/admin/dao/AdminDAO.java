package com.kitri.admin.dao;

import java.util.List;
import java.util.Map;

import com.kitri.member.model.*;

public interface AdminDAO {

	List<MemberDetailDto> memberList(Map<String , String > map);

}
