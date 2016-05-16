<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<%@ include file="Header.jsp"%>
<%
  String employeeid = (String)session.getValue("UserName");
  if(Reward.IsExist(employeeid))
	{
	Reward reward = Reward.FindByName(employeeid);
	
%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"></td>
    <td width="660" align="top">
	<p align="center" class="title1">查看奖惩记录详细信息</p>
	 <form name="form1" method="post">
	   <table width="640" height="414" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
         <tr>
           <td><div align="right">员工编号:</div></td>
           <td><input name="employeeid" type="text"  class="data" id="employeeid" size="6" maxlength="6" value="<%=reward.getEmployeeID()%>" readonly="true">
      </td>
         </tr>
         <tr>
           <td width="122"><div align="right">职称:</div></td>
           <td width="475"><input name="position" type="text"  class="data" id="position" size="20" maxlength="20" value="<%=reward.getPosition()%>" readonly="true">
      </td>
         </tr>
         <tr>
           <td><div align="right"> 奖/惩:</div></td>
           <td><input name="rewardpunish" type="text"  class="data" id="rewardpunish" size="10" maxlength="10" value="<%=reward.getRewardPunish()%>" readonly="true"></td>
         </tr>
         <tr>
           <td><div align="right">奖惩内容: </div></td>
           <td><input name="rewardcontent" type="text"  class="data" id="rewardcontent" size="30" maxlength="30" value="<%=reward.getRewardContent()%>" readonly="true"></td>
         </tr>
         <tr>
           <td><div align="right">奖惩原因: </div></td>
           <td><input name="reason" type="text"  class="data" id="reason" size="40" maxlength="40" value="<%=reward.getReason()%>" readonly="true"></td>
         </tr>
         <tr>
           <td><div align="right">批准部门: </div></td>
           <td><input name="branch" type="text"  class="data" id="branch" size="20" maxlength="20" value="<%=reward.getBranch()%>" readonly="true"></td>
         </tr>
         <tr>
           <td><div align="right"> 批准人:</div></td>
           <td><input name="handlename" type="text"  class="data" id="handlename" size="10" maxlength="10" value="<%=reward.getHandleName()%>" readonly="true"></td>
         </tr>
         <tr>
           <td><div align="right">开始日期: </div></td>
           <td><input name="startdate" type="text"  class="data" id="startdate" value="<%=reward.getStartDate()%>" size="10" maxlength="10" readonly="true">
      </td>
         </tr>
         <tr>
           <td><div align="right"> 撤销日期:</div></td>
           <td><input name="canceldate" type="text"  class="data" id="canceldate" size="10" maxlength="10" value="<%=reward.getCancelDate()%>" readonly="true"></td>
         </tr>
         <tr>
           <td><div align="right"> 撤销原因:</div></td>
           <td><input name="cancelreason" type="text"  class="data" id="cancelreason" size="40" maxlength="40" value="<%=reward.getCancelReason()%>" readonly="true"></td>
         </tr>
         <tr>
           <td height="33"><div align="right">备注:</div></td>
           <td><textarea name="remark" cols="60" rows="4" id="remark" readonly><%=reward.getRemark()%></textarea></td>
         </tr>
         <tr>
           <td height="49" colspan="2"><div align="center">
               <input name="back" type="button" id="back" value="返回" onClick="javascript:history.back()">
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
<%} 
	else
		{
		%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" height="300" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1" align="center">
  <tr>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td width="660" align="center">
	<p align="center" class="title1">目前你还没有奖惩</p>
	<font class="title2"><img src="../images/1983.jpg" width="274" height="247"></font>
	</td>
	<td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
</div>
	<%
		}
	 %>
<%@ include file="Footer.jsp"%>
</body>
</html>
