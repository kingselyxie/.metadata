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
  if (theForm.username.value == "")
  {
    alert("请输入姓名。");
    theForm.username.focus();
    return (false);
  }
  if (theForm.birthday.value == "")
  {
    alert("请输入出生日期。");
    theForm.birthday.focus();
    return (false);
  }
  if (theForm.nativeplace.value == "")
  {
    alert("请输入籍贯。");
    theForm.nativeplace.focus();
    return (false);
  }  
  if (theForm.identityid.value == "")
  {
    alert("请输入身份证号。");
    theForm.identityid.focus();
    return (false);
  }
  if (theForm.accumulateid.value == "")
  {
    alert("请输入公积金号。");
    theForm.accumulateid.focus();
    return (false);
  }  
}
</script>
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<%
	String employeeid =request.getParameter("employeeid");
	Employee employee = Employee.FindByID(employeeid);
	
%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="EmployeeLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">ModifyVip Information<br></p>
	 <form name="form1" method="post" action="ModifyEmployeeStep2.jsp" onsubmit="return check_input(this)">
	<table width="640" height="513" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="103" height="33"><div align="right"> VipID:</div></td>
        <td width="176"><input name="employeeid" type="text"  class="data" id="employeeid" size="6" maxlength="6" value="<%=employee.getEmployeeID()%>" readonly="true">
      *</td>
        <td width="78" height="33"><div align="right">Name:</div></td>
        <td width="249"><input name="username" type="text"  class="data" id="username" size="8" maxlength="20" value="<%=employee.getUserName()%>">
  *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Sex: </div></td>
        <td>          
		<select name="sex" id="sex">
          <%if (employee.getSex().equals("男")) {%>
            <option value="男" selected>M</option>
		   <%}else{%>
            <option value="男" >男</option>
		   <%}%>   
			
			<%if (employee.getSex().equals("女")) {%>
            <option value="女" selected>F</option>
		   <%}else{%>
            <option value="女" >女</option>
		   <%}%>   
          </select>
          *</td>
        <td width="78"><div align="right">Place:</div></td>
        <td><select name="branch" id="branch">
          <%if (employee.getBranch().equals("总经理室")) {%>
            <option value="总经理室" selected>ChaoYang </option>
		   <%}else{%>
            <option value="总经理室" >总经理室</option>
		   <%}%>   
		  
		  <%if (employee.getBranch().equals("副总经理室")) {%>
            <option value="副总经理室" selected>ChaoYang</option>
		   <%}else{%>
            <option value="副总经理室" >副总经理室</option>
		   <%}%>  
                  <%if (employee.getBranch().equals("经理室")) {%>
            <option value="经理室" selected>ChaoYang</option>
		   <%}else{%>
            <option value="经理室" >经理室</option>
		   <%}%>  
                  <%if (employee.getBranch().equals("副经理室")) {%>
            <option value="副经理室" selected>ChaoYang</option>
		   <%}else{%>
            <option value="副经理室" >副经理室</option>
		   <%}%>  
		  
		   <%if (employee.getBranch().equals("人事部")) {%>
            <option value="人事部" selected>ChaoYang</option>
		   <%}else{%>
            <option value="人事部" >人事部</option>
		   <%}%>  		 
           </select>
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Birthday: </div></td>
        <td><input name="birthday" type="text"  class="data" id="birthday" value="<%=employee.getBirthday()%>" size="10" maxlength="8" readonly="true">
          <input name="bir" type="button" id="bir" value="...">
      *</td>
        <td><div align="right">Native: </div></td>
        <td><input name="nativeplace" type="text"  class="data" id="nativeplace" size="10" maxlength="10" value="<%=employee.getNativePlace()%>">
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">Married: </div></td>
        <td>      
		<select name="marriage" id="marriage">
          <%if (employee.getMarriage().equals("未婚")) {%>
            <option value="未婚" selected>No</option>
		   <%}else{%>
            <option value="未婚" >未婚</option>
		   <%}%>  		
		   
		   <%if (employee.getMarriage().equals("已婚")) {%>
            <option value="已婚" selected>Yes</option>
		   <%}else{%>
            <option value="已婚" >已婚</option>
		   <%}%>  		
		   			  
        </select> 
          </td>
        <td width="78"><div align="right">License<br>CARD:</div></td>
        <td><input name="identityid" type="text"  class="data" id="identityid" size="18" maxlength="18" onKeyUp="value=value.replace(/[^\d]/g,'')" value="<%=employee.getIdentityID()%>">          
          *</td>
      </tr>
      
      
      
      
      
      
      
      <tr>
        <td height="33"><div align="right"> Mobile: </div></td>
        <td><input name="mobilephone" type="text"  class="data" id="mobilephone" size="11" maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'')" value="<%=employee.getMobilePhone()%>">
        </td>
        <td width="78"><div align="right">Address:</div></td>
        <td><input name="address" type="text"  class="data" id="address" size="30" maxlength="30" value="<%=employee.getAddress()%>"></td>
      </tr>
      
      <tr>
        <td height="33"><div align="right"> Introduction: </div></td>
        <td colspan="3"><textarea name="resume" cols="60" rows="4" id="resume"><%=employee.getResume()%></textarea></td>
        </tr>
      <tr>
        <td height="49" colspan="4"><div align="center">
          <input type="submit" name="Submit" value="Modify">
          <input type="reset" name="Submit2" value="Cancel">
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
      inputField  : "birthday",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "bir"       // ID of the button
    }
	);	
	Calendar.setup(
	{
      inputField  : "graduatedate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "graduate"       // ID of the button
    }
	);		
</script>
</body>
</html>
