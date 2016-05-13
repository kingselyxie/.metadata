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
<script language="javascript">
function checkEmptyForm(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert(form.elements[i].title);
return false;
}
}
}
</script>
</head>
<body>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
    
      
	  
	     <table width="801" height="48" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">		  <table width="494">
            <tr>
              <td width="437" valign="bottom"><font color="#66583D"><b>培训管理&nbsp;</b></font>&gt; <font color="#FF0000"> 添加培训信息</font></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="801" height="436" border="0" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="436" valign="top" align="center">        
	   <form>          
            <table width="400" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" >
			
              <tr>
                <th width="100" ><span >培训人：</span></th>
                <td width="300" ><input type="text" name="username" title="请输入培训人名称" size="40"/></td>
              </tr>
              <tr>
                <th ><span >培训主题：</span></th>
                <td ><input type="text" name="title" title="请输入培训主题" size="40"/></td>
              </tr>
              <tr>
                <th ><span >培训宗旨：</span></th>
                <td ><input type="text" name="content" title="请输入培训宗旨" size="40"/></td>
              </tr>
			    <tr>
                <th ><span >开始时间：</span></th>
                <td ><input type="text" name="time" title="请输入培训时间" size="40"/></td>
              </tr>
              <tr>
                <th ><span >结束时间：</span></th>
                <td ><input type="text" name="time" title="请输入培训时间" size="40"/></td>
              </tr>
			    <tr>
                <th ><span >培训地点：</span></th>
                <td ><input type="text" name="address" title="请输入培训地点" size="40"/></td>
              </tr>
			    <tr>
                <th ><span >参加人员：</span></th>
                <td ><input type="text" name="join" title="请输入参见人员" size="40"/></td>
              </tr>
			  <tr>
                <th ><span>备注信息：</span></th>
                <td ><input type="text" name="bz" title="请输入备注信息" worth="300" height="30" /></td>
              </tr>
			  
            </table><br>         
              <input type="submit" value="保存"/>
              &nbsp;&nbsp;
             <input type="reset"  value="重置"/>
               &nbsp;&nbsp;
			   <input type="button" property="button" value="返回"  onclick="javascript:history.go(-1);">
		  </form>
			   
			   
			   </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
