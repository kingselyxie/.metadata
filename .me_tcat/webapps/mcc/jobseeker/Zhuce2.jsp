<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%
	String IsSucceed = "";
	String username = new String(request.getParameter("username"));
%>
<%try{	
	String password = new String(request.getParameter("password"));
    String question=new String(request.getParameter("question"));
    String answer=new String(request.getParameter("answer"));
	if(User.IsExist(username))
		{
			%>
			<script>
			alert("The username has been registed,please regist again！");
			window.history.back();
			</script>
	<%	} 
	else
		{
			IsSucceed =User.Add(username,password,question,answer);
		}
	}
	catch(Exception e){
		out.println("error:"+e.getMessage());
	}
%>
<html>
<head>
<title>Swimming pool reservation system </title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
</head>
<body>
<div align="center">
<table align="center" width="800" height="600" background="../images/zhuce.jpg">

<tr>
<td>
<table align="center">
<tr>
<td><a class="title2"> 
      <%
	if(IsSucceed.equals("1"))
		{
		out.println("Vip registion is successful!");
		%>
		Please <a href="../login.jsp">Login</a>!
		<% }
		
	else
	{
		out.println("Vip registion is not successful!");	
  %>
        <br>
        <%		
		out.println("Error : "+IsSucceed);
		%>
		Please <a href="zhuce1.jsp">regist</a>!
		<%	
	}	
  %>
  </a>
  <img src="../images/success.jpg" width="132" height="148"> 
</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</body>
</html>
