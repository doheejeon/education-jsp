<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
String: ${"hello"}<br>
int: ${10} <br> <!-- 리스판스에 10 데이터가 잘 출력이됐다.. -->
double : ${10.0} <br>
boolean: ${true} <br>
null: ${null}, <%-- <%= null --%> <hr>

\${ 5 * 2 }: ${ 5 * 2 } <br>
${5 > 2 } <br><!-- EL에 비교 연산자도 잘 작동 -->
${5 > 2 ? 5 : 2} <br>
${ 5 > 2 || 5 < 2 }
<!-- 
EL에서도 다양한 데이터타입을 출력할 수 있다.
	-string, int 
★즉 EL안에서 쓸 수 있는 것은 "리터럴", "expression", "attribute", "parameter"

6> expression으로  null 받으면 오류가뜬다. 
	 null point exception 발생.. 
	 EL 이용하면 null도 화면에 출력이가능(아무것도 안ㅇ보이지만) 익셉션 처리를 하지 않아도 됨.
 expression 과 스트립트릿있으면 익스프레션 우선선택

 익스프레션과 EL있으면 EL먼저 선택
 null은 깨끗하게 아무것도 출력하지 않는다.
 <hr>
 
특수문자를 그대로 나타내고싶을땐 \ 역슬래쉬를 붙인다.
 8>위처럼 리터럴말고 수식을 써도 나온다. = EL안에 수식을 쓸 수 있다. 
 -->
