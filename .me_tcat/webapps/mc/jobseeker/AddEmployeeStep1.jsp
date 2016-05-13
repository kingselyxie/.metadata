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
}
</script>
</head>
<body>
<%@ include file="Header.jsp"%>
<div align="center">
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="EmployeeLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">Manage members information<br></p>
	 <form name="form1" method="post" action="AddEmployeeStep2.jsp" onsubmit="return check_input(this)">
	<table width="640" height="513" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="78" height="33"><div align="right">Name:</div></td>
        <td width="249"><input name="reallyname" type="text"  class="data" id="reallyname" size="8" maxlength="20" >
  *</td>
  <td height="33"><div align="right"> Sex: </div></td>
        <td>          
        	<select name="sex" id="sex">
            <option value="男" selected>M</option>
            <option value="女">F</option>
          </select>
          *</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Birthday: </div></td>
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
        <td width="78"><div align="right">Licence Card:</div></td>
        <td><input name="identityid" type="text"  class="data" id="identityid" size="18" maxlength="18" onKeyUp="value=value.replace(/[^\d]/g,'')">          
          *</td>
      </tr>
      
      
      
     
      <tr>
        <td height="33"><div align="right"> Language: </div></td>
        <td height="33"><select name="foreignlanguage" id="foreignlanguage">
            <option value="英语" selected>English</option>
            <option value="日语">Japanese</option>
        
	    <option value="其他">Other</option>
          </select>
      </td>
        <td width="78"><div align="right">Level:</div></td>
        <td><select name="fllevel" id="fllevel">
          <option value="三级" selected>Third</option>
          <option value="四级">Forth</option>
          <option value="六级">Six</option>
         
        </select></td>
      </tr>
      
      <tr>
        <td height="33"><div align="right"> Mobile: </div></td>
        <td><input name="mobilephone" type="text"  class="data" id="mobilephone" size="11" maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'')">
        </td>
        <td width="78"><div align="right">Address:</div></td>
        <td><input name="address" type="text"  class="data" id="address" size="30" maxlength="30" ></td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Personal Introduction: </div></td>
        <td colspan="3"><textarea name="resume" cols="60" rows="4" id="resume"></textarea></td>
        </tr>  
      <tr>
        <td height="49" colspan="4"><div align="center">
          <input type="submit" name="Submit" value="Submit">
          <input type="reset" name="Submit2" value="Cancel">
        </div></td>
      </tr>
    </table>
	
	</form>    
    </td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</div>
<%@ include file="Footer.jsp"%>
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
