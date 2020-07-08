<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar,java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" import="myPackage.DBUtil" %> 
<%@ page language="java" import="myPackage.LottoNum" %> 
<%@ page language="java" import="myPackage.Link" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<%
	String id = session.getAttribute("s_id")+"";
	String now = "_remodeling.jsp";
	String url = "";
 	String roadAddrPart1 = "";
	String bdNm = "";
	String building = "";
	String title = "";
	String content = "";
	String company = "";
	String fee = "";
	String etc = "";
	String entX = "";
	String entY = "";
	String file1 = "";
	request.setCharacterEncoding("UTF-8");
	 String realFolder = "";
	 String filename1 = "";
	 int maxSize = 1024*1024*5;
	 String encType = "UTF-8";
	 String savefile = "img";
	 ServletContext scontext = getServletContext();
	 realFolder = scontext.getRealPath(savefile);
	 
	Connection conn = DBUtil.getMySQLConnection();
	try{
		  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		 	url = multi.getParameter("url")+"";
		 	if(url.equals("")) url = "NULL";
		 	roadAddrPart1 = multi.getParameter("roadAddrPart1")+"";
		 	if(roadAddrPart1.equals("")) roadAddrPart1 = "NULL";
			bdNm = multi.getParameter("bdNm")+"";
			if(bdNm.equals("")) bdNm = "NULL";
			building = multi.getParameter("building")+"";
			if(building.equals("")) building = "NULL";
			title = multi.getParameter("title")+"";
			if(title.equals("")) title = "NULL";
			content = multi.getParameter("content")+"";
			if(content.equals("")) content = "NULL";
			company = multi.getParameter("company")+"";
			if(company.equals("")) company = "NULL";
			fee = multi.getParameter("fee")+"";
			if(fee.equals("")) fee = "NULL";
			etc = multi.getParameter("etc")+"";
			if(etc.equals("")) etc = "NULL";
			entX = multi.getParameter("entX")+"";
			if(entX.equals("")) entX = "NULL";
			entY = multi.getParameter("entY")+"";
			if(entY.equals("")) entY = "NULL";
		  Enumeration<?> files = multi.getFileNames();
		     file1 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		 } catch(Exception e) {
		  e.printStackTrace();
		 }
	int error=0;
	if((title.equals("NULL") || filename1.equals("NULL")) && url.equals("")){
		%><script>alert("제목,사진과 url중 하나를 입력해주시길 바랍니다"); window,history.back();</script><%
		error++;
	}
	else if(title.equals("NULL") || filename1.equals("NULL")){
		Link MyLink = new Link(url);
		if(title.equals("NULL")){
			title = MyLink.getTitle();
		}
		if(filename1 == null){
			file1 = MyLink.getImg();
		}
	}

	if(filename1 != null)
			file1 = "img" + "/" + filename1;
	out.println(filename1);
	PreparedStatement pstmt = null;
	String sql = "INSERT INTO REMODELING VALUES(Default, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	
	//현재날짜 받아오기
	Calendar cal = Calendar.getInstance();
	String year = Integer.toString(cal.get(Calendar.YEAR));
	String month = Integer.toString(cal.get(Calendar.MONTH)+1);
	String date = Integer.toString(cal.get(Calendar.DATE));
	String todayformat = year+"-"+month+"-"+date;
	java.sql.Date d = java.sql.Date.valueOf(todayformat);
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, title);
	pstmt.setDate(3, d);
	pstmt.setString(4, company);
	pstmt.setString(5, fee);
	pstmt.setString(6, roadAddrPart1);
	pstmt.setString(7, bdNm);
	pstmt.setString(8, building);
	pstmt.setString(9, entX);
	pstmt.setString(10, entY);
	pstmt.setString(11, etc);
	pstmt.setString(12, content);
	pstmt.setString(13, url);
	if(error == 0){
		pstmt.executeUpdate();
	}
	
	//사진 넣기
	sql = "SELECT MAX(Number) FROM REMODELING";
	pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	int max = 0;
	while(rs.next()){
		max = rs.getInt("MAX(Number)");
	}
	
	sql = "Insert into RMDL_IMG values(?, 1, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, max);
	pstmt.setString(2, file1);
	if(error == 0){
		pstmt.executeUpdate();
	}
	pstmt.close();
	conn.close();
	%>
	<script>
	alert('등록을 완료했습니다.');
	self.close();
	</script>
</head>
<body>
</body>
</html>