<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "cal.jsp"); %>
<% //데스크탑 금지
String ua=request.getHeader("User-Agent").toLowerCase();

if (ua.matches(".*(android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-"));
else{
	 response.getWriter().println("<script type=\"text/javascript\">");
     response.getWriter().println("location.href='desktopindex.html'");
     response.getWriter().println("</script>");
}
%>
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
#contents td, th{
  border:1px solid black;
}
#contents table{
  border:1px solid black;
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
session.setAttribute("page", "cal2.jsp"); // 현재 페이지 current page
// 세션 가져오기 get session
String now = session.getAttribute("page")+""; // 현재 페이지 current page
String s_id = session.getAttribute("s_id")+"";// 현재 사용자 current user
String name = session.getAttribute("name")+"";
String attr = request.getParameter("attr")+"";
String itemname = request.getParameter("itemname")+"";
%>
<%
now = session.getAttribute("page") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "SELECT * FROM ITEM WHERE ImgPath = ?";
if(!itemname.equals("") && !itemname.equals("null"))
	query = query + " AND Name like \'%"+itemname+"\'";
if(!attr.equals("")&&!attr.equals("null"))
	query = query + " AND Attr = \'" + attr +"\'";
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
String[][] item = new String[100][9];
int i = 0;
while(rs.next()){
	id = rs.getString("Id");
	sid = rs.getString("Sid");
	cls = rs.getString("Class");
	img = rs.getString("Image");
	i_name = rs.getString("Name");
	price = rs. getString("Price");
	url = rs.getString("URL");
	item[i][0] = id;
 	item[i][1] = i_name;
	item[i][2] = img;
	item[i][3] = cls;
	item[i][4] = sid;
	item[i][5] = price;
	item[i][6] = url;
	i++;
}
int imgnum = i;
pstmt.close();
rs.close();
query="";
conn.close();
%>
<div class="topbar">
	<div class="menu_button" id="menuToggle">
	<input type="checkbox" id="menubtn"/><img class="menu_icon" src="img/menu.png" style="width:20px;height:20px;">
	<div class="menu_content">
		<img src="img/backarrow.png" height="22px">
		<ul>
		<li id="content"><a href="https://smartstore.naver.com/milymood" style="color:black;text-decoration:none;"><nobr>밀리무드 공식몰</nobr></a></li>
		<li id="content"><a href="order_status.jsp"style="color:black;text-decoration:none;"><nobr>신청현황</nobr></a></li>
		<li id="content"><a href="sample_request.jsp" style="color:black;text-decoration:none;"><nobr>샘플신청하기</nobr></a></li>
		<li id="content"><a href="travel_request.jsp" style="color:black;text-decoration:none;"><nobr>리모델링 견적받기</nobr></a></li>
		<li id="content"><a href="cal.jsp" style="color:black;text-decoration:none;"><nobr>암막커튼용 계산기</nobr></a></li>
		<li id="content"><a href="cal2.jsp" style="color:black;text-decoration:none;"><nobr>속커튼용 계산기</nobr></a></li>
		<li id="content"><a href="signup.jsp" style="color:black;text-decoration:none;"><nobr>회원가입</nobr></a></li>
		<li id="content"><a href="story.jsp" style="color:black;text-decoration:none;"><nobr>story</nobr></a></li>
		<li id="content"><nobr>이벤트</nobr></li>
		<li id="content"><nobr>공지사항</nobr></li>
		<li id="content"><nobr>QnA</nobr></li>
		<li id="content"><nobr>출석체크</nobr></li>
		<li id="content"><nobr>신청후기</nobr></li>
		<li id="content"><a href="sample_collect.jsp">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
		</ul>
	</div>
	</div>
	<div class="milylounge">
	<a href="index.jsp"><img id="logo" src="img/milylounge.png" style="width:90px;"></a>
	</div>
