<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<%@ page import="myPackage.*" %>
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
		<%//테스트 메시지 불러오기
		String msg = request.getParameter("edited_msg");
		Connection conn = DBUtil.getMySQLConnection();
		Statement stmt = conn.createStatement();
		String sql =
				"UPDATE MESSAGE SET Message = \"" + msg
				+ "\" WHERE Page = \"" + session.getAttribute("page") + "\"";
		try{stmt.executeUpdate(sql);}
		catch(SQLException e){
			e.printStackTrace();%>
			<script>
			alert('메세지를 수정하지 못했습니다!');
			</script>");
		<%
		}
		conn.close();
		stmt.close();
		sql = null;
		%>
		<%=msg%>
		<script>
		alert('메세지를 수정했습니다.');
		self.close();
		</script>
	</body>
</html>