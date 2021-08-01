<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<ul>
	<li><%= request.getRequestURL() %> </li>
	<li><%= request.getProtocol() %> </li>
	<li><%= request.getServerName() %></li>
	<li><%= request.getContextPath() %> </li>
	<li><%= request.getRequestURI() %> </li>
	<li><%= request.getQueryString() %> </li><!-- 나중에 다시배워요 null -->
	<li><%= request.getMethod() %> </li> <!-- 리퀘스트메소드를 알수있다. 기본값은 get -->
</ul>

<!-- 내장객체중 하나인 리퀘스트를 다뤄봅니당 (내장객체: 따로 구현하지않아도 사용할 수 있도록 준비되어있는 객체)
**jsp를 코딩하지만 써블릿소스 관점에서 보자  
--request의 기능--
3> request안의 기능으로 url을 확인할 수 있다.클라이언트가 서버로 보낸정보들이있음
4> HTTP/1.1 프로토콜을 얻어낼수있다. 
5> 서버네임을 알아낼 수 있다. servername = localhost
6> contextpath 얻어낸다. = /jsp
7> URI는 contextpath 이후의 주소를 얻어낸다. 
9> 보통 form에는 post를 쓴다. requestMethod의 기본값은 get. 

_jspService메소드의 파라미터로 전달되는 request, response
 -->