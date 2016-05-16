<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	Vector listroom;		
	listroom=Room.ListAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<script language="javascript">
function confirmdel(a) 
{
if (confirm("真的要删除房间编号为 "+a+" 的房间信息吗?") )
  top.location="DelRoomStep1.jsp?roomid="+a
}
</script>
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
    <td width="660" align="center" valign="top">
	<p align="center" class="title1">管理房间信息</p>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
        <td width="72"><div align="center">房间编号</div></td>
        <td width="52"><div align="center">价格</div></td>
        <td width="74"><div align="center">是否入住</div></td>
        <td width="120"><div align="center">顾客信息</div></td>
        <td width="100"><div align="center">入住时间</div></td>
        <td><div align="center">操作</div></td>
      </tr>
 <%		
  int i;
 // System.out.println(listroom.size());
      for( i=0;i<listroom.size();i++) 
	  {
			Room  room = (Room)listroom.elementAt(i);  
			
%>			
	  <tr>
        <td><div align="center"><%=room.getRoomID()%></div></td>
        <td><div align="center"><%=room.getPrice()%></div></td>
        <td><div align="center"><%=room.getIsorNo()%></div></td>
        <td><div align="center"><%=room.getUsermes()%></div></td>
        <td><div align="center"><%=room.getRtime()%></div></td>
        <td><div align="center"><a href="ModifyRoomStep1.jsp?roomid=<%=room.getRoomID()%>">修改</a>&nbsp;&nbsp;<a href="ViewRoomStep1.jsp?roomid=<%=room.getRoomID()%>">查看</a> &nbsp;&nbsp;<a href="javascript:confirmdel('<%=room.getRoomID()%>')">删除</a></div></td>
	  </tr>
<%
	}
%>		
    </table>
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
