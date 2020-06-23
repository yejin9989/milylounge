<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "sample_collect.jsp"); %>
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
<link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick-theme.css"/>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
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
  background-color:#f9f9f9;
}
.tag{
color:white; background-color:#ccc; border-radius:5px;padding:2px;
}
#search{
padding:6px; position:relative; top:-3px; background-color:white; border: 1px solid #9d9d9d;
}
.slick-prev{
left:16px;
top:147px;
z-index: 10;
}
.slick-next{
right:16px;
top:147px;
z-index : 10;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<script>
    function slicky(a){
    	$(a).slick({
    				arrows:true
    		});
    	}
</script>
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
String itemname = request.getParameter("itemname")+"";
String tag = request.getParameter("tag")+"";
%>
<%
now = session.getAttribute("page") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "SELECT * FROM ITEM WHERE ImgPath = ?";
if(!itemname.equals("") && !itemname.equals("null"))
	query = query + " AND Name like \'%"+itemname+"%\'";
if(!attr.equals("")&&!attr.equals("null"))
	query = query + " AND Attr = \'" + attr +"\'";
if(!tag.equals("")&&!tag.equals("null"))
	query = "SELECT * FROM ITEM I, ITEM_TAG T WHERE I.ImgPath = ? AND I.Id = T.Item_id  AND T.Name = \'" + tag +"\'";
query += "order by Date";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, now);
rs = pstmt.executeQuery();
String[][] img = new String[10000][10];
String sid;
String id;
//String cls;
//String i_name;
//String price;
//String url;
String user;
String detail;
String[][] item = new String[10000][9];
int i = 0;
while(rs.next()){
	id = rs.getString("Id");
	sid = rs.getString("Sid");
	//cls = rs.getString("Class");
	img[i][0] = rs.getString("Image");
	img[i][1] = rs.getString("Image2");
	img[i][2] = rs.getString("Image3");
	img[i][3] = rs.getString("Image4");
	img[i][4] = rs.getString("Image5");
	img[i][5] = rs.getString("Image6");
	img[i][6] = rs.getString("Image7");
	img[i][7] = rs.getString("Image8");
	img[i][8] = rs.getString("Image9");
	img[i][9] = rs.getString("Image10");
	//i_name = rs.getString("Name");
	//price = rs. getString("Price");
	//url = rs.getString("URL");
	user = rs.getString("User");
	detail = rs.getString("Detail");
	item[i][0] = id;
 	item[i][1] = sid;
	//item[i][3] = cls;
//	item[i][4] = sid;
	//item[i][5] = price;
	//item[i][6] = url;
	item[i][2] = user;
	item[i][3] = detail;
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
<jsp:include page="navbar.jsp" flush="false"/>
<div style="width:100%;max-width:750px;margin:40px auto;border:1px solid #c8c8c8;border-top:0;">
<%
if(!s_id.equals("") && !s_id.equals("null"))
	{%>
	<div style="margin: 60px 0 0 0; padding:30px 0; text-align:center; font-size:30px; border:1px solid; border-radius:5px;">
	<a href="#"onClick="window.open('manage_samples.jsp','_blank','width=550 height=500')">후기등록</a>
	</div>
<%}%>
<%
//CSRF 방지를 위한 상태 토큰 검증
//세션 또는 별도의 저장 공간에 저장된 상태 토큰과 콜백으로 전달받은 state 파라미터 값이 일치해야 함

//콜백 응답에서 state 파라미터의 값을 가져옴
state = request.getParameter("state");
%>
    <div style="width:100%;display:block;position:relative;padding:100px 0;">
    <h2 style="text-align:center; line-height:2em">후기게시판</h2><h3 style="color:gray;text-align:center; line-height:2em; padding-bottom:100px;">로그인 후 이용 가능합니다.</h3>
    <%
    //검색창 & 필터 만들기!
    %>
    <div style="max-width:500px;padding:20px 0;display:block;margin:0 auto;">
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
    <input type="text" name="itemname" style="width:64%;padding:4px 0;position:relative;top:-3px;">
    <input id="search" type="submit" value="검색">
    </form>
    </div>
    <%String classes = "0"; %>
    <div style="width:100%;">
    <%
    for(i=0; i<imgnum; i++){
    	%>
    	<div style="max-width:500px;display:block;margin:30px auto; background-color:white; border-radius:5px; border:1px solid #e4e4e4;">
    	<!--a href="sample_detail.jsp?item=<%=item[i][0]%>"-->
    	<div style="position:relative;float:left;width:100%;height:60px; border-radius: 5px 5px 0 0 / 5px 5px 0 0 ; border-bottom:1px solid #e9e9e9;">
    	<div style="position: absolute;top: 50%;transform: translate(0, -50%);-webkit-transform: translate(0, -50%);-moz-transform: translate(0, -50%);-o-transform: translate(0, -50%); margin:0 20px;"><!-- 프로필 영역 내 수직 가운데정렬(프로필사진, 닉네임, 아이디) -->
    	<%
    	query = "select * from USERS where Id = ?";
    	pstmt = conn.prepareStatement(query);
    	pstmt.setString(1, item[i][2]);
    	rs = pstmt.executeQuery();
    	String profile = "";
    	String nickname = "";
    	while(rs.next()){
    		profile = rs.getString("PROFILE");
    		nickname = rs.getString("NICKNAME");
    	}
    	//if(nickname.equals("na"));
    	%>
    	<img src=<%=profile%> style="width:32px;height:32px;border-radius:70%;float:left;border:1px solid #f7f7f7;">
    	<span style="line-height:32px; margin: 0 15px;"><b><%=nickname%></b></span>
    	</div>
    	</div>
    	<div class="" style="max-width:100%; max-height:300px; min-width:200px; min-height:200px; overflow:hidden; margin:0; display:inline-block;">
    	<%
    	if(img[i][1] != null && !img[i][1].equals("img/null")){
    		%>
    		<div class="slider<%=classes%>">
    		<%
    		int j = 0;
    		while(true){
    			if(img[i][j] == null || j == 10 || img[i][j].equals("img/null")) break;
    			%>
    	    	<div><img style="width:100%; height:100%" src="<%=img[i][j]%>"></div>
    	    	<%
    	    	j++;
    		}
    		%>
    		</div>
    		<script>
    		$(document).ready(function(){slicky(".slider<%=classes%>")});
    		</script>
    		<%classes = Integer.toString(Integer.parseInt(classes)+1);%>
    		<%
    	}
    	else{
    		%>
    	    	<img style="width:100%; height:100%" src="<%=img[i][0]%>">
    	    <%
    	}
    	%>
    	</div>
    	<!-- div style="padding:20px 20px 0px 20px;">상품이름:<%=item[i][1]%></div-->
    	<div style="padding:10px 10px 0 20px;">
    	<%
    	int heart=0;
    	
    	query = "select count(*) from HEART where ReviewId = ?";
    	pstmt = conn.prepareStatement(query);
    	pstmt.setString(1, item[i][0]);
    	rs = pstmt.executeQuery();
    	while(rs.next()){
    		heart = rs.getInt("count(*)");
    	}
    	int yesorno = 0;
    	query = "select count(*) from HEART where UserId = ? AND ReviewId = ?";
    	pstmt = conn.prepareStatement(query);
    	pstmt.setString(1, s_id);
    	pstmt.setString(2, item[i][0]);
    	rs = pstmt.executeQuery();
    	while(rs.next()){
    		yesorno = rs.getInt("count(*)");
    	}
    	if(yesorno > 0){%>
    	<button class="heart" id="<%=item[i][0]%>" value = "1">
    		<svg aria-label="Unlike" class="_8-yf5 " fill="#ed4956" height="24" viewBox="0 0 48 48" width="24"><path d="M34.6 3.1c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5s1.1-.2 1.6-.5c1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg>
       		좋아요 <span id="heartnum"><%=heart%></span>개
        </button>
        <%}
    	else{%>
    	<button class="heart" id="<%=item[i][0]%>" value = "0">
    		<svg aria-label="like" class="_8-yf5 " fill="#c8c8c8" height="24" viewBox="0 0 48 48" width="24"><path d="M34.6 3.1c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5s1.1-.2 1.6-.5c1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg>
    		좋아요 <span id="heartnum"><%=heart%></span>개
    	</button>
    	<%}
    	
    	%>
    	</div>
    	<div style="padding:20px 25px 25px 25px; text-align:left; line-height:1.5em;">
    	<%
    	query = "SELECT * FROM PLUS WHERE Review_id = ? order by Id";
    	pstmt = conn.prepareStatement(query);
    	pstmt.setString(1, item[i][0]);
    	rs = pstmt.executeQuery();
    	int linknum;
    	String linkname;
    	int linkprice;
    	String link;
    	%><%=item[i][3]%><br><%
    	while(rs.next()){
    		linknum = rs.getInt("Id");
    		linkname = rs.getString("Name");
    		linkprice = rs.getInt("Price");
    		link = rs.getString("URI");
    		%>
    		<div>
    		<a class="link" href="<%=link%>"><%=linknum %>.<%=linkname %>/<%=linkprice %></a>
    		</div>
    		<%
    	}
		query = "SELECT * FROM ITEM_TAG WHERE Item_id = ?";
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
		if(s_id.equals("100") || s_id.equals(item[i][2]))//관리자 계정이거나 본인 글 일 경우
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
</div>
<jsp:include page="footer.jsp" flush="false"/>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "3602e31fd32c7e";
wcs_do();
</script>
<script>
$('.heart').click(function(){
	var id=$(this).attr("id");
	var s_id = <%=s_id%>;
	//하트 색깔 바꾸고 디비에 반영하기
	if(s_id == null || s_id == ""){
		if(confirm("로그인 후 이용가능합니다. 로그인 하시겠습니까?"))
			$(location).attr('href', 'login.jsp')
	}
	if($(this).val() == '1'){ // 좋 -> 안좋
		$(this).val("0");
		$(this).children().attr("aria-label", "Unlike");
		$(this).children().attr("fill", "#c8c8c8");
		var heartnum = parseInt($(this).children("#heartnum").text()) - 1;
		$(this).children("#heartnum").text(heartnum);
		}
	else { // 안좋 -> 좋
		$(this).val("1");
		$(this).children().attr("aria-label", "like");
		$(this).children().attr("fill", "#ed4956");
		var heartnum = parseInt($(this).children("#heartnum").text()) + 1;
		$(this).children("#heartnum").text(heartnum);
		}
	//$(location).attr('href', '_heart.jsp?UserId=5&ReviewId='+id);
	//비동기식 -> 화면 깜빡임 없이 디비 전송 가능
	$.ajax({
		url: "_heart.jsp",
		type: "POST",
		data: {
			UserId: s_id,
			ReviewId: id
		}
	})
	//값에 따라 디비에 하트를 추가하거나, 삭제
});
</script>

<script type="text/javascript" src="slick-1.8.1/slick/slick.min.js"></script>
</body>
</html>