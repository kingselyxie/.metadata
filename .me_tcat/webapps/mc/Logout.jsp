<%@ include file="incoming/Common.jsp"%>
<% 
  
  String loginmsg="logout";
  response.sendRedirect("login.jsp?loginmsg="+loginmsg);
  
%>
