<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
expression: <%= "hello" %> <br>
scriptlet :<% out.print("hello"); %> <br>

EL(Expression Language): ${"hello"}
<!-- 
과제 hello를 html코드 사용하지않고 화면에 출력하기. 
	-jsp코드를 이용해서  hello를 2개 출력하기! 
	
 6장의 주제는 EL 
 expression과 EL은 모두 결국 데이터를 브라우저 화면에 출력하는 것. 
5> EL을 써서 hello를 화면에 출력해본다
	scriptlet vs. EL(혹은 expression) 의 차이점
		jsp페이지 내에 자바코딩(scriptlet)을 하느냐 안하느냐 (EL,expression)차이 => expression 택하는게 좋다! 
EL을 쓰는 이유 jsp페이지 내에서 자바코드를 없애기위한것. 

 
 -->