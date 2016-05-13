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
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
  </head> 
  <body>
<%@ include file="Header.jsp"%>
<div align="center">
<%  String Username = (String)session.getValue("UserName");
  
%>
   <form action="ListJob2.jsp"  method="post">
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td>
<table width="640"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
<tr>
<td align="center" width="79" heiht="33">Title<br></td>
<td align="center" width="79"heiht="33">Time<br></td>
<td align="center" width="79"heiht="33">Message<br></td>
<td align="center" width="200"heiht="33">Action<br></td>
</tr>
<% if (Message.IsExist(Username))
   {
	Message mes=Message.FindByID(Username); %>
<tr>
<td align="center" width="79" heiht="33"><%=mes.getTitle() %></td>
<td align="center" width="79" heiht="33"><%=mes.getFtime() %></td>
<td align="center" width="79" heiht="33"><%=mes.getInvite() %></td>

<td align="center" align="center" width="200"heiht="33"><input type="hidden" name="Id" value="<%=mes.getId()%>"/><a href="MessageList.jsp?Id=<%=mes.getId()%>">Search</a>&nbsp;&nbsp;<a href="DelMessage.jsp?id=<%=mes.getId() %>">Delate</a></td>
</tr>
<%
}
 %>
</table>
</td></tr>
</table>
</form>
</div>
<%@ include file="Footer.jsp"%>
  </body>
</html>
