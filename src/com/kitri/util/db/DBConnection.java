package com.kitri.util.db;

import java.sql.*;

public class DBConnection {

	static {  //static ��� �ʱ�ȭ - �ش�Ŭ������ ȣ��ɋ� ���� 1�� �ε� - Ŭ�����δ�(JVM �� Ŭ������ ���ʷ� �о���ϋ� �ѹ� ����)
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
