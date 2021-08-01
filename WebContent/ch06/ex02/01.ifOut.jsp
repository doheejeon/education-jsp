<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<c:if test='${param.color == 1}'>빨강</c:if>
<c:if test='${param.color == 2}'>노랑</c:if>
<c:if test='${param.color == 3}'>파랑</c:if>
<c:if test='${param.color == 1}'>RED</c:if> <!-- 3번과 동일하게 일부러 2번 써봄 -->

<!-- 
3> action tag와 EL을 결합해서 써본다. 테스트속성값에 EL을쓴다. 
  "param color가 1이면 빨강을 보여준다. "
 -->