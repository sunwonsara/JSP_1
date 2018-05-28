<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<form name="form1" method="post" action="alert.jsp">
<table width="100%" border="0" cellspacing="1" cellpadding="2">

<tr>
<td colspan="3" class="line-t" height="1" bgcolor="#e1e1e1"></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">아이디</td>
<td class="line"><input type="text" name="id" class="InputStyle1">
<a href="javascript:check_ID_Window('id_check.php')">[중복확인]</a>
<br>
특수문자, 한글, 공백을 포함할 수 없으며<br>
모두 소문자와 숫자만 입력됩니다.(4~10자 사이)
</td>
<td rowspan="2"></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">비밀번호</td>
<td class="line"><input type="password" name="passwd" class="InputStyle1" maxlength="10" size="16">
<br>
특수문자, 공백을 포함할 수 없으며<br>
대, 소문자를 구분합니다.(4~10자 사이)
</td>
<td></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">비밀번호 재입력</td>
<td class="line">
<input type="password" name="passwd2" class="InputStyle1" maxlength="10" size="16">
<br>
특수문자, 공백을 포함할 수 없으며<br>
대, 소문자를 구분합니다.(4~10자 사이)
</td>
<td></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">이름</td>
<td class="line">
<input type="text" name="name" size="16" class="InputStyle1">
</td>
<td></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">주민등록번호</td>
<td class="line">
<input type="text" name="jumin1" size="6" class="InputStyle1" onkeyup="focus_move()">
-
<input type="text" name="jumin2" size="7" class="InputStyle1">
</td>
<td></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">E-mail</td>
<td class="line">
<input type="text" name="email" size="25" class="InputStyle1" >
</td>
<td></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">우편번호</td>
<td class="line">
<input type="text" name="zipcode1" size="3" class="InputStyle1">
-
<input type="text" name="zipcode2" size="3" class="InputStyle1">
<a href="javascript:ZipWindow('zip_search.php')">[우편번호 검색]</a>
</td>
<td></td>
</tr>


<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">주소</td>
<td class="line">
<input type="text" name="address1" size="35" class="InputStyle1">
(동까지 입력)<br>
<input type="text" name="address2" size="35" class="InputStyle1" maxlength="50">
(나머지 입력)
</td>
<td></td>
</tr>


<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">전화번호</td>
<td class="line">
<input type="text" name="phone1" size="3" class="InputStyle1">
-
<input type="text" name="phone2" size="4" class="InputStyle1">
-
<input type="text" name="phone3" size="4" class="InputStyle1">
(자택 또는 회사)
</td>
<td></td>
</tr>

<tr>
<td class="line-n" valign="top" bgcolor="#f8f8f7">휴대폰</td>
<td class="line">
<select name="hphone1" class="InputStyle1">
	<option value="">선택</option>
	<option value="010">010</option>
	<option value="011">011</option>
	<option value="016">016</option>
	<option value="017">017</option>
	<option value="018">018</option>
	<option value="019">019</option>
</select>
-
<input type="text" name="hphone2" size="4" class="InputStyle1">
-
<input type="text" name="hphone3" size="4" class="InputStyle1">
</td>
<td></td>
</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="center">
<input type="submit" value="로그인">
<input type="submit" value="초기화">
</td>
</tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>