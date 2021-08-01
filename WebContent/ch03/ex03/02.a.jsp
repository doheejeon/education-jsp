<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A
<jsp:forward page='02.b.jsp'/> 

<!-- 
forward의 액션 태그를 공부해보자!
3> forward로 이동할 페이지의 url을 적어주면 a에서 리퀘스트를 보내면 포워드 액션태그를 통해 b로 이동시키고 
	b가 에이가 갖고있떤 리스판스, 리퀘스틑를 전달받고,  리스판스를 클라이언트에게 보내준다. 그래서 b의 내용을 출력 
	
01.a.jsp에서 배운 방법보다, 02에서 배운 액션태그가 더 간단하고 코드도 간략하게 쓸 수 있다.
	
      ∴	액션태그의 목적은 jsp에서 자바코드를 없애는 것이다. = 더 깨끗한 코드가 됨 = 쓰레기 최소 = 유지보수 용이
 -->