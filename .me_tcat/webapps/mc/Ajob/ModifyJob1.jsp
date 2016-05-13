<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
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
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/calendar-win2k-1.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/calendar-en.js"></script>
<script type="text/javascript" src="../js/calendar-setup.js"></script>
  </head> 
  <body>
<%@ include file="../incoming/Header.jsp"%>
<%
	int Id = Integer.parseInt(request.getParameter("Id"));
	Job job=Job.FindByID(Id);
	
%>

  
 <table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center">
<div align="center">
 <form action="ModifyJob2.jsp" method="post">
<table width="844" border="0" cellpadding="0" cellspacing="0" >
<tr><td>
<input type="hidden" name="Id" value="<%=job.getId()%>"/>
<table width="640" height="190" border="1" align="center" cellpadding="3" cellspacing="0" >

<tr>
<td align="center" width="100">Job Position<br></td><td><input type="text" name="post" value="<%=job.getPost() %>"></td>
</tr>
<tr>
<td align="center" width="100">Department</td><td><select name="branch" id="branch">
           <%if (job.getBranch().equals("总经理室")) {%>
            <option value="总经理室" selected>First Vice President</option>
		   <%}else{%>
            <option value="总经理室" >总经理室</option>
		   <%}%>   
		  
		  <%if (job.getBranch().equals("副总经理室")) {%>
            <option value="副总经理室" selected>Vice President</option>
		   <%}else{%>
            <option value="副总经理室" >副总经理室</option>
		   <%}%>  
                  <%if (job.getBranch().equals("经理室")) {%>
            <option value="经理室" selected>Assistant Vice President</option>
		   <%}else{%>
            <option value="经理室" >经理室</option>
		   <%}%>  
                  <%if (job.getBranch().equals("副经理室")) {%>
            <option value="副经理室" selected>Development</option>
		   <%}else{%>
            <option value="副经理室" >副经理室</option>
		   <%}%>  
		   
		   <%if (job.getBranch().equals("销售部")) {%>
            <option value="销售部" selected>Product</option>
		   <%}else{%>
            <option value="销售部" >销售部</option>
		   <%}%> 
		   
		   <%if (job.getBranch().equals("生产部")) {%>
            <option value="生产部" selected>Operations</option>
		   <%}else{%>
            <option value="生产部" >生产部</option>
		   <%}%> 
		   
		   <%if (job.getBranch().equals("研发部")) {%>
            <option value="研发部" selected>Marketing</option>
		   <%}else{%>
            <option value="研发部" >研发部</option>
		   <%}%> 
		   
		   <%if (job.getBranch().equals("采购部")) {%>
            <option value="采购部" selected>采购部</option>
		   <%}else{%>
            <option value="采购部" >采购部</option>
		   <%}%> 
		   
		   <%if (job.getBranch().equals("财务部")) {%>
            <option value="财务部" selected>Financial</option>
		   <%}else{%>
            <option value="财务部" >财务部</option>
		   <%}%> 
		   
		   <%if (job.getBranch().equals("人事部")) {%>
            <option value="人事部" selected>Hr</option>
		   <%}else{%>
            <option value="人事部" >人事部</option>
		   <%}%>  		 
           </select>
</tr>
<tr>
<td align="center" width="100">Number</td><td><input type="text" name="mannumber" value="<%=job.getMannumber() %>"></td>
</tr>
<tr>
<td align="center" width="100">Start time</td><td><input name="startdate" type="text"  class="data" id="startdate" value="<%=job.getStartime()%>" size="10" maxlength="8" readonly="true">
          <input name="startime" type="button" id="startime" value="..."></td>
</tr>
<tr>
<td align="center" width="100">End time</td><td><input name="enddate" type="text"  class="data" id="enddate" value="<%=job.getEndtime()%>" size="10" maxlength="8" readonly="true">
           <input name="endtime" type="button" id="endtime" value="..."></td>
</tr>
<tr>
<td align="center" width="100">Position introduction</td><td><textarea name="resume" cols="60" rows="4" id="resume" value="<%=job.getResume() %>"></textarea></td>
</tr>
<tr>
    <td width="100">Job Requirement:</td>
    <td colspan="7"><textarea name="resume1" cols="60" rows="4" id="resume" value="<%=job.getResume1() %>"></textarea>
    </td>
  </tr>
<tr>
<td align="center" colspan="2" ><input type="hidden" name="Id" value="<%=job.getId() %>"><input type="submit" name="Submit" value="Modify">
          <input type="reset" name="Submit2" value="Cannel"></td>
</tr>
</table>
<%@ include file="../incoming/Footer.jsp"%>

</td></tr>
</table>
</form>
</div>
</td>
</tr>
</table>
<script language="JavaScript" type="text/JavaScript">
	Calendar.setup(
	{
      inputField  : "startdate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "startime"       // ID of the button
    }
	);	
	Calendar.setup(
	{
      inputField  :"enddate",        // ID of the input field
      ifFormat    : "%Y-%m-%d",       // the date format
      button      : "endtime"       // ID of the button
    }
	);		
</script>

  </body>
</html>
