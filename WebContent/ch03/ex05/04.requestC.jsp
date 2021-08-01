<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%=request.getAttribute("user") %>
<!-- 리퀘스트 객체 하나가 계속 나뉘어짐.리퀘스트가 제일 많이 쓰임 
 
리퀘스트에 데이터를 집어넣는 주체에서의 Parameter와 Attribute의 차이점 
파라미터는 클라이언트에서 집어넣고
어트리뷰트는 서버에서 집어넣는다.

클라이언트가 파라미터를 리퀘스트에 집어넣고, 서버가 어트리뷰트를 리퀘스트에 집어넣는다. (서버는 톰캣)
클라이언트가 리퀘스트에 파라미터를 넣는 방법은 (폼, 쿼리스트링)
서버가 어트리뷰트에 리퀘스트를 넣늗 ( set Attribute), 읽을땐geet

리퀘스트안의 parameter 와 attribute의 공통점 
	공통점은 데이터타입이 String이다.
	
리퀘스트안의 parameter 와 attribute의 차이점
	parameter의 value타입은 string만 가능(스트링타입이 아니면 그냥 다 attribute쓰면된다)
	attribute의 value타입은 object이다. 
	
-->
