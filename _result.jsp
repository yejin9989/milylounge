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
		String query = "Select max(Order_num) FROM SAMPLE_REQUEST_LIST";
		ResultSet rs = stmt.executeQuery(query);
		int maxnum = 0;
		while(rs.next()){
			maxnum = rs.getInt("max(Order_num)");
		}
		rs.close();
		String state = "";
		int statenum = 0;
		for(i = 1; i <= maxnum; i++){
			String now = "State"+i+"";
			state = request.getParameter(now);
			if (state == null) continue;
			else if(state.equals("신청완료")) statenum = 0;
			else if(state.equals("발송완료")) statenum = 1;
			else statenum = 2;
			%>hellooo5<%
			String sql =
					"UPDATE SAMPLE_REQUEST_LIST SET State =" + statenum + " WHERE Order_num = " + i + "";
			try{
				stmt.executeUpdate(sql);
			}
			catch(SQLException e){
				e.printStackTrace();%>
				<script>
				alert('상태를 수정하지 못했습니다!');
				</script><%
			}
		}
		conn.close();
		stmt.close();

		%>
		<script>
		document.location.href="result.jsp";
		</script>
	</body>
</html>