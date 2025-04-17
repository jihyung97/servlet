<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>즐겨찾기</h1>
	<form method="get" action="/lesson03/insert-quiz02" >
			<div class="d-flex align-items-end">
				<input type="text" id="siteName" name= "siteName" class="form-control col-5" >
			</div>
			<div>
				<input type="text" name="siteAddress">
			</div>
			<div>
				<input type="submit" class="btn btn-primary btn-block col-2 ml-4" value="추가">
			</div>
				
	</form>
	
</body>
</html>