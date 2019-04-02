<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
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
	margin : 0px;
	text-align:center;
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
	<a href="index.jsp"><img src="img/milylounge.png" style="width:90px;"></a>
	</div>
</div>
<br><br><br>
<b style="color:red;">변경사항이 있을 시 저장 버튼을 꼭 눌러주세요!!</b>
<br><br>
	<form action="_result.jsp" method="POST">
	<table style="text-align:center;">
	<th>no.</th>
	<th>이름</th>
	<th>주소</th>
	<th>휴대폰</th>
	<th>요청일자</th>
	<th>현황</th>
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
	String now ="";//현황 문자
	
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
	%>
	<tr>
	<td><nobr><%=num%></nobr></td>
	<td><%=name%></td>
	<td><%=addr%></td>
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
            <a id="toggleme" class="g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on">밀리무드(주) 사업자정보</a>
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
            		alert('되는고니?');
            		if($('this').hasClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on')
            			alert('그래된다!');
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