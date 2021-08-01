<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String userName = request.getParameter("userName");
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
%>
<h3>사용자</h3> <!-- 출력용도 ↓ -->
<ul>
	<li>이름: <%= userName %> </li>
	<li>나이: <%= age %></li>
	<li>생일: <%= birthday %></li>
</ul>
<!-- 
이곳은 폼을 제출하는 '목적지'
 - 폼으로 작성한 데이터들이 있다.(폼으로 작성한 데이터들을 꺼내온다)
 
 폼으로 작성한 데이터를 '파라미터'라고 한다.폼에 작성한 데이터가 파라미터밸류가됨.
 3> usernameㅇ르 불러와서 그 파라미터밸류를 왼쪽  userName에 저장하겠다.
 4> getParameter의 리턴타입이 스트링이라고 날자와 나이도 다 스트링으로 한다.
 	네트워크를 타고가면 무조건 텍스트가됨! 
 	그 텍스트를 자바에선 String타입으로 표현한다.
 	
 http데이터타입을 text, binary로 나뉜다. (http관점)
 http상에서 리퀘스트에 담기는 파라미터밸류의 타입은 거의 다 스트링이다. (java 관점)
 


 -->