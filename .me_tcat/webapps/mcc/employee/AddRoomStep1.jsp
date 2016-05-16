<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
<script Language="JavaScript">
function check_input(theForm)
{
  if (theForm.roomid.value.length != 6)
  {
    alert("房间编号必须为6位数字。");
    theForm.roomid.focus();
    return (false);
  }  
  if (theForm.price.value == "")
  {
    alert("请输入价格。");
    theForm.price.focus();
    return (false);
  }
  if (theForm.isorno.value == "")
  {
    alert("请输入是否已入住。");
    theForm.isorno.focus();
    return (false);
  }
  if (theForm.usermes.value == "")
  {
    alert("请输入用户信息。");
    theForm.usermes.focus();
    return (false);
  }  
  if (theForm.rtime.value == "")
  {
    alert("请输入添加时间。");
    theForm.rtime.focus();
    return (false);
  }
}
</script>
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<div align="center">
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="RoomLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">添加房间信息</p>
	 <form name="form1" method="post" action="AddRoomStep2.jsp" onsubmit="return check_input(this)">
	<table width="640" height="513" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="103" height="33"><div align="right"> 房间编号:</div></td>
       <td width="176"><input name="roomid" type="text" id="roomid">6位编号
      *</td>
      </tr>
      <tr>
        <td width="78" height="33"><div align="right">价格：</div></td>
        <td width="249"><input name="price" type="text"  class="data" id="price" size="8" maxlength="20" onKeyUp="value=value.replace(/[^\d]/g,'')">
  *</td>
      </tr>
      <tr>
       <td width="78" height="33"><div align="right">是否入住：</div></td>
        <td width="249"><input name="isorno" type="text"  class="data" id="isorno" size="8" maxlength="20" >有或没有
  *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 用户信息: </div></td>
        <td><input name="usermes" type="text"  class="data" id="usermes" size="10" maxlength="8">
      *</td>
      </tr>
      <tr>
        <td><div align="right">入住时间: </div></td>
        <td><input name="rtime" type="text"  class="data" id="startdate" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8" readonly="true">
               <input name="start" type="button" id="start" value="...">
          *</td>
      </tr>
      <tr>
        <td height="49" colspan="4"><div align="center">
          <input type="submit" name="Submit" value="添加">
          <input type="reset" name="Submit2" value="取消">
        </div></td>
      </tr>
    </table>
	
	</form>    
    </td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</div>
<%@ include file="../incoming/Footer.jsp"%>
<script language="JavaScript" type="text/JavaScript">
	Calendar.setup(
	{
      inputField  : "startdate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "start"       // ID of the button
    }
	);	
</script>
</td>
</tr>
</table>
</body>
</html>
