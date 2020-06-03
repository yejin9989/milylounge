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
	hellooo1
		<%
		int i;
		Connection conn = DBUtil.getMySQLConnection();
		Statement stmt = conn.createStatement();
		String query = "";
		String num = request.getParameter("num")+"";
		String sql = "UPDATE POINT_REQUEST_LIST SET State = 3, Reason = "+ "%><%=reason%><%" + " WHERE Number = " + num + "";
		stmt.executeUpdate(sql);
		conn.close();
		stmt.close();

		%>
		<script>
		document.location.href="pointresult.jsp";
		</script>
	</body>
</html>