<%@page pageEncoding="GB2312"%>
<%@ include file="incoming/Common.jsp"%>

<%
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 String loginmsg;
 if(!User.ChkLogin(username,password))
 {
 	loginmsg="userwrong";
	response.sendRedirect("login.jsp?loginmsg="+loginmsg);
	return;
 } 
 
  request.getSession(true);
 session.putValue("IsLogin","true");
 session.putValue("UserName",username);
 
if(User.FindLevel(username,password)==0)
{
   response.sendRedirect("jobseeker/indexjob.jsp");
}
else if(User.FindLevel(username,password)==1)
{
 response.sendRedirect("employees/indexemployee.jsp");
}
else if (User.FindLevel(username,password)==9)
{
 response.sendRedirect("index.jsp");
}	
%>
