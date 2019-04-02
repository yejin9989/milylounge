<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="db_connect.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = session.getAttribute("s_id")+"";
String name = session.getAttribute("userSession")+"";

Connection conn = DBUtil.getMySQLConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;
String query = "SELECT Coupon FROM CUSTOMER WHERE Id = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, id);
rs = pstmt.executeQuery();
int coupon = 0;
while(rs.next()){
	coupon=rs.getInt("Coupon");
}
conn.close();
pstmt.close();
rs=null;query="";
%>
<a href="coupon_new">쿠폰등록하기</a>
<b><%=name%></b>님이 가진 쿠폰 갯수는 <%=coupon%>개입니다.
</body>
</html>