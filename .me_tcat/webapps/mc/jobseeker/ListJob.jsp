<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>招聘</title>
    
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
<%@ include file="Header.jsp"%>
<div align="center">
<%
int Id = Integer.parseInt(request.getParameter("Id"));
	Job job = Job.FindByID(Id);
 %>
   <form>
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr><td>
<table width="640" height="190" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
<tr>

<td align="center" width="100">Job posion<br></td><td><%=DataConvert.ViewStr(job.getPost())%></td>
</tr>
<tr>
<td align="center" width="100">Department<br></td><td><%=DataConvert.ViewStr(job.getBranch())%></td>
</tr>
<tr>
<td align="center" width="100">Member<br></td><td><%=job.getMannumber()%></td>
</tr>
<tr>
<td align="center" width="100">Start time<br></td><td><%=DataConvert.ViewStr(job.getStartime())%></td>
</tr>
<tr>
<td align="center" width="100">End time<br></td><td><%=DataConvert.ViewStr(job.getEndtime())%></td>
</tr>
<tr>
<td align="center" width="100">Job interview<br></td><td><%=DataConvert.ViewStr(job.getResume())%></td>

</tr>
<tr>
<td align="center" width="100">Job requirement<br></td><td><%=DataConvert.ViewStr(job.getResume1())%></td>

</tr>
<tr>
<td align="center" colspan="2" ><a href="ListJob2.jsp?id=<%=job.getId() %>">Apply</a>&nbsp;&nbsp;<a href="AddJob.jsp">Back</a></td>
</tr>
</table>
</td></tr>


</table>
</form>
</div>
<%@ include file="Footer.jsp"%>
  </body>
</html>
