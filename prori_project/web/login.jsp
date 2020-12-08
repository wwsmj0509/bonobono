<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp" />

		<form action="/insta/login.do" method="post">
			<table border="0">
				<tr>
					<td>아이디</td>
					<td><input type="text" placeholder="아이디" name="input_id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" placeholder="비번" name="input_pwd"></td>
				</tr>
				<tr>
					<td colspan="1"><input type="submit" value="로그인"></td>
				</tr>
				<tr>
					<td colspan="1"><a href="/insta/login/signUp.jsp">회원가입</a></td>
				</tr>
				
			</table>
		</form>
	</body>
</html>