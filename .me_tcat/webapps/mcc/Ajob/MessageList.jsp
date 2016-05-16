<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	Vector listemployee=Jobseeker.ListAll();
	 Vector jobList=Job.ListAll();
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
<script language="javascript">
function confirmdel(a) 
{
if (confirm("真的要删除员工编号为 "+a+" 的人员档案吗?") )
  top.location="DelEmployeeStep1.jsp?employeeid="+a
}
</script>
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
    <td width="660" align="center" valign="top">
	<p align="center" class="title1">Recruitment member management<br></p>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
      
        <td width="42"><div align="center">Name</div></td>
        <td width="38"><div align="center">Sex</div></td>
        <td width="43"><div align="center">Native place</div></td>
        <td width="68"><div align="center">Marital status</div></td>
        <td width="66"><div align="center">Political status</div></td>
        <td width="55"><div align="center">Degree</div></td>
        <td width="66"><div align="center">Job interview</div></td>
        <td width="66"><div align="center">Department</div></td>
        <td></td>
      </tr>
 <%		
      for( int i=0;i<listemployee.size();i++) 
	  {
			Jobseeker  employee = (Jobseeker)listemployee.elementAt(i);  	
      for( int j=0;j<jobList.size();j++) 
	  {
			 Job  job=(Job)jobList.elementAt(j);
			 if (Application.IsExist(job.getId(),employee.getUserName()))
			{
%>			
	  <tr>
        <td><div align="center"><a href="Viewjobseeker.jsp?username=<%=employee.getUserName()%>"><%=employee.getReallyname()%></a></div></td>
        <td><div align="center"><%=employee.getSex()%></div></td>
        <td><div align="center"><%=employee.getNativePlace()%></div></td>
        <td><div align="center"><%=employee.getMarriage()%></div></td>
        <td><div align="center"><%=employee.getPolitics()%></div></td>
        <td><div align="center"><%=employee.getEducation()%></div></td>
       <td><div align="center"><%=job.getPost()%></div></td>
       <td><div align="center"><%=job.getBranch()%></div></td>
       <td><div align="center"><a href="MJob.jsp?username=<%=employee.getUserName()%>">符合要求</a></div></td>
	  </tr>
<%
	}}}
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
