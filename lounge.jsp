<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<style type="text/css">
			div#content{
			}
			#contenthalf{
			background-color:#FFFFFF;
			height:198px;
			width:173px;
			border:1px solid;
			border-color:#000000;
			margin:0px;
			float:left;
			text-align:center;
			display:table-cell;
			vertical-align:middle;
			}
			#contentfull{
			background-color:#FFFFFF;
			height:130px;
			width:348px;
			border:1px solid;
			border-color:#000000;
			margin:0px;
			float:left;
			text-align:center;
			}
		</style>	
		<title></title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body style="margin:0px;">
	<%
	String name=session.getAttribute("userSession")+"";
	%>
	<div id="container" style="width:350px">
		<div id="header" style="background-color:#000000;">
			<h2 style="margin-bottom:0;text-align:center;color:#FFFFFF;">Lounge</h2>
		</div>
		<!--<div id="content" style="background-color:#EEEEEE;height:600px;width:350px;float:left;">-->
			<div id="contenthalf">
			<a href="coupon.jsp">
			<b>Coupon</b>
			<br>받은쿠폰을 확인합니다
			</a>
			</div>
			<div id="contenthalf">Reward Gift<br><%=name%>님<br>선물을 받으세요</div>
			<div id="contentfull">Curtain Sample<br>현명한 소비자를 위한<br>샘플 원단을 확인해보세요</div>
			<div id="contentfull">Brand Story</div>
			<div id="contentfull">밀리무드에 건의하기</div>
		
		<div id="footer" style="background-color:#FFA500;clear:both">
		@Milymood
		</div>
	</div>
	</body>
</html>