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
		String now = session.getAttribute("page")+"";
		String pointstr = request.getParameter("id")+ "";
		Connection conn = DBUtil.getMySQLConnection();
		String query = "Select * from IMG where Page = ? and Id = ?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1,now);
		pstmt.setInt(2,id);
		ResultSet rs = pstmt.executeQuery();
		int next = 0;
		while(rs.next()){
			next = rs.getInt("Next");
		}
		pstmt = null;
		query = "Select * from IMG where Page = ? and Next = ?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, now);
		pstmt.setInt(2, next);
		ResultSet rs = pstmt.executeQuery();
		int prev = 0;
		while(rs.next()){
			prev = rs.getInt("Id");
		}
		

		sql = "delete from IMG where Page = ? and Id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, now);
		pstmt.setInt(2, id);
		pstmt.executeUpdate();
		
		if(next == 0){
			sql = "update IMG set next = null where Page = ? and Id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, now);
			pstmt.setInt(2, prev);
			pstmt.executeUpdate();
		}
		else if(next != 0 && prev != 0){
			sql = "update IMG set next = ? where Page = ? and Id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, next);
			pstmt.setString(2, now);
			pstmt.setString(3, prev);
			pstmt.executeUpdate();
		}
		conn.close();
		pstmt.close();
		%>
	</body>
</html>