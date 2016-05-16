<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Positon</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles./">
	-->

  </head> 
  <body>
<%@ include file="../incoming/Header.jsp"%>

<%
int Id = Integer.parseInt(request.getParameter("Id"));
	Job job = Job.FindByID(Id);
 %>
 <table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center"><div align="center">
<table width="844" border="0" cellpadding="0" cellspacing="0" >
<tr><td>
<table width="640" height="190" border="1" align="center" cellpadding="3" cellspacing="0" >
<tr>
<td align="center" width="100">Job Position</td><td><%=DataConvert.ViewStr(job.getPost())%></td>
</tr>

<tr>
<td align="center" width="100">Department</td><td><%=DataConvert.ViewStr(job.getPost())%></td>
</tr>

<tr>
<td align="center" width="100">Number</td><td><%=job.getMannumber()%></td>
</tr>

<tr>
<td align="center" width="100">Start time</td><td><%=DataConvert.ViewStr(job.getStartime())%></td>
</tr>

<tr>
<td align="center" width="100">End time</td><td><%=DataConvert.ViewStr(job.getEndtime())%></td>
</tr>

<tr>
<td align="center" width="100">Job position interview</td><td><%=DataConvert.ViewStr(job.getResume())%></td>
</tr>

<tr>
<td align="center" width="100">Recruitment requirement</td><td><%=DataConvert.ViewStr(job.getResume1())%></td>
</tr>

<tr>
<td align="center" width="100">Member</td><td><%=job.getMan()%></td>
</tr>

<tr>
<td align="center" colspan="2" ><a href="ManageJob.jsp">Back</a></td>
</tr>
</table>
<%@ include file="../incoming/Footer.jsp"%>
</td></tr>
</table>
</div></td>
</tr>
</table>

  </body>
</html>
