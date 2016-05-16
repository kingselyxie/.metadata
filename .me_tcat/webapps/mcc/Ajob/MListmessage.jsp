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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head> 
  <body>
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<%  String Username = request.getParameter("username");
	Message mes=Message.FindByID(Username);
%>
   <form action="ListJob2.jsp"  method="post">
<table width="844" border="0"  cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td>
<table width="640" height="300" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
<tr>
<td align="center" width="79" heiht="33">Title</td><td align="center" width="79" heiht="33"><%=mes.getTitle() %></td>
</tr>
<tr>
<td align="center" width="79"heiht="33">Setting time</td>
<td align="center" width="79" heiht="33"><%=mes.getFtime() %></td>
</tr>
<tr>
<td align="center" width="79"heiht="33">Message</td>
<td align="center" width="79" heiht="33"><%=mes.getInvite() %></td>
</tr>
<tr>
<td align="center"  colspan="2" ><a href="Managejobseeker.jsp">Back</a>&nbsp;&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</form>
</div>
<%@ include file="../incoming/Footer.jsp"%>
  </body>
</html>
