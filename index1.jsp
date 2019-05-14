<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "index.jsp"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<style type="text/css">
html {
  height: 100%;
}

* {
  box-sizing: border-box;
}
.bg-image {
  /* The image used */
  /*background-image: url("img/blurry.jpg");*/
  background-color:#131313;

  /* Add the blur effect */
  /*filter: blur(85px);
  -webkit-filter: blur(85px);*/

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0); /* Black w/opacity/see-through */
  color: white;
  border:0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  height:100%;
  width: 100%;
  padding: 20px;
  text-align: center;
}
body{
width:100%;
height:100%;
padding:0px;
margin:0px;
border:0px;
}
.wrapper{
display:grid;
width:100%;
height:100%;
grid-template-columns:10% 10% 10% 10% 10% 10% 10% 10% 10% 10%;
grid-template-rows:2% 2% 6% 36% 2% 2% 18% 2% 2% 9% 2% 2% 9%;
}
.item{
}
.item img{
position:relative;
/*border:2px solid red;*/
margin:0px auto;
width:100px;
}
#item1{
grid-column-start:1;
grid-column-end:6;
grid-row-start:4;
grid-row-end:5;
border-right: 1px solid rgba(255, 255, 255, .1);
}
#item2{
grid-column-start:6;
grid-column-end:11;
grid-row-start:4;
grid-row-end:5;
}
#item3{
grid-column-start:1;
grid-column-end:7;
grid-row-start:7;
grid-row-end:8;
border-right: 1px solid rgba(255, 255, 255, .1);
}
#item4{
grid-column-start:7;
grid-column-end:11;
grid-row-start:7;
grid-row-end:8;
}
#item5{
grid-column-start:1;
grid-column-end:11;
grid-row-start:10;
grid-row-end:11;
}
#item6{
grid-column-start:1;
grid-column-end:11;
grid-row-start:13;
grid-row-end:14;
}
.line{
border-bottom: 1px solid rgba(255, 255, 255, .1);
}
#line1{
grid-column-start:2;
grid-column-end:10;
grid-row-start:5;
grid-row-end:6;
}
#line2{
grid-column-start:2;
grid-column-end:10;
grid-row-start:8;
grid-row-end:9;
}
#line3{
grid-column-start:2;
grid-column-end:10;
grid-row-start:11;
grid-row-end:12;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<div class="bg-image"></div>
<div class="bg-text" style="padding:0">
<div class="topbar" style="background-color:transparent;">
	<div class="menu_button" id="menuToggle">
	<input type="checkbox" id="menubtn"/><img class="menu_icon" src="img/menu_white.png" style="width:30px;height:30px;">
	<div class="menu_content">
		<img src="img/backarrow.png" style="width:23px;height:30px;">
		<ul>
		<li id="content"><a href="https://smartstore.naver.com/milymood" style="color:black;text-decoration:none;"><nobr>밀리무드 공식몰</nobr></a></li>
		<li id="content"><a href="order_status.jsp"style="color:black;text-decoration:none;"><nobr>신청현황</nobr></a></li>
		<li id="content"><a href="story.jsp" style="color:black;text-decoration:none;"><nobr>story</nobr></a></li>
		<li id="content"><nobr>이벤트</nobr></li>
		<li id="content"><nobr>공지사항</nobr></li>
		<li id="content"><nobr>QnA</nobr></li>
		<li id="content"><nobr>출석체크</nobr></li>
		<li id="content"><nobr>신청후기</nobr></li>
		</ul>
	</div>
	</div>
</div>
<div class="wrapper">
<div class="item" id="item1" style="background-color:transparent;"><a href="/sample_request.jsp"><img alt="커튼신청" src="img/curtainbtn.png" style="top:40%;"></a></div>
<div class="item" id="item2" style="background-color:transparent;"><a href="/sample_request.jsp"><img alt="침구신청" src="img/beddingbtn.png" style="top:40%;"></a></div>
<div class="item" id="item3" style="background-color:transparent;"><a href="/sample_request.jsp"><img alt="블라인드신청" src="img/blindbtn.png" style="height:100%; width:auto;"></a></div>
<div class="item" id="item4" style="background-color:transparent;"><a href="/sample_request.jsp"><img alt="기타신청" src="img/etcbtn.png"></a></div>
<div class="item" id="item5" style="background-color:transparent;"><a href="/order_status.jsp"><img alt="신청현황" src="img/orderstatusbtn.png" style="height:100%; width:auto;"></a></div>
<div class="item" id="item6" style="background-color:transparent;"><a href="https://m.smartstore.naver.com/milymood"><img alt="공식홈가기" src="img/officialmallbtn.png" style="height:100%; width:auto;"></a></div>
<div class="line" id="line1">&nbsp;</div>
<div class="line" id="line2">&nbsp;</div>
<div class="line" id="line3">&nbsp;</div>
</div>
</div>
</body>
</html>