<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석", 12)); 
%>
<%= pageContext.getAttribute("user") %>

<!-- 
6> 익스프레션안에서 객체가 투입되면, 객체.투스트링이 호출됨. 투스트링의 리턴값을 html의 코드로서 리스판스에 담아 보낸다.
	
 -->