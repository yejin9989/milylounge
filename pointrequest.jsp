<!-- 포인트신청페이지 -->
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% session.setAttribute("page", "pointrequest.jsp");%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<style>
body{
text-align:center;
padding:30px;
}
textarea{
width:30%;
height:100px;
}
#desc{
padding:77px 20px;
display:block;
}
#purchase{
background-color:white;
}
.field{
height:25px;
width:275px;
padding:0px;
}
#c_btn{
background-color:#615555;
color:white;
border:0px;
border-radius:5px;
height:40px;
}
form{
margin:0 0 40px 0;
}
.tail{
text-align: left;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>포인트 지급 신청</title>
</head>
<body>
<span id="desc">구매하셨던 제품에 대한 정보가 필요합니다.</span>
<br>
<!--  form method="post" enctype="multipart/form-data" action="_uploadimage.jsp">
<input type="file" name="filename1" size=40>
<input type="submit" value="사진첨부"><br>
사진첨부 버튼을 눌러야 사진이 첨부됩니다!<br>
</form-->
<form method="post" action="_pointrequest.jsp">
<select class="field" id="purchase" name="purchase">
<option selected disabled>구매처</option>
<option value="naver">네이버</option>
<option value="ohouse">오늘의집</option>
<option value="coupang">쿠팡</option>
<option value="gmarket">지마켓</option>
<option value="auction">옥션</option>
<option value="11st">11번가</option>
<option value="gsshop">gs샵</option>
<option value="direct">직접송금결제</option>
<option value="etc">기타</option>
</select>
<p><input class="field" name="ordernum" type="text" placeholder="주문번호"></p>
<p><input class="field" name="name" type="text" placeholder="구매자명"></p>
<p><input class="field" name="phone" type="text" placeholder="연락처"></p>
<input class="field" id="c_btn" type="submit" value="[포인트 지급 신청하기]"><br>
</form>
<div class="tail">
*'직접송금결제'로 주문번호가 없는 경우 공란으로 두고 신청해주세요.<br>
**포인트는 2-3일 안에 지급되며, 포인트를 이용해 쿠폰을 모으면 <a href="reward.html">리워드 기프트</a>로 교환이 가능합니다.
</div>
</body>
</html>