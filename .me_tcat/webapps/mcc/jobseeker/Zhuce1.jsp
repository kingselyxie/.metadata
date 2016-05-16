<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<html>
<head>
<title>Swimming pool reservation system </title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
<script Language="JavaScript">
function check_input(theForm)
{ 
  if (theForm.password.value != theForm.password2.value)
  {
    alert("Passwor is wrong!");
    theForm.username.focus();
    return (false);
  }
}
</script>
</head>

<body>
<div align="center">
<table align="center" width="800" height="600" background="../images/zhuce.jpg">

<tr>
<td>
<div align="center">  <p align="center" class="title1">Please input New Member Information<br></p>
<form name="form1" method="post" action="Zhuce2.jsp" onsubmit="return check_input(this)">
<table align="center">

<tr>
<td>Username：</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Password：</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td>Password2：</td>
<td><input type="password" name="password2"/></td>
</tr>
<tr>
<td>Password-<br>Question：</td>
<td><input type="text" name="question"/></td>
</tr>
<tr>
<td>Password-<br>Answwe:<br></td>
<td><input type="text" name="answer"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Submit" />&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
</tr>
</table>
</form>
</div>
</td>
</tr>
</table>
</div>
</body>
</html>
