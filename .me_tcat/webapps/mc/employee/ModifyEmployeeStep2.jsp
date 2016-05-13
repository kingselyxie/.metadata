<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	String IsSucceed = "";
	String employeeid = new String(request.getParameter("employeeid"));
%>
<%try{	
	String username = new String(request.getParameter("username"));
	String sex = new String(request.getParameter("sex"));
	String branch = new String(request.getParameter("branch"));
	String birthday = new String(request.getParameter("birthday"));
	String nativeplace = new String(request.getParameter("nativeplace"));
	String marriage = new String(request.getParameter("marriage"));
	String identityid = new String(request.getParameter("identityid"));
	String politics = new String(request.getParameter("politics"));
	String folk = new String(request.getParameter("folk"));
	String education = new String(request.getParameter("education"));
	String department = new String(request.getParameter("department"));
	String graduatedate = new String(request.getParameter("graduatedate"));
	String university = new String(request.getParameter("university"));
	String accumulateid = new String(request.getParameter("accumulateid"));
	String administrationlevel = new String(request.getParameter("administrationlevel"));
	String duty = new String(request.getParameter("duty"));
	String position = new String(request.getParameter("position"));
	String foreignlanguage = new String(request.getParameter("foreignlanguage"));
	String fllevel = new String(request.getParameter("fllevel"));
	String computerlevel = new String(request.getParameter("computerlevel"));
	String phone = new String(request.getParameter("phone"));
	String mobilephone = new String(request.getParameter("mobilephone"));
	String address = new String(request.getParameter("address"));
	String incumbency = new String(request.getParameter("incumbency"));
	String incumbencytype = new String(request.getParameter("incumbencytype"));
	String resume = new String(request.getParameter("resume"));

    IsSucceed = Employee.Modify(employeeid,username,sex,branch,nativeplace,marriage,identityid,politics,folk,education,department,university,
			accumulateid, administrationlevel,duty,position,foreignlanguage,fllevel,computerlevel,phone,mobilephone,address,incumbency,incumbencytype,
			resume,birthday,graduatedate);

	}
	catch(Exception e){
		out.println("error:"+e.getMessage());
	}
%>
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
    <td width="660" align="center" valign="top"><p><br>
        <br>
        <br>
        <br>
        <a class="title2"> 
        <%
	if(IsSucceed.equals("1"))
		out.println("修改人员档案成功！");
	else
	{
		out.println("修改人员档案失败!");	
  %>
        <br>
        <%		
		out.println("错误 : "+IsSucceed);	
	}	
  %>
        </a></p> 
      <p><img src="../images/success.jpg" width="132" height="148"> 
      </p>
      <form name="form2" method="post" action="ManageEmployee.jsp">
      		<a class="title2"><input name="back" type="submit" id="back" value="Back" >
      		</a>	
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
