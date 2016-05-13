<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%			
	Vector listreward = Reward.ListAll();
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
if (confirm("真的要删除这条职称评定记录吗？") )
  top.location="DelRewardStep1.jsp?rewardno="+a
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
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="RewardLeft.jsp"%></td>
    <td width="660" align="center" valign="top">
	<p align="center" class="title1">管理奖惩记录</p>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
        <td width="75"><div align="center">员工编号</div></td>
        <td width="69"><div align="center">职称</div></td>
        <td width="64"><div align="center">奖/惩</div></td>
        <td width="98"><div align="center">奖惩内容</div></td>
        <td width="110"><div align="center">奖惩原因</div></td>
        <td width="85"><div align="center">开始日期</div></td>
        <td width="81"><div align="center">操作</div></td>
      </tr>
<%		
      for(int i=0;i<listreward.size();i++) 
	  {
			Reward  reward = (Reward)listreward.elementAt(i);  
%>			
	  <tr>
        <td><div align="center"><a href="ViewRewardStep1.jsp?rewardno=<%=reward.getRewardNO()%>"><%=DataConvert.ViewStr(reward.getEmployeeID())%></a> </div></td>

        <td><div align="center"><%=DataConvert.ViewStr(reward.getPosition())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getRewardPunish())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getRewardContent())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getReason())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getStartDate())%></div></td>
        <td><div align="center"><a href="ModifyRewardStep1.jsp?rewardno=<%=reward.getRewardNO()%>">修改</a> <a href="javascript:confirmdel('<%=reward.getRewardNO()%>')">删除</a></div></td>
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
