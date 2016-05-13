<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'AddJob.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
<%   String username=request.getParameter("username");
    String ad= Application.AddLu(username);
    if(ad.equals("1"))
		response.sendRedirect("Managejobseeker.jsp");
	else
	{
%>
  </head> 
<body>
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
   <td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td width="660" align="center" valign="top"><p><br>
        <br>
        <br>
        <br>
        <a class="title2"> 
        <%
	
		out.println("Addinformation is not successful!");	
  %>
        <br>
        <%		
		out.println("Error : "+ad);	
	}	
  %>
        </a></p> 
      <p><img src="../images/success.jpg" width="132" height="148"> 
      </p>
      <form name="form2" method="post" action="Managejobseeker.jsp">
      		<a class="title2"><input name="back" type="submit" id="back" value="Back" >
      		</a>	
    </form>
    </td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
</div>
<%@ include file="../incoming/Footer.jsp"%>	
</body>
</html>

