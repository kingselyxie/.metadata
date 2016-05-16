<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'AddJob.jsp' starting page</title>   
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>

</head> 
<body>
  <div align="center">
<%@ include file="../incoming/Header.jsp"%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center">
<form action="AddMessage2.jsp" method="post">
<table width="640" border="1" align="center" cellpadding="3" cellspacing="0" >
<tr>
<td colspan="2" align="center">Interview notice</td>
</tr>

<tr>
<td align="center" width="100">Title<br></td><td><input type="text" name="title"></td>
</tr>
<tr>
<td align="center" width="100">Time<br></td><td><input name="ftime" type="text"  class="data" id="ftime" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8">
            <input name="startime" type="button" id="startime" value="..."></td>
</tr>
<tr>
<td align="center" width="100">Notice information<br></td><td><textarea name="resume" cols="60" rows="4" id="resume"></textarea></td>
</tr>
<tr>
<td align="center" colspan="2" ><input type="submit" name="Submit" value="Submit">
          <input type="reset" name="Submit2" value="Cannel"></td>
</tr>
</table>
</form>
</td></tr>
</table>
<%@ include file="../incoming/Footer.jsp"%>
<script language="JavaScript" type="text/JavaScript">
	Calendar.setup(
	{
      inputField  : "ftime",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "startime"       // ID of the button
    }
	);	
	
</script>
</div>
  </body>
</html>
