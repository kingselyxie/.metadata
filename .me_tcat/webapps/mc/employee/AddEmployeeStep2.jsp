<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	String IsSucceed = "";
	String employeeid = request.getParameter("employeeid");
%>
<%
request.setCharacterEncoding("UTF-8");
try{	  


	String username = request.getParameter("username");
	System.out.println(username);
	String sex = request.getParameter("sex");
	String branch =request.getParameter("branch");
	String birthday = request.getParameter("birthday");
	String nativeplace = request.getParameter("nativeplace");
	String marriage = request.getParameter("marriage");
	String identityid = request.getParameter("identityid");
	String politics = request.getParameter("politics");
	String folk = request.getParameter("folk");
	String education = request.getParameter("education");
	String department = request.getParameter("department");
	String graduatedate = request.getParameter("graduatedate");
	String university = request.getParameter("university");
	String accumulateid = request.getParameter("accumulateid");
	String administrationlevel = request.getParameter("administrationlevel");
	String duty = request.getParameter("duty");
	String position = request.getParameter("position");
	String foreignlanguage =request.getParameter("foreignlanguage");
	String fllevel = request.getParameter("fllevel");
	String computerlevel = request.getParameter("computerlevel");
	String phone = request.getParameter("phone");
	String mobilephone = request.getParameter("mobilephone");
	String address = request.getParameter("address");
	String incumbency = request.getParameter("incumbency");
	String incumbencytype = request.getParameter("incumbencytype");
	String resume = request.getParameter("resume");
	
	if(Employee.IsExist(employeeid))
		{
			%>
			<script>
			alert("该人员已经存档.");
			window.history.back();
			</script>
	<%	} 
	else
		{
			IsSucceed = Employee.Add(employeeid,username,sex,branch,nativeplace,marriage,identityid,politics,folk,education,department,university,accumulateid,administrationlevel,duty,position,foreignlanguage,fllevel,computerlevel,phone,mobilephone,address,incumbency,incumbencytype,resume,birthday,graduatedate);
		}
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
		out.println("添加人员档案成功!");
	else
	{
		out.println("添加人员档案失败!");	
  %>
        <br>
        <%		
		out.println("错误 : "+IsSucceed);	
	}	
  %>
        </a></p> 
      <p><img src="../images/success.jpg" width="132" height="148"> 
      </p>
      <form name="form2" method="post" action="Employee.jsp">
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
