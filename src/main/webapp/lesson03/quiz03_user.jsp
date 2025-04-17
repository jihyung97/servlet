<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    #wrapper { 
      display: grid;
      grid-template-columns: 100px 100px 100px;
      grid-template-rows: 100px ;
      margin: 30px;
    }

    .items:nth-child(2n+1) {
      background-color: #bbb;
    }

    .items:nth-child(2n) {
      background-color: #eee;
    }
  </style>
<body>

	<h1>멜론 마켓</h1>
	 <div id="wrapper">
	    <div class="items">1</div>
	    <div class="items">2</div>
	    <div class="items">3</div>
	    <div class="items">4</div>
	    <div class="items">4</div>
	    <div class="items">4</div>
	    <div class="items">4</div>
	    <div class="items">4</div>
	    <div class="items">4</div>
	    <div class="items">4</div>
	    
  	</div>
	
	
</body>
</html>