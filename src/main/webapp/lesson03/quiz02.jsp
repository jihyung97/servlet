<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MySqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
		MySqlService ms = MySqlService.getInstance();
		ms.connect();
		String selectQuery = "select `id`, `name`,`url` from `favorites` order by `id` desc";
		ResultSet res = ms.select(selectQuery);
		
	
	

	%>
	
	
	<table border="1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		<tbody>
			<%
			while(res.next()){
			
			%>
			<tr>
				<td><%=res.getString("name") %></td>
				<td><a href="<%=res.getString("url") %>">  <%=res.getString("url") %>   </a></td>
				<td><a href="/lesson03/delete-quiz02?id=<%=res.getInt("id")%>">  삭제하기   </a></td>
			</tr>
			
			<%} %>
			
			
		</tbody>
	</table>
	
	
	
	<%
		ms.disconnect();
	%>
	
</body>
</html>