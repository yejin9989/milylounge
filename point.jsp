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
	body{
	text-align:center;
	}
	</style>	
	<title></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body>
		<%//테스트 메시지 불러오기
		Connection conn = DBUtil.getMySQLConnection();
		ResultSet rs;
		Statement stmt;
		String id = request.getParameter("id")+"";
		String query =
				"SELECT * FROM USERS WHERE ID = \""
				+ id + "\"";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		int point = 0;
		while(rs.next()){
			point = rs.getInt("POINT");
		}
		conn.close();
		rs.close();
		stmt.close();
		query = null;
		%>
	<form action="_point.jsp" method = "POST" >
		현재 포인트는 <%=point%>점 입니다.
		<label>포인트변경</label><input type = "text" name="point">점
		<input type = "hidden" name = "id" value = <%=id%>> 
		<input type = "submit" value = "변경">
	</form>
	</body>
</html>