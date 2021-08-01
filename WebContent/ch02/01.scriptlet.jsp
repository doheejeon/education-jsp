<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<% // scriptlet 스크립트 명령문 조각을 꺽쇄안에 둔다. (명령문 조각! 을 쓰는 것을 인지해두자.)
	int num1 = 1; //1조각에는 변수선언한다. 자바코드로... 
	int num2 = 2;
%> 
<h2>더하기</h2> <!-- 스크립트밖에서는 html코드조각쓰고, 스크립트안에서는 자바코드를쓴다.  -->
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %>  <%-- ←expression 익스프레션이라고한다(여기도 자바코드). 이 부분이 결국 1 + 2 =3 이되는것.톰캣에서실행후 이자리엔html코드가남는다--%>


<!-- 
2-7> 바디안에 변수가있으니까, 지역변수 (int~ )

 -->