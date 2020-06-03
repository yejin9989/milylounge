<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar,java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" import="myPackage.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<%
	String now = "cal.jsp";
	String url = request.getParameter("url")+"";
	String id = "";
	request.setCharacterEncoding("euc-kr");
	 String realFolder = "";
	 String filename1 = "";
	 String filename2 = "";
	 String filename3 = "";
	 int maxSize = 1024*1024*5;
	 String encType = "UTF-8";
	 String savefile = "img";
	 ServletContext scontext = getServletContext();
	 realFolder = scontext.getRealPath(savefile);
	 
	Connection conn = DBUtil.getMySQLConnection();
	try{
		  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		 	 url = multi.getParameter("url")+"";
		  Enumeration<?> files = multi.getFileNames();
		     String file1 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		 } catch(Exception e) {
		  e.printStackTrace();
		 }
		 
	String file1 = "img" + "/" + filename1;
	if(id.equals("")){
		while(true){
			int i;
			Random gen = new Random();
			for(i=0; i<10; i++){
				id += gen.nextInt(10);
			}
			String query = "SELECT * FROM ITEM WHERE ID = ?";
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(query);	
			pstmt.setString(1, id);
			ResultSet rs = null;
			rs = pstmt.executeQuery();
			int count=0;
			while(rs.next()){
				count++;
			}
			if(count == 0) break;
			id="";
		}
	}
	PreparedStatement pstmt = null;
	//String sql = "INSERT INTO ITEM VALUES(?, NULL, NULL, ?, NULL, NULL, ?, NULL, NULL, NULL, NULL, NULL, ?, NULL)";
	String sql = "UPDATE IMG SET ImgPath = ?, URI = ? WHERE Page = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, file1);
	pstmt.setString(2, url);
	pstmt.setString(3, now);
	pstmt.executeUpdate();
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