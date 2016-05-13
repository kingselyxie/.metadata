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
<script language="javascript">
function confirmdel(a) 
{
if (confirm("真的要删除用户名为 "+a+" 的权限吗?") )
  top.location="DelLevel.jsp?employeeid="+a
}
</script>
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<div align="center">
<%
  Vector listuser=User.ListAll();
 %>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <tr><td width="7" align="center" background="../images/Snap1.gif">　</td>
    <td align="center" valign="top">	
      <br>
      <p class="title1">Manage Member Level<br></p>
      <table width="389" height="177" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
        <tr>
          <td  height="33"><div align="center">Username<br> </div><br></td>
         <td height="33"><div align="center">Password<br> </div><br></td>
             <td height="33"><div align="center">Level<br> </div><br></td>
              <td height="33"><div align="center">Action<br> </div><br></td>
        </tr>
        <%int i;
         for(i=0;i<listuser.size();i++)
         {
            User user=(User)listuser.elementAt(i);
         
         %>
        <tr>
          <td height="33"><%=user.getUserName() %></td>
          <td height="33"><%=user.getPassword() %></td>
          <td height="33"><%=user.getLevel() %></td>
          <td height="33" ><div align="center"><a href="ModifyLevel1.jsp?id=<%=user.getId() %>">Modify </a>
          <a href="ViewLevel.jsp?id=<%=user.getId() %>">View</a>
        </tr>
        <%
        }
         %>
      </table>
    </td>
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
