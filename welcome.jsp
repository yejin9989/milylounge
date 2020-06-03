<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>네이버로그인</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type = "text/css" href="menu.css">
	<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
  <script>
  function pValue(){
	  document.getElementById("userId").value;
	  
  }
  </script>
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
 <jsp:include page="navbar.jsp" flush="false"/>
<div id="container" style="top:200px;position:relative;">
<div style="text-align:center;">
 <div id="login_section" style="text-align:center; display:inline-block; width:50%;min-width:300px; padding:10px;">
 <h2>환영합니다.</h2>
 <p>회원가입이 완료되었습니다. 이제 밀리무드라운지의 서비스와 혜택을 받아보실 수 있습니다:)</p>
 <a href="index.jsp">홈으로가기 </a>
 <br>
 </div>
 </div>
 </div>
 </body>
</html>