<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="footer.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<style type="text/css">
	body{
	margin : 0px;
	}
	input[type=radio] {
	display:none;
	margin:10px;
	}
	input[type=radio]+label{
	display:inline-block;
	margin:-2px;
	padding: 8px 19px;
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	font-size:13px !important;
	width: 110px;
	text-align: center;
	}
	input[type=radio]:radio+label{
	background-image:none;
	background-color:#3598dc;
	color:#fff;
	}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<%session.setAttribute("page", "sample_request.jsp");
String now = session.getAttribute("page")+"";
String s_id = session.getAttribute("s_id")+"";%>
<%
now = session.getAttribute("page") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "SELECT ImgPath FROM IMG WHERE Page = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, now);
rs = pstmt.executeQuery();
String img = "";
while(rs.next()){
	img = rs.getString("ImgPath");
}
%>
<div class="topbar">
	<div id="back">
	<a href="lounge.jsp">
	<img src="img/backarrow.png"><span>뒤로</span></a>
	</div>
	<div class="milylounge">
	<a href="index.jsp"><img id="logo" src="img/milylounge.png" style="width:90px;"></a>
	</div>
</div>
<img src="<%=img%>" width="100%" style="margin: 40px 0 0 0;">
<%
s_id = session.getAttribute("s_id")+"";
if(s_id.equals("100"))
	{%>
	<div style="text-align:center;">
	<br><br><br>
	<a href = "result.jsp" style="color:black;text-decoration:none;">
	신청목록확인
	</a>
	&nbsp; &nbsp;
	<a href = "finish.jsp" style="color:black;text-decoration:none;">
	신청완료페이지로
	</a>
	<br><br>
	<hr width="75%">
	<br>
	<form method="post" enctype="multipart/form-data" action="_imgup.jsp">
	<input type="file" name="filename1" size=40>
	<input type="submit" value="업로드"><br><br>
	</form>
	</div>
	<%}	
else{%>
<div style="width:100%;text-align:center;">
	<div style="background:white;width:75%;margin:0px;display:inline-block;text-align:left;"> 
	<form method="post" action="_sample_request.jsp">
	<p><input type="text" placeholder="이름" name="name" style ="width:95%;height:25px;padding:0 0 0 5px;margin:3px 0 3px 0;"/></p>
	<p><input type="text" placeholder="주소" name="address" style ="width:95%;height:25px;padding:0 0 0 5px;margin:3px 0 3px 0;"/></p>
	<nobr>
	<select name="first" style="width:22%;height:25px;margin:3px 0 3px 0;">
	<option value="010" selected>010</option>
	<option value="011">011</option>
	<option value="016">016</option>
	<option value="017">017</option>
	<option value="019">019</option>
	</select>
	-
	<input type="tel" name="mobile_first" maxlength=4 style="width:32%;height:25px;margin:3px 0 3px 0;">
	-
	<input type="tel" name="mobile_last" maxlength=4 style="width:32%;height:25px;margin:3px 0 3px 0;">
	</nobr>
	<p style="padding-bottom:10px;padding-top:20px;">
	*샘플 종류를 선택해주세요.
	</p>
	<div class="checks etrans">
	<input type="radio" name="type" value="1"><label style="padding:5px;margin-bottom:5px;">커튼 원단 샘플</label><br>
	<input type="radio" name="type" value="2"><label style="padding:5px;margin-bottom:5px;">기능성 이불 원단 샘플</label><br>
	<input type="radio" name="type" value="3"><label style="padding:5px;margin-bottom:5px;">모든 샘플 원단</label><br>
	</div>
	<p style="margin:5px 0 5px 0;position:relative;"><input type="checkbox" name="agree" value="yes">개인정보 활용에 동의함&nbsp;<a href="personal.html" target="_blanck" style="font-size:11px;">전문보기</a></p>
	<p style="text-align:center;"><input type="submit" value="신청하기" style></p>
	</form>
	<br>
	<%}%>
	</div>
</div>
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