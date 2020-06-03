<!-- 포인트확인페이지 -->
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "myinfo.jsp"); %>
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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
body{
background:gray;
margin:0;
}
.topbar{
box-shadow: 0px 4px 5px 0 rgb(0,0,0,0.05);
}
.container{
position:relative;
top:38px;
width:100%;
height:800px;;
max-width:800px;
background:white;
text-align:center;
}
.profileArea{
display:inline-block;
margin-top: 100px;
width:100%;
max-width: 400px;
text-align: center;
}
.mydata{
display: inline-block;
text-align: left;
}
</style>
<title>Milymood - 나의 정보</title>
</head>
<body>
<%
String s_id = session.getAttribute("s_id")+"";
String name = session.getAttribute("name")+"";

Connection conn = DBUtil.getMySQLConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;
String query = "SELECT POINT FROM USERS WHERE ID = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, s_id);
rs = pstmt.executeQuery();
int point = 0;
while(rs.next()){
	point=rs.getInt("POINT");
}
conn.close();
pstmt.close();
rs=null;query="";
%>
<a href="pointrequest.jsp">포인트지급받기</a>
<b><%=name%></b>님의 포인트는 <%=point%>점입니다.
</body>
</html>