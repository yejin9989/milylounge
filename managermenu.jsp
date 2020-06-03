<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="ROOT.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<style>
h2{
text-align:center;
}
p{
text-align:center;
}
a
{
text-align:center;
}
div{
text-align:center;
}
#pwform{
text-align:center;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<br>
<h2>MANAGER MENU</h2>
<p style="padding-bottom:40px;">매니저 메뉴 화면입니다.</p>
<%
// 세션 생성 create session
session.setAttribute("page", "managermenu.jsp"); // 현재 페이지 current page
// 세션 가져오기 get session
String now = session.getAttribute("page")+""; // 현재 페이지 current page
String s_id = session.getAttribute("s_id")+""; // 현재 사용자 current user

if(s_id.equals("0")){
	%>
	<div style="text-align:center;font-size:30px;">
	<ul>
		<li style="padding:20px;"><a href="result.jsp">샘플신청현황</a></li>
		<li style="padding:20px;"><a href="pointresult.jsp">포인트신청현황</a></li>
		<li style="padding:20px;"><a href="membership.jsp">회원정보확인</a></li>
		<li style="padding:20px;"><a href="login.jsp">로그인</a></li>
		<li style="padding:20px;"><a href="pointrequest.jsp">포인트신청(로그인 후 테스트해보기)</a></li>
		<li style="padding:20px;"><a href="sample_request.jsp" style="color:black;text-decoration:none;"><nobr>샘플신청하기</nobr></a></li>
		<li style="padding:20px;"><a href="travel_request.jsp" style="color:black;text-decoration:none;"><nobr>출장신청하기</nobr></a></li>
		<li style="padding:20px;"><a href="cal.jsp" style="color:black;text-decoration:none;"><nobr>암막커튼용 계산기</nobr></a></li>
		<li style="padding:20px;"><a href="cal2.jsp" style="color:black;text-decoration:none;"><nobr>속커튼용 계산기</nobr></a></li>
		<li style="padding:20px;"><a href="signup.jsp" style="color:black;text-decoration:none;"><nobr>회원가입</nobr></a></li>
		<li style="padding:20px;"><a href="story.jsp" style="color:black;text-decoration:none;"><nobr>story</nobr></a></li>
		<li style="padding:20px;"><nobr>이벤트</nobr></li>
		<li style="padding:20px;"><nobr>공지사항</nobr></li>
		<li style="padding:20px;"><nobr>QnA</nobr></li>
		<li style="padding:20px;"><nobr>출석체크</nobr></li>
		<li style="padding:20px;"><nobr>신청후기</nobr></li>
		<li style="padding:20px;"><a href="sample_collect.jsp">샘플구독페이지(준비중)</a></li>
	</ul>
	</div>
	<%
}
%>
<br>

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
                    <dd><a class="g_en" href="tel:010-4848-7660">010-4848-7660</a> (대표전화/고객센터)</dd>
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