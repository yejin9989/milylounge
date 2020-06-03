<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "index.jsp"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<style type="text/css">
body {
  position: absolute;
  padding: 0;
  margin: 0;
  border:0px;
  width: 100%;
  height: 100%;
  background-color: #fff;
  align-items: center;
  justify-content: center;
}
.tag{
color:white; background-color:#ccc; border-radius:5px;padding:2px;
}
#search{
padding:6px; position:relative; top:-3px; background-color:white; border: 1px solid #9d9d9d;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
  <%
    String clientId = "RO12hlpvFt7WEiDVKCDB";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://milymoodlounge.com/callback.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
<%
// 세션 생성 create session
session.setAttribute("page", "sample_collect.jsp"); // 현재 페이지 current page
// 세션 가져오기 get session
String now = session.getAttribute("page")+""; // 현재 페이지 current page
String s_id = session.getAttribute("s_id")+"";// 현재 사용자 current user
String name = session.getAttribute("name")+"";
String attr = request.getParameter("attr")+"";
String reviewname = request.getParameter("reviewname")+"";
String tag = request.getParameter("tag")+"";
%>
<%
now = session.getAttribute("page") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "SELECT * FROM REVIEW WHERE ImgPath = ?";
if(!reviewname.equals("") && !reviewname.equals("null"))
	query = query + " AND Name like \'%"+reviewname+"%\'";
if(!attr.equals("")&&!attr.equals("null"))
	query = query + " AND Attr = \'" + attr +"\'";
if(!tag.equals("")&&!tag.equals("null"))
	query = "SELECT * FROM REVIEW R, TAG T WHERE R.ImgPath = ? AND R.Id = T.Review_id  AND T.Name = \'" + tag +"\'";
query += "order by Date";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, now);
rs = pstmt.executeQuery();
String img;
String sid;
String id;
String cls;
String i_name;
String price;
String url;
String user;
String[][] item = new String[10000][9];
int i = 0;
while(rs.next()){
	id = rs.getString("Id");
	sid = rs.getString("Sid");
	cls = rs.getString("Class");
	img = rs.getString("Image");
	i_name = rs.getString("Name");
	price = rs. getString("Price");
	url = rs.getString("URL");
	user = rs. getString("User");
	item[i][0] = id;
 	item[i][1] = i_name;
	item[i][2] = img;
	item[i][3] = cls;
	item[i][4] = sid;
	item[i][5] = price;
	item[i][6] = url;
	item[i][7] = user;
	i++;
}
int imgnum = i;
%>
<%
int point=0;
query="SELECT * FROM USERS WHERE Id = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1,s_id);
rs=pstmt.executeQuery();
while(rs.next()){
	point = rs.getInt("Point");
}
pstmt.close();
rs.close();
query="";
%>
<div id="cover"></div>
<div class="topbar">
	<div class="menu_button" id="menuToggle">
	<input type="checkbox" id="menubtn"/><img class="menu_icon" src="img/menu.png" style="width:20px;height:20px;">
	</div>
	<div class="milylounge">
	<a href="index.jsp"><img id="logo" src="img/milylounge.png" style="width:90px;"></a>
	</div>
</div>
<div class="menu_content">
	<img class="back" src="img/x.png" height="18px">
	<div class="member">
	<%
	if(s_id==null || s_id.equals("") || s_id.equals("null"))//로그인 x
		{%>
		<a id="loginplz" href="login.jsp">로그인</a>해주세요.
	<%}
	else{
		%><span><b><%=name%></b>님 환영합니다!</span>
		<div style="color:gray;font-size:12px;">누적포인트&nbsp;<%=point%>/100&nbsp;<a href="pointrequest.jsp" target="_blank" style="color:black;text-decoration:underline;font-size:10px;display:">포인트신청</a></div>
	    <div class="playground">
		<div class="bar-container">
		<progress class="progressTag" value="0" max="100"></progress>
		</div>
		</div>
		<div class="membermenu"><!-- 나의정보, 로그아웃 -->
		<span><a href="myinfo.jsp">나의정보</a></span>
		<span><a href="_logout.jsp">로그아웃</a></span>
		</div>
    	<%} %>
	</div>
	<ul>
	<li id="content"><a href="https://smartstore.naver.com/milymood" style="color:black;text-decoration:none;"><nobr>밀리무드 공식몰</nobr></a></li>
	<li id="content"><a href="order_status.jsp"style="color:black;text-decoration:none;"><nobr>신청현황</nobr></a></li>
	<li id="content"><a href="sample_request.jsp" style="color:black;text-decoration:none;"><nobr>샘플신청하기</nobr></a></li>
	<!--li id="content"><a href="myinfo.jsp" style="color:black;text-decoration:none;"><nobr>나의 정보</nobr></a></li-->
	<li id="content"><a href="cal.jsp" style="color:black;text-decoration:none;"><nobr>암막커튼용 계산기</nobr></a></li>
	<li id="content"><a href="cal2.jsp" style="color:black;text-decoration:none;"><nobr>속커튼용 계산기</nobr></a></li>
	<li id="content"><a href="signup.jsp" style="color:black;text-decoration:none;"><nobr>회원가입</nobr></a></li>
	<li id="content"><a href="story.jsp" style="color:black;text-decoration:none;"><nobr>story</nobr></a></li>
	<li id="content"><a href="sample_collect.jsp" style="color:black;text-decoration:none;"><nobr>후기게시판</nobr></a></li>
	</ul>
