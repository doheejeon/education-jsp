<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<% request.setCharacterEncoding("utf-8"); %>
<p> ${param.userId == "java" ? param.userId : "손님"}, 환영합니다. </p> 
<p> ${param.num1} + ${param.num2} = ${param.num1 + param.num2} </p>
<p> ${param.submitDay}</p>
<p>
	<c:forEach var='season' items='${paramValues.season}'>
			${season}
	</c:forEach>
</p>
<!-- 
4> <p> ${userId} </p> 여기서 userId는 파라미터가아니라 attribute임 그래서 이렇게쓰면  null 출력됨
	EL은 어떤 단어가 그냥 달랑 1개있으면 attribute 네임으로 인지한다. 
	그래서 이건 파라미터라는것을 알려주기위해 접두사인 param.을 붙여준다. 
	paramIn에서 userId가 java면? 아이디 +환영합니다. 입력하지않고 넘어오면 손님+환영합니다 (기본값이 empty String이라서 "java"가 아니니까 손님출력됨.

4,5 > 파라미터각 ㅏ깍 문자, 숫자로 보이지만 물리적으로 모두 텍스트이다. 
	숫자파라미털르 받는다면 서버단에서 파라미터를 읽어내면 스트링타입이라 연산하지못하니까 더하기하기직전에  
	스트링타입의 값을 인트타입으로 캐스팅했었다.
	하지만 5번줄에서는 캐스팅하지않아도 EL을 쓰면 parseInt하지않아도 된다. 
8> 체크박스에있는 아이템들처리하고 컬렉션들을 파라미터로 처리. 
	파라미터밸류가 배열일때는 접두사 paramValues를 붙인다.	
	c:forEach태그 
		forEach태그는 배열, Collection. 또는Map에 저장되어있는 값들을 순차적으로 처리할때사용할 수 있는 태그. 
		자바의  for, do-while을 대신하여사용.
		속성  var: String타입, 몸체에서 사용할 EL변수이름 
			items: Collection,lterator,Enumeration,Map,배열 / 바본처리할 데이터 
			varStatus: String타입 / 루프상태를 저장할EL변수이름 
			begin : int타입 / 시작인덱스값
			end: int타입/ 끝인덱스값
			step: int타입 / 인덱스 증분값.
 -->
