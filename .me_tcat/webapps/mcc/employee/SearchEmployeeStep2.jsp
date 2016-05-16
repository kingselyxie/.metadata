<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	String employeeid = request.getParameter("employeeid");
	String username = request.getParameter("username");
	String sex =request.getParameter("sex");
	String branch = request.getParameter("branch");
	String nativeplace = request.getParameter("nativeplace");
	String marriage = request.getParameter("marriage");
	String politics = request.getParameter("politics");
	String folk = request.getParameter("folk");
	String education = request.getParameter("education");
	String administrationlevel = request.getParameter("administrationlevel");
	String duty = request.getParameter("duty");
	String position = request.getParameter("position");
	String incumbency = request.getParameter("incumbency");
	String incumbencytype = request.getParameter("incumbencytype");
										
	Vector listemployee = Employee.Search(employeeid,username,sex,branch,nativeplace,marriage,politics,folk,education,administrationlevel,
						duty,position,incumbency,incumbencytype);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
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
	<p align="center" class="title1">SearchVip Information<br></p>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
        <td width="67"><div align="center">VipID</div></td>
        <td width="39" bgcolor="#E7E7E7"><div align="center">Name</div></td>
        <td width="48"><div align="center">Sex</div></td>
        <td width="66"><div align="center">Place</div></td>
        <td width="42"><div align="center">Native</div></td>
        <td width="69"><div align="center">Married</div></td>
    
      </tr>
<%		
      for(int i=0;i<listemployee.size();i++) 
	  {
			Employee  employee = (Employee)listemployee.elementAt(i);  
%>			
	 <tr>
        <td><div align="center"><a href="ViewEmployeeStep1.jsp?employeeid=<%=employee.getEmployeeID()%>"><%=DataConvert.ViewStr(employee.getEmployeeID())%></a></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getUserName())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getSex())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getBranch())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getNativePlace())%></div></td>
        <td><div align="center"><%=employee.getMarriage()%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getPolitics())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getEducation())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(employee.getDuty())%></div></td>
		<td><div align="center"><%=DataConvert.ViewStr(employee.getIncumbency())%></div></td>
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
