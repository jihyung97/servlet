package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


	@WebServlet("/lesson01/quiz10")
	public class PostMethodQuiz10 extends HttpServlet {
		private final Map<String, String> userMap =  new HashMap<String, String>() {
		    {
		        put("id", "marobiana");
		        put("password", "qwerty1234");
		        put("name", "신보람");
		    }
		};
		public void doPost(HttpServletRequest request,
				HttpServletResponse response) throws IOException {
			response.setContentType("text/html");
			
			String id = request.getParameter("nickname");
			String password = request.getParameter("password");
			PrintWriter out = response.getWriter();
			out.println("<html><head><title>로그인</title></head><body>");
			out.println("<h3>로그인결과</h3>");
			
			if(!id.equals(userMap.get("id"))) {
				out.println("id가 일치하지 ㅇ낳습니다");
			}else if(!password.equals(userMap.get("password"))) {
				out.println("비밀번호가 일치하지 ㅇ낳습니다");
			}else {
				out.println("로그인 성공!! <br>");
				out.println(userMap.get("name") + "님 환영합니다!");
			}
			out.println("</body></html>");
			
			
			
		}
		

	}


