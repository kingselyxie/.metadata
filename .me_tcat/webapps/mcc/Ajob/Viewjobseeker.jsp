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
<%
	  String Username = request.getParameter("username");
	 Jobseeker employee = Jobseeker.FindByID(Username);
	 	
	 Vector jobList=Job.ListAll();
%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1">
  <tr>
    
    <td align="center">
	<p align="center" class="title1">Resume browsing</p>
	<table   border="0" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="100" height="33"><div align="right">Name:</div></td>
        <td width="200"><input name="username" type="text"  class="data" id="username" size="8" maxlength="4" value="<%=employee.getUserName()%>" readonly="true">
  </td>
  <td height="33" width="80"><div align="right"> Sex: </div></td>
        <td width="249">          
          <input name="sex" type="text"  class="data" id="sex" size="6" maxlength="6" value="<%=employee.getSex()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> Birth: </div></td>
        <td><input name="birthday" type="text"  class="data" id="birthday" size="10" maxlength="10" value="<%=employee.getBirthday()%>" readonly="true"></td>
        <td><div align="right">Native place: </div></td>
        <td><input name="nativeplace" type="text"  class="data" id="nativeplace" size="10" maxlength="10" value="<%=employee.getNativePlace()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right"><em class="op_dict3_highlight">marital</em> <em class="op_dict3_highlight">status</em>: </div></td>
        <td>      
		<input name="marriage" type="text"  class="data" id="marriage" size="10" maxlength="10" value="<%=employee.getMarriage()%>" readonly="true"></td>
        <td width="78"><div align="right">License:</div></td>
        <td><input name="identityid" type="text"  class="data" id="identityid" size="18" maxlength="18" value="<%=employee.getIdentityID()%>" readonly="true">          
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> <em class="op_dict3_highlight">political</em> <em class="op_dict3_highlight">status</em>: </div></td>
        <td height="33">
		<input name="politics" type="text"  class="data" id="politics" size="10" maxlength="10" value="<%=employee.getPolitics()%>" readonly="true"></td>
        <td><div align="right">Nation: </div></td>
        <td><input name="folk" type="text"  class="data" id="folk" size="8" maxlength="4" value="<%=employee.getFolk()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right">Degree: </div></td>
        <td>
		<input name="education" type="text"  class="data" id="education" size="10" maxlength="10" value="<%=employee.getEducation()%>" readonly="true">      
		</td>
        <td width="78"><div align="right">Subject:</div></td>
        <td><input name="department" type="text"  class="data" id="department" size="20" maxlength="20" value="<%=employee.getDepartment()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right">Graduate time:</div></td>
        <td><input name="graduatedate" type="text"  class="data" id="graduatedate" size="10" maxlength="10" value="<%=employee.getGraduateDate()%>" readonly="true">
      </td>
        <td><div align="right">Graduate university: </div></td>
        <td><input name="university" type="text"  class="data" id="university" size="30" maxlength="30" value="<%=employee.getUniversity()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right"> language: </div></td>
        <td height="33">
		<input name="foreignlanguage" type="text"  class="data" id="foreignlanguage" size="10" maxlength="10" value="<%=employee.getForeignLanguage()%>" readonly="true">
      </td>
        <td width="78">language level<br></td>
        <td>
		<input name="fllevel" type="text"  class="data" id="fllevel" size="10" maxlength="10" value="<%=employee.getFLLevel()%>" readonly="true"></td>
      </tr>
      
      
      <tr>
        <td height="33"><div align="right"> Personal Introduction: </div></td>
        <td colspan="3"><textarea name="resume" cols="70" rows="15" id="resume" readonly><%=employee.getResume()%></textarea></td>
        </tr>
        <br>
    </table>
    </td>
    </tr>
    
<tr>
<td align="center"> <a href="MeJob.jsp">Back</a></td>
</tr>
</table>
    </td>
    </tr></table>
</div>

<%@ include file="../incoming/Footer.jsp"%>
</body>
</html>
