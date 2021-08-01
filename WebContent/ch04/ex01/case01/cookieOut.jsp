<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<a href='main.html'>메인</a> <br>
<%
	Cookie[] cookies = request.getCookies();

	for(Cookie cookie: cookies){ //쿠키를 하나씩꺼내고 꺼냈을때 쿠키가 아래조건인지 검사 ↓
		if(cookie.getName().equals("name") || cookie.getName().equals("age")){//쿠키이름을 알아내는 메소드는 겟네임.
%>
		<%= cookie.getName() %> : <%= cookie.getValue() %> <br> <!-- 읽어낸값을html코드로 받아냄 -->
<%
		}
	}
%>
<!-- 
3~>서버단에서 전달받은 쿠키를 리스판스에 받아보는데, 이럴땐 쿠키로써담지않고 html로 담아본다.
4>서버가 리퀘스트를 받았고 그 쿠키를 읽고싶다면 request.getCookies를 메소드이용 
	리퀘스트안에 비즈니스 데이터를 읽어내는 방식 4가지(메소드)
	1.request.getParameter()
	2.request.getPrametervalues()
	3.request.getAttribute()
	4.request.getCookies
	
7> 쿠키의 이름을읽었더니 네임인것, 혹은 age인것을 찾아낸다. 만약 찾아내면 
그 값을 읽어낸다 9번줄 

쿠키수정은 이미존재하는 value를 바꾸는것 
 -->