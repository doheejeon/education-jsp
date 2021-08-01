<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	pageContext.setAttribute("one", "페이지2"); //null
	request.setAttribute("two", "리퀘스트2"); //null
	session.setAttribute("three", "세션2"); //세션2
	application.setAttribute("four", "애플리케이션2"); //애플리케이션2
%>
<c:redirect url='01.scopeB.jsp'/>

<!-- 
pageContext는 1번의 A,B, 2에서 쓰는거 전부다 다르다 
request도 마찬가지. 서로 다 다른 객체
session,application은 A, B에서쓰는것과 02 A에서 쓰는 것이 모두 같은 하나의 객체
attribute 네임이 같으면 덮어쓰기가된다. (01의A와 02A에서 동일한 이름을 갖고있어서 덮어쓰기가됨. ) 
즉 세션과 어플리케이션은 계쏙 살아남는다.  
동일한 이름의 어트리뷰트를 집어넣으면 덮어쓰기가된다.
 -->