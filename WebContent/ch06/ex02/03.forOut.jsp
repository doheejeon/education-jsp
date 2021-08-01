<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<ul>
	<c:forEach var='fruit' items='${paramValues.fruit}' varStatus='status'>
		<li>${status.count}: ${fruit}, ${status.index}</li>
	</c:forEach>
</ul>

<!-- 
4> items 는 컬렉션을 지정하는 것 (fruit컬렉션을 지정함)
 status를 쓰면 나타나는 효과 : 
 status count : 숫자가 1부터시작 
 status index : 숫자가 0부터시작
 -->