<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
</head>
<body>
<%@ include file="Header.jsp"%>
<%  
	String employeeid = (String)session.getAttribute("UserName");
	if(Employee.IsExist(employeeid))
		{
		  Employee employee = Employee.FindByID(employeeid);
		
	
%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"></td>
    <td width="660" align="center">
	<p align="center" class="title1">查View Vip information<br></p>
	<table width="640"  border="0" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="150" height="33"><div align="right"> VipID:</div></td>
        <td width="180"><input name="employeeid" type="text"  class="data" id="employeeid" size="6" maxlength="6" value="<%=employee.getEmployeeID()%>" readonly="true">
      </td>
        <td width="78" height="33"><div align="right">Name:</div></td>
        <td width="180"><input name="username" type="text"  class="data" id="username" size="8" maxlength="4" value="<%=employee.getUserName()%>" readonly="true">
  </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Sex: </div></td>
        <td>          
          <input name="sex" type="text"  class="data" id="sex" size="6" maxlength="6" value="<%=employee.getSex()%>" readonly="true">
          </td>
        <td width="78"><div align="right">Play:</div></td>
        <td>          <input name="branch" type="text"  class="data" id="branch" size="8" maxlength="4" value="<%=employee.getBranch()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Birthday: </div></td>
        <td><input name="birthday" type="text"  class="data" id="birthday" size="10" maxlength="10" value="<%=employee.getBirthday()%>" readonly="true"></td>
        <td><div align="right">Native: </div></td>
        <td><input name="nativeplace" type="text"  class="data" id="nativeplace" size="10" maxlength="10" value="<%=employee.getNativePlace()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right">Married: </div></td>
        <td>      
		<input name="marriage" type="text"  class="data" id="marriage" size="10" maxlength="10" value="<%=employee.getMarriage()%>" readonly="true"></td>
        <td width="78"><div align="right">Licence card:</div></td>
        <td><input name="identityid" type="text"  class="data" id="identityid" size="18" maxlength="18" value="<%=employee.getIdentityID()%>" readonly="true">          
          </td>
      </tr>
      
      
      
      
      
      
      
      <tr>
        <td height="33"><div align="right"> Mobile: </div></td>
        <td><input name="mobilephone" type="text"  class="data" id="mobilephone" size="11" maxlength="11" value="<%=employee.getMobilePhone()%>" readonly="true">
        </td>
        <td width="78"><div align="right">Address:</div></td>
        <td><input name="address" type="text"  class="data" id="address" size="30" maxlength="30" value="<%=employee.getAddress()%>" readonly="true"></td>
      </tr>
      
      <tr>
        <td height="33"><div align="right"> Personal Introduction: </div></td>
        <td colspan="3"><textarea name="resume" cols="60" rows="14" id="resume" readonly><%=employee.getResume()%></textarea></td>
        </tr>
      <tr>
        <td height="49" colspan="4"><div align="center">
          <input name="back" type="button" id="back" value="Back" onClick="javascript:history.back()">
        </div></td>
      </tr>
    </table>
	<p>　</p>
	<p>　</p></td>
	<td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
</div>
<%} 
	else
		{
		%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1">
  <tr>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td width="660" align="center">
	<p align="center" class="title1">There is&nbsp; membership information.</p><p align="center" class="title1">Please check others.<br></p>
	<font class="title2"><img src="../images/1983.jpg" width="274" height="247"></font>
	</td>
	<td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
</div>
	<%
		}
	 %>
<%@ include file="Footer.jsp"%>
</body>
</html>
