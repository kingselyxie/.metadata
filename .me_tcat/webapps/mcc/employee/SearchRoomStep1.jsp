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
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="RoomLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">查询房间信息</p>
	 <form name="form1" method="post" action="SearchRoomStep2.jsp">
	<table width="640" height="182" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="113" height="33"><div align="right"> 房间编号:</div></td>
        <td width="164"><input name="roomid" type="text"  class="data" id="roomid" size="6" maxlength="6"> </td>
      </tr>
       <tr>
        <td height="49" colspan="4"><div align="center">
          <input type="submit" name="Submit" value="查询">
          <input type="reset" name="Submit2" value="取消">
        </div></td>
      </tr>
</table>
</form>
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
