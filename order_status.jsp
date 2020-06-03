<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<% request.setCharacterEncoding("UTF-8"); %>
<% //데스크탑 금지
/*
String ua=request.getHeader("User-Agent").toLowerCase();

if (ua.matches(".*(android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-"));
else{
	 response.getWriter().println("<script type=\"text/javascript\">");
     response.getWriter().println("location.href='desktopindex.html'");
     response.getWriter().println("</script>");
}*/
%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type = "text/css" href="https://static-smartstore.pstatic.net/markup/m/dist/renew/css/smartstore!!!MjAxOS0wMy0xM1QxODo1MjowMFpfbWY%3D.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
	<style type="text/css">
	body{
	width:100%;
	margin : 0px 0 0 0;
	background-color:white;
	}
	table {
	margin:auto;
    width: 80%;
   	font-size:1em;
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
<jsp:include page="navbar.jsp" flush="false"/>
<div style="top:60px;position:relative;text-align:center;display:block;clear:both;">
<br><br><b style="font-size:26px">신청현황</b><br><br>
	<table style="text-align:center;width:100%;margin:auto;background-color:white;">
	<th>이름</th>
	<th>휴대폰</th>
	<th>현황</th>
	<%
	Connection conn = DBUtil.getMySQLConnection();
	ResultSet rs = null;
	Statement stmt = null;
	String query = "SELECT * FROM SAMPLE_REQUEST_LIST ORDER BY Order_num DESC";
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	
	String name;
	String mobile;
	int com;
	String now ="";//현황 문자
	
	while(rs.next()){
		name = rs.getString("Name");
		mobile = rs.getString("Mobile");
		com = rs.getInt("State");
		if(com == 0) now="신청완료";
		else if(com == 1) now="발송완료";
		else now="구매완료";

		String result = mobile.substring(mobile.length()-4, mobile.length());
		String mob = "010"+"****"+result;
		
		String nam1 = "";
		String nam2 = "";
		String nm = "";
		if(name.length()>= 3)
		{
			nam1 = name.substring(0, 1);
			nam2 = name.substring(name.length()-1, name.length());
			int i;
			String mid = "";
			for(i = 0; i < name.length()-2; i++)
			{
				mid = mid+"*";
			}
			nm = nam1+mid+nam2;
		}
		else if(name.length() == 2){
			nam1 = name.substring(0, 1);
			nm = nam1+"*";
		}
		else{
			nm = name;
		}
	%>
	<tr>
	<td><%=nm%></td>
	<td><%=mob%></td>
	<td><%=now%></td>
	</tr>
	<%
	}
	%>
	</table>
	<%
	conn.close();
	rs.close();
	stmt.close();
	query=null;
	%>
	</div>
<jsp:include page="footer.jsp" flush="false"/>
	</body>
</html>