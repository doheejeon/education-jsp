<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	Cookie[] cookies = request.getCookies();

	for(Cookie cookie: cookies)
		if(cookie.getName().equals("name")){
%>
			<%= cookie.getValue() %>
<%
		}
%>
<!-- 
쿠키의 밸류가 한글일땐 setCharactierEncoding을 해주면 된다.
 -->