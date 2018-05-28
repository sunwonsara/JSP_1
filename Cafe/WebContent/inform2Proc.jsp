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
    font-family:함초롬돋움;
}


h1{
	  font-family:함초롬돋움;
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
<tr height=200>
  <td><img src="images/t1.jpg" width=350 height=350></img></td>
  <td><img src="images/t2.jpg" width=350 height=350></img></td>
  <td><img src="images/t3.jpg" width=350 height=350></img></td>
</tr>
 
<tr height=200>
  <td colspan=3>
    평점 :&nbsp;<input type="radio" name="level" value="★" id="mid" checked required></input> <label for="mid">★&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="★★" id="hig"></input><label for="hig">★★&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="★★★" id="uniMa"></input><label for="uniMa">★★★&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="★★★★" id="uniDoc"></input><label for="uniDoc">★★★★&nbsp;&nbsp;</label>
		<input type="radio" name="level" value="★★★★★" id="uniDoc"></input><label for="uniDoc">★★★★★&nbsp;&nbsp;</label>
		<br><br>
	
    한줄평 :&nbsp;<textarea cols=70 rows=2 name="comment" required></textarea><br><br>
   <input type="submit" value="입력"> 	
  </td>
<tr>

<tr height=200>
  <td colspan=3>
<% 

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	String level=request.getParameter("level");
	String comment=request.getParameter("comment");
	String id=request.getParameter("id");
%>
<% 
	
	String filename="result4.txt";

	if(level==null && comment==null){
		level="";
		comment="";
	}
	String text2=level+ " "+comment;
	
	if(id!=null){
		text2+=id+" | ";
	}
	else {
		text2+="\n";
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
		out.println("파일에 데이터를 쓸 수 없습니다");
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
		out.println("지정된 파일을 불러올 수 없습니다.");
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