</div>
<div id="content" style="width:100%;padding-top:40px; text-align:center;">
<span id="caltitle"></span>
<div id="calarea" style="position:relative;">
높이를 cm단위로 입력하세요. Ex)243 <br><input id="val1" type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;'><br><br>
가로폭을 cm단위로 입력하세요. <br><input id="val2" type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;'><br>
<input type="button" value="계산" onclick="cal()">
</div>
<br><br>
<div id="result" style="width:75%; padding:10px; margin-top:40px; text-align:center; display:inline-block;">
	<div id="bordertable" style="width:95%;height:150px; display:inline-block; border:1px solid #b3b2b2;">
		<div style="width:100%; background-color:#4b4f54; height:25%; line-height:2.5em; border-bottom:1px solid #b3b2b2;">
		<span style="color:white">선택 해야하는 옵션</span>
		</div>
		<div style="width:49.45%; background-color:#d8d7d7; height:25%; line-height:2.5em; float:left; border-bottom:1px solid #b3b2b2; border-right:1px solid #b3b2b2;">
		<span>세로사이즈</span>
		</div>
		<div style="width:50%; background-color:#d8d7d7; height:25%; line-height:2.5em; float:left; border-bottom:1px solid #b3b2b2;">
		<span>수량</span>
		</div>
		<div style="width:49.45%; background-color:white; height:50%; float:left; border-bottom:1px solid #b3b2b2; border-right:1px solid #b3b2b2;">
		<span id="1" style="position:relative; top:25%;">-</span>
		</div>
		<div style="width:50%; background-color:white; height:50%; line-height:5em; float:left; border-bottom:1px solid #b3b2b2;">
		<span id="2">-</span>
		</div>
	</div>
</div>

<div id="result2" style="width:75%; padding:10px; margin:5px;text-align:center; display:inline-block;">
	<div id="bordertable" style="width:95%;height:150px; display:inline-block; border:1px solid #b3b2b2;">
		<div style="width:100%; background-color:#4b4f54; height:25%; line-height:2.5em; border-bottom:1px solid #b3b2b2;">
		<span style="color:white">필요한 부속품</span>
		</div>
		<div style="width:49.45%; background-color:#d8d7d7; height:25%; line-height:2.5em; float:left; border-bottom:1px solid #b3b2b2; border-right:1px solid #b3b2b2;">
		<span>레일에 설치할 경우</span>
		</div>
		<div style="width:50%; background-color:#d8d7d7; height:25%; line-height:2.5em; float:left; border-bottom:1px solid #b3b2b2;">
		<span>커튼봉에 설치할 경우</span>
		</div>
		<div style="width:49.45%; background-color:white; height:50%; float:left; border-right:1px solid #b3b2b2; border-bottom:1px solid #b3b2b2;">
		<span id="3" style="position:relative; top:25%;">-</span>
		</div>
		<div style="width:50%; background-color:white; height:25%; line-height:2.5em; float:left; border-bottom:1px solid #b3b2b2;">
		<span id="4">-</span>
		</div>
		<div style="width:50%; background-color:white; height:25%; line-height:2.5em; float:left; border-bottom:1px solid #b3b2b2;">
		<span id="5">-</span>
		</div>
	</div>
</div>

<%
if(s_id.equals("100"))//관리자 계정일 경우
	{%>
	<div style="margin: 60px 0 0 0; padding:30px 0; text-align:center; font-size:30px; border:1px solid; border-radius:5px;">
	<a href="#"onClick="window.open('manage_image1.jsp','_blank','width=550 height=500')">이미지등록</a>
	</div>
<%}%>

    <div>
    <%
    for(i=0; i<imgnum; i++){
    	%>
    	<script>
    	window.onload = function uptitle(){
    		title = document.getElementById("caltitle");
    		title.innerHTML+="<div style=\"width:100%;display:block;float:left;\">"
    		title.innerHTML+="<a href=\"<%=item[i][6]%>\">"
    		title.innerHTML+="<img src=\"<%=item[i][2]%>\" style=\"float:left; width:100%;\"><br>"	    	
    	}
    	</script>
    	<%
		if(s_id.equals("100"))//관리자 계정일 경우
		{%>
			<a href="_dropitem.jsp?id=<%=item[i][0]%>" target="_blank" style="color:red; text-decoration:underline;">X삭제</a>
		<%}%>
    	</a>
    	</div>
    	<%
    }
    %>
    </div>
