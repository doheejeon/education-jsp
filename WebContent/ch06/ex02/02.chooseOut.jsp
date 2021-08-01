<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<c:choose>
	<c:when test='${param.color == 1}'>빨강</c:when>
	<c:when test='${param.color == 2}'>노랑</c:when>
	<c:when test='${param.color == 3}'>파랑</c:when>
	<c:when test='${param.color == 1}'>RED</c:when>
</c:choose>

<!-- 
choose 자식태그 when, 
 choose는 배타적이여서 when을 여러개썼을때 그 중에 하나만 선택된다
 if에서는 빨강과 RED를 둘 다 보이게하지만 여기는 위에서부터 차례대로 검증해서 하나만 보여지게한다.
 
 -->