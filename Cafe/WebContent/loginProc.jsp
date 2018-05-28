<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="inform.jsp" method="post">
  <center>
  <table>
  <tr>
	<td>아이디</td>
	<td><Input type="text" name="id"></td>
  </tr>

  <tr>
	<td>비밀번호</td>
	<td><Input type="password" name="pw"></td>
  </tr>

  <tr>
	<td colspan=2 align="center">
		<input type="submit" value="로그인">
		<input type="submit" value="초기화">
	</td>
  </tr>
  </table>
  <a href="join.jsp">회원가입</a>
  <a href="find_IDpw.html">아이디/비밀번호찾기</a>
  </center>
  </form>
</body>
</html>