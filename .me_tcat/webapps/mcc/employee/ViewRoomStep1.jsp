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
<%
	String roomid = request.getParameter("roomid");
	
	Room room = Room.FindByID(roomid);
%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="RoomLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">查看房间信息</p>
	<table width="640"  border="0" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="150" height="33"><div align="right"> 房间编号:</div></td>
        <td width="180"><input name="roomid" type="text"  class="data" id="roomid" size="6" maxlength="6" value="<%=room.getRoomID()%>" readonly="true">
      </td>
        <td width="78" height="33"><div align="right">价格</div></td>
        <td width="180"><input name="price" type="text"  class="data" id="price" size="8" maxlength="4" value="<%=room.getPrice()%>" readonly="true">
  </td>
      </tr>
    
      <tr>
        <td height="33"><div align="right"> 是否入住: </div></td>
        <td><input name="isorno" type="text"  class="data" id="isorno" size="10" maxlength="10" value="<%=room.getIsorNo()%>" readonly="true"></td>
        <td><div align="right">时间: </div></td>
        <td><input name="rtime" type="text"  class="data" id="rtime" size="10" maxlength="10" value="<%=room.getRtime()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right">客人信息: </div></td>
        <td>      
		<input name="usermes" type="text"  class="data" id="usermes" size="10" maxlength="10" value="<%=room.getUsermes()%>" readonly="true"></td>
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
<%@ include file="../incoming/Footer.jsp"%>
</body>
</html>
