<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
본문
<hr>
<%@ include file='04.footer.jsp' %>

<!-- 
include 두가지문법중 
directory를 먼저 써본다. 
04 footer에 적어놨던 코드들을 include 로 가져온다.
4> 이렇게 쓰면 인클루드 디렉토리가 됨.  + file뒤에 포함시킬 파일이름을 적음.
	run해보면 04.footer.jsp에 적어둔 내용이 뒤에 따라붙는다. 
	두 페이지에 있는 내용을 서블릿하나로 통합됐다.
	
	include작업은 클래스단에서 한다. (A와 B부분을 통합한다 = A include B ) = D 
	클래스가 아닌 다른곳에서 통합하는 방법도 있다. (includeA)
	
	include(통합)작업이 일어나는 두가지 (페이지의 관점에서는 차이가 없다)
	1. include D : 클래스단  include directive /인클루드대상인 B가  정적인페이지일떄(회사정보는 정적이다)코드를 한번 클래스에 집어넣으면 웬만하면 바뀌지않을 것들을 directive쓰는것이 효과적.
					->한번 만들어진 클래스를 계속 재활용하기떄문 
					/ 서블릿한개만만들어짐 비에있던것이 에이서블릿으로통합됨
	2. include A : 리스판스단 include action /B가 동적인페이지일때, 매번 바꿀 코드를 (리스판스할것을) 통합해야하니까 
					/ 에이서블릿 비서블릿 둘다만들어짐. 리퀘스트(리스판스도)가 에이로갓다가 비로갔다가 a로 간다.

자원에 url할당하는이유: 리퀘스트를 받기위해서 

여기서 includeD 서블릿이 리퀘스트를 받는다. 
include D를 바탕으로 서블릿을 만들고나면 그 코드에 footer.jsp 내용도 다 따라붙어서 
하나의 서블릿으로 통합된다. 

 -->