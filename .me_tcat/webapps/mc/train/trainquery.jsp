<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../incoming/Common.jsp"%>
<%@ include file="../Check.jsp"%>
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

<title>培训管理</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
	     <table width="801" height="48" border="0" cellpadding="0" cellspacing="0" background="images/center1.jpg">
        <tr>
          <td valign="top">
		  <table width="494">
            <tr>
              <td width="45" height="25">&nbsp;</td>
              <td width="437" valign="bottom"><font color="#66583D"><b>培训管理&nbsp;</b></font>&gt; <font color="#FF0000"> 培训查询</font></td>
            </tr>
          </table>
		  </td>
        </tr>
      </table>
      <table width="801" height="436" border="0" cellpadding="0" cellspacing="0" background="images/center2.jpg">
        <tr>
          <td height="436" valign="top" align="center">
   
         <table width="650" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="66583D">
            <tr align="center">
              <th width="44" height="20">编号</th>
              <th width="44" height="20">培训人</th>
              <th width="103">培训主题</th>  
			  <th width="131">培训时间</th>
              <th width="111">培训地点</th>
              <th width="184">操作></th>
            </tr>
            <tr align="center" bgcolor="#FFFFFF">           
              <td height="20"><bean:write name="trainForm" property="id"/></td>
              <td><bean:write name="trainForm" property="tn_man"/></td>              
              <td><bean:write name="trainForm" property="tn_title"/></td>
              <td><bean:write name="trainForm" property="tn_time"/></td>
			  <td><bean:write name="trainForm" property="tn_address"/></td>
              <td><a href="">查看详细信息</a>&nbsp;&nbsp; <a href="">删除</a></td>
            </tr>
          </table>
            <table width="650">
              <tr align="right">
                <td><a href="traininsert.jsp">添加培训信息</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	
    </td>
  </tr>
</table>
</body>
</html>
