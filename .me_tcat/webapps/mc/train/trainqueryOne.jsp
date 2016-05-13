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
          <td valign="top">		  <table width="494">
            <tr>
              <td width="437" valign="bottom"><font color="#66583D"><b>培训管理&nbsp;</b></font>&gt; <font color="#FF0000"> 查看培训信息</font></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="801" height="436" border="0" cellpadding="0" cellspacing="0" background="images/center2.jpg">
        <tr>
          <td height="436" valign="top" align="center">        
            <table width="355" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="66583D">
			
              <tr>
                <th width="79" height="30"><span class="word_white">培训人：</span></th>
                <td width="263" bgcolor="#FFFFFF"></td>
              </tr>
              <tr>
                <th height="30"><span class="word_white">培训主题：</span></th>
                <td bgcolor="#FFFFFF"></td>
              </tr>
              <tr>
                <th height="30"><span class="word_white">培训宗旨：</span></th>
                <td bgcolor="#FFFFFF"></td>
              </tr>
			    <tr>
                <th height="30"><span class="word_white">培训时间：</span></th>
                <td bgcolor="#FFFFFF"></td>
              </tr>
			    <tr>
                <th height="30"><span class="word_white">培训地点：</span></th>
                <td bgcolor="#FFFFFF"></td>
              </tr>
			    <tr>
                <th height="30"><span class="word_white">参加人员：</span></th>
                <td bgcolor="#FFFFFF"></td>
              </tr>
			  <tr>
                <th height="30"><span class="word_white">备注信息：</span></th>
                <td bgcolor="#FFFFFF"></td>
              </tr>
			  
            </table><br>         

			    <html:button property="button" value="返回"  onclick="javascript:history.go(-1);"></html:button>
			   
			   </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
