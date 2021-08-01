<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import ='ch03.ex05.User' %>
<%
	request.setAttribute("user", new User("최한석", 12));
%>
<jsp:forward page='04.requestB.jsp'/>
<!-- 
6>서버내에서 페이지이동. 
리퀘스트는 결국 클라이언트가 서버에게 보내는 데이터의 집합이다.
 리퀘스트에는 많은 데이터가있지만 내가 관심가질것 3가지  url, parameter ,atrribute 
 
 
 -->