<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	Vector listemployee=Message.ListAll();
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="JobLeft.jsp"%></td>
    <td width="660" valign="top">
    <p align="center" class="title1">Interview management</p>
    <a href="AddMessage.jsp">Add interview information</a>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
      <td align="center" width="79"heiht="33">Username</td>
       <td align="center" width="79" heiht="33">Title</td>
       <td align="center" width="79"heiht="33">Setting time</td>
       <td align="center" width="79"heiht="33">Interview Notice Information</td>
       <td align="center" width="200"heiht="33">Action</td>
        <td></td>
      </tr>
 <%		
      for( int i=0;i<listemployee.size();i++) 
	  {
			Message  employee = (Message)listemployee.elementAt(i);  	
%>			
	  <tr>
        <td><div align="center"><a href="Viewjobseeker.jsp?username=<%=employee.getUsername()%>"><%=employee.getUsername()%></a></div></td>
        <td><div align="center"><%=employee.getTitle()%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getFtime())%></div></td>
        <td><div align="center"><%=employee.getInvite()%></div></td>
  
       <td><div align="center"><a href="MListmessage.jsp?username=<%=employee.getUsername()%>">Check</a> <a href="DelMessage.jsp?id=<%=employee.getId() %>">Del</a></div></td>
	  </tr>
<%
	}
%>		
    </table>
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
