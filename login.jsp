<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="db_connect.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI :: TooMuchItem</title>
</head>
<body>
	<h2>TMI :: TooMuchItem</h2>
	
<%
	String serverIP = "localhost"; //ifconfig localhost
	String dbname = "Milymood";
	String portNum = "3306";
	String url = "jdbc:mysql://"+serverIP+":"+portNum+"/"+dbname;
	String user = "root";
	String pass = "yejin159357";
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	//Connection conn = DBUtil.getMySQLConnection();
	//PreparedStatement pstmt;
	//ResultSet rs;
	
	////////query1///////
	String id = request.getParameter("ID");
	String pw = request.getParameter("PW"); //사용자가 login.html에서 입력한 id, 비밀번호
	String query = "select * from CUSTOMER where Id = ?";
	pstmt = conn.prepareStatement(query);
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	String password = "";
	String name = "";
	while(rs.next()){
		password = rs.getString("PW");
		name = rs.getString("Name");
	}
	rs=null;
	query="";
	pstmt.close();
	query="select md5('"+pw+"')";
	pstmt = conn.prepareStatement(query);
	rs=pstmt.executeQuery();
	String codepw="";
	while(rs.next()){
		codepw=rs.getString("md5('"+pw+"')");
	}
	conn.close(); //비밀번호 정보를 가져왔으므로 디비 연결 종료  
	
	////////////////////
%>

<%
	if(password.equals(codepw)){
		out.println("<script> alert('로그인 되었습니다. 환영합니다. :)'); </script>");
		session.setAttribute("s_id", id);
		session.setAttribute("userSession", name);
		response.sendRedirect("lounge.jsp");
		
	}else{
		out.println("<script> alert(\"회원 정보가 없습니다\");</script>"); // history.back(); 
		response.sendRedirect("lounge.jsp");
	}
%>
</body>
</html>
