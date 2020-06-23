<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<% //데스크탑 금지
/*
String ua=request.getHeader("User-Agent").toLowerCase();

if (ua.matches(".*(android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-"));
else{
	 response.getWriter().println("<script type=\"text/javascript\">");
     response.getWriter().println("location.href='desktopindex.html'");
     response.getWriter().println("</script>");
}
*/
%>
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
#container{
	margin: 40px auto;
	display: flex;
	border: 1px solid #c8c8c8;
	border-top: 0;
	height: 100%;
	width: 100%;
	max-width: 750px;
}
figure.context {
	color:#fff;
	position: relative;
	overflow: hidden;
	margin:10px;
	max-width:340px;
	max-height:300px;
	width:100%;
	background: #000;
	text-align:center;
	border-radius: 5px;
	margin: 70px auto;
}
figure.context *{
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.6s ease;
	transition: all 0.6s ease;
}
figure.context img{
	opacity: 0.8;
	width:100%;
	vertical-align: top;
	-webkit-transition: opacity 0.35s;
	transition: opacity 0.35s;
	border-radius: 5px;
}
figure.context figcaption{
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
figure.context figcaption > div{
	height:50%;
	overflow : hidden;
	width:100%;
	position: relative;
}
figure.context h2,
figure.context h3{
	margin: 0;
	position: absolute;
	left: 0;
	padding: 0 30px;
}
figure.context h2{
	font-weight: 900;
	bottom:7px;
	font-size:30px;
}
figure.context h3{
	font-size: 15px;
	font-weight: 500;
	top: 2px;
	opacity:0;
	-webkit-transform: translateY(150%);
	transform: translateY(150%);
}
figure.context a{
	left:0;
	right: 0;
	top: 0;
	bottom: 0;
	position: absolute;
}
figure.context.hover img,
figure.context:hover img{
	opacity: 0.3;
	-webkit-filter: grayscale(100%);
	filter:grayscale(100%);
}
figure.context:hover figcaption h3{
	opacity: 1;
	-webkit-transform: translateY(0%);
	transform: translateY(0%);
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<%session.setAttribute("page", "calselect.jsp");
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
%>
<jsp:include page="navbar.jsp" flush="false"/>
<div id = "container">
	<div style="margin:auto auto; display:block; width:100%;">
		<div>
			<a href="pyung.jsp">
			<figure class="context">
			<img src="img/pyung.jpg" alt="평주름 커튼 계산 버튼">
			<figcaption>
				<div>
				<h2>평주름 커튼 계산기</h2>
				</div>
				<div>
				<h3>베이직한 평주름 커튼을 위한 계산기입니다.</h3>
				</div>
			</figcaption>
			</figure>
			</a>
		</div>
		<div>
			<a href="nabi.jsp">
			<figure class="context">
			<img src="img/nabi.jpg" alt="나비주름 커튼 계산 버튼">
			<figcaption>
				<div>
				<h2>나비주름 커튼 계산기</h2>
				</div>
				<div>
				<h3>나비주름 커튼을 위한 계산기입니다.</h3>
				</div>
			</figcaption>
			</figure>
			</a>
		</div>
	</div> <!-- container 중간정렬 끝 -->
</div> <!-- container 끝 -->
<jsp:include page="footer.jsp" flush="false"/>
</body>
</html>