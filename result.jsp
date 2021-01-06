<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML>
<html>
<head>
<script src="//code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<script type="text/javascript" src="js/jquery.techbytarun.excelexportjs.js"></script>
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
	<form action="_result.jsp" method="POST">
	<table id="sample_request" style="text-align:center;margin:auto;">
	<th>no.</th>
	<th>이름</th>
	<th>주소</th>
	<th>샘플종류</th>
	<th>휴대폰</th>
	<th>요청일자</th>
	<th>현황</th>
	<th>삭제</th>
	<%
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	Statement stmt = null;
	String query = "SELECT * FROM SAMPLE_REQUEST_LIST ORDER BY Order_num DESC";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	
	String num;
	String name;
	String addr;
	String mobile;
	Date date;
	int com;
	int type;
	String now ="";//현황 문자
	String sample="";//샘플 문자
	
	while(rs.next()){
		num = rs.getString("Order_num");
		name = rs.getString("Name");
		addr = rs.getString("Address");
		mobile = rs.getString("Mobile");
		date = rs.getDate("Order_date");
		com = rs.getInt("State");
		if(com == 0) now="신청완료";
		else if(com == 1) now="발송완료";
		else now="구매완료";
		type = rs.getInt("Type");
		if(type == 1) sample="커튼";
		else if(type == 2) sample="이불";
		else sample="커튼&이불";
	%>
	<tr>
	<td><nobr><%=num%></nobr></td>
	<td><%=name%></td>
	<td><%=addr%></td>
	<td><nobr><%=sample%></nobr></td>
	<td><nobr><%=mobile%></nobr></td>
	<td><%=date%></td>
	<td>
	<select name = "State<%=num%>">
	<option selected disabled hidden><%=now%></option>
	<option value="신청완료">신청완료</option>
	<option value="발송완료">발송완료</option>
	<option value="구매완료">구매완료</option>
	</select>
	</td>
	<td><a href="/_delete.jsp?&num=<%=num%>" onclick="return delchk();">X</a></td>
	</tr>
	<%
	}
	%>
	</table>
	<input type="submit" value="저장">
	<button id='btnExport' type='button'>Export</button>
	</form>
	<% 
	conn.close();
	rs.close();
	stmt.close();
	query=null;
	%>
	<script>
		function delchk(){
			return confirm('정말 삭제하시겠습니까?')
		}
	</script>
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
<script type="text/javascript"> 
$(document).ready(function () { 
	$("#btnExport").click(function () { 
		$("#sample_request").excelexportjs({ containerid: "tblExport" , datatype: 'table' }); 
		}); 
	}); 
</script>
<jsp:include page="footer.jsp" flush="false"/>
	</body>
</html>