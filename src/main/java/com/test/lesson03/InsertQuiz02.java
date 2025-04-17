package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson03/insert-quiz02")
public class InsertQuiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,
						HttpServletResponse response) throws IOException {
		
		//response header 세팅 생략
		
		//request params
		String name = request.getParameter("siteName");
		String address = request.getParameter("siteAddress");
		
		//db 연결
		MySqlService ms = MySqlService.getInstance();
		ms.connect();
		
		//db insert
	
		String insertQuery = "insert into `favorites`"
				+ "(`name`,`url`)"
				+ "values"
				+ "('" + name + "','" + address + "');"
				;
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//db disconnect
		ms.disconnect();
		
		//유저 목록화면 이동
		try {
			response.sendRedirect("/lesson03/quiz02.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
