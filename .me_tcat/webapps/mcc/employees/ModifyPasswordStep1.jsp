<%@ page contentType="text/html;charset=gb2312" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../CheckIndex.jsp"%>
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
function check_input(theForm)
{
  if (theForm.oldpassword.value == "")
  {
    alert("请输入旧密码.");
    theForm.oldpassword.focus();
    return (false);
  }
  if (theForm.newpassword.value != theForm.confirmpassword.value)
  {
    alert("两次输入密码不一致.");
    theForm.confirmpassword.focus();
    return (false);
  }
}
</script>
</head>
<body>
<%@ include file="Header.jsp"%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <tr><td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td align="center" valign="top">	
    	<form name="form1" method="post" action="ModifyPasswordStep2.jsp" onsubmit="return check_input(this)">
      <br>
      <p class="title1">Modify Password<br></p>
      <table width="389" height="177" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
        <tr>
          <td width="135" height="29"><div align="right">VipCard: </div></td>
          <td width="236"><%String username = (String)session.getValue("UserName");out.println(username);%></td>
        </tr>
        <tr>
          <td height="29"><div align="right">Old Password:  
            </div>
            <div align="right"></div></td>
          <td height="29"><input name="oldpassword" type="password"  class="data" id="oldpassword2" size="25" maxlength="16" ></td>
        </tr>
        <tr>
          <td height="29"><div align="right">New Password:  
            </div>
            <div align="right"></div></td>
          <td height="29"><input name="newpassword" type="password"  class="data" id="newpassword2" size="25" maxlength="16" ></td>
        </tr>
        <tr>
          <td height="44"><div align="right">New Password2:  
            </div></td>
          <td height="44"><input name="confirmpassword" type="password"  class="data" id="confirmpassword2" size="25" maxlength="16" ></td>
        </tr>
        <tr>
          <td height="44" colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Submit">
            <input type="reset" name="Submit2" value="Cancel">
</div></td>

        </tr>
      </table>
    </form></td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
    </tr>
</table>
</td>
</tr>
</table>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
