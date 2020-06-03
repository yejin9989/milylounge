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
<b style="color:red;"><!--변경사항이 있을 시 저장 버튼을 꼭 눌러주세요!!  --></b>
<br><br>
	<form action="_result.jsp" method="POST">
	<%
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	Statement stmt = null;
	String query = "SELECT * FROM TRAVEL_REQUEST_LIST ORDER BY Order_num DESC";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	
	String num;
	String name;
	String addr;
	String mobile;
	String order_date;
	int com;
	String now ="";//현황 문자
	String area_type_eng = "";//db에 영어로 저장되어 있어서
	String area_type= "";//한글로 바꿔줌
	int area_size_num;
	String area_size="";
	int add_room; //추가방
	int living_expand_num;//거실확장
	String living_expand = "";
	String construct_date;
	int entrance;
	int livingroom;
	int bedroom;
	int kitchen;
	int bathroom;
	
	while(rs.next()){

		area_size = rs.getString("area_size");
		area_size_num = Integer.parseInt(area_size);

		if(area_size_num == 59)
			area_size += "m² (18평)";
		else if(area_size_num == 62)
			area_size += "m² (19평)";
		else if(area_size_num == 66)
			area_size += "m² (20평)";
		else if(area_size_num == 69)
			area_size += "m² (21평)";
		else if(area_size_num == 72)
			area_size += "m² (22평)";
		else if(area_size_num == 75)
			area_size += "m² (23평)";
		else if(area_size_num == 79)
			area_size += "m² (24평)";
		else if(area_size_num == 82)
			area_size += "m² (25평)";
		else if(area_size_num == 85)
			area_size += "m² (26평)";
		else if(area_size_num == 89)
			area_size += "m² (27평)";
		else if(area_size_num == 92)
			area_size += "m² (28평)";
		else if(area_size_num == 95)
			area_size += "m² (29평)";
		else if(area_size_num == 99)
			area_size += "m² (30평)";
		else if(area_size_num == 102)
			area_size += "m² (31평)";
		else if(area_size_num == 105)
			area_size += "m² (32평)";
		else if(area_size_num == 108)
			area_size += "m² (33평)";
		else if(area_size_num == 112)
			area_size += "m² (34평)";
		else if(area_size_num == 115)
			area_size += "m² (35평)";
		else if(area_size_num == 118)
			area_size += "m² (36평)";
		else if(area_size_num == 122)
			area_size += "m² (37평)";
		else if(area_size_num == 125)
			area_size += "m² (38평)";
		else if(area_size_num == 128)
			area_size += "m² (39평)";
		else if(area_size_num == 132)
			area_size += "m² (40평)";
		else if(area_size_num == 135)
			area_size += "m² (41평)";
		else if(area_size_num == 138)
			area_size += "m² (42평)";
		else if(area_size_num == 141)
			area_size += "m² (43평)";
		else if(area_size_num == 145)
			area_size += "m² (44평)";
		else if(area_size_num == 148)
			area_size += "m² (45평)";
		else if(area_size_num == 151)
			area_size += "m² (46평)";
		else if(area_size_num == 155)
			area_size += "m² (47평)";
		else if(area_size_num == 158)
			area_size += "m² (48평)";
		else if(area_size_num == 161)
			area_size += "m² (49평)";
		else if(area_size_num == 165)
			area_size += "m² (50평)";
		else
			area_size = "error!";
		
		num = rs.getString("Order_num");
		name = rs.getString("Name");
		addr = rs.getString("Address");
		mobile = rs.getString("Mobile");
		order_date = rs.getString("Order_date");
		com = rs.getInt("State");
		if(com == 0) now="신청완료";
		else now="출장완료";
		area_type_eng = rs.getString("area_type");
		if(area_type.equals("supplyArea")) area_type="공급면적";
		else area_type="전용면적";
		add_room = rs.getInt("add_room");
		living_expand_num = rs.getInt("living_expand");
		if(living_expand_num == 0)
			living_expand = "거실미확장";
		else
			living_expand = "거실확장";
		construct_date = rs.getString("construct_date");
		entrance = rs.getInt("entrance");
		livingroom = rs.getInt("livingroom");
		bedroom = rs.getInt("bedroom");
		kitchen = rs.getInt("kitchen");
		bathroom = rs.getInt("bathroom");

		
	%>
	<div style="padding:50px; border-top:1px solid black; text-align:left;line-height:2.1;">
	no._<%=num%><br>
	고객명_<span style="font-weight:700;"><%=name%></span><br>
	주소_<span style="font-weight:700;"><%=addr%></span><br>
	연락처_<span style="font-weight:700;"><%=mobile%></span><br>
	주문날짜_<%=order_date%><br>
	현황_<%=now%><br>
	면적종류_<%=area_type%><br>
	면적_<%=area_size%><br>
	추가방_<%=add_room%>개<br>
	거실확장_<%=living_expand%><br>
	시공예정일시_<span style="font-weight:700;"><%=construct_date%></span><br>
	<%
	if(entrance!=0){
		%>현관 옵션 <img src="img/entrance<%=livingroom%>.png" width="100"><br><%
	}
	else{
		%>현관 옵션 선택 없음<br><%
	}

	if(livingroom!=0){
		%>거실 옵션 <img src="img/livingroom<%=livingroom%>.png" width="100"><br><%
	}
	else{
		%>거실 옵션 선택 없음<br><%
	}

	if(bedroom!=0){
		%>침실 옵션 <img src="img/bedroom<%=livingroom%>.png" width="100"><br><%
	}
	else{
		%>침실 옵션 선택 없음<br><%
	}

	if(kitchen!=0){
		%>부엌 옵션 <img src="img/kitchen<%=livingroom%>.png" width="100"><br><%
	}
	else{
		%>부엌 옵션 선택 없음<br><%
	}

	if(bathroom!=0){
		%>화장실 옵션 <img src="img/bathroom<%=livingroom%>.png" width="100"><br><%
	}
	else{
		%>화장실 옵션 선택 없음<br><%
	}
	%>
	
	</div>
	
	<!--td><a href="/_delete.jsp?&num=<=num%>" onclick="return delchk();">X</a></td-->
	<script>
		function delchk(){
			return confirm('정말 삭제하시겠습니까?')
		}
	</script>
	<!-- /tr-->
	<%
	}
	%>
	<!-- <input type="submit" value="저장">  -->
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