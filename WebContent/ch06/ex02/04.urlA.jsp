<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<h3>A</h3> 

<c:url var='page' value='04.urlB.jsp'/>
<a href='${page}'>이동</a> <br><br>

 ${param.num}
<!-- 
url의 액션태그써보기 
	4>->어트리뷰트를 만들 수있다. 네임은 페이지, 밸류는  urlB.jsp~인것 
5> 페이지가 어트리뷰트니까 EL안에서도 쓸 수있다.
 -->