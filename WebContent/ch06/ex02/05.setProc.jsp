<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 

<c:set var='fruit' value='사과'/> ${fruit}<!-- url외 밸류를 가지는 어트리뷰트를 만드는 액션태그가 set임 /네임 fruit, 어트리뷰트밸류:사과 -->
<c:set var='fruit'>부사</c:set> ${fruit} <!-- 윗줄을 이렇게 써도됨. -->

<c:set var='fruit' scope='page'>사과</c:set>
<c:set var='fruit' scope='request'>딸기</c:set>
<c:set var='fruit' scope='session'>머루</c:set>
<c:set var='fruit' scope='application'>포도</c:set>

<jsp:forward page='05.setOut.jsp'/>

<!-- 
어트리뷰트라면 스콥이있는데 따로 내가 지정하지않으면 디폴트가 '페이지'스콥이다. 
7-10> 어트리뷰트에 스콥을 지정할 수있다. 
12> forward시켯으니 어트리뷰트가  페이지는 전달되지않는다. 리퀘스트는 out으로 전달된다.
	세션과 어플리케이션은 전달되는게아니라 proc, out 두 페이지가 공유하게되는것
	
 -->