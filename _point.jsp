<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar,java.util.*" %>
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
		String num = request.getParameter("num")+"";
		String reason = request.getParameter("reason")+"";
		String changesstr = request.getParameter("changes")+"";
		int changes = 0;
		if(changesstr != null && !changesstr.equals("null"))
			changes = Integer.parseInt(changesstr);
		int sum = point + changes;
		Connection conn = DBUtil.getMySQLConnection();
		String sql = "UPDATE USERS SET POINT=? WHERE ID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,sum);
		pstmt.setInt(2,id);
		pstmt.executeUpdate();
		pstmt = null;
		sql = "UPDATE POINT_REQUEST_LIST SET State=? WHERE Number=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,"2");
		pstmt.setString(2,num);
		pstmt.executeUpdate();
		pstmt = null;
		
		/*현재날짜 받아오기*/
		Calendar cal = Calendar.getInstance();
		String year = Integer.toString(cal.get(Calendar.YEAR));
		String month = Integer.toString(cal.get(Calendar.MONTH)+1);
		String date = Integer.toString(cal.get(Calendar.DATE));
		String todayformat = year+"-"+month+"-"+date;
		java.sql.Date d = java.sql.Date.valueOf(todayformat);
		
		sql = "insert into POINT_HISTORY values(DEFAULT, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,idstr);
		pstmt.setString(2,changesstr);
		pstmt.setString(3,reason);
		pstmt.setDate(4,d);
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