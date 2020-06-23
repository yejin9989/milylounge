 <%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*,java.security.*,java.math.BigInteger" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String username = request.getParameter("username");
String birthday = request.getParameter("birthday");
String phone = request.getParameter("phone");
String addr = request.getParameter("addr");
String nickname = request.getParameter("nickname");
String s_id = session.getAttribute("s_id")+"";// 현재 사용자 current user
int userid = Integer.parseInt(s_id);
//out.println(username+birthday+phone+addr+s_id);

Connection conn = DBUtil.getMySQLConnection();
PreparedStatement pstmt = null;
String query = "UPDATE USERS SET USERNAME=?, BIRTHDAY=?, PHONE=?, ADDR=?, NICKNAME=? WHERE ID=?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, username);
pstmt.setString(2, birthday);
pstmt.setString(3, phone);
pstmt.setString(4, addr);
pstmt.setString(5, nickname);
pstmt.setInt(6, userid);
//out.println(pstmt);
pstmt.executeUpdate();
pstmt.close();
query="";
%>
<script>
alert("회원정보를 수정했습니다!");
document.location.href="myinfo.jsp";
</script>