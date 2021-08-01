<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<ul>
	<li>${user}</li> <!--request 스콥의 유저를 읽어옴  user.toString이 호출됨.-->
	<li>${user.userName}</li>
	<li>${pageScope.user.userName}</li> <!-- 아무것도안나옴 -->
	<li>${requestScope.user.userName}</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName}</li>
</ul>
<!-- 
4>toString이아니라, 특정값만 호출하고싶다면 필드네임을 함께씀(user.멤버변수명) 면 해당 멤버변수의 리턴값을 호출함 (getter를 준비한이유)
	해당 멤버변수의 타입이 literal이 아닌 경우에도 읽어올 수 있다.
 -->