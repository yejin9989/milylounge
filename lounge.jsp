<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="db_connect.*" %>
<%@ page language="java" import="myPackage.*" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<style type="text/css">
	body{
	margin : 0px;
	}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<%session.setAttribute("page", "lounge.jsp");
String now = session.getAttribute("page")+"";
String s_id = session.getAttribute("s_id")+"";%>
<%
now = session.getAttribute("page") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "SELECT ImgPath FROM IMG WHERE Page = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, now);
rs = pstmt.executeQuery();
String img = "";
while(rs.next()){
	img = rs.getString("ImgPath");
}
conn.close();
rs.close();
pstmt.close();
query=null;
%>
<jsp:include page="navbar.jsp" flush="false"/>
<%
s_id = session.getAttribute("s_id")+"";
if(s_id.equals("100"))//관리자 계정일 경우
{%>	
<br><br><br>
<form method="post" enctype="multipart/form-data" action="_imgup.jsp">
	<input type="file" name="filename1" size=40>
	<input type="submit" value="업로드"><br>
</form>
<%}%>
<img src="<%=img%>" width="100%"><br>
<a href="sample_request.jsp"
style="color:black;text-decoration:none;position:fixed;bottom:10%;right:33%;background: white; padding:10px 32px 10px; border-width:5px; border-color:black; opacity:0.8;">신청하기</a>
<jsp:include page="footer.jsp" flush="false"/>
</body>
</html>