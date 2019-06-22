<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar,java.security.SecureRandom" %>
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
	<ul class="navbar">
  	<li><a href="lounge.jsp">뒤로가기</a></li> 
	</ul>
	<%
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	Statement stmt = null;
	String query = "select case when count(*)=0 then 1 else max(ID) + 1 end as num FROM USERS";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	int num = 0;
	int error = 0;
	while(rs.next()){
		num = rs.getInt("num");
	}
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String sns_id = request.getParameter("sns_id");
	String sns_type = request.getParameter("sns_type");
	String gender = request.getParameter("gender");
	String email= request.getParameter("email");
	String birthday = request.getParameter("birthday");
	String birthyear = null;
	String age = request.getParameter("age");
	if(sns_id != "" && sns_id != null){
		/*생일포맷수정*/
		age = age.replaceAll("-","");
		birthday = birthday.replaceAll("-","");
		
		/*중복가입정보가 있는 지?*/
		String sql = "SELECT *, COUNT(*) AS exist FROM USERS WHERE SNS_ID = \'"+sns_id
		+"\' AND SNS_TYPE = \'"+sns_type+"\'";
		rs.close();stmt.close();
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		int exist = 0;
		int index = 0;
		while(rs.next()){
			exist = rs.getInt("exist");
			index = rs.getInt("ID");
			name = rs.getString("USERNAME");
		}
		if(exist != 0){
		%><script>alert("로그인되었습니다!")</script><%
		session.setAttribute("page", "");
		session.setAttribute("s_id", index);
		session.setAttribute("name", name);
		error++;
		response.sendRedirect("index1.jsp");
		}
	}
	else if(id == "" || id == null){%>
		<script>
		alert('아이디는 필수입력정보입니다.');
		history.back();	
		</script>
	<%
	error++;
	}
	else if(pw == "" || pw == null){%>
	<script>
	alert('비밀번호는 필수입력정보입니다.');
	history.back();	
	</script>
	<%
	error++;
	}
	else if(birthday.length()<8 || birthday.length()>8)
	{%>
		<script>
		alert('생일은 8자리 숫자로 입력해주세요 ex)19891028');
		history.back();
		</script>
	<%
	error++;
	}
	else{	
		try{
			Integer.parseInt(birthday);
			birthyear = birthday.substring(0,4);
			birthday = birthday.substring(4);
		}
		catch(NumberFormatException e){
			%>
			<script>
			alert('생년월일은 숫자만 입력 가능합니다.');
			history.back();
			</script><%
			error++;
		}
	}
	
	if(error == 0){%>
		<script>
		if(confirm('위의 정보가 정확합니까?'))
		{
		</script>
			<%
/*   
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| ID          | int(11)      | NO   | PRI | NULL    | auto_increment |
| SITE_ID     | varchar(20)  | YES  |     | NULL    |                |
| PW          | varchar(120) | YES  |     | NULL    |                |
| USERNAME    | varchar(50)  | YES  | MUL | NULL    |                |
| EMAIL       | varchar(50)  | YES  | MUL | NULL    |                |
| NICKNAME    | varchar(50)  | YES  |     | NULL    |                |
| SNS_ID      | varchar(255) | YES  | MUL | NULL    |                |
| SNS_TYPE    | varchar(10)  | YES  |     | NULL    |                |
| CREATE_DATE | datetime     | YES  |     | NULL    |                |
| MODIFY_DATE | datetime     | YES  |     | NULL    |                |
| BIRTHDAY    | varchar(9)   | YES  |     | NULL    |                |
| GENDER      | char(1)      | YES  |     | NULL    |                |
| POINT       | int(11)      | YES  |     | 0       |                |
| GRADE       | varchar(50)  | YES  |     | silver  |                |
+-------------+--------------+------+-----+---------+----------------+
14 rows in set (0.00 sec)
*/
			PreparedStatement pstmt = null;
			String sql = "INSERT INTO USERS VALUES"
				+ "(?,?,?,?,?,null,null,?,?,?,?,?,?,?,?,?,default,default)";
			/*현재날짜 받아오기*/
			Calendar cal = Calendar.getInstance();
			String year = Integer.toString(cal.get(Calendar.YEAR));
			String month = Integer.toString(cal.get(Calendar.MONTH)+1);
			String date = Integer.toString(cal.get(Calendar.DATE));
			String todayformat = year+"-"+month+"-"+date;
			Date d = Date.valueOf(todayformat);
			/*비밀번호 보안저장*/
			/*SecureRandom random = new SecureRandom();
			int salt_size = 60;
			String salt = "";
			for(int i=0;i<salt_size;i++){
				salt += random.nextInt(10);
			}
			String password = salt + pw;
			*/
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, id);
			pstmt.setString(3, pw);
			pstmt.setString(4, name);
			pstmt.setString(5, email);
			pstmt.setString(6, nickname);
			pstmt.setString(7, sns_id);
			pstmt.setString(8, sns_type);
			pstmt.setDate(9, d);
			pstmt.setDate(10, d);
			pstmt.setString(11, birthday);
			pstmt.setString(12, birthyear);
			pstmt.setString(13, age);
			pstmt.setString(14, gender);
			try{
				pstmt.executeUpdate();
			}catch(SQLException e){
			%>
			<script>
			alert('신청에 실패했습니다.');
			history.back();
			</script>
			<%
			}
			out.println(pstmt);
			pstmt.close();
			stmt.close();
			conn.close();
			rs.close();
			%>
			<script>
			document.location.href="welcome.jsp";
			</script>
			<script>
		}
		else{
			history.back();
		}
		</script>
	<%
	}%>
</body>
</html>