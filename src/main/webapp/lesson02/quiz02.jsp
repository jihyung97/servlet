<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz02</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<% 
	Date now = new Date();
	SimpleDateFormat sdf_date = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
	String showdate = sdf_date.format(now);
	
	
	
	// 출력 : 현재 시간은 14시 52분 43초 입니다.
	SimpleDateFormat sdf_time = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	String showtime = sdf_time.format(now);
%>
	<div class="container d-flex">
	
		<a href = "/lesson02/quiz02_1.jsp?date=<%= showtime%>" class="btn btn-primary btn-info  col-3 " value="현재 시간 보기">현재시간확인</a>
		<a href = "/lesson02/quiz02_1.jsp?date=<%=showdate%>" class="btn btn-primary  btn-success col-3" value="현재 날짜 보기">현재날짜확인</a>
	</div>
</body>
</html>