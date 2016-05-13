<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<html>
<head>
<title> </title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>

</head>

<body>
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<%
	 int id = Integer.parseInt(request.getParameter("id"));
 User user=User.FindByName(id);
%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <tr><td width="7" align="center" background="../images/Snap1.gif">　</td>
  <td>
  <table align="center" border="1"><tr>
<td width="100"><div align="right">Username：<div></td><td><input name="username" type="text" value="<%=user.getUserName() %>" readonly="true"></td>
</tr>

<tr>
<td><div align="right">Password：</div></td><td><input name="password" type="text" value="<%=user.getPassword() %>" readonly="true"/></td>
</tr>
<tr>
<td><div align="right">Password-question：</div></td><td><input name="question" type="text" value="<%=user.getQuestion() %>" readonly="true"/></td>
</tr>
<tr>
<td><div align="right">Password-answer：</div></td><td><input name="answer" type="text" value="<%=user.getAnswer() %>" readonly="true" /></td>
</tr>
<tr>
<td><div align="right">level：</div></td><td><input name="level" type="text" value="<%=user.getLevel() %>"  readonly="true"/></td>
</tr>
<tr>
<td colspan="2" align="center"><a href="ListLevel.jsp">BACK</a></td>
</tr>
</table>
</td>
 <td width="7" align="center" background="../images/Snap1.gif">　</td>
    </tr>
</table>
</td>
</tr>
</table>
</div>

<%@ include file="../incoming/Footer.jsp" %>
</body>
</html>
