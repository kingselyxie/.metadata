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
<form action="AddJob2.jsp" method="post">
<table width="640" border="1" align="center" cellpadding="3" cellspacing="0" >
<tr>
<td align="center" width="100">Job&nbsp;<span class="m"></span>Position</td><td><input type="text" name="post"></td>
</tr>
<tr>
<td align="center" width="100">Department<br></td><td><select name="branch" id="branch">
          <option value="总经理室" selected>General Manager</option>
          <option value="副总经理室">First Vice President</option>
          <option value="经理室" >Vice President</option>
          <option value="副经理室" >Assistant Vice President</option>
          <option value="销售部">Development</option>
          <option value="生产部">Product</option>
	  <option value="研发部">Operations </option>
          <option value="采购部">Marketing</option>
	  <option value="财务部">Financial</option>
          <option value="人事部">Human Resource</option>
           </select></td>
</tr>
<tr>
<td align="center" width="100">Number<br></td><td><input type="text" name="mannumber"></td>
</tr>
<tr>
<td align="center" width="100">Start time<br></td><td><input name="startdate" type="text"  class="data" id="startdate" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8">
            <input name="startime" type="button" id="startime" value="..."></td>
</tr>
<tr>
<td align="center" width="100">End time<br></td><td><input name="enddate" type="text"  class="data" id="enddate" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8" >
            <input name="endtime" type="button" id="endtime" value="..."></td>
</tr>
<tr>
<td align="center" width="100">Job&nbsp;<span class="m"></span>Position Introduction<br></td><td><textarea name="resume" cols="60" rows="4" id="resume"></textarea></td>
</tr>
<tr>
    <td width="100">Recruitment requirements <span class="op_fanyi_read"></span></td>
    <td colspan="7"><textarea name="resume1" cols="60" rows="4" id="resume"></textarea>
    </td>
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
      inputField  : "startdate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "startime"       // ID of the button
    }
	);	
	Calendar.setup(
	{
      inputField  :"enddate",        // ID of the input field
      ifFormat    : "%Y-%m-%d",       // the date format
      button      : "endtime"       // ID of the button
    }
	);		
</script>
</div>
  </body>
</html>
