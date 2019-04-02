<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="db_connect.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<style>
body{
text-align:center;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
여태 구매한 제품에 대한 정보가 필요합니다.
<br>
<p>구매자명<input type="text"></p>
<p>휴대전화<input type="text"></p>
<p>구매했던 제품을 모두 작성해주세요<input type="text"></p>
<input type="submit" value="[쿠폰 발급 신청하기]"><br>
*쿠폰은 2-3일 안에 발급되며, 쿠폰을 모으면 <a href="reward.html">리워드 기프트</a>로 교환이 가능합니다.
</body>
</html>