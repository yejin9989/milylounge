<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>네이버로그인</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type = "text/css" href="menu.css">
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
    apiURL += "&uri=\"_signup.jsp\"";
    session.setAttribute("state", state);
 %>
<div id="container" style="top:200px;position:relative;">
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
<div style="text-align:center;">
 <div id="login_section" style="text-align:center; display:inline-block; width:50%;min-width:300px; padding:10px;">
 <h2>회원가입</h2>
 <p>밀리무드라운지에 오신것을 환영합니다.</p>
 <hr style="width:200px;margin-top:20px;margin-bottom:20px;">
 <p style="font-size:10px;">소셜계정으로 밀리무드라운지의 회원이 될 수 있습니다.</p>
 <a href="<%=apiURL%>"><img height="30" src="img/%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A5%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%83%E1%85%B5%E1%84%85%E1%85%A9%20%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%8B%E1%85%B5%E1%86%AB_%E1%84%8B%E1%85%AA%E1%86%AB%E1%84%89%E1%85%A5%E1%86%BC%E1%84%92%E1%85%A7%E1%86%BC_Green.PNG"/></a>
 <br>
 <form action="_signup.jsp?sns_id=&sns_type=" method="POST">
 <div style="text-align:left; display:inline-block; padding:20px 10px; border:1px dashed black; margin:10px;">
 <div style="width:60px;float:left;"><label>아이디</label></div><input type="text" name="id">
 <input id="userId" type="button" value="중복확인" onclick="idCheck()"><br>
 <div style="width:60px;float:left;"><label>비밀번호</label></div><input type="password" name="pw"><br>
 <div style="width:60px;float:left;"><label>이름</label></div><input type="text" name="name"><br>
 <div style="width:60px;float:left;"><label>닉네임</label></div><input type="text" name="nickname">
<input id="userId" type="button" value="중복확인" onclick="idCheck()"><br>
 <div style="width:60px;float:left;"><label>성별</label></div><input type="radio" name="gender" value="m">남<input type="radio" name="gender" value="f">여<br>
 <div style="width:60px;float:left;"><label>이메일</label></div><input type="text" name="email"><br>
 <div style="width:60px;float:left;"><label>생년월일</label></div><input type="text" name="birthday" placeholder="8자리숫자로 입력해주세요 ex)19891028" maxlength="8"><br>
 <!-- 
 <select name="birthyear">
 <option value = "1930">1930</option><option value = "1931">1931</option><option value = "1932">1932</option><option value = "1933">1933</option><option value = "1934">1934</option><option value = "1935">1935</option><option value = "1936">1936</option><option value = "1937">1937</option><option value = "1938">1938</option><option value = "1939">1939</option><option value = "1940">1940</option><option value = "1941">1941</option><option value = "1942">1942</option><option value = "1943">1943</option><option value = "1944">1944</option><option value = "1945">1945</option><option value = "1946">1946</option><option value = "1947">1947</option><option value = "1948">1948</option><option value = "1949">1949</option><option value = "1950">1950</option><option value = "1951">1951</option><option value = "1952">1952</option><option value = "1953">1953</option><option value = "1954">1954</option><option value = "1955">1955</option><option value = "1956">1956</option><option value = "1957">1957</option><option value = "1958">1958</option><option value = "1959">1959</option><option value = "1960">1960</option><option value = "1961">1961</option><option value = "1962">1962</option><option value = "1963">1963</option><option value = "1964">1964</option><option value = "1965">1965</option><option value = "1966">1966</option><option value = "1967">1967</option><option value = "1968">1968</option><option value = "1969">1969</option><option value = "1970">1970</option><option value = "1971">1971</option><option value = "1972">1972</option><option value = "1973">1973</option><option value = "1974">1974</option><option value = "1975">1975</option><option value = "1976">1976</option><option value = "1977">1977</option><option value = "1978">1978</option><option value = "1979">1979</option><option value = "1980">1980</option><option value = "1981">1981</option><option value = "1982">1982</option><option value = "1983">1983</option><option value = "1984">1984</option><option value = "1985">1985</option><option value = "1986">1986</option><option value = "1987">1987</option><option value = "1988">1988</option><option value = "1989">1989</option><option value = "1990">1990</option><option value = "1991">1991</option><option value = "1992">1992</option><option value = "1993">1993</option><option value = "1994">1994</option><option value = "1995">1995</option><option value = "1996">1996</option><option value = "1997">1997</option><option value = "1998">1998</option><option value = "1999">1999</option><option value = "2000">2000</option><option value = "2001">2001</option><option value = "2002">2002</option><option value = "2003">2003</option><option value = "2004">2004</option><option value = "2005">2005</option><option value = "2006">2006</option><option value = "2007">2007</option><option value = "2008">2008</option><option value = "2009">2009</option><option value = "2010">2010</option><option value = "2011">2011</option><option value = "2012">2012</option><option value = "2013">2013</option><option value = "2014">2014</option><option value = "2015">2015</option><option value = "2016">2016</option><option value = "2017">2017</option><option value = "2018">2018</option><option value = "2019">2019</option>
 </select>
  -->
 <input type="submit">
 </div>
 </form>
 </div>
 </div>
 </div>
 </body>
</html>