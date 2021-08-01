<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch03.ex05.User'%>
<a href='05.main.jsp'>메인</a> <br>
<%
	session.setAttribute("user", new User("최한석", 12)); //객체유저타입이여도파라미터전달해도, setattribute가 object타입으로 프로모션시킴 
%>
<p><%= session.getAttribute("user") %></p>