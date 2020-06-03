<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
	<style type="text/css">
	body{
	width:100%;
	margin : 0px;
	background-color:white;
	}
	table {
    width: 80%;
   	font-size:0.75em;
    border-collapse: collapse;
    text-align:center;
  	}
    td {
    border-bottom: 1px solid #bbbbbb;
    padding: 5px;
    }
    th{
    border-bottom: 1px solid #444444;
    padding: 5px;
    background-color : white;
    }
	</style>	
	<title></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
<jsp:include page="navbar.jsp" flush="false"/>
<div style="text-align: center;">
<br><br><br>
<br><br>
	<table style="text-align:center;margin:auto;">
	<th>no.</th>
	<th>구매처</th>
	<th>주문번호</th>
	<th>구매자명</th>
	<th>연락처</th>
	<th>포인트변경하기</th>
	<%
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	Statement stmt = null;
	String query = "SELECT * FROM POINT_REQUEST_LIST ORDER BY Number DESC";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	
	String num = "";
	String purchase = "";
	String ordernum = "";
	String name = "";
	String phone = "";
	//String photo = "";
	//String items = "";
	String id = "";
	int com = 0;
	String now="";
	while(rs.next()){
		num = rs.getString("Number");
		name = rs.getString("Name");
		phone = rs.getString("Phone");
		purchase = rs.getString("Purchase");
		ordernum = rs.getString("Ordernum");
		//photo = rs.getString("Photo");
		//items = rs.getString("Items");
		id = rs.getString("Id");
		com = rs.getInt("State");
		if(com != 0) continue;
	%>
	<tr>
	<td><nobr><%=num%></nobr></td>
	<td>
	<%/*if(photo==null)
		out.print("사진없음");
	else if(photo.equals("null") || photo.equals("NULL") || photo.equals("Null"))
		out.print("사진없음");
	else{
		//photo = photo.substring(4);
		out.print("<a href=\"checkimg.jsp?img="+photo+"\">");
		out.print("<img src="+photo+" width=\"200px\">");
		out.print("</a>");
	}*/
	%>
	<%=purchase%>
	</td>
	<td><%=ordernum%></td>
	<td><nobr><%=name%></nobr></td>
	<td><nobr><%=phone%></nobr></td>
	
	<td><a target="_blank" href="point.jsp?id=<%=id%>&num=<%=num%>">변경</a></td>
	</tr>
	<%
	}
	%>
	</table>
	<% 
	conn.close();
	rs.close();
	stmt.close();
	query=null;
	%>
	</div>
<jsp:include page="footer.jsp" flush="false"/>
	</body>
</html>