<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	Object userId = session.getAttribute("userId"); //여기서 세션이 생기고, 세션에서 userId값을 읽어올것이다. 최초에는 새션객체는있지만 userid없음
	if(userId == null) { //즉 최초로 접속한경우 null이라면 ? ↓
%>
		<a href='login.jsp'>로그인</a>  <!-- 로그인페이지를 이동할 수 있는 링크를 보여준다 -->
<%
	} else { //userID값이 있다면? = 로그인이 된상태라면? 환영메시지를 보여준다 ↓
%>
		<%= userId %>님, 환영합니다! &nbsp;
		<a href='logout.jsp'>로그아웃</a>
<%
	}
%>


<!-- 
메인에서는 화면이 동적이다. 1.로그인링크만잇는경우 2.환영메세지와 로그아웃링크가있는경우

1.메인의 로그인 링크를 누르면, 로그인 폼으로 이동한다.
2. 아이디와 암호를 입력해서 로그인한다.
3. 아이디/암호는 java/java이다.
4. 로그인성공시 메인에 'java님 환영합니다.'를 출력한다.
5. 위 환영 메세지 옆에 로그아웃 링크를 출력한다.
6.로그아웃 링크를 누르면 로그아웃후 메인으로 이동한다
7.로그인 실패시 로그인 폼으로 이동한다.
8. 위 폼 아래에 에러메시지를 출력한다.
 -->
