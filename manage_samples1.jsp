<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "index.jsp"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<title>Milymood</title>
</head>
<body>

<%
// 세션 생성 create session
session.setAttribute("page", "manage_samples.jsp"); // 현재 페이지 current page
// 세션 가져오기 get session
String now = session.getAttribute("page")+"";// 현재 페이지 current page
String type = request.getParameter("type")+"";
%>
<div>
	<h1>후기등록</h1>
	<span>후기 작성에 사용 될 이미지부터 골라주세요</span>
	<form method="post" enctype="multipart/form-data" action="_manage_samples.jsp" acceptcharset="UTF-8">
		이미지 선택:
		<input type="file" name="filename1" size=40>
		<input type="submit" value="이미지 등록"><br>
	</form>
		<!--이름: <input style="width:70%;" type="text" name="name"><br><br>
		태그: <input style="width:70%;" type="text" placeholder="태그는 쉼표(,)로 구분 가능합니다" name="tags"><br><br>
		가격: <input style="width:70%;" type="text" name="price"><br><br>
		url: <input style="width:70%;" type="text" name="url"><br><br>
		카테고리 :
		<select style="padding:5px;"name="attr">
    	<option value="living">거실</option>
    	<option value="bed">안방</option>
    	<option value="bath">화장실</option>
    	<option value="entrance">현관</option>
    	<option value="kitchen">부엌</option>
    	<option value="tip">팁</option>
    	<option value="etc">기타</option>
    	</select>
    	  -->
</div>
</body>
</html>