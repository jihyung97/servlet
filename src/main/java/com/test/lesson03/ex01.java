package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson03/ex01")
public class ex01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,
					HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		//DB연결
		MySqlService ms = MySqlService.getInstance();
		ms.connect(); // 실질적인 db 연결 (꼭!!)
		
//		String insertQuery = "select * from `used_goods`;"
//				+ "insert into used_goods"
//				+ "(`sellerId`,`title`,`description`,`price`)"
//				+ "values"
//				+ "(1,'고양이 간식 팝니다','입맛이까다라워서도',2000);"
		
		//DB select & 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `used_goods`";
		try {
			ResultSet res = ms.select(selectQuery);
			while(res.next()) {  // 결과 행이 있는 동안 수행
				out.println(res.getInt("id"));
				out.println(res.getString("title"));
				out.println(res.getInt("price"));
				out.println(res.getString("description"));
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// DB 연결 해제
		ms.disconnect();
	}

}
