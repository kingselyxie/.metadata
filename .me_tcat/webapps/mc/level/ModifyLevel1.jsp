<%@ page contentType="text/html;charset=gb2312" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../CheckIndex.jsp"%>
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
<%
 int id = Integer.parseInt(request.getParameter("id"));
 User user=User.FindByName(id);
 String kk=(String)request.getParameter("id");
 GetAutoNumber nn=new GetAutoNumber() ;
 String name=(String)nn.getMaxNuber(kk);
 
 %>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <tr><td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td align="center" valign="top">	
    	<form name="form1" method="post" action="ModifyLevel2.jsp" onsubmit="return check_input(this)">
      <br>
      <p class="title1">Modify level<br></p>
      <table width="389" height="177" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
        <tr>
          <td width="135" height="29"><div align="right">UserID: </div></td>
          <td width="236"><input name="username" type="text"  class="data" size="25" maxlength="16" value="<%=name%>"></td>
        </tr>
        <tr>
          <td height="29"><div align="right">Level:  
            </div>
            <div align="right"></div></td>
          <td height="29"><input name="level" type="text"  class="data" size="25" maxlength="16" value="<%=user.getLevel() %>" ></td>
        </tr>
        <tr>
          <td height="44" colspan="2"><div align="center"><input name="id" type="hidden"   value="<%=user.getId()%>">
            <input type="submit" name="Submit" value="Modify">
            <input type="reset" name="Submit2" value="Cancel">
</div></td>

        </tr>
      </table>
    </form></td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
    </tr>
</table>
</td>
</tr>
</table>
</div>

<%@ include file="../incoming/Footer.jsp" %>
</body>
</html>
