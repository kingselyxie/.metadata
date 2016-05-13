<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%

	String IsSucceed = "";

	String username = (String)session.getValue("UserName");
	if(Jobseeker.IsExist(username))
	{
	  IsSucceed="简历已经生成";
	}
	else{
%>
<%try{	
	String reallyname = new String(request.getParameter("reallyname"));
	String sex = new String(request.getParameter("sex"));
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
	String foreignlanguage = new String(request.getParameter("foreignlanguage"));
	String fllevel = new String(request.getParameter("fllevel"));
	String computerlevel = new String(request.getParameter("computerlevel"));
	String phone = new String(request.getParameter("phone"));
	String mobilephone = new String(request.getParameter("mobilephone"));
	String address = new String(request.getParameter("address"));
	String resume = new String(request.getParameter("resume"));
    IsSucceed = Jobseeker.Add(username,reallyname,sex,nativeplace,marriage,identityid,politics,folk,education,department,university,foreignlanguage,fllevel,computerlevel,phone,mobilephone,address,resume,birthday,graduatedate);
		
	}
	catch(Exception e){
		out.println("error:"+e.getMessage());
	}
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
<%@ include file="Header.jsp"%>
<div align="center">
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
		out.println("添加个人信息成功!");
	else
	{
		out.println("添加个人信息失败!");	
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
</div>
<%@ include file="Footer.jsp"%>	
</body>
</html>
