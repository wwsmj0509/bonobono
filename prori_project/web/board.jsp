<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="menu.jsp"/>


	<h3>이미지보드</h3>
	
	
	<table>
	<c:if test="${!empty list }">
		<c:forEach items="${list }" var="ob">
		<tr align="center">
			<td>${ob.idx}</td> 
			<td align="left">
				<a href="boardView.do?idx=${ob.idx}">
				${ob.title}</a>
			</td>
			<td>${ob.userid}</td>
		</tr>
		<tr>
			<td colspan="3" bgcolor="lightgray"></td>
		</tr>
			
		</c:forEach>
	</c:if>
	
	</table>




</body>
</html>