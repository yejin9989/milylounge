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
	String query = "select case when count(*)=0 then 1 else max(Order_num) + 1 end as num FROM TRAVEL_REQUEST_LIST";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	int num = 0;
	int error = 0;
	while(rs.next()){
		num = rs.getInt("num");
	}
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String mobile = request.getParameter("mobile");
	String agree = request.getParameter("agree");
	//String type = request.getParameter("type");
	//State		int
	String area_type = request.getParameter("area_type");
	String area_size = request.getParameter("area_size");
	String add_room = request.getParameter("add_room");
	String living_expand = request.getParameter("living_expand");
	String construct_date = request.getParameter("construct_date");
	String construct_date_defined = "";
	construct_date_defined = request.getParameter("construct_date_defined");
	String entrance = request.getParameter("entrance");
	String livingroom = request.getParameter("livingroom");
	String bedroom = request.getParameter("bedroom");
	String kitchen = request.getParameter("kitchen");
	String bathroom = request.getParameter("bathroom");
	
	/*시공일 미정 선택시 0으로*/
	if(construct_date_defined != null)
		construct_date = "0";
	
	if(agree == null){%>
		<script>
		alert('개인정보 활용에 동의하셔야 신청이 가능합니다.');
		history.back();	
		</script>
	<%
	error++;
	}
	else if(entrance == null && livingroom==null && bedroom==null && kitchen==null && bathroom==null){%>
		<script>
		alert('인테리어 종류를 선택해주세요(현관, 거실, 침실, 부엌, 화장실 중 택1)');
		history.back();
		</script>
	<%
	error++;
	}
	else if(name.equals("") || address.equals("") || mobile.equals("") || construct_date.equals(""))
	{%>
		<script>
		alert('입력란을 모두 작성해주세요!');
		history.back();
		</script>
	<%
	error++;
	}
	
	else if(mobile.length()<=9 || mobile.length()>=14 )
	{	%>
	<script>
	alert('휴대폰번호를 확인해주세요.');
	history.back();
	</script>
		<%
		error++;
	}
	
	else{
			mobile = mobile.replace("-","");
			try{
				Integer.parseInt(mobile);
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
		var correct = confirm('위의 정보가 정확합니까?')
		</script><%
	}
	if(error == 0){
			PreparedStatement pstmt = null;
			String sql = "INSERT INTO TRAVEL_REQUEST_LIST VALUES"
				+ "(?,?,?,?,?,0,?,?,?,?,?,?,?,?,?,?)";
			/*현재날짜 받아오기*/
			Calendar cal = Calendar.getInstance();
			String year = Integer.toString(cal.get(Calendar.YEAR));
			String month = Integer.toString(cal.get(Calendar.MONTH)+1);
			String date = Integer.toString(cal.get(Calendar.DATE));
			String todayformat = year+"-"+month+"-"+date;
			Date d = Date.valueOf(todayformat);
			
			/*옵션을 선택하지 않은 방종류들은 0으로 초기화*/
			if (entrance == null) entrance = "0";
			if (livingroom == null) livingroom = "0";
			if (bedroom == null) bedroom = "0";
			if (kitchen == null) kitchen = "0";
			if (bathroom == null) bathroom = "0";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, name);
			pstmt.setString(3, address);
			pstmt.setString(4, mobile);
			pstmt.setDate(5, d);
			pstmt.setString(6, area_type);
			pstmt.setString(7, area_size);
			pstmt.setString(8, add_room);
			pstmt.setString(9, living_expand);
			pstmt.setString(10, construct_date);
			pstmt.setString(11, entrance);
			pstmt.setString(12, livingroom);
			pstmt.setString(13, bedroom);
			pstmt.setString(14, kitchen);
			pstmt.setString(15, bathroom);
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
			document.location.href="travel_finish.jsp";
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