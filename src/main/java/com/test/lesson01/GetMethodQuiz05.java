
	package com.test.lesson01;

	import java.io.IOException;
	import java.io.PrintWriter;

	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	@WebServlet("/lesson01/quiz05")
	public class GetMethodQuiz05 extends HttpServlet{
		@Override
		public void doGet(HttpServletRequest request,
						HttpServletResponse response) throws IOException {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			
			
			
			int number =  Integer.parseInt(request.getParameter("number")) ;
			number = Integer.valueOf(request.getParameter("number"));
			PrintWriter out = response.getWriter();
			out.println("<ul>");
			for(int i = 1; i <= 9; i++) {
				out.println("<li>" + number + "*" + i + "=" + number * i);
			}
			out.println("</ul>");
			
		}
	}



