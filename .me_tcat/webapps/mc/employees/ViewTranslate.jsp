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
<%@ include file="Header.jsp"%>
<%
	String employeeid = (String)session.getValue("UserName");
	if(Translate.IsExist(employeeid))
	{
	Translate translate = Translate.FindByName(employeeid);	
%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
     <td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td width="660" align="top">
	<p align="center" class="title1">查看人员调动记录详细信息</p>
	 <form name="form1" method="post">
	   <table width="640" height="315" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
         <tr>
           <td height="33"><div align="right">员工编号:</div></td>
           <td><input name="employeeid" type="text"  class="data" id="employeeid" size="6" maxlength="6" value="<%=translate.getEmployeeID()%>" readonly="true">
      </td>
         </tr> 
         <tr>
           <td width="147" height="33"><div align="right">调动日期:</div></td>
           <td width="475"><input name="translatedate" type="text"  class="data" id="translatedate" size="10" maxlength="10" value="<%=translate.getTranslateDate()%>" readonly="true">
      </td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 调动前部门: </div></td>
           <td><input name="priorbranch" type="text"  class="data" id="priorbranch" size="20" maxlength="20" value="<%=translate.getPriorBranch()%>" readonly="true"></td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 调动后部门: </div></td>
           <td><input name="nextbranch" type="text"  class="data" id="nextbranch" size="20" maxlength="20" value="<%=translate.getNextBranch()%>" readonly="true"></td>
         </tr>
         <tr>
           <td height="33"><div align="right">调动前职务: </div></td>
           <td><input name="priorduty" type="text"  class="data" id="priorduty" size="20" maxlength="20" value="<%=translate.getPriorDuty()%>" readonly="true"></td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 调动后职务: </div></td>
           <td><input name="nextduty" type="text"  class="data" id="nextduty" size="20" maxlength="20" value="<%=translate.getNextDuty()%>" readonly="true"></td>
         </tr>
         <tr>
           <td height="33"><div align="right">经办人:</div></td>
           <td><input name="handlename" type="text"  class="data" id="handlename" size="10" maxlength="10" value="<%=translate.getHandleName()%>" readonly="true"></td>
         </tr>
         <tr>
           <td height="33"><div align="right">备注:</div></td>
           <td><textarea name="remark" cols="60" rows="4" id="remark" readonly><%=translate.getRemark()%></textarea></td>
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
<%} 
	else
		{
		%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" height="300" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1">
  <tr>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td width="660" align="center">
	<p align="center" class="title1">没有人员调动情况</p>
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
</td>
</tr>
</table>

</body>
</html>
