<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	pageContext.setAttribute("userName", "최한석");
%>
${userName}<br>
${hello} <br>
${empty hello} <!-- empty에서는 불리언타입의 값을 리턴하니까, 피연산자가 empty이면 (null이면)트루리턴 "true"나옴-->
${empty userName ? "무명" : userName} <br> <!-- user네임있으면 최한석나오고 아니면 무명나오게 -->
${!empty userName ? userName : "무명" } <br>
<!-- 
5> attribute value도 화면에 출력가능하다.
	즉 이부분은 getAttribute(userName)이 실행되는것.
6> ${hello}  이렇게쓰면 hello라는 attribute가 없기떄문에 null이 출력된다(아무것도 안보이게된다)
 -->