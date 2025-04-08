package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
		public void doGet(HttpServletRequest request,
				HttpServletResponse response) throws IOException {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				List <String> list = new ArrayList<>(Arrays.asList(
				        "강남역 최고 맛집 소개 합니다.", 
				        "오늘 기분 좋은 일이 있었네요.", 
				        "역시 맛집 데이트가 제일 좋네요. 맛집은 찾기 힘든만큼 맛있습니다. 맛집최고", 
				        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
				        "자축 저 오늘 생일 이에요."));
				
				String search = request.getParameter("search");
				for(String value : list) {
					if(value.contains(search)) {
						String[] s = value.split(search);
						for(int i = 0 ; i < s.length - 1;i++) {
							out.print(s[i]);
							out.print("<b>" + search + "</b>");
							
						}
						out.print(s[s.length - 1]);
						out.print("<br>");
						
					}
					
					//주석추가 git push에 내용
				}
				
		}
}