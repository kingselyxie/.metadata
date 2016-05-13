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
  if (theForm.employeeid.value.length != 6)
  {
    alert("员工编号必须为6位。");
    theForm.employeeid.focus();
    return (false);
  }  
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
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<div align="center">
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="EmployeeLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">&nbsp;Vip Information<br></p>
	 <form name="form1" method="post" action="AddEmployeeStep2.jsp" onsubmit="return check_input(this)">
	<table width="640" height="513" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="103" height="33"><div align="right"> UserID:</div></td>
        <td width="176"><input name="employeeid" type="text" id="employeeid">
      *</td>
        <td width="78" height="33"><div align="right">Name:</div></td>
        <td width="249"><input name="username" type="text"  class="data" id="username" size="8" maxlength="20" >
  *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Sex: </div></td>
        <td>          
        	<select name="sex" id="sex">
            <option value="男" selected>M</option>
            <option value="女" selected>F</option>
          </select>
          *</td>
        <td width="78"><div align="right">Place:</div></td>
        <td><select name="branch" id="branch">
          <option value="总经理室" selected>Chao Yang</option>
          <option value="副总经理室">副总经理室</option>
          <option value="经理室" selected>Hai Dian</option>
          <option value="副经理室" selected>Sydney1</option>
          <option value="销售部">Sydney2</option>
          <option value="生产部">Sydney3</option>
	  <option value="研发部">Sydney4</option>
          <option value="采购部">Sydney5</option>
	  <option value="财务部">Sydney6</option>
          <option value="人事部">Sydney7</option>
           </select>
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Birth: </div></td>
        <td><input name="birthday" type="text"  class="data" id="birthday" value="1980-01-01" size="10" maxlength="8" readonly="true">
          <input name="bir" type="button" id="bir" value="...">
      *</td>
        <td><div align="right">Native: </div></td>
        <td><input name="nativeplace" type="text"  class="data" id="nativeplace" size="10" maxlength="10" >
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">Married: </div></td>
        <td>      <select name="marriage" id="marriage">
          <option value="未婚" selected>NO</option>
          <option value="已婚">Yes</option>
         
        </select>
          *</td>
        <td width="78"><div align="right">License Card:</div></td>
        <td><input name="identityid" type="text"  class="data" id="identityid" size="18" maxlength="18" onKeyUp="value=value.replace(/[^\d]/g,'')">          
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Country : </div></td>
        <td height="33"><select name="politics" id="politics">
            <option value="党员" selected>China</option>
            <option value="团员">Australia</option>
	    <option value="群众">England</option>
	    <option value="其他">Germany</option>
          </select>
      * </td>
        <td><div align="right">Nation: </div></td>
        <td><input name="folk" type="text"  class="data" id="folk" size="8" maxlength="4" >
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right">Degree: </div></td>
        <td><select name="education" id="education">
          <option value="小学">senior</option>
          <option value="初中">doctor</option>
          <option value="高中">master</option>
	 
        </select>      </td>
        <td width="78"><div align="right">Degree:</div></td>
        <td><br></td>
      </tr>
      <tr>
        <td height="33"><div align="right">Graduate Time:</div></td>
        <td><input name="graduatedate" type="text"  class="data" id="graduatedate" value="2005-01-01" size="10" maxlength="8" readonly="true">
            <input name="graduate" type="button" id="graduate" value="...">
      </td>
        <td><div align="right">University: </div></td>
        <td><input name="university" type="text"  class="data" id="university" size="30" maxlength="30" ></td>
      </tr>
      <tr>
        <td height="33"><div align="right">Master Card:</div></td>
        <td><input name="accumulateid" type="text"  class="data" id="accumulateid" size="15" maxlength="15" onkeyup="value=value.replace(/[^\d]/g,'')">
          *</td>
        <td width="78"><div align="right">Job:</div></td>
        <td><select name="administrationlevel" id="administrationlevel">
          <option value="科员" selected>CTO</option>
	  <option value="副科级">CEO</option>
          <option value="科级">CEF</option>
          <option value="副处级">CIO</option>
	  <option value="处级">处级</option>
   
	  <option value="其他">Other</option>
        </select>
          *</td>
      </tr>
      
      
      
      <tr>
        <td height="33"><div align="right"> Mobile: </div></td>
        <td><input name="mobilephone" type="text"  class="data" id="mobilephone" size="11" maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'')">
        </td>
        <td width="78"><div align="right">Address:</div></td>
        <td><input name="address" type="text"  class="data" id="address" size="30" maxlength="30" ></td>
      </tr>
      
      <tr>
        <td height="33"><div align="right"> Personal Information: </div></td>
        <td colspan="3"><textarea name="resume" cols="60" rows="4" id="resume"></textarea></td>
        </tr>
      <tr>
        <td height="49" colspan="4"><div align="center">
          <input type="submit" name="Submit" value="Submit">
          <input type="reset" name="Submit2" value="Reset">
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
</td>
</tr>
</table>
</body>
</html>
