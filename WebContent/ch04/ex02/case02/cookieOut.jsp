<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<a href="../case01/main.html">메인</a>
<%
   Cookie[] cookies = request.getCookies();

   for(Cookie cookie: cookies) {
      if(cookie.getName().equals("name")){
%>
         <%= cookie.getName() %> : <%= cookie.getValue() %> 
<%
      }
   }
%>
<!--  

리퀘스트 url path, cookie path가 일치하지않지만 쿠키의 패스가 리퀘스트 유알에페스에 포함되어있어서

쿠키가 서버에 전달돼서 리퀘스트에 담겨짐. 

하지만 
리퀘스트 유알엘 페스에 쿠키페스가 포함안돼서 404뜸. 

-->