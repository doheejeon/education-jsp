<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<form action='loginProc.jsp' method='post'> <!-- 로그인정보가 주소창에 안나타나게 포스트로 메소드잡기 -->
	ID: <input type='text' name='userId'/><br>
	PW: <input type='password' name='password'/><br>
	<button type='submit'>로그인</button> <!-- 버튼은 기본레이블을 내가 적어줘야한다 로그인처럼. -->
</form>
<% //로그인 실패시 이폼으로 돌아올땐 에러메시지를 보여주는 코드 ↓
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg); 
%>

