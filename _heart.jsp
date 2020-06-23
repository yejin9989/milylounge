<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar" %>
<%@ page language="java" import="myPackage.*" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	body{
	margin : 0px;
	}
</style>	
<title></title>
</head>
<body>
	<%
	String UserId = request.getParameter("UserId")+"";
	
	if(UserId.equals("") || UserId.equals("null")){
		%><script>
		alert("로그인 후 이용 가능합니다!");
		location.href("login.jsp");
		</script><%
	}
	
	String ReviewId = request.getParameter("ReviewId")+"";
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	String query = "select count(*) from HEART where UserId = ? and ReviewId = ?";
	pstmt = conn.prepareStatement(query);
	pstmt.setInt(1, Integer.parseInt(UserId));
	pstmt.setString(2, ReviewId);
	
	rs = pstmt.executeQuery();
	int exist = 0;
	while(rs.next()){
		exist = rs.getInt("count(*)");
	}
	if(exist>0){
		query = "delete from HEART where UserId = ? and ReviewId = ?";
		pstmt = null;
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, Integer.parseInt(UserId));
		pstmt.setString(2, ReviewId);
		pstmt.executeUpdate();
	}
	else{
		query = "insert into HEART values(Default, ?, ?)";
		pstmt = null;
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, ReviewId);
		pstmt.setInt(2,Integer.parseInt(UserId));
		pstmt.executeUpdate();
	}
	%>
</body>
<script>
window.onload = function(){
	self.close();
}
</script>
</html>