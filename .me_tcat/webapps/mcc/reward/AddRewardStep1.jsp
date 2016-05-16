<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
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
<script Language="JavaScript">
function check_input(theForm)
{
  if (theForm.employeeid.value == "")
  {
    alert("请选择员工编号。");
    theForm.employeeid.focus();
    return (false);
  }  
  if (theForm.rewardcontent.value == "")
  {
    alert("请输入奖惩内容。");
    theForm.rewardcontent.focus();
    return (false);
  }
  if (theForm.reason.value == "")
  {
    alert("请输入奖惩原因。");
    theForm.reason.focus();
    return (false);
  }
  if (theForm.handlename.value == "")
  {
    alert("请输入批准人。");
    theForm.handlename.focus();
    return (false);
  }
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
    <td width="660" align="top">
	<p align="center" class="title1">添加奖惩记录</p>
	 <form name="form1" method="post"  action="AddRewardStep2.jsp" onsubmit="return check_input(this)">
	   <table width="640" height="430" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
         <tr>
           <td height="33"><div align="right">员工编号:</div></td>
           <td><select name="employeeid" size="1" id="employeeid">
               <%
			Vector listemployee = Employee.ListAll();
			for(int i=0;i<listemployee.size();i++) 
			{
				Employee employee = (Employee)listemployee.elementAt(i);
				%>
               <option value="<%=employee.getEmployeeID()%>"><%=employee.getEmployeeID()%>-<%=employee.getUserName()%></option>
               <%
			}%>
             </select>
    *</td>
         </tr>
         <tr>
           <td width="122" height="33"><div align="right">职称:</div></td>
           <td width="500"><select name="position" id="position">
               <option value="助理工程师" selected>助理工程师</option>
               <option value="工程师">工程师</option>
               <option value="高级工程师">高级工程师</option>
               <option value="助理会计师">助理会计师</option>
               <option value="会计师">会计师</option>
               <option value="注册会计师">注册会计师</option>
               <option value="助理经济师">助理经济师</option>
               <option value="经济师">经济师</option>
               <option value="高级经济师">高级经济师</option>
               <option value="其他">其他</option>
             </select>
      *</td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 奖/惩:</div></td>
           <td><select name="rewardpunish" id="rewardpunish">
               <option value="奖" selected>奖</option>
               <option value="惩">惩</option>
             </select>
      *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">奖惩内容: </div></td>
           <td><input name="rewardcontent" type="text"  class="data" id="rewardcontent" size="30" maxlength="30">
*</td>
         </tr>
         <tr>
           <td height="33"><div align="right">奖惩原因: </div></td>
           <td><input name="reason" type="text"  class="data" id="reason" size="40" maxlength="40">
*</td>
         </tr>
         <tr>
           <td height="33"><div align="right">批准部门: </div></td>
           <td height="33"><select name="branch" id="branch">
             <option value="总经理室" selected>总经理室</option>
             <option value="副总经理室">副总经理室</option>
             <option value="销售部">销售部</option>
             <option value="生产部">生产部</option>
             <option value="研发部">研发部</option>
             <option value="采购部">采购部</option>
             <option value="财务部">财务部</option>
             <option value="人事部">人事部</option>
           </select>
      * </td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 批准人:</div></td>
           <td><input name="handlename" type="text"  class="data" id="handlename" size="10" maxlength="10" >
            * </td>
         </tr>
         <tr>
           <td height="33"><div align="right">开始日期: </div></td>
           <td><input name="startdate" type="text"  class="data" id="startdate" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8" readonly="true">
               <input name="start" type="button" id="start" value="...">
      *</td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 撤销日期:</div></td>
           <td><input name="canceldate" type="text"  class="data" id="canceldate" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8" readonly="true">
               <input name="cancel" type="button" id="cancel" value="...">
</td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 撤销原因:</div></td>
           <td><input name="cancelreason" type="text"  class="data" id="cancelreason" size="20" maxlength="20">
      </td>
         </tr>
         <tr>
           <td height="33"><div align="right">备注:</div></td>
           <td><textarea name="remark" cols="60" rows="4" id="remark"></textarea></td>
         </tr>
         <tr>
           <td height="49" colspan="2"><div align="center">
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
</td>
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
	Calendar.setup(
	{
      inputField  : "canceldate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "cancel"       // ID of the button
    }
	);		
</script>
</body>
</html>
