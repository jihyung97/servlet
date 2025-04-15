<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
	
</script>

<style>
	.wrap{width:1000px;}
	header{height:70px;}
</style>
</head>
<body>
<%
	String search = request.getParameter("search");
%>
	<div class="wrap container">
		<header class="">
			<div class="d-flex">
	
				<div><h1 class="text-success">Melong</h1></div>
				<div class="d-flex w-100 pl-5 align-items-center">
					
					<form method="get" action="/lesson02/quiz10_1.jsp" class="d-flex" >
						<div class="input-group mb-3">
						<%if(search != null) {%>
						  <input type="text" class="form-control" id="search" name= "search" placeholder="<%=search%>" >
						  <%}else{ %>
						  	 <input type="text" class="form-control" id="search" name= "search" >
						  <%} %>
						  <div class="input-group-append">
						    <button type="submit" class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button>
						  </div>
						</div>
					</form>
						
						
						
				</div>
			</div>
		</header>
		<menu>
			<nav class="navbar navbar-expand-lg navbar-light  nav-fill w-100">
  	
  
				  <div class="collapse navbar-collapse " id="navbarSupportedContent">
				    <ul class="navbar-nav d-flex justify-content-between">
				      <li class="nav-item active">
				        <a class="nav-link" href="/lesson02/quiz09.jsp">멜롱챠트</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="/lesson02/quiz09.jsp?category=지상파">최신음악</a>
				      </li>
				       <li class="nav-item">
				        <a class="nav-link" href="/lesson02/quiz09.jsp?category=드라마">장르음악</a>
				      </li>
				       <li class="nav-item">
				        <a class="nav-link" href="/lesson02/quiz09.jsp?category=예능">멜롱dj</a>
				      </li>
				       <li class="nav-item">
				        <a class="nav-link" href="/lesson02/quiz09.jsp?category=영화">인기차트</a>
				      </li>

				     
				    </ul>
				   
				  </div>
			</nav>
			
		</menu>
		<div>
			<%
			
			// 아티스트 정보 

			    Map<String, Object> artistInfo = new HashMap<>();
			    artistInfo.put("name", "아이유");
			    artistInfo.put("debute", 2008);
			    artistInfo.put("agency", "EDAM엔터테인먼트");
			    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


			// 아이유 노래 리스트 
			    List<Map<String, Object>> musicList = new ArrayList<>();

			    Map<String, Object> musicInfo = new HashMap<>();
			    musicInfo.put("id", 1);
			    musicInfo.put("title", "팔레트");
			    musicInfo.put("album", "Palette");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
			    musicInfo.put("time", 217);
			    musicInfo.put("composer", "아이유");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 2);
			    musicInfo.put("title", "좋은날");
			    musicInfo.put("album", "Real");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
			    musicInfo.put("time", 233);
			    musicInfo.put("composer", "이민수");
			    musicInfo.put("lyricist", "김이나");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 3);
			    musicInfo.put("title", "밤편지");
			    musicInfo.put("album", "palette");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
			    musicInfo.put("time", 253);
			    musicInfo.put("composer", "제휘,김희원");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 4);
			    musicInfo.put("title", "삐삐");
			    musicInfo.put("album", "삐삐");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
			    musicInfo.put("time", 194);
			    musicInfo.put("composer", "이종훈");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 5);
			    musicInfo.put("title", "스물셋");
			    musicInfo.put("album", "CHAT-SHIRE");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
			    musicInfo.put("time", 194);
			    musicInfo.put("composer", "아이유,이종훈,이채규");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 6);
			    musicInfo.put("title", "Blueming");
			    musicInfo.put("album", "Love poem");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
			    musicInfo.put("time", 217);
			    musicInfo.put("composer", "아이유,이종훈,이채규");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);
			
			%>
			<h3>곡 목록</h3>
			<h3>곡정보</h3>
			<%
				
				boolean isSearchNull = search == null;
				Map<String,Object> music = null; 
				if(!isSearchNull){
				for(Map<String,Object> searching:musicList){
					if(searching.get("title").equals(search)){
						music = searching;
						
						%>
						<div class="d-flex">
							<div>
								<img src="https://i.namu.wiki/i/bcp2pWg0NtPzdfog5Hy4Ry5_6D1B48_kWrYM_OXkwhjmLtw91AmgJ3R0UrtUW6sSClXXFpd0IQ0y95GCSeJdUg.webp" width="250" height="240">
							</div>
							<div>
								<div class="d-flex"><h2><%=music.get("title") %></h2></div>
								<div><span class="text-success"><b><%=music.get("singer") %></b></span></div>
								<div>앨범 <%=music.get("album") %></div>
								<div>시간 <%=(Integer)music.get("time")/60%>:<%=(Integer)music.get("time")%60%></div>
								<div>작곡가 <%=music.get("composer") %></div>
								<div>작사가 <%=music.get("lyricist") %></div>
							</div>
						</div>
						
			<% 			
					}
				}
			}
			%>
			
			
		</div>
		<div>
			<h2><b>가사</b></h2>
			<hr>
			<h3>가사 정보 없음</h3>
			<hr>
		</div>
		<footer>copyright 2021</footer>
	</div>
	
	
	
	
	
	
	
	
	
</body>
</html>