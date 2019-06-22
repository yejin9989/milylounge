<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML>
<html>
	<head>
	<style type="text/css">
	</style>	
	<title></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body>
		<%
		int i;
		int result;
		String pointstr = request.getParameter("point")+ "";
		int point = Integer.parseInt(pointstr);
		String idstr = request.getParameter("id")+"";
		int id = Integer.parseInt(idstr);
		Connection conn = DBUtil.getMySQLConnection();
		String sql = "UPDATE USERS SET POINT=? WHERE ID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,point);
		pstmt.setInt(2,id);
		pstmt.executeUpdate();
		conn.close();
		pstmt.close();
		%>
		<script>
		opener.parent.location.reload();
		self.close();
		</script>
	</body>
</html>