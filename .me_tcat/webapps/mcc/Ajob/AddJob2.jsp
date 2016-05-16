<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
String IsSucceed = "";
 %>
 <%
try{
     String post=request.getParameter("post");
     String branch=request.getParameter("branch");
     int mannumber=Integer.parseInt(request.getParameter("mannumber"));
     String startime=request.getParameter("startdate");
     String endtime=request.getParameter("enddate");
     String resume=request.getParameter("resume");
     String resume1=request.getParameter("resume1");
     System.out.println(startime);
     IsSucceed=Job.Add(post,branch,resume,resume1,mannumber,startime,endtime);
}
catch(Exception e){
		out.println("error:"+e.getMessage());
	}
	if(IsSucceed.equals("1"))
		{response.sendRedirect("ManageJob.jsp");}
		else
	{
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'AddJob.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head> 
  <body>
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="JobLeft.jsp"%></td>
    <td width="660" align="center" valign="top"><p><br>
        <br>
        <br>
        <br>
        <a class="title2"> 
        <%
	
	
		out.println("Addinformation is not success!");	
  %>
        <br>
        <%		
		out.println("ERROR : "+IsSucceed);	
	}	
  %>
        </a></p> 
      <p><img src="../images/success.jpg" width="132" height="148"> 
      </p>
      <form name="form2" method="post" action="ManageJob.jsp">
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
