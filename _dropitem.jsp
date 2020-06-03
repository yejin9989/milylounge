<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "index.jsp"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>

<%
// 세션 생성 create session
session.setAttribute("page", "_dropitem.jsp"); // 현재 페이지 current page
// 세션 가져오기 get session
String now = session.getAttribute("page")+""; // 현재 페이지 current page
%>
<%
now = session.getAttribute("page") + "";
String id = request.getParameter("id") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "DELETE FROM ITEM WHERE Id=?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, id);
try{pstmt.executeUpdate();}
catch(SQLException e){
	e.printStackTrace();%>
	<script>
	alert('후기를 삭제하지 못했습니다!');
	</script>");
<%
}
pstmt.close();
query="";
conn.close();
%>
<script>
		alert('후기를 삭제했습니다.');
		self.close();
</script>
</body>
</html>