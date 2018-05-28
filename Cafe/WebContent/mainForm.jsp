<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<header>
	<jsp:include page="index.jsp"/>
</header>
  
<nav id="topMenu">
	<jsp:include page="top1.jsp"/>
</nav>

<nav id="topMenu2">
	<jsp:include page="top2.jsp" flush="false" />
</nav>    

   
 <section>
		<jsp:include page="<%= contentPage %>" flush="false" /> 
  </section>

<footer>
    <jsp:include page="bottom.jsp" /> 
</footer>
</body>
</html>