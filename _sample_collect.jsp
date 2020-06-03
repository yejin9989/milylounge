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
	String now = "sample_collect.jsp";
	String name ="";
	String price ="";
	String url ="";
	String tags ="";
	String attr ="";
	String detail ="";
	String s_id = session.getAttribute("s_id")+"";
	String id = "";
	request.setCharacterEncoding("UTF-8");
	 String realFolder = "";
	 String filename1 = "";
	 String filename2 = "";
	 String filename3 = "";
	 String filename4 = "";
	 String filename5 = "";
	 String filename6 = "";
	 String filename7 = "";
	 String filename8 = "";
	 String filename9 = "";
	 String filename10 = "";
	 int maxSize = 1024*1024*5;
	 String encType = "UTF-8";
	 String savefile = "img";
	 ServletContext scontext = getServletContext();
	 realFolder = scontext.getRealPath(savefile);
	 
	Connection conn = DBUtil.getMySQLConnection();
	try{
		  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		 	 name = multi.getParameter("name")+"";
		 	 price = multi.getParameter("price")+"";
		 	 url = multi.getParameter("url")+"";
		 	 tags = multi.getParameter("tags")+"";
		 	 attr = multi.getParameter("attr")+"";
		 	 detail = multi.getParameter("detail")+"";
		  Enumeration<?> files = multi.getFileNames();
		     String file1 = (String)files.nextElement();
		     String file2 = (String)files.nextElement();
		     String file3 = (String)files.nextElement();
		     String file4 = (String)files.nextElement();
		     String file5 = (String)files.nextElement();
		     String file6 = (String)files.nextElement();
		     String file7 = (String)files.nextElement();
		     String file8 = (String)files.nextElement();
		     String file9 = (String)files.nextElement();
		     String file10 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		     filename2 = multi.getFilesystemName(file2);
		     filename3 = multi.getFilesystemName(file3);
		     filename4 = multi.getFilesystemName(file4);
		     filename5 = multi.getFilesystemName(file5);
		     filename6 = multi.getFilesystemName(file6);
		     filename7 = multi.getFilesystemName(file7);
		     filename8 = multi.getFilesystemName(file8);
		     filename9 = multi.getFilesystemName(file9);
		     filename10 = multi.getFilesystemName(file10);
		 } catch(Exception e) {
		  e.printStackTrace();
		 }

	String[] tag = tags.split(",");
	
	String file1 = "img" + "/" + filename1;
	String file2 = "img" + "/" + filename2;
	String file3 = "img" + "/" + filename3;
	String file4 = "img" + "/" + filename4;
	String file5 = "img" + "/" + filename5;
	String file6 = "img" + "/" + filename6;
	String file7 = "img" + "/" + filename7;
	String file8 = "img" + "/" + filename8;
	String file9 = "img" + "/" + filename9;
	String file10 = "img" + "/" + filename10;
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
	String sql = "INSERT INTO ITEM VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?, NULL, NULL, ?, ?, ?, ?)";
	
	/*현재날짜 받아오기*/
	Calendar cal = Calendar.getInstance();
	String year = Integer.toString(cal.get(Calendar.YEAR));
	String month = Integer.toString(cal.get(Calendar.MONTH)+1);
	String date = Integer.toString(cal.get(Calendar.DATE));
	String todayformat = year+"-"+month+"-"+date;
	java.sql.Date d = java.sql.Date.valueOf(todayformat);
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, detail);
	pstmt.setString(4, file9);
	pstmt.setString(5, file8);
	pstmt.setString(6, file7);
	pstmt.setString(7, file6);
	pstmt.setString(8, file5);
	pstmt.setString(9, file4);
	pstmt.setString(10, file3);
	pstmt.setString(11, file2);
	pstmt.setString(12, file1);
	pstmt.setString(13, file1);
	pstmt.setString(14, now);
	pstmt.setString(15, s_id);
	pstmt.setString(16, price);
	pstmt.setString(17, url);
	pstmt.setString(18, attr);
	pstmt.setDate(19, d);
	pstmt.executeUpdate();

	//태그 넣어주기
	for(int i = 0; i < tag.length; i++){
		tag[i] = tag[i].trim();
		sql = "INSERT INTO ITEM_TAG(Item_id, Name) VALUES( ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, tag[i]);
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