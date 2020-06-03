 <%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "myinfo.jsp"); %>
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
<link rel="stylesheet" type = "text/css" href="menu.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
body{
background:gray;
margin:0;
}
.topbar{
box-shadow: 0px 4px 5px 0 rgb(0,0,0,0.05);
}
.container{
position:relative;
top:38px;
width:100%;
height:800px;;
max-width:800px;
background:white;
text-align:center;
}
.profileArea{
display:inline-block;
margin-top: 100px;
width:100%;
max-width: 400px;
text-align: center;
}
.mydata{
display: inline-block;
text-align: left;
}
</style>
<title>Milymood - 나의 정보</title>
</head>
<body>
<%
// 세션 가져오기 get session
String now = session.getAttribute("page")+""; // 현재 페이지 current page
String s_id = session.getAttribute("s_id")+"";// 현재 사용자 current user
String name = session.getAttribute("name")+"";
%>
<%
//데스크탑 금지
/*String ua=request.getHeader("User-Agent").toLowerCase();
if(request.getRemoteAddr().startsWith("78.16.231"));
else if(s_id.equals("admin"));
else if (ua.matches(".*(android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-"));
else{
	 response.getWriter().println("<script type=\"text/javascript\">");
     response.getWriter().println("location.href='desktopindex.html'");
     response.getWriter().println("</script>");
}*/
%>
<jsp:include page="navbar.jsp" flush="false"/>
<div class="container">
	<div class="profileArea">
	<%
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query="SELECT * FROM USERS WHERE ID = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1,s_id);
String username="";
String email="";
String addr="";
String phone="";
String create_date="";
String birthday="";
int point=0;
String grade="";
int stars=0;
rs=pstmt.executeQuery();
while(rs.next()){
	username=rs.getString("USERNAME"); if(username==null) username="";
	email=rs.getString("EMAIL"); if(email==null) email="";
	addr=rs.getString("ADDR"); if(addr==null) addr="";
	phone=rs.getString("PHONE"); if(phone==null) phone="";
	create_date=rs.getString("CREATE_DATE");if(create_date==null) create_date="";
	birthday=rs.getString("BIRTHDAY");if(birthday==null) birthday="";
	point = rs.getInt("POINT");
}
pstmt.close();
rs.close();
query="";
conn.close();
%>
<form method="POST" action="_myinfo.jsp">
<h2>나의 정보</h2>
<table class="mydata">
<tr><td>이름 </td><td><input type="text" name='username' value="<%=username %>"></td></tr>
<tr><td>생일 </td><td><input type="text" name='birthday' value="<%=birthday %>"></td></tr>
<tr><td>가입일</td><td><%=create_date%></td></tr>
<tr><td>휴대폰</td><td><input type="text" name='phone' value="<%=phone%>"></td></tr>
<tr><td>주소</td><td><input type="text" name='addr' value="<%=addr%>"></td></tr>
<tr><td>포인트 </td><td><span style="color:blue;"><%=point%></span></td></tr>
</table>
<input type="submit" value="수정">
</form>
<div>
</div>
	</div>
</div>
<jsp:include page="footer.jsp" flush="false"/>
</body>
</html>