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
</head>
<body>
<%@ include file="../incoming/Header.jsp"%>
<%
	String employeeid = request.getParameter("employeeid");
	Employee employee = Employee.FindByID(employeeid);
	
	Vector listtranslate = Translate.SearchByID(employeeid);
		
	Vector listreward = Reward.SearchByID(employeeid);	
%>
<div align="center">
<table width="1000" background="../images/bg.jpg" align="center">
<tr>
<td align="center" >
<table width="844" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="table1">
  <tr>
    <td width="120" valign="top" background="../images/in_left_bg.gif"><%@ include file="EmployeeLeft.jsp"%></td>
    <td width="660" align="center">
	<p align="center" class="title1">查看人员档案</p>
	<table width="640"  border="0" align="center" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <td width="150" height="33"><div align="right"> 员工编号:</div></td>
        <td width="180"><input name="employeeid" type="text"  class="data" id="employeeid" size="6" maxlength="6" value="<%=employee.getEmployeeID()%>" readonly="true">
      </td>
        <td width="78" height="33"><div align="right">姓名:</div></td>
        <td width="180"><input name="username" type="text"  class="data" id="username" size="8" maxlength="4" value="<%=employee.getUserName()%>" readonly="true">
  </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 性别: </div></td>
        <td>          
          <input name="sex" type="text"  class="data" id="sex" size="6" maxlength="6" value="<%=employee.getSex()%>" readonly="true">
          </td>
        <td width="78"><div align="right">所属部门:</div></td>
        <td>          <input name="branch" type="text"  class="data" id="branch" size="8" maxlength="4" value="<%=employee.getBranch()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 出生日期: </div></td>
        <td><input name="birthday" type="text"  class="data" id="birthday" size="10" maxlength="10" value="<%=employee.getBirthday()%>" readonly="true"></td>
        <td><div align="right">籍贯: </div></td>
        <td><input name="nativeplace" type="text"  class="data" id="nativeplace" size="10" maxlength="10" value="<%=employee.getNativePlace()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right">婚姻状况: </div></td>
        <td>      
		<input name="marriage" type="text"  class="data" id="marriage" size="10" maxlength="10" value="<%=employee.getMarriage()%>" readonly="true"></td>
        <td width="78"><div align="right">身份证号:</div></td>
        <td><input name="identityid" type="text"  class="data" id="identityid" size="18" maxlength="18" value="<%=employee.getIdentityID()%>" readonly="true">          
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 政治面貌: </div></td>
        <td height="33">
		<input name="politics" type="text"  class="data" id="politics" size="10" maxlength="10" value="<%=employee.getPolitics()%>" readonly="true"></td>
        <td><div align="right">民族: </div></td>
        <td><input name="folk" type="text"  class="data" id="folk" size="8" maxlength="4" value="<%=employee.getFolk()%>" readonly="true">
          </td>
      </tr>
      <tr>
        <td height="33"><div align="right">学历: </div></td>
        <td>
		<input name="education" type="text"  class="data" id="education" size="10" maxlength="10" value="<%=employee.getEducation()%>" readonly="true">      
		</td>
        <td width="78"><div align="right">专业:</div></td>
        <td><input name="department" type="text"  class="data" id="department" size="20" maxlength="20" value="<%=employee.getDepartment()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right">毕业日期:</div></td>
        <td><input name="graduatedate" type="text"  class="data" id="graduatedate" size="10" maxlength="10" value="<%=employee.getGraduateDate()%>" readonly="true">
      </td>
        <td><div align="right">毕业院校: </div></td>
        <td><input name="university" type="text"  class="data" id="university" size="30" maxlength="30" value="<%=employee.getUniversity()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right">公积金帐号:</div></td>
        <td><input name="accumulateid" type="text"  class="data" id="accumulateid" size="15" maxlength="15"  value="<%=employee.getAccumulateID()%>" readonly="true">          </td>
        <td width="78"><div align="right">行政级别:</div></td>
        <td>
		<input name="administrationlevel" type="text"  class="data" id="administrationlevel" size="10" maxlength="10" value="<%=employee.getAdministrationLevel()%>" readonly="true">
		</td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 职务:</div></td>
        <td>      
		<input name="duty" type="text"  class="data" id="duty" size="10" maxlength="10" value="<%=employee.getDuty()%>" readonly="true"></td>
        <td><div align="right">职称: </div></td>
        <td>
		<input name="position" type="text"  class="data" id="position" size="10" maxlength="10" value="<%=employee.getPosition()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 外语语种: </div></td>
        <td height="33">
		<input name="foreignlanguage" type="text"  class="data" id="foreignlanguage" size="10" maxlength="10" value="<%=employee.getForeignLanguage()%>" readonly="true">
      </td>
        <td width="78"><div align="right">外语水平:</div></td>
        <td>
		<input name="fllevel" type="text"  class="data" id="fllevel" size="10" maxlength="10" value="<%=employee.getFLLevel()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right">计算机水平: </div></td>
        <td height="33">      
		<input name="computerlevel" type="text"  class="data" id="computerlevel" size="10" maxlength="10" value="<%=employee.getComputerLevel()%>" readonly="true"></td>
        <td><div align="right">联系电话: </div></td>
        <td><input name="phone" type="text"  class="data" id="phone" size="13" maxlength="13" value="<%=employee.getPhone()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 手机号码: </div></td>
        <td><input name="mobilephone" type="text"  class="data" id="mobilephone" size="11" maxlength="11" value="<%=employee.getMobilePhone()%>" readonly="true">
        </td>
        <td width="78"><div align="right">家庭住址:</div></td>
        <td><input name="address" type="text"  class="data" id="address" size="30" maxlength="30" value="<%=employee.getAddress()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 在职情况: </div></td>
        <td>
		<input name="incumbency" type="text"  class="data" id="incumbency" size="10" maxlength="10" value="<%=employee.getIncumbency()%>" readonly="true"></td>
        <td><div align="right">用工形式: </div></td>
        <td>
		<input name="incumbencytype" type="text"  class="data" id="incumbencytype" size="10" maxlength="10" value="<%=employee.getIncumbencyType()%>" readonly="true"></td>
      </tr>
      <tr>
        <td height="33"><div align="right"> 个人简历: </div></td>
        <td colspan="3"><textarea name="resume" cols="60" rows="14" id="resume" readonly><%=employee.getResume()%></textarea></td>
        </tr>
      <tr>
        <td height="49" colspan="4"><div align="center">
          <input name="back" type="button" id="back" value="返回" onClick="javascript:history.back()">
        </div></td>
      </tr>
    </table>
    
	 <p align="center" class="title2">职务调动记录</p>
    
    <table width="630"  border="0" cellspacing="1" cellpadding="1" id="table3">
      <tr bgcolor="#E7E7E7">
        <td width="93"><div align="center">调动日期</div></td>
        <td width="123"><div align="center">调动前部门</div></td>
        <td width="86"><div align="center">调动后部门</div></td>
        <td width="70"><div align="center">调动前职务</div></td>
        <td width="93"><div align="center">调动后职务</div></td>
        <td width="69"><div align="center">经办人</div></td>
        <td width="74"><div align="center">备注</div></td>
      </tr>
      <%		
      for(int j=0;j<listtranslate.size();j++) 
	  {
			Translate  translate = (Translate)listtranslate.elementAt(j);  
%>
    <tr bgcolor="#E4F1F1">
        <td><div align="center"><%=DataConvert.ViewStr(translate.getTranslateDate())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getPriorBranch())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getNextBranch())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getPriorDuty())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getNextDuty())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getHandleName())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(translate.getRemark())%></div></td>
      </tr>
      <%
	}
