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
<%@ include file="Header.jsp"%>
<div align="center">
<%  String Username = (String)session.getValue("UserName");
	 Vector jobList=Job.ListAll();
%>
   <form action="ListJob2.jsp"  method="post">
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td>
<table width="640"  border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
<tr>
<td align="center" width="79" heiht="33">Job position</td>
<td align="center" width="79"heiht="33">Department</td>
<td align="center" width="79"heiht="33">Member</td>
<td align="center" width="200"heiht="33">Action</td>
</tr>
 <%		
  int i;
      for( i=0;i<jobList.size();i++) 
	  {
			 Job  job=(Job)jobList.elementAt(i);
			 if (Application.IsExist(job.getId(),Username))
			{
%>
<tr>
<td align="center" width="79" heiht="33"><%=job.getPost() %></td>
<td align="center" width="79" heiht="33"><%=job.getBranch() %></td>
<td align="center" width="79" heiht="33"><%=job.getMan() %></td>

<td align="center" align="center" width="200"heiht="33"><input type="hidden" name="Id" value="<%=job.getId()%>"/><a href="MListJob.jsp?Id=<%=job.getId()%>">Search</a>&nbsp;&nbsp;<a href="DelJob.jsp?id=<%=job.getId() %>">Delate</a></td>
</tr>
<%
}
}
 %>
</table>
</td></tr>
<tr>
<td align="right"><a href="AddJob.jsp">应聘职位</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
</table>
</form>
</div>
<%@ include file="Footer.jsp"%>
  </body>
</html>
