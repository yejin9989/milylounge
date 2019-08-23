<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>네이버로그인</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type = "text/css" href="menu.css">
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
<div id="container" style="top:200px;position:relative;">
<div class="topbar">
	<div class="menu_button" id="menuToggle">
	<input type="checkbox" id="menubtn"/><img class="menu_icon" src="img/menu.png" style="width:20px;height:20px;">
	<div class="menu_content">
		<im  g src="img/backarrow.png" height="22px">
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
<div style="text-align:center;">
 <div id="login_section" style="text-align:center; display:inline-block; width:50%;min-width:300px; padding:10px;">
 <h2>LOGIN</h2>
 <p>밀리무드라운지에 오신것을 환영합니다.</p>
 <div style="width:250px;display:inline-block; padding:10px;">
 <form name="myform" method="POST" action="_login.jsp">
 <div style="width:30px;float:left;"><label>id</label></div><input type="text" name="id" style="width:200px;"><br>
 <div style="width:30px;float:left;"><label>pw</label></div><input type="password" name="password" style="width:200px;"><br>
 </form>
 </div>
 <br>
 <a style="padding:10px;position:relative;" href="javascript:document.myForm.submit();">로그인</a>
 <a style="padding:10px;position:relative;" href="signup.jsp">회원가입</a>
 <hr style="width:200px;margin-top:20px;margin-bottom:20px;">
 <p style="font-size:10px;">소셜계정으로 로그인</p>
 <a href="<%=apiURL%>"><img height="30" src="img/%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A5%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%83%E1%85%B5%E1%84%85%E1%85%A9%20%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%8B%E1%85%B5%E1%86%AB_%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%8F%E1%85%A9%E1%86%AB%E1%84%92%E1%85%A7%E1%86%BC_Green.PNG"/></a>
 </div>
 </div>
 </div>
 </body>
</html>