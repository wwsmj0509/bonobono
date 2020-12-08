<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../menu.jsp"/>

<c:if test="${!empty view}">

	<h3>글쓰기</h3>
	<table border="0" >
	   <tr>
	      <td>프로필 사진 넣을곳</td>
	      <td>${view.userid}</td>
	   </tr>
	   <tr>
	      <td>제 목</td>
	      <td>제 목</td>
	   </tr>
	   
	   <tr>
	      <td>내 용</td>
	      <td>내 용</td>
	   </tr>
	   
	   <tr>
	      <td colspan="2" align="right">
	      <a href="/insta/write/user_update.jsp">수정</a>
	      <a href="boardList.do">목록</a>
	      </td>
	   </tr>
	</table>
</c:if>
</body>
</html>