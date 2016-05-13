<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
<script Language="JavaScript">
function check_input(theForm)
{
  if (theForm.employeeid.value == "")
  {
    alert("请选择员工编号。");
    theForm.employeeid.focus();
    return (false);
  }  
  if (theForm.translatedate.value == "")
  {
    alert("请选择调动日期。");
    theForm.translatedate.focus();
    return (false);
  }
  if (theForm.handlename.value == "")
  {
    alert("请输入经办人。");
    theForm.handlename.focus();
    return (false);
  }
}
</script>
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<%
	String translateno = new String(request.getParameter("translateno").getBytes("ISO8859_1"),"GBK");
	Translate translate = Translate.FindByNO(translateno);
%>
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="TranslateLeft.jsp"%></td>
    <td width="660" align="top">
	<p align="center" class="title1">修改人员调动</p>
	 <form name="form1" method="post" action="ModifyTranslateStep2.jsp?translateno=<%=translateno%>" onsubmit="return check_input(this)">
	   <table width="640" height="315" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
         <tr>
           <td width="147" height="33"><div align="right">员工编号:</div></td>
           <td width="475"><select name="employeeid" size="1" id="employeeid">
		 <%	
			Vector listemployee = Employee.ListAll();
			for(int i=0;i<listemployee.size();i++) 
			{
				Employee employee = (Employee)listemployee.elementAt(i);
				if((employee.getEmployeeID()).equals(translate.getEmployeeID()))
				{%>
              <option value="<%=employee.getEmployeeID()%>" selected><%=employee.getEmployeeID()%>-<%=employee.getUserName()%></option>
			  <%}else
			  {%>
			  <option value="<%=employee.getEmployeeID()%>"><%=employee.getEmployeeID()%>-<%=employee.getUserName()%></option>
             <%}
			}
			%>
             </select>
      *</td>
         </tr>
         <tr>
           <td height="33"><div align="right"> 调动日期: </div></td>
           <td><input name="translatedate" type="text"  class="data" id="translatedate" value="<%=translate.getTranslateDate()%>" size="10" maxlength="8" readonly="true">
               <input name="translate" type="button" id="translate" value="...">
    *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">调动前部门:</div></td>
           <td><select name="priorbranch" id="priorbranch">
            <%if (translate.getPriorBranch().equals("总经理室")) {%>
            <option value="总经理室" selected>总经理室</option>
		   <%}else{%>
            <option value="总经理室" >总经理室</option>
		   <%}%>   
		  
		  <%if (translate.getPriorBranch().equals("副总经理室")) {%>
            <option value="副总经理室" selected>副总经理室</option>
		   <%}else{%>
            <option value="副总经理室" >副总经理室</option>
		   <%}%>  
		   
		   <%if (translate.getPriorBranch().equals("销售部")) {%>
            <option value="销售部" selected>销售部</option>
		   <%}else{%>
            <option value="销售部" >销售部</option>
		   <%}%> 
		   
		   <%if (translate.getPriorBranch().equals("生产部")) {%>
            <option value="生产部" selected>生产部</option>
		   <%}else{%>
            <option value="生产部" >生产部</option>
		   <%}%> 
		   
		   <%if (translate.getPriorBranch().equals("研发部")) {%>
            <option value="研发部" selected>研发部</option>
		   <%}else{%>
            <option value="研发部" >研发部</option>
		   <%}%> 
		   
		   <%if (translate.getPriorBranch().equals("采购部")) {%>
            <option value="采购部" selected>采购部</option>
		   <%}else{%>
            <option value="采购部" >采购部</option>
		   <%}%> 
		   
		   <%if (translate.getPriorBranch().equals("财务部")) {%>
            <option value="财务部" selected>财务部</option>
		   <%}else{%>
            <option value="财务部" >财务部</option>
		   <%}%> 
		   
		   <%if (translate.getPriorBranch().equals("人事部")) {%>
            <option value="人事部" selected>人事部</option>
		   <%}else{%>
            <option value="人事部" >人事部</option>
		   <%}%>  		 
             </select>
    *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">调动后部门:</div></td>
           <td><select name="nextbranch" id="nextbranch">
           <%if (translate.getNextBranch().equals("总经理室")) {%>
            <option value="总经理室" selected>总经理室</option>
		   <%}else{%>
            <option value="总经理室" >总经理室</option>
		   <%}%>   
		  
		  <%if (translate.getNextBranch().equals("副总经理室")) {%>
            <option value="副总经理室" selected>副总经理室</option>
		   <%}else{%>
            <option value="副总经理室" >副总经理室</option>
		   <%}%>  
		   
		   <%if (translate.getNextBranch().equals("销售部")) {%>
            <option value="销售部" selected>销售部</option>
		   <%}else{%>
            <option value="销售部" >销售部</option>
		   <%}%> 
		   
		   <%if (translate.getNextBranch().equals("生产部")) {%>
            <option value="生产部" selected>生产部</option>
		   <%}else{%>
            <option value="生产部" >生产部</option>
		   <%}%> 
		   
		   <%if (translate.getNextBranch().equals("研发部")) {%>
            <option value="研发部" selected>研发部</option>
		   <%}else{%>
            <option value="研发部" >研发部</option>
		   <%}%> 
		   
		   <%if (translate.getNextBranch().equals("采购部")) {%>
            <option value="采购部" selected>采购部</option>
		   <%}else{%>
            <option value="采购部" >采购部</option>
		   <%}%> 
		   
		   <%if (translate.getNextBranch().equals("财务部")) {%>
            <option value="财务部" selected>财务部</option>
		   <%}else{%>
            <option value="财务部" >财务部</option>
		   <%}%> 
		   
		   <%if (translate.getNextBranch().equals("人事部")) {%>
            <option value="人事部" selected>人事部</option>
		   <%}else{%>
            <option value="人事部" >人事部</option>
		   <%}%>  		 
             </select>
    *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">调动前职务: </div></td>
           <td>
		   <select name="priorduty" id="priorduty">
           <%if (translate.getPriorDuty().equals("工人")) {%>
            <option value="工人" selected>工人</option>
		   <%}else{%>
            <option value="工人" >工人</option>
		   <%}%> 
		  
		  <%if (translate.getPriorDuty().equals("职员")) {%>
            <option value="职员" selected>职员</option>
		   <%}else{%>
            <option value="职员" >职员</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("领班")) {%>
            <option value="领班" selected>领班</option>
		   <%}else{%>
            <option value="领班" >领班</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("主管")) {%>
            <option value="主管" selected>主管</option>
		   <%}else{%>
            <option value="主管" >主管</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("副主任")) {%>
            <option value="副主任" selected>副主任</option>
		   <%}else{%>
            <option value="副主任" >副主任</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("主任")) {%>
            <option value="主任" selected>主任</option>
		   <%}else{%>
            <option value="主任" >主任</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("副经理")) {%>
            <option value="副经理" selected>副经理</option>
		   <%}else{%>
            <option value="副经理" >副经理</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("经理")) {%>
            <option value="经理" selected>经理</option>
		   <%}else{%>
            <option value="经理" >经理</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("总经理")) {%>
            <option value="总经理" selected>总经理</option>
		   <%}else{%>
            <option value="总经理" >总经理</option>
		   <%}%> 
		   
		   <%if (translate.getPriorDuty().equals("其他")) {%>
            <option value="其他" selected>其他</option>
		   <%}else{%>
            <option value="其他" >其他</option>
		   <%}%> 
             </select>
    *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">调动后职务: </div></td>
           <td><select name="nextduty" id="nextduty">
           <%if (translate.getNextDuty().equals("工人")) {%>
            <option value="工人" selected>工人</option>
		   <%}else{%>
            <option value="工人" >工人</option>
		   <%}%> 
		  
		  <%if (translate.getNextDuty().equals("职员")) {%>
            <option value="职员" selected>职员</option>
		   <%}else{%>
            <option value="职员" >职员</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("领班")) {%>
            <option value="领班" selected>领班</option>
		   <%}else{%>
            <option value="领班" >领班</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("主管")) {%>
            <option value="主管" selected>主管</option>
		   <%}else{%>
            <option value="主管" >主管</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("副主任")) {%>
            <option value="副主任" selected>副主任</option>
		   <%}else{%>
            <option value="副主任" >副主任</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("主任")) {%>
            <option value="主任" selected>主任</option>
		   <%}else{%>
            <option value="主任" >主任</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("副经理")) {%>
            <option value="副经理" selected>副经理</option>
		   <%}else{%>
            <option value="副经理" >副经理</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("经理")) {%>
            <option value="经理" selected>经理</option>
		   <%}else{%>
            <option value="经理" >经理</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("总经理")) {%>
            <option value="总经理" selected>总经理</option>
		   <%}else{%>
            <option value="总经理" >总经理</option>
		   <%}%> 
		   
		   <%if (translate.getNextDuty().equals("其他")) {%>
            <option value="其他" selected>其他</option>
		   <%}else{%>
            <option value="其他" >其他</option>
		   <%}%> 
             </select>
    *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">经办人: </div></td>
           <td><input name="handlename" type="text"  class="data" id="handlename" size="10" maxlength="10" value="<%=translate.getHandleName()%>">
    *</td>
         </tr>
         <tr>
           <td height="33"><div align="right">备注:</div></td>
           <td><textarea name="remark" cols="60" rows="4" id="remark"><%=translate.getRemark()%></textarea></td>
         </tr>
         <tr>
           <td height="49" colspan="2"><div align="center">
               <input type="Submit" name="Submit" value="修改">
               <input type="reset" name="Submit2" value="取消">
           </div></td>
         </tr>
       </table>
	 </form>    
    </td>
    <td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
<%@ include file="../incoming/Footer.jsp"%>
<script language="JavaScript" type="text/JavaScript">
	Calendar.setup(
	{
      inputField  : "translatedate",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "translate"       // ID of the button
    }
	);	
</script>
</body>
</html>
