<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'AddJob.jsp' starting page</title>
    
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
  </head> 
  <body>
<%@ include file="../incoming/Header.jsp"%>
<% 
	 Vector listjob=Job.ListAll();
%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center">
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" background="../images/in_left_bg.gif"><%@ include file="JobLeft.jsp"%></td>
    <td  valign="top"><p align="center" class="title1">Job Position Management<br></p>
<table border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" >
<tr><td><a href="AddJob1.jsp">Add position</a></td></tr>
<tr>
<td>

<table width="640"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
<tr>
<td align="center" width="79" heiht="33">Job position</td>
<td align="center" width="79"heiht="33">Department</td>
<td align="center" width="79"heiht="33">Number</td>
<td align="center" width="79"heiht="33">Start time</td>
<td align="center" width="79"heiht="33">End time</td>
<td align="center" width="200"heiht="33">Action</td>
</tr>
 <%		
  int i;
      for( i=0;i<listjob.size();i++) 
	  {
			Job  job = (Job)listjob.elementAt(i);  
			
%>
<tr>
<td align="center" width="79" heiht="33"><%=job.getPost() %></td>
<td align="center" width="79" heiht="33"><%=job.getBranch() %></td>
<td align="center" width="79" heiht="33"><%=job.getMannumber() %></td>
<td align="center" width="79" heiht="33"><%=job.getStartime() %></td>
<td align="center" width="79" heiht="33"><%=job.getEndtime() %></td>
<td align="center" align="center" width="200"heiht="33"><input type="hidden" name="Id" value="<%=job.getId()%>"/><a href="ModifyJob1.jsp?Id=<%=job.getId()%>">Modify</a>&nbsp;&nbsp;<a href="ListJob.jsp?Id=<%=job.getId()%>">Check</a>&nbsp;&nbsp;<a href="DelJob.jsp?Id=<%=job.getId()%>">Delate</a></td>
</tr>
<%
}
 %>
</table>
</td></tr>
</table>
</td>
<td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>

</td>
</tr>
</table>

<%@ include file="../incoming/Footer.jsp"%>
  </body>
</html>
