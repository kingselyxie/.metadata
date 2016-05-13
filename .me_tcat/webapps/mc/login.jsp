<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="incoming/Common.jsp"%>
<%
request.getSession(true);
session.putValue("IsLogin","false");
 String loginmsg = request.getParameter("loginmsg");

%>
<html>
<head>
<title>Swimming pool reservation system </title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">

<script language="JavaScript">
function check_input() 
{
	if( form.username.value.length<1 || form.username.value.length>16 ) 
	{
		alert("Please input your username.")
		return false;
	}
	if( form.password.value.length<1 || form.password.value.length>16 ) 
	{
		alert("Please input your password.")
		return false;
	}
}
</script>
</head>
<body >
<table align="center" width="800" height="600" background="images/zhuce.jpg">
<tr>
<td>
<p>　</p>
<div align="center">
　<p>　</p>
<p>　</p>
 <form action="ChkLogin.jsp" method="post" name="form" onSubmit="return check_input()">
<table width="320" height="197" border="0" cellpadding="2"  >
  <tr>
    <td width="306" height="189"><div align="center">
      <table width="102%" border=0 cellpadding=0 cellspacing=0 class=bg>
       
          <tr>
            <td width="313" height=40 align=left><div align="center"><b><a class="title1">
				<font size="6" face="方正舒体" color="#000000">Swimming pool Management system</font></a></b></div>
			<div align="center">　</div>
			<div align="center">　</div></td>
          </tr>
          <tr>
            <td align=center valign=top>
              <table width=283 border=0 cellspacing=0 cellpadding=0>
                <input type=hidden name=url value="">
                <tr>
                  <td width="98" height=29><div align="right"><font size="4">UserName :</font> </div></td>
                  <td width="213" height=29 align="left">
					<input name=username class=data size=24 maxlength=16 value=""></td>
                </tr>
                <tr>
                  <td height=29> <div align="right"><font size="4">Password :</font> </div></td>
                  <td height=29 align="left">
					<input name=password type=password class=data size=26 maxlength=16></td>
                </tr>
                <tr>
                  <td height="41" colspan="2" align=right><div align="center">
                        <font color=fe8c14>&nbsp;
                        <input name="submit" type=submit value="Submit" class=button>
                        <input name=reset type=reset class=button id="reset2"  value="Cancel">&nbsp;
                        <a href="jobseeker/Zhuce1.jsp">Register</a>
                                            </font></div>
                    <div align="center">　</div></td>
                  </tr>
            </table></td>
          </tr>
          <tr>
            <td align="center" >
              <table width="75%" height="36%" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="42"> <font color="#CC0000">
                    <%
 					if(loginmsg != null && loginmsg.equals("userwrong"))
 					 	out.print("Username or password is not right.");
					 else if(loginmsg != null && loginmsg.equals("loginfirst"))
 					 	out.print("Please login at first.");
 					 else if(loginmsg != null && loginmsg.equals("logout"))
 					 	out.print("You have to exit.");	
					%>
                  </font></td>
                </tr>
                </table>
            </td>
          </tr>
       
      </table>
    </div></td>
  </tr>
</table>
   </form>
</div>
</td>
</tr>
</table>
</body>
</html>