<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<ul>
	<li><%= pageContext.getAttribute("one") %></li> <!-- 셋어트리뷰투로 넣은것을 겟으로불러오고 파라미터밸류이름을넣웆면됨 -->
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three") %></li>
	<li><%= application.getAttribute("four") %></li>
</ul>

<!-- 
http 에서 커넥션리스를 하는 이유! 
	→웹앱은 유저가 n명이라는 걸 전제로하기떄문에 http에서는 커넥션리스를 하는 것이다.
	
쓰리,포는 연결이 계쏙 유지돼서 계속보임.
 -->