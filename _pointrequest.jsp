<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar,java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" import="myPackage.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<%
	 String now = session.getAttribute("page")+"";
	String img = session.getAttribute("img")+"";
	Connection conn = DBUtil.getMySQLConnection();
	String purchase = "";
	purchase = request.getParameter("purchase");
	String ordernum = "";
	ordernum = request.getParameter("ordernum");
	String name = "";
	name = request.getParameter("name");
	String phone = "";
	phone = request.getParameter("phone");
	String items = "";
	items = request.getParameter("items");
	String s_id = session.getAttribute("s_id")+"";
	PreparedStatement pstmt = null;
	String sql = "insert into POINT_REQUEST_LIST values(?,DEFAULT,NULL,?,?,NULL,DEFAULT,null, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, s_id); 
	//pstmt.setString(2, img);
	pstmt.setString(2, name);
	pstmt.setString(3, phone);
	pstmt.setString(4, purchase);
	pstmt.setString(5, ordernum);
	//pstmt.setString(5, items);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	%>
	<script>
	alert('쿠폰발급 신청이 완료되었습니다!');
	self.close();
	</script>
</head>
<body>
<img src="<%=img%>" width=512 height=384></img>
<%=s_id%>
<%=img%><br>
<%=name%><br>
<%=phone%><br>
<%=items%><br>
</body>
</html>