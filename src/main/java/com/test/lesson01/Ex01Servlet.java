package com.test.lesson01;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Servlet extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,
					HttpServletResponse response) throws IOException {
		//한글 깨짐 방지 - response header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		out.println("안녕하세요!");
		
	}
}
