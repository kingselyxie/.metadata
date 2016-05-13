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
  if (theForm.translatedate.value == "")
  {
    alert("请选择调动日期。");
    theForm.translatedate.focus();
    return (false);
  }
  if (theForm.handlename.value == "")
  {
    alert("请输入经办人。");
    theForm.handlename.focus();
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
<table width="844" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="TranslateLeft.jsp"%></td>
    <td width="660" align="top">
	<p align="center" class="title1">添加人员调动</p>
	 <form name="form1" method="post"  action="AddTranslateStep2.jsp" onsubmit="return check_input(this)">
	<table width="640" height="315" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="147" height="33"><div align="right">员工编号:</div></td>
        <td width="475"><select name="employeeid" size="1" id="employeeid">
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
        <td height="33"><div align="right"> 调动日期: </div></td>
        <td><input name="translatedate" type="text"  class="data" id="translatedate" value="<%=DataConvert.getStringDate()%>" size="10" maxlength="8" readonly="true">
            <input name="translate" type="button" id="translate" value="...">
    *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">调动前部门:</div></td>
        <td><select name="priorbranch" id="priorbranch">
            <option value="总经理室" selected>总经理室</option>
            <option value="副总经理室">副总经理室</option>
            <option value="销售部">销售部</option>
            <option value="生产部">生产部</option>
            <option value="研发部">研发部</option>
            <option value="采购部">采购部</option>
            <option value="财务部">财务部</option>
            <option value="人事部">人事部</option>
          </select>
    *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">调动后部门:</div></td>
        <td><select name="nextbranch" id="nextbranch">
            <option value="总经理室" selected>总经理室</option>
            <option value="副总经理室">副总经理室</option>
            <option value="销售部">销售部</option>
            <option value="生产部">生产部</option>
            <option value="研发部">研发部</option>
            <option value="采购部">采购部</option>
            <option value="财务部">财务部</option>
            <option value="人事部">人事部</option>
          </select>
    *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">调动前职务: </div></td>
        <td><select name="priorduty" id="priorduty">
          <option value="工人" selected>工人</option>
          <option value="职员">职员</option>
          <option value="领班">领班</option>
          <option value="主管">主管</option>
          <option value="副主任">副主任</option>
          <option value="主任">主任</option>
          <option value="副经理">副经理</option>
          <option value="经理">经理</option>
          <option value="总经理">总经理</option>
          <option value="其他">其他</option>
        </select>
    *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">调动后职务: </div></td>
        <td><select name="nextduty" id="nextduty">
            <option value="工人" selected>工人</option>
            <option value="职员">职员</option>
            <option value="领班">领班</option>
            <option value="主管">主管</option>
            <option value="副主任">副主任</option>
            <option value="主任">主任</option>
            <option value="副经理">副经理</option>
            <option value="经理">经理</option>
            <option value="总经理">总经理</option>
            <option value="其他">其他</option>
          </select>
    *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">经办人: </div></td>
        <td><input name="handlename" type="text"  class="data" id="handlename" size="10" maxlength="10">
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">备注:</div></td>
        <td><textarea name="remark" cols="60" rows="4" id="remark"></textarea></td>
      </tr>
      <tr>
        <td height="49" colspan="2"><div align="center">
          <input type="Submit" name="Submit" value="添加">
          <input type="reset" name="Submit2" value="取消">
        </div></td>
      </tr>
    </table>	
	</form>    
    </td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td></tr></table>
<%@ include file="../incoming/Footer.jsp"%>
<script language="JavaScript" type="text/JavaScript">
	Calendar.setup(
	{
      inputField  : "translatedate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "translate"       // ID of the button
    }
	);	
	
</script>
</body>
</html>
