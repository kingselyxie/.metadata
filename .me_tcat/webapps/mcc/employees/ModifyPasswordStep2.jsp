<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../CheckIndex.jsp"%>
<%
	String IsSucceed = "";
%>
<%
try{
	String username = (String)session.getValue("UserName");
	String oldpassword = new String(request.getParameter("oldpassword"));
	String newpassword = new String(request.getParameter("newpassword"));

	if(!(User.ChkLogin(username,oldpassword)))
		{
			%>
			<script>
			alert("旧密码输入错误，请重新输入.");
			window.history.back();
			</script>
	<%	} 
	else
		{
			IsSucceed = User.ModifyPassword(username,newpassword);
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
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
</head>
<body>
<%@ include file="Header.jsp"%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td  align="center" valign="top"><br><br><br><br>
 <p>  <a class="title2">
  <%
	if(IsSucceed.equals("1"))
		out.println("修改密码成功!");
	else
	{
		out.println("修改密码失败!");	
  %> 
              <br>
  <%		
		out.println("错误 : "+IsSucceed);	
	}	
  %>
      </a></p>
<p><img src="../images/success.jpg" width="132" height="148"> 
      </p>	
	<form name="form2" method="post" action="indexemployee.jsp">
      		<a class="title2"><input name="back" type="submit" id="back" value="BACK" >
      		</a>	
    </form>
    </td>
  </tr>
</table>
</td>
</tr>
</table>
</div>
<%@ include file="Footer.jsp"%>	
</body>
</html>