</div>
</body>
<script type="text/javascript">
function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
		return;
	else
		return false;
}
function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}
</script>
<script type="text/javascript">
function cal(){
	var val1 = document.getElementById("val1").value;
	var val2 = document.getElementById("val2").value;
	
	if(0<val1 && val1 <=170)
		document.getElementById('1').innerHTML = "핀형 ~170cm까지";
	else if(170<val1 && val1<=240)
		document.getElementById('1').innerHTML = "핀형 171cm~240cm까지";
	else if(240<val1 && val1<=250)
		document.getElementById('1').innerHTML = "핀형 241~250cm까지";
	else if(250<val1 && val1<=260)
		document.getElementById('1').innerHTML = "핀형 251~260cm까지";
	else if(260<val1 && val1<=270)
		document.getElementById('1').innerHTML = "핀형 261~270cm까지";
	else if(270<val1 && val1<=280)
		document.getElementById('1').innerHTML = "핀형 271~280cm까지";
	if(val1<0 || val1>280){
		document.getElementById('1').innerHTML = "높이 값을 0~280cm범위로 입력해주세요:)";
		document.getElementById('2').innerHTML = "-";
		document.getElementById('3').innerHTML = "-";
		document.getElementById('4').innerHTML = "-";
		document.getElementById('5').innerHTML = "-";
		return;
	}
		
	
	if(0<val2 && val2 <=60){
		document.getElementById('2').innerHTML = "1장";
		document.getElementById('3').innerHTML = "6자 레일";
		document.getElementById('4').innerHTML = "6자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 10개";
	}
	else if(60<val2 && val2 <=120){
		document.getElementById('2').innerHTML = "2장";
		document.getElementById('3').innerHTML = "6자 레일";
		document.getElementById('4').innerHTML = "6자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 10개";
	}
	else if(120<val2 && val2 <=170){
		document.getElementById('2').innerHTML = "3장";
		document.getElementById('3').innerHTML = "6자 레일";
		document.getElementById('4').innerHTML = "8자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 20개";
	}
	else if(170<val2 && val2 <=180){
		document.getElementById('2').innerHTML = "3장";
		document.getElementById('3').innerHTML = "8자 레일";
		document.getElementById('4').innerHTML = "8자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 20개";
	}
	else if(180<val2 && val2 <=230){
		document.getElementById('2').innerHTML = "4장";
		document.getElementById('3').innerHTML = "8자 레일";
		document.getElementById('4').innerHTML = "10자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 20개";
	}
	else if(230<val2 && val2 <=240){
		document.getElementById('2').innerHTML = "4장";
		document.getElementById('3').innerHTML = "10자 레일";
		document.getElementById('4').innerHTML = "10자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 20개";
	}
	else if(240<val2 && val2 <=290){
		document.getElementById('2').innerHTML = "5장";
		document.getElementById('3').innerHTML = "10자 레일";
		document.getElementById('4').innerHTML = "12자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 30개";
	}
	else if(290<val2 && val2 <=300){
		document.getElementById('2').innerHTML = "5장";
		document.getElementById('3').innerHTML = "12자 레일";
		document.getElementById('4').innerHTML = "12자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 30개";
	}
	else if(300<val2 && val2 <=350){
		document.getElementById('2').innerHTML = "6장";
		document.getElementById('3').innerHTML = "12자 레일";
		document.getElementById('4').innerHTML = "14자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 30개";
	}
	else if(350<val2 && val2 <=360){
		document.getElementById('2').innerHTML = "6장";
		document.getElementById('3').innerHTML = "12자 레일";
		document.getElementById('4').innerHTML = "14자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 30개";
	}
	else if(360<val2 && val2 <=410){
		document.getElementById('2').innerHTML = "7장";
		document.getElementById('3').innerHTML = "14자 레일";
		document.getElementById('4').innerHTML = "16자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 40개";
	}
	else if(410<val2 && val2 <=420){
		document.getElementById('2').innerHTML = "7장";
		document.getElementById('3').innerHTML = "16자 레일";
		document.getElementById('4').innerHTML = "16자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 40개";
	}
	else if(420<val2 && val2 <=470){
		document.getElementById('2').innerHTML = "8장";
		document.getElementById('3').innerHTML = "16자 레일";
		document.getElementById('4').innerHTML = "18자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 40개";
	}
	else if(470<val2 && val2 <=480){
		document.getElementById('2').innerHTML = "8장";
		document.getElementById('3').innerHTML = "18자 레일";
		document.getElementById('4').innerHTML = "18자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 40개";
	}
	else if(480<val2 && val2 <=530){
		document.getElementById('2').innerHTML = "9장";
		document.getElementById('3').innerHTML = "18자 레일";
		document.getElementById('4').innerHTML = "20자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 50개";
	}
	else if(530<val2 && val2 <=540){
		document.getElementById('2').innerHTML = "9장";
		document.getElementById('3').innerHTML = "20자 레일";
		document.getElementById('4').innerHTML = "20자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 50개";
	}
	else if(540<val2 && val2 <=600){
		document.getElementById('2').innerHTML = "10장";
		document.getElementById('3').innerHTML = "20자 레일";
		document.getElementById('4').innerHTML = "20자 커튼봉";
		document.getElementById('5').innerHTML = "커튼링 50개";
	}
	if(val2<0 || val2>600){
		document.getElementById('1').innerHTML = "-";
		document.getElementById('2').innerHTML = "-";
		document.getElementById('3').innerHTML = "가로폭 값을 0~600cm범위로 입력해주세요:)";
		document.getElementById('4').innerHTML = "-";
		document.getElementById('5').innerHTML = "-";
		return;
	}
}
</script>
</html>