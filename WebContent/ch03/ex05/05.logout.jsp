<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	session.invalidate();
%>
<a href='05.main.jsp'>메인</a>

<!-- 
2-3 포폴시 여기 신경쓰기 = 세션객체 죽이기  invalidate 꼭 ..! \ㅁ
논리적으로는 연결끊겼다
물리적으로는 세션객체가 사라졌다. 
 -->