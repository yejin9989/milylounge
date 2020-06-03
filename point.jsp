<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML>
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
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
		String num = request.getParameter("num")+"";
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
		현재 <b><%=point%></b>점<br>
		변경 후 <b style="color:#2c8f5d;" id='result'><%=point%></b>점<br>
		포인트변경 <br>
		<input type = "text" name="changes" id='changes' placeholder="0"><br>
		<input type = "text" name="reason" id='reason' style="width:200px;" placeholder="포인트 변경 사유를 입력하세요."><br>
		<input type = "hidden" name = "id" value = <%=id%>> 
		<input type = "hidden" name = "num" value = <%=num%>> 
		<input type = "hidden" name = "point" value = <%=point%>>
		<input type = "submit" value = "변경">
		<input type = "button" value = "반려" onclick="location.href='_pointresult.jsp?num=<%=num%>'">
	</form>
	</body>
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
	$('#changes').keyup(function(){
		var num = $(this).val();
		var sum = Number(<%=point%>)+Number(num);
		$('#result').text(sum);
	})
	
	function check(){
		if(!$('#changes').val() || !$('#reason').val())
			alert();
	}
	</script>
</html>