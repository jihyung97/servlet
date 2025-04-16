package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class MySqlService {
	private static MySqlService mysqlService;
	private static final String URL = "jdbc:mysql://localhost:3306/test_250120";  //접속할 db명까지
	private static final String ID = "root";
	private static final String PASSWORD = "root";
	private Connection conn = null;
	private Statement statement;
	private ResultSet res;

	//Singleton pattern: MysqlService 객체가 단 한개만 생성되도록 하는 디자인패턴
	public static MySqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MySqlService();
		}
		
		return mysqlService;
		
	}
	
	//DB 접속
	
	
	public void connect() {
		
		try {
			//1. 드라이버를 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			//2. db 연결
			conn = DriverManager.getConnection(URL,ID,PASSWORD);
			//3. statement: DB 와 쿼리 수행을 하기 위한 준비
			statement =  conn.createStatement();
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	//DB disconnect
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	
	
	// CRUD
	//R : 조회 쿼리
	
	//부른쪽으로 책임을 던짐 servlet query
	public  ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	//CUD : 수행 쿼리
}
