<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
<%			
	Vector listtranslate = Translate.ListAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title><%=title%></title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<script language="javascript">
function confirmdel(a) 
{
if (confirm("真的要删除这条职称评定记录吗？") )
  top.location="DelTranslateStep1.jsp?translateno="+a
}
</script>
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="TranslateLeft.jsp"%></td>
    <td width="660" align="center" valign="top">
	<p align="center" class="title1">管理人员调动</p>
    <table width="640"  border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr bgcolor="#E7E7E7">
        <td width="77"><div align="center">员工编号</div></td>
        <td width="76"><div align="center">调动日期</div></td>
        <td width="87"><div align="center">调动前部门</div></td>
        <td width="79"><div align="center">调动后部门</div></td>
        <td width="90"><div align="center">调动前职务</div></td>
        <td width="96"><div align="center">调动后职务</div></td>
        <td width="77"><div align="center">操作</div></td>
      </tr>
<%		
      for(int i=0;i<listtranslate.size();i++) 
	  {
			Translate  translate = (Translate)listtranslate.elementAt(i);  
%>			
	  <tr>
        <td><div align="center"><a href="ViewTranslateStep1.jsp?translateno=<%=translate.getTranslateNO()%>"><%=DataConvert.ViewStr(translate.getEmployeeID())%></a> </div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getTranslateDate())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getPriorBranch())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getNextBranch())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getPriorDuty())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getNextDuty())%></div></td>
        <td><div align="center"><a href="ModifyTranslateStep1.jsp?translateno=<%=translate.getTranslateNO()%>">修改</a> <a href="javascript:confirmdel('<%=translate.getTranslateNO()%>')">删除</a></div></td>
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
<%@ include file="../incoming/Footer.jsp"%>	
</body>
</html>
