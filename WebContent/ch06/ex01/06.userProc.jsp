<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch06.ex01.User' %>
<%@ page import='java.time.LocalDate' %>
<%
	pageContext.setAttribute("user", new User(1, "최한석", LocalDate.of(2025, 5, 5)));
	request.setAttribute("user", new User(2, "옥택연", LocalDate.of(2026, 6, 15)));
	session.setAttribute("user", new User(3, "장우영", LocalDate.of(2027, 7, 25)));
	application.setAttribute("user", new User(4, "송강", LocalDate.of(2028, 8, 13)));
%>
<jsp:forward page="06.userOut.jsp"/>
<!-- 
여기서는내가직접 만든 어트리뷰트를 사용해본다.
직접 도메인을 만들고 도메인을어트리뷰트밸류로 써본다.
5> 페이지스콥으로 유저어트리뷰트 준비
6> 리퀘스트 스톱으로 유저어트리뷰트 준비. 
 -->