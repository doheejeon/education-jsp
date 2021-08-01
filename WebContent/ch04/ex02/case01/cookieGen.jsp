<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	Cookie cookie = new Cookie("name", "john"); //path값자동입력되는데 servlet의 패스값을 그대로 가져감.
	response.addCookie(cookie);
%>
<a href='main.html'>메인</a>
