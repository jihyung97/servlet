package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson03/delete-ex02")
public class DeleteEx02Servlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		//response헤더 생략
		Integer.parseInt(request.getParameter("id"));
		
		MySqlService ms = MySqlService.getInstance();
		ms.connect();
		
		//db 삭제
		String deleteQuery = "delete from `new_user` where `id` = 3;";
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ms.disconnect();
		
		try {
			response.sendRedirect("/lesson03/ex02_user.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
