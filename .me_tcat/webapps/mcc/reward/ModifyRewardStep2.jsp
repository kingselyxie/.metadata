<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%
	String IsSucceed = "";
%>
<%
try{	
	String rewardno = new String(request.getParameter("rewardno"));
	String employeeid = new String(request.getParameter("employeeid"));
	String position = new String(request.getParameter("position"));
	String rewardpunish = new String(request.getParameter("rewardpunish"));
	String rewardcontent = new String(request.getParameter("rewardcontent"));
	String reason = new String(request.getParameter("reason"));
	String branch = new String(request.getParameter("branch"));
	String handlename = new String(request.getParameter("handlename"));
	String startdate = new String(request.getParameter("startdate"));
	String canceldate = new String(request.getParameter("canceldate").getBytes("ISO8859_1"),"GBK");
	String cancelreason = new String(request.getParameter("cancelreason").getBytes("ISO8859_1"),"GBK");
	String remark = new String(request.getParameter("remark").getBytes("ISO8859_1"),"GBK");
	
   IsSucceed = Reward.Modify(rewardno,employeeid,position,rewardpunish,rewardcontent,reason,branch,handlename,startdate,canceldate,cancelreason,remark);

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
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="RewardLeft.jsp"%></td>
    <td width="660" align="center" valign="top"><p><br>
        <br>
        <br>
        <br>
        <a class="title2"> 
        <%
	if(IsSucceed.equals("1"))
		out.println("修改奖惩记录成功！");
	else
	{
		out.println("修改奖惩记录失败!");	
  %>
        <br>
        <%		
		out.println("错误 : "+IsSucceed);	
	}	
  %>
        </a></p> 
      <p><img src="../images/success.jpg" width="132" height="148"> 
      </p>
      <form name="form2" method="post" action="ManageRewardStep1.jsp">
      		<a class="title2"><input name="back" type="submit" id="back" value="返回" >
      		</a>	
    </form>
    </td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
<%@ include file="../incoming/Footer.jsp"%>	
</body>
</html>
