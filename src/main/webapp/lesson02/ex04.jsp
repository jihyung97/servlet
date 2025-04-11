<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문과 자료구조 사용</title>
</head>
<body>
<table>
<table border="1">
<%
	//map을 테이블로 나타내기
	//{"korean"=85, "english" = 100, "math" = 90, "science" = 100}
	Map<String,Integer>scoreMap = new HashMap<>();
	scoreMap.put("korean",85);
	scoreMap.put("english",72);
	scoreMap.put("math",90);
	scoreMap.put("science",100);
	Iterator<String>iter = scoreMap.keySet().iterator();
	
	while(iter.hasNext()){
		String key = iter.next();
	
%>

	
		<tr>
			<th><%=key%></th>
			<td><%=scoreMap.get(key)%></td>
		</tr>
	
<% } %>
</table>
</body>
</html>