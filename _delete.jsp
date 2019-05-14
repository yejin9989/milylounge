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
		Connection conn = DBUtil.getMySQLConnection();
		Statement stmt = conn.createStatement();
		String num = "";
		num = request.getParameter("num")+"";
		String sql =
				"DELETE FROM SAMPLE_REQUEST_LIST WHERE Order_num = " +num+ "";
		try{stmt.executeUpdate(sql);
		%><%=sql%><br><%}
		catch(SQLException e){
			e.printStackTrace();%>
			<script>
			alert('상태를 수정하지 못했습니다!');
			</script><%
		}
		conn.close();
		stmt.close();
		%>
		<script>
		document.location.href="result.jsp";
		</script>
	</body>
</html>