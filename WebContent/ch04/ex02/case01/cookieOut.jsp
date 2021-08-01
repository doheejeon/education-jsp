<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<a href='main.html'>메인</a> <br><br>
<%
	Cookie[] cookies = request.getCookies(); //쿠키를 읽어낸다.

	for(Cookie cookie: cookies)
		if(cookie.getName().equals("name")) { //쿠키이름이 name이면 
%>
			<%= cookie.getName() %>: <%= cookie.getValue() %> <!-- 7번줄검증통고하면, 쿠키이름과 밸류를 보여준다. -->
<%
		}
%>
<!--  
쿠키 젠쩜 jsp, out.jsp의 패스가 모두 일치하는상황 (위에서까진)
현재 쿠키패스는 ...case01로 끝남 

쿠키패스, 리퀘스트 url패스가 불일치한다면 (메인의 5번줄 'sub/cookieOut.jsp'> 보기 이부분 
	리퀘스트 url path, cookie path가 일치하지않지만 쿠키의 패스가 리퀘스트 유알에페스에 포함되어있어서
쿠키가 서버에 전달돼서 리퀘스트에 담겨짐. 

-->