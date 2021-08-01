<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A <hr>
<jsp:include page='04.b.jsp'/><hr>
A2

<!-- 
3> A에서 b로 페이지이동. 인클루드해도 에이가 갖고있던 리스판스 리퀘스트를 그대로 보낸다.(리퀘스트는 서버가보낸다)
	a include b 페이지 이동순서 a- b -a 다시 에이로 돌아옴. 돌아와서 리스판스(a,hr,b)에 a2를 포함시킨다.
						에이가갖고있던 리스판스를 에이, 비가 공유하고, 비로 이동하여 비가 비를 추가한다음에 다시 에이로돌아와서
						에이투를 추가한다. 리스판스를 다시 클라이언트에게 보낸다. 
	a forward b 하면 페이지이동이 비에서 끝남

 -->