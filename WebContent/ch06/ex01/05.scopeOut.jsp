<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<ol>
	<li>${scope}</li>
	<li>${pageScope.scope}</li>
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>

<!-- 
어트리뷰트는 4가지 스콥이 있는데 리퀘스트 스콥이사용됨
EL은 가장먼저 페이지에서 해당 어트리뷰트를 찾고 ->리퀘스트 ->세션->어플리케이션 순서 즉 스콥이 적은순서대로 뒤진다. 
	그래서 리퀘스트에서 어트리뷰트를 발견하고 끝냄 (Proc에서 포워드시켰기떄문에 남아있음)
4> 특정어트리뷰트를쓰고싶다면 접두사를 붙인다.
 -->
