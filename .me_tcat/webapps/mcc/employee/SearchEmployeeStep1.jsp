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
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="EmployeeLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">SearchVip Information<br></p>
	 <form name="form1" method="post" action="SearchEmployeeStep2.jsp">
	<table width="640" height="282" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="113" height="33"><div align="right"> VipID:</div></td>
        <td width="164"><input name="employeeid" type="text"  class="data" id="employeeid" size="6" maxlength="6" onkeyup="value=value.replace(/[^\d]/g,'')">      </td>
        <td width="98" height="33"><div align="right">Name:</div></td>
        <td width="231"><input name="username" type="text"  class="data" id="username" size="8" maxlength="20" >
        </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Sex: </div></td>
        <td><select name="sex" id="sex">
            <option value="" selected>Both</option>
            <option value="男">M</option>
            <option value="女">F</option>
          </select>
        </td>
        <td><div align="right">Place:</div></td>
        <td><select name="branch" id="branch">
            <option value="" selected>All</option>
            <option value="总经理室">Chaoyang</option>
          <option value="副总经理室">haidian</option>
          <option value="经理室">Sydney</option>
     >
          </select>
        </td>
      </tr>
      <tr>
        <td><div align="right">Native: </div></td>
        <td><input name="nativeplace" type="text"  class="data" id="nativeplace" size="10" maxlength="10" >
        </td>
        <td height="33"><div align="right">Married: </div></td>
        <td><select name="marriage" id="marriage">
            <option value="" selected>Both</option>
            <option value="未婚">No</option>
            <option value="已婚">Yes</option>
            
          </select>
        </td>
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
</td>
</tr>
</table>
</div>

<%@ include file="../incoming/Footer.jsp"%>
</body>
</html>