%>
    </table>
     
    <p align="center" class="title2">奖惩评定记录</p>
    <table width="630"  border="0" cellspacing="1" cellpadding="1" id="table5">
      <tr bgcolor="#E7E7E7">
        <td width="59"><div align="center">职称</div></td>
        <td width="47"><div align="center">奖/惩</div></td>
        <td width="89"><div align="center">奖惩内容</div></td>
        <td width="59"><div align="center">奖惩原因</div></td>
        <td width="61"><div align="center">批准部门</div></td>
        <td width="46"><div align="center">批准人</div></td>
        <td width="60"><div align="center">开始日期</div></td>
        <td width="59"><div align="center">撤销日期</div></td>
        <td width="61"><div align="center">撤销原因</div></td>
        <td width="36"><div align="center">备注</div></td>
      </tr>
      <%		
      for(int i=0;i<listreward.size();i++) 
	  {
			Reward  reward = (Reward)listreward.elementAt(i);  
%>
    <tr bgcolor="#E4F1F1">
        <td><div align="center"><%=DataConvert.ViewStr(reward.getPosition())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getRewardPunish())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getRewardContent())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getReason())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getBranch())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getHandleName())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getStartDate())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getCancelDate())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getCancelReason())%></div></td>
        <td><div align="center"><%=DataConvert.ViewStr(reward.getRemark())%></div></td>
      </tr>
      <%
	}
%>
    </table>
	<p>　</p>
	<p>　</p></td>
	<td width="7" align="center" background="../images/Snap1.gif">　</td>
  </tr>
</table>
</td>
</tr>
</table>
</div>

<%@ include file="../incoming/Footer.jsp"%>
</body>
</html>
