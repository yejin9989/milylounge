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
		Connection message_conn = DBUtil.getMySQLConnection();
		ResultSet message_rs;
		Statement message_stmt;
		String message_query =
				"SELECT * FROM MESSAGE WHERE Page = \""
				+ session.getAttribute("page") + "\"";
		message_stmt = message_conn.createStatement();
		message_rs = message_stmt.executeQuery(message_query);
		String message = "";
		while(message_rs.next()){
			message = message_rs.getString("Message");
		}
		message_conn.close();
		message_rs.close();
		message_stmt.close();
		message_query = null;
		%>
	<form action="_message_edit.jsp" method = "POST" >
		<textarea style="text-align:top;" name = "edited_msg" rows="10" cols="40"><%=message%></textarea>
		<input type = "submit" value = "변경">
	</form>
	
	</body>
</html>