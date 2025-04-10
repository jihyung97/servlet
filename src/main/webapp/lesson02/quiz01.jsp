<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int sum(int n){
			int total = 0;
			for(int i = 1; i <= n;i++){
				total += i;
				
			}
			return total;
		
		}
	%>
	<%= sum(10) %>
	
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0 ; i < scores.length;i++){
			sum += scores[i];
		}
		int avg =  sum / scores.length; 
	%>
	<%= avg %>
	
	<%
	double score = 0;
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	for(int i = 0 ; i < scoreList.size();i++){
		if(scoreList.get(i) == "O"){
			score++;
			
		}
		
		
	}
	score *= 100;
	score /= scoreList.size();
	
	%>
	<h1> 점수는 <%= score %></h1>	
</body>
</html>