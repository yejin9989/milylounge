<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.Calendar" %>
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
	String query = "select case when count(*)=0 then 1 else max(Order_num) + 1 end as num FROM SAMPLE_REQUEST_LIST";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	int num = 0;
	int error = 0;
	while(rs.next()){
		num = rs.getInt("num");
	}
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String mobile = "";
	String first = request.getParameter("first");
	String mobilefirst = request.getParameter("mobile_first");
	String mobilesecond = request.getParameter("mobile_last");
	mobile = first+"-"+mobilefirst+"-"+mobilesecond;
	String agree = request.getParameter("agree");
	String type = request.getParameter("type");
	
	if(agree == null){%>
		<script>
		alert('개인정보 활용에 동의하셔야 신청이 가능합니다.');
		history.back();	
		</script>
	<%
	error++;
	}
	else if(type == null){%>
		<script>
		alert('샘플 종류를 선택해주세요(커튼, 이불, 모두 중 택1)');
		history.back();
		</script>
	<%}
	else if(name.equals("") || address.equals("") || mobile.equals(""))
	{%>
		<script>
		alert('입력란을 모두 작성해주세요!');
		history.back();
		</script>
	<%
	error++;
	}
	
	else if(mobilefirst.length()<=2 || mobilesecond.length()<=2)
	{	%>
	<script>
	alert('휴대폰번호를 확인해주세요.');
	history.back();
	</script>
		<%
		error++;
	}
	
	else{	
		try{
			Integer.parseInt(first);
			Integer.parseInt(mobilefirst);
			Integer.parseInt(mobilesecond);
		}
		catch(NumberFormatException e){
			%>
			<script>
			alert('휴대폰번호는 숫자만 입력 가능합니다.');
			history.back();
			</script><%
			error++;
		}
	}
	
	if(error == 0){%>
		<script>
		if(confirm('위의 정보가 정확합니까?')
		{
		</script>
			<%
			PreparedStatement pstmt = null;
			String sql = "INSERT INTO SAMPLE_REQUEST_LIST VALUES"
				+ "(?,?,?,?,?,false,?)";
			/*현재날짜 받아오기*/
			Calendar cal = Calendar.getInstance();
			String year = Integer.toString(cal.get(Calendar.YEAR));
			String month = Integer.toString(cal.get(Calendar.MONTH)+1);
			String date = Integer.toString(cal.get(Calendar.DATE));
			String todayformat = year+"-"+month+"-"+date;
			Date d = Date.valueOf(todayformat);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, name);
			pstmt.setString(3, address);
			pstmt.setString(4, mobile);
			pstmt.setDate(5, d);
			pstmt.setString(6, type);
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
			pstmt.close();
			stmt.close();
			conn.close();
			rs.close();
			%>
			<script>
			document.location.href="finish.jsp";
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