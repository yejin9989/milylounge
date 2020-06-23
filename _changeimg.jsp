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
	request.setCharacterEncoding("utf-8");
	String id = "";
	//String greet = request.getParameter("greet");
	 String realFolder = "";
	 String url = "";
	 String filename1 = "";
	 int maxSize = 1024*1024*5;
	 String encType = "utf-8";
	 String savefile = "img";
	 ServletContext scontext = getServletContext();
	 realFolder = scontext.getRealPath(savefile);
	 
	Connection conn = DBUtil.getMySQLConnection();
	try{
		  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

		  Enumeration<?> files = multi.getFileNames();
		     String file1 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		     id = multi.getParameter("id")+"";
		     url = multi.getParameter("url")+"";
		 } catch(Exception e) {
		  e.printStackTrace();
		 }
		 
	String fullpath = "img" + "/" + filename1;
	
	PreparedStatement pstmt = null;
	String sql = "UPDATE IMG SET ImgPath = ?, URI = ? WHERE ID = ? And Page = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, fullpath);
	pstmt.setString(2, url);
	pstmt.setString(3, id);
	pstmt.setString(4, now);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	%>
	<script>
	alert('사진 수정을 완료했습니다.');
	document.location.href=<%=now%>;
	</script>
</head>
<body>
<img src="<%=fullpath%>" width=512 height=384></img>
<%=fullpath%>
<%=now%>
<%=id%>
</body>
</html>