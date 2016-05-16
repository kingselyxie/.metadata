<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	Vector listemployee;		
	listemployee=Employee.ListAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<script language="javascript">
function confirmdel(a) 
{
if (confirm("Are you sure to delate "+a+" information?") )
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
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="EmployeeLeft.jsp"%></td>
    <td width="660" align="center" valign="top">
	<p align="center" class="title1">ManageViP Information<br></p>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
        <td width="62"><div align="center">VipID<br></div></td>
        <td width="42"><div align="center">Name</div></td>
        <td width="38"><div align="center">Sex</div></td>
        <td width="74"><div align="center">Place</div></td>
        <td width="43"><div align="center">Native</div></td>
        <td width="68"><div align="center">Married</div></td>
        <td width="66"><div align="center">Country</div></td>
        <td width="55"><div align="center">Degree</div></td>
        <td width="118"><div align="center">Action</div></td>
      </tr>
 <%		
  int i;
      for( i=0;i<listemployee.size();i++) 
	  {
			Employee  employee = (Employee)listemployee.elementAt(i);  
			//System.out.println(employee.getUserName());
%>			
	  <tr>
        <td><div align="center"><%=employee.getEmployeeID()%></div></td>
        <td><div align="center"><%=employee.getUserName()%></div></td>
        <td><div align="center"><%=employee.getSex()%></div></td>
        <td><div align="center"><%=employee.getBranch()%></div></td>
        <td><div align="center"><%=employee.getNativePlace()%></div></td>
        <td><div align="center"><%=employee.getMarriage()%></div></td>
        <td><div align="center"><%=employee.getPolitics()%></div></td>
        <td><div align="center"><%=employee.getEducation()%></div></td>
        <td><div align="center"><a href="ModifyEmployeeStep1.jsp?employeeid=<%=employee.getEmployeeID()%>">Modify</a>&nbsp;&nbsp;<a href="ViewEmployeeStep1.jsp?employeeid=<%=employee.getEmployeeID()%>">Search</a> &nbsp;&nbsp;<a href="javascript:confirmdel('<%=employee.getEmployeeID()%>')">Delate</a></div></td>
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
