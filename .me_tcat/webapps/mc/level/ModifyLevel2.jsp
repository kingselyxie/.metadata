<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../CheckIndex.jsp"%>
<%
	String IsSucceed = "";
	
%>
<%
try{
    int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
	int level=Integer.parseInt(request.getParameter("level"));
	IsSucceed = User.UpdateLevel(id,username,level);
	System.out.println(IsSucceed);
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
<%@ include file="../incoming/Header.jsp"%>
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
		out.println("修改成功!");
	else
	{
		out.println("修改失败!");	
  %> 
              <br>
  <%		
		out.println("错误 : "+IsSucceed);	
	}	
  %>
      </a></p>
<p><img src="../images/success.jpg" width="132" height="148"> 
      </p>	
	<form name="form2" method="post" action="../index.jsp">
      		<a class="title2"><input name="back" type="submit" id="back" value="Back" >
      		</a>	
    </form>
    </td>
  </tr>
</table>
</td>
</tr>
</table>
</div>
<%@ include file="../incoming/Footer.jsp"%>	
</body>
</html>
