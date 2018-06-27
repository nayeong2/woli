package com.kitri.util.db;

import java.sql.*;

public class DBConnection {

	static {  //static 블록 초기화 - 해당클래스가 호출될떄 최초 1번 로드 - 클래스로더(JVM 이 클래스를 최초로 읽어들일떄 한번 실행)
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection makeConnection() throws SQLException {
		Connection conn = null;
		conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.43:1521:xe", "kitri", "kitri");

		return conn;

	}

}
