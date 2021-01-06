<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar,java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" import="myPackage.DBUtil" %> 
<%@ page language="java" import="myPackage.Link" %> 
<%@ page language="java" import="myPackage.GetImage" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<%
	String num = request.getParameter("num")+"";
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
	if((title==null || filename1==null) && url.equals("")){
		%><script>alert("제목,사진과 url중 하나를 입력해주시길 바랍니다"); window,history.back();</script><%
		error++;
	}
	else if(title==null || filename1==null){
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
	String sql = "Update REMODELING set Title=?, Company=?, Fee=?, Address=?, Apart_name=?, Building=?, Xpos=?, Ypos=?, Etc=?, Content=?, URL=? where Number = ?";
	
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, company);
	pstmt.setString(3, fee);
	pstmt.setString(4, roadAddrPart1);
	pstmt.setString(5, bdNm);
	pstmt.setString(6, building);
	pstmt.setString(7, entX);
	pstmt.setString(8, entY);
	pstmt.setString(9, etc);
	pstmt.setString(10, content);
	pstmt.setString(11, url);
	pstmt.setString(12, num);
	
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
	//self.close();
	</script>
</head>
<body>
</body>
</html>