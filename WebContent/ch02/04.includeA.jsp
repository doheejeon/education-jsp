<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
본문
<hr>
<jsp:include page='04.footer.jsp'/> <%-- action tag 라고 부른다. --%>
<!-- 
클래스가 아닌 다른곳에서 통합하는 방법도 있다. (includeA) 인클루드 액션이라는 뜻
4> jsp태그는 jsp 접두사를 붙인다. (인클루드태그가 jsp에있어서() ->이 태그는 자바명령문으로 번역된다. (액션문으로 변역돼서 액션태그라고 부른다)
	속성명이 page임. 
	
include D, include A를 쓰든 둘다 눈에보이는 페이지는 동일하다. 
- A에서는 내가 여기서 쓴 '본문'만 갖고있고 include로 해준것은 자바명령문으로 아래와같이 적혀있다.
 org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "04.footer.jsp", out, false);
 결국 인클루드A 서블렛 + 풋터 서블렛 작동 두 서블릿이 협력해서 (include메소드로 ) 
 리스판스단에서 통합을 이루고 페이지를 만들어낸다. 
 
 include는 두개이상의 jsp파일로 페이지하나를 만드는 것  
 4> 여기서 footer.jsp는 url이다. includeD와 다름(파일명)
 	써블릿이 2개존재함.
 -->