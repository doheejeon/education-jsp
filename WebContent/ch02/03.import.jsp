<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.util.Date' %>
<%
	LocalDate date = LocalDate.now();
	Date date2 = new Date();
%>
<%= date %> <br>
<%= date2 %>
<!-- 
2,3 > 페이지 디렉토리를 이용해서 내 소스에 다른패키지 클래스를 쓰고싶을때 import를 쓴다.

지금까지는 jsp파일과 페이지하나 1:1매핑이고 다음예제는 n개오 ㅏ매핑되는걸 경험해본다.

 -->