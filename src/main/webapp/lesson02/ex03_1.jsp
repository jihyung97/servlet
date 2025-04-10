<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST METHOD  결과</title>
</head>
<body>

<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String foodArray[] = request.getParameterValues("food");
	String fruit = request.getParameter("fruit");
%>	
	<table border ="1">
		<tr>
			<th>별명</th>
			<td> <%=nickname%></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby%></td>
		</tr>
		<tr>
			<th>강아지 or 고양이</th>
			<td><%=animal%></td>
		</tr>
		<tr>
			<th>선호 괴식</th>
			<td><%
			
					String result = "";
					if(foodArray != null){
						for(String food: foodArray){
							result += food + ",";
							
						}
					}
					
					out.print(result);
			%></td>
		</tr>
		<tr>
			<th>과일</th>
			<td><%=fruit%></td>
		</tr>
	</table>
</body>
</html>