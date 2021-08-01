<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<% //쿠키생성
	Cookie cookie = new Cookie("name", "최한석");
	response.addCookie(cookie);
	response.setCharacterEncoding("utf-8");
%>
<c:redirect url='cookieOut.jsp'/>

<!-- 
이 쿠키의 패스는 
/jsp/ch04/ex02/case03 입니다.
 -->