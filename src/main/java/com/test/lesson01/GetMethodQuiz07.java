package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{
	
		public void doGet(HttpServletRequest request,
				HttpServletResponse response) throws IOException {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				
				String address = request.getParameter("address");
				String price = request.getParameter("price");
				String card = request.getParameter("card");
				
				if(!address.contains("서울시")){
					out.println("배달불가 지역입니다");
				}else if(card == "신한카드") {
					out.println("결제불가 카드입니다");
				}else {
					out.println(address);
					out.println("<br>결제금액: " + price + "원");
					out.println("     <b>베달준비중</b>");
				}
				
				
				
				
		}
		

}
