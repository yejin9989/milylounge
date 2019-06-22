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
<div class="topbar">
	<div class="menu_button" id="menuToggle">
	<input type="checkbox" id="menubtn"/><img class="menu_icon" src="img/menu.png" style="width:20px;height:20px;">
	<div class="menu_content">
		<img src="img/backarrow.png" height="22px">
		<ul>
		<li id="content"><a href="https://smartstore.naver.com/milymood" style="color:black;text-decoration:none;"><nobr>밀리무드 공식몰</nobr></a></li>
		<li id="content"><a href="order_status.jsp"style="color:black;text-decoration:none;"><nobr>신청현황</nobr></a></li>
		<li id="content"><a href="story.jsp" style="color:black;text-decoration:none;"><nobr>story</nobr></a></li>
		<li id="content"><nobr>이벤트</nobr></li>
		<li id="content"><nobr>공지사항</nobr></li>
		<li id="content"><nobr>QnA</nobr></li>
		<li id="content"><nobr>출석체크</nobr></li>
		<li id="content"><nobr>신청후기</nobr></li>
		</ul>
	</div>
	</div>
	<div class="milylounge">
	<a href="index.jsp"><img id="logo" src="img/milylounge.png" style="width:90px;"></a>
	</div>
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
	
<div id="footer" class="g_footer _footer">
    <!-- 법적고지 -->
    
    <!-- //법적고지 -->
    <div class="g_info_footer">
        <div class="g_center_area">
            <a id="toggleme" class="g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info">밀리무드 사업자정보</a>
            <!-- 사업자 기본정보 -->
            <div class="g_info_area _business_info_area">
                <dl>
                    <dt>대표</dt>
                    <dd>길영민</dd>
                    <dt>주소</dt>
                    <dd>대구광역시 북구 대현동 <span class="g_en">199-8</span>번지</dd>
                    <dt>전화</dt>
                    <dd><a class="g_en" href="tel:010-5498-6603">010-5498-6603</a> (대표전화/고객센터)</dd>
                    <dt>문의</dt>
                    <dd><a class="g_en" href="mail:zenith9500@naver.com" target="_blank">zenith9500@naver.com</a></dd>
                    <dt class="g_w2">사업자등록번호</dt>
                    <dd><span class="g_en">476-30-00276</span></dd>
                    <dt class="g_w2">통신판매업신고번호</dt>
                    <dd>제<span class="g_en">2017-</span>대구북구<span class="g_en">-0141</span>호</dd>
                    <dt class="g_w2">호스팅 서비스 제공</dt>
                    <dd>카페24</dd>
                </dl>
            </div>
            <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
            <script>
            	$(document).ready( function() {
            		$('#toggleme').click( function(){
            		if($('#toggleme').hasClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on'))
            			$('#toggleme').removeClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on').addClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info');
            		else
            			$('#toggleme').removeClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info').addClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on');
            		
            		});
            	})
            </script>
            <!-- //사업자 기본정보 -->
            <div class="g_link_area">
                <a href="https://www.ftc.go.kr/www/bizCommList.do?key=232" class="N=a:fot.sellerinfo" target="_blank"><span class="g_txt">사업자정보 확인</span></a>
            </div>
        </div>
        <!-- 안드로이드용 바로가기 -->
        <iframe id="uriFrame" src="" height="0" width="0" style="border:0px"></iframe>
		<div class="u_sca N=a:fot.shortcut">
			<a href="javascript:;;" class="N=a:fot.shortcut g_btn _click(shopn.mobile.shortcut.addShortCut(intent://addshortcut?version=9&amp;url=https%3A%2F%2Fm.smartstore.naver.com%2Finflow%2Foutlink%2Fs%2Fmilymood%3Ftr%3Ddv%26gtme%3D1&amp;icon=https%3A%2F%2Fshop-phinf.pstatic.net%2F20180731_50%2Fgym9510_1533025977890qYSce_PNG%2F15744836740851773_269127316.png%3Ftype%3Dround_160&amp;title=%EB%B0%80%EB%A6%AC%EB%AC%B4%EB%93%9C&amp;serviceCode=shopN#Intent;scheme=naversearchapp;action=android.intent.action.VIEW;category=android.intent.category.BROWSABLE;package=com.nhn.android.search;end,5.0)) u_sc  _stopDefault">
				<span class="u_ics"><img src="https://shop-phinf.pstatic.net/20180731_50/gym9510_1533025977890qYSce_PNG/15744836740851773_269127316.png?type=round_160" alt=""></span>
				<em>네이버앱의</em><strong>밀리무드</strong> <span>홈화면에 바로가기 추가</span> <span class="u_ica"></span>
			</a>
		</div>
    </div>
</div>
	</body>
</html>