<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<% request.setCharacterEncoding("utf-8"); %>
<%= request.getParameter("userName")%>


<!-- 
*파라미터밸류는  영어를 써야 안전하다
한글은 위험하다 : post 메소드로 써서 넘기면 한글이 깨짐. (하나이상의 서버를 거쳐서 오기떄문에 어디선가 하나라도 한글처리를 하지 못하면 깨지기떄문에)
			※get메소드에서는 한글을 별도로 처리하지않아도됨 
하지만 여기서 한글을 처리하고싶다면? 
2번줄처럼, 리퀘스트의 캐릭터를  utf-8로 인코딩하면된다.
하지만 이것은 우리가 쓰는  WAS톰캣이라 이런 기법을 쓰는 것이고 WAS가 다르면 다른 방법으로 한글 처리해야한다.

*** 파라미터를 읽어들이는 쪽에서 읽기전에 캐릭터 인코딩을 맞춰야하는 조건 2개 ↓****
1.폼의 리퀘스트메소드가 포스트이다. 
2. 톰캣을쓴다. 

, 제우스 WAS를 쓰면 , WAS엔지니어가 한글처리 설정을 한번만 등록해두면 앞으로 알아서되기떄문에 이렇게 할 필요가 없다.
pageEncoding='utf-8' ->톰캣이 관심갖는곳
2> setCharacterEncoding("utf-8") 이것은 request에 있는 캐릭터를 utf-8로 인코딩하라는 것! (여기에 더 관심을 갖는다)
contentType='text/html; charset=utf-8 -> 브라우저가 관심갖는곳 
 -->