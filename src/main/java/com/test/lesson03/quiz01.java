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

@WebServlet("/lesson03/quiz01")
public class quiz01 extends HttpServlet {
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
		
		String insertQuery = "insert into `real_estate`(`realtorId`, `address`, `area`, `type`, `price`,`rentPrice`)"
				+ "value"
				+ "(3, '헤라펠리스101동5305', 350, '매매',1500000,null)";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate`" + " order by realtorId desc;";
		out.print(selectQuery);
		try {
			ResultSet res = ms.select(selectQuery);
			while(res.next()) {  // 결과 행이 있는 동안 수행
				out.println(res.getInt("realtorId"));
				out.println(res.getString("address"));
				out.println(res.getInt("area"));
				out.println(res.getString("type"));
				out.println(res.getString("price"));
				out.println(res.getString("rentPrice"));
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// DB 연결 해제
		ms.disconnect();
	}

}
