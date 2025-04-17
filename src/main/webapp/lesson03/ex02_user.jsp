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
	String selectQuery = "select * from `new_user`";
	ResultSet res = ms.select(selectQuery);
	
	
	

%>
<%-- 여기페이지  -> deleteservlet -> 다시여기페이지로 돌아옴 --%>

	<h1>사용자 목록</h1>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이메일</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		
		<%
			while(res.next()){
		%>
			<tr>
				<th><%=res.getInt("id")%></th>
				<th><%=res.getString("name")%></th>
				<th><%=res.getString("yyyymmdd")%></th>
				<th><%=res.getString("email")%></th>
				<th><%=res.getString("introduce")%></th>
				<th><a href = "/lesson03/delete-ex02?id=<%=res.getInt("id")%>">삭제하기</a></th>
			</tr>
		
		<%
			} 
		%>
		</tbody>
	</table>
	
	<%ms.disconnect(); %>
</body>
</html>