</div>
<%
if(!s_id.equals("") && !s_id.equals("null"))
	{%>
	<div style="margin: 60px 0 0 0; padding:30px 0; text-align:center; font-size:30px; border:1px solid; border-radius:5px;">
	<a href="#"onClick="window.open('manage_samples1.jsp','_blank','width=550 height=500')">후기등록</a>
	</div>
<%}%>
<%
//CSRF 방지를 위한 상태 토큰 검증
//세션 또는 별도의 저장 공간에 저장된 상태 토큰과 콜백으로 전달받은 state 파라미터 값이 일치해야 함

//콜백 응답에서 state 파라미터의 값을 가져옴
state = request.getParameter("state");
%>
<div style="margin:40px 0 0 0;">
    <div style="width:100%;display:block;position:relative;padding:100px 0;">
    <h2 style="text-align:center; line-height:2em">후기게시판</h2><h3 style="color:gray;text-align:center; line-height:2em; padding-bottom:100px;">로그인 후 이용 가능합니다.</h3>
    <%
    //검색창 & 필터 만들기!
    %>
    <div style="float:right;width:100%;padding:20px 0">
    <form method="POST" action="sample_collect.jsp">
    <select style="padding:5px; width:60px;"name="attr">
    	<option value="null">전체</option>
    	<option value="living">거실</option>
    	<option value="bed">안방</option>
    	<option value="bath">화장실</option>
    	<option value="entrance">현관</option>
    	<option value="kitchen">부엌</option>
    	<option value="tip">팁</option>
    	<option value="etc">기타</option>
    </select>
    <input type="text" name="reviewname" style="width:64%;padding:4px 0;position:relative;top:-3px;">
    <input id="search" type="submit" value="검색">
    </form>
    </div>
    <%
    for(i=0; i<imgnum; i++){
    	%>
    	<div style="width:100%;display:block;float:left;margin:30px 0;">
    	<a href="sample_detail.jsp?item=<%=item[i][0]%>">
    	<div style="width:100%; height:200px; overflow:hidden; margin:0; display:inline-block;"><img style="width:100%;" src="<%=item[i][2]%>"></div>
    	<div style="padding:20px 20px 0px 20px;">상품이름:<%=item[i][1]%></div>
    	</a>
    	<div style="padding:10px 20px 20px 20px;">
    	<%
		query = "SELECT * FROM TAG WHERE Review_id = ?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, item[i][0]);
		rs=pstmt.executeQuery();
    	while(rs.next()){
    		tag = rs.getString("Name");
    		tag = tag.trim();
    		%>
    		<span class='tag'><a style="color:white;" href="sample_collect.jsp?tag=<%=tag%>">#<%=tag%></a></span>
    		<%
    	}%>
    	</div>
    	<%
		if(s_id.equals("0") || s_id.equals(item[i][7]))//관리자 계정이거나 본인 글 일 경우
		{%>
			<a href="_dropitem.jsp?id=<%=item[i][0]%>" target="_blank" style="color:red; text-decoration:underline;">X삭제</a>
		<%}%>
    	</div>
    	<%
    }
	pstmt.close();
	rs.close();
	query="";
	conn.close();
    %>
    </div>
</div>
<div id="footer" class="g_footer _footer">
    <!-- 법적고지 -->
    <div style="text-align:center;display:block;">
    <%if(s_id==null || s_id.equals("") || s_id.equals("null")){%> <a href="login.jsp">로그인</a>
    <%}else{%><a href="_logout.jsp">로그아웃</a><%}%>
    <a href="signup.jsp">회원가입</a>
    </div>
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

<script>
//for progress tag in HTML 
function tag () {
  var ratio = <%=point%>/100
  let progress = document.querySelector('.progressTag')
  let interval = 1
  let updatesPerSecond = 1000 / 60
  let end = progress.max * ratio

  $('.menu_button').click(function animator () {
    progress.value = progress.value + interval
    if ( progress.value + interval < end){
      setTimeout(animator, updatesPerSecond);
    } else { 
      progress.value = end
    }
  });

  setTimeout(() => {
    animator()
  }, updatesPerSecond)
}

tag()
</script>

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "3602e31fd32c7e";
wcs_do();
</script>

<script>
$('.menu_button').click(function(){
	var submenu_L = parseInt($('.menu_content').css('left'));
	
	if(submenu_L<0){
		$('#cover').show();
		$('body').css({position:'fixed'});
		$('.menu_content').animate({left: '0'});
	}
	else{
		$('#cover').hide();
		$('.menu_content').animate({left: '-250px'});
		$('body').css({position: 'absolute'});
	}
});

$('#cover').click(function(){
	$('#cover').hide();
	$('.menu_content').animate({left:'-250px'});
	$('body').css({position:'absolute'});
})	
$('.back').click(function(){
	$('#cover').hide();
	$('.menu_content').animate({left:'-250px'});
	$('body').css({position:'absolute'});
})	
</script>
</body>
</html>