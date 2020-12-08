<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../menu.jsp"/>

<form action="/insta/join.do" method="post">
	<table>
		<tr><th colspan="2" align="center">회원 가입</th></tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" placeholder="아이디" name="input_id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" placeholder="비밀번호" name="input_pwd"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" placeholder="이름" name="input_name"></td>
		</tr>
	  <tr>
	    <td colspan="2" align="center"><button>가입</button></td>

	  </tr>

	</table>
	</form>


</body>
</html>