<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>

input[type=submit] {
    width: 100px;
    background-color: #0DC8E5;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-family:���ʷҵ���;
}


h1{
	  font-family:���ʷҵ���;
}
#form{
	margin:0 auto;
}
</style>
</head>
<body>

<%
	String text=""; 
	String result="";
%>
<center>
<div id="form">	
<form action="#" model="post" enctype="multipart/form-data">
<table width=1000 height=600 border=2 cellspacing=0 >
<tr height=300>
  <td colspan=3>
    �̸� : &nbsp;<input type="text" name="name"> &nbsp;&nbsp;
    ��й�ȣ : &nbsp;<input type="password" name="pw">&nbsp;&nbsp;
  <select name="category">
			<option>���</option>
			<option>����</option>
			<option>����</option>
			<option>����</option>
			<option>�ϻ�</option>
			<option>��Ƽ</option>
	</select><br><br>
    ������ ��� :&nbsp;<input type="radio" name="level" value="��" id="mid" checked required></input> <label for="mid">��&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="�ڡ�" id="hig"></input><label for="hig">�ڡ�&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="�ڡڡ�" id="uniMa"></input><label for="uniMa">�ڡڡ�&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="�ڡڡڡ�" id="uniDoc"></input><label for="uniDoc">�ڡڡڡ�&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="�ڡڡڡڡ�" id="uniDoc"></input><label for="uniDoc">�ڡڡڡڡ�&nbsp;&nbsp;</label>
		<br><br>
	
    ���� :&nbsp;<textarea cols=70 rows=4 name="comment" required></textarea><br><br>
   <input type="submit" value="���"> 	
  </td>
<tr>

<tr height=300>
  <td colspan=3>
<% 

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	String level=request.getParameter("level");
	String comment=request.getParameter("comment");
	String name=request.getParameter("name");
	String pw=request.getParameter("pw");
	String category=request.getParameter("category");
	
%>
<% 
	
	String filename="inform5.txt";
	String text2="";
	if(level==null && comment==null&& name==null&& pw==null && category==null){
		level="";
		comment="";
		name="";
		pw="";
		category="";
	}else{
		text2+=" | "+name+" | "+level+ " "+comment+"\n";
		}
	
	
	FileWriter writer=null;
	try{
		String dir=application.getRealPath("/WEB-INF/bbs/");
		String filePath=dir+"/"+filename;
		
		BufferedWriter fw=new BufferedWriter(new FileWriter(filePath,true));
	
		fw.write(text2);
		fw.flush();
		fw.close();
	} catch(IOException ioe){
		out.println("���Ͽ� �����͸� �� �� �����ϴ�");
	} finally{
		try{
			writer.close();
		}catch(Exception e){
			
		}
	}
%>	
<% 
	BufferedReader reader = null;

	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			
			if(str == null) break;
			out.println(str + "<br>");
		}
	} catch(Exception e){
		out.println("������ ������ �ҷ��� �� �����ϴ�.");
	}
%>

  </td>
<tr>
</table>
</form>
</div>
</center>
</body>
</html>