<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
String UserName = (String)session.getValue("UserName");
 %>
<html>
<body topmargin="0">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center">
<div align="center">
	<TABLE border=0 cellPadding=0 width=844 style="border-collapse: collapse" >
		
		<TR bgcolor="#FFFFFF">
			<TD width="98" align=center>
			<br></TD>
		</TR>
	</TABLE></div>
<div align="center">
<table width="844" border="0" cellpadding="0" cellspacing="0" background="../images/neaselogoback.gif" height="35">
  <tr>
    <td width="100" height="35" class="td3">
	<img src="../images/line2.gif" width="223" height="23"></td>
    <td width="90"><div align="center"><a href="ModifyPasswordStep1.jsp">Modify
    Password</a></div></td>
    <td width="100"><div align="center"><a href="ViewEmployee.jsp">Modify Information</a></div></td>
    

    <td width="100"><div align="center"><a href="../Logout.jsp">Exit</a></div></td>
    <td width="100"> 
    <div align="center">
		<img src="../images/line2.gif" width="195" height="24"></div></td>
  </tr>
</table>
</div>
</body>
</html>