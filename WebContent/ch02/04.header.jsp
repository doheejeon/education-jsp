<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.time.LocalDateTime' %>
<%= LocalDateTime.now() %>

<!-- 
include A, D를 한꺼번에 써본다.
동적인 페이지구성을 위해 LocalDateTime 으로 쓴다.

여기서 scriptlet이 아닌 expression을 사용한 이유는 무엇인가요? - >나오는 리턴값을 계속 화면에 출력하기위해서 expression을 쓴다.
 -->