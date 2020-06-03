<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar" %>
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
	text-align:center;
	background-color:white;
	}
	table {
    width: 50%;
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
<div style="float:left;text-align:left;">
<jsp:include page="navbar.jsp" flush="false"/>
</div>
<br><br><br>
<b style="color:red;">변경사항이 있을 시 저장 버튼을 꼭 눌러주세요!!</b>
<br><br>
	<form action="_membership.jsp" method="POST">
	<table style="text-align:center;margin:auto;">
	<th>no.</th>
	<th>ID</th>
	<th>이름</th>
	<th>이메일</th>
	<th>주소</th>
	<th>휴대폰</th>
	<th>닉네임</th>
	<th>회원가입일</th>
	<th>최근방문일</th>
	<th>나이</th>
	<th>생일</th>
	<th>성별</th>
	<th>포인트</th>
	<th>등급</th>
	<%
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	Statement stmt = null;
	String query = "SELECT * FROM USERS ORDER BY ID ASC";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	
	/*no.
	이름	
	아이디
	이메일
	주소
	휴대폰
	닉네임
	회원가입일
	최근방문일
	나이
	생일
	성별
	포인트
	등급*/
	String num = null;
	String id = null;
	String name = null;
	String email = null;
	String addr = null;
	String mobile = null;
	String nickname = null;
	Date create_date = null;
	Date modify_date = null;
	String birthyear = null;
	String age = null;
	String birthday = null;
	String gender = null;
	int point = 0;
	String grade = null;
	
	while(rs.next()){
		num = rs.getString("ID");
		id = rs.getString("SITE_ID"); if(id==null) addr="";
		name = rs.getString("USERNAME"); if(name==null) addr="";
		email = rs.getString("EMAIL"); if (email==null) email="";
		addr = rs.getString("ADDR"); if(addr==null) addr="";
		mobile = rs.getString("PHONE"); if(mobile==null) mobile="";
		create_date = rs.getDate("CREATE_DATE");
		modify_date = rs.getDate("MODIFY_DATE");
		birthday = rs.getString("BIRTHDAY"); if(birthday==null) birthday="";
		birthyear = rs.getString("BIRTHYEAR"); if(birthyear==null) birthyear="";
		age = rs.getString("AGE"); if(age==null) age="";
		gender = rs.getString("GENDER"); if(gender==null) gender="";
		point = rs.getInt("POINT");
		grade = rs.getString("GRADE"); if(grade==null) grade="";
	%>
	<tr>
	<td><nobr><%=num%></nobr></td>
	<td><%=id%></td>
	<td><%=name%></td>
	<td><%=email%></td>
	<td><%=addr%></td>
	<td><nobr><%=mobile%></nobr></td>
	<td><%=nickname%></td>
	<td><%=create_date%></td>
	<td><%=modify_date%></td>
	<td><%
	if(birthyear==null || birthyear.equals("")){
		String temp = age.substring(0,2)+"-"+age.substring(2);
	%>
		<%=temp%>대<%}
	else{
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int nowage = year-Integer.parseInt(birthyear);
		String temp = Integer.toString(year-Integer.parseInt(birthyear));
		%><%=temp%>세<%
	}
	%>
	</td>
	<td><%
	String month = birthday.substring(0,2);
	String day = birthday.substring(2);
	%>
	<%=month%>.<%=day%>
	</td>
	<td><%=gender%></td>
	<input type="hidden" name="id" value=<%=num%>>
	<td><a target="_blank" href="point.jsp?id=<%=num%>"><%=point%></a></td>
	<td><%=grade%></td>
	</tr>
	<%
	}
	%>
	</table>
	<input type="submit" value="저장">
	</form>
	<% 
	conn.close();
	rs.close();
	stmt.close();
	query=null;
	%>
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script>
	$(function(){
		$('.btn').click( function() {
			if($(this).val() == '신청완료')
				{
				$(this).val('발송완료');
				}
			else if($(this).val() == '발송완료')
				{
				$(this).val('구매완료');
				}
			else{
				$(this).val('신청완료');
			}
		});
	});
	</script>
<jsp:include page="footer.jsp" flush="false"/>
	</body>
</html>