package org.apache.jsp.psw;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.goldsoft.util.DataConvert;
import com.goldsoft.util.DBConnect;
import com.goldsoft.bean.*;
import com.goldsoft.util.GetAutoNumber;
import java.util.*;
import java.util.*;

public final class ModifyPasswordStep1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(4);
    _jspx_dependants.add("/psw/../incoming/Common.jsp");
    _jspx_dependants.add("/psw/../CheckIndex.jsp");
    _jspx_dependants.add("/psw/../incoming/Header.jsp");
    _jspx_dependants.add("/psw/../incoming/Footer.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

String title = "Manage System";
//String placebgcolor = "#EEEEEE";
//String tablebgcolor = "#336699";
//String trbgcolor = "#336699";
//String tdbgcolor = "#FFFFFF";
//String tablebgcolor2 = "#6699CC";
//String trbgcolor2 = "#EEEEEE";
//String trbgcolor3 = "#FFFFFF";
//String tdbgcolor2 = "#6699CC";
//String tdbgcolor3 = "#DDDDDD";
//String tdbgcolor4 = "#EEEEEE";
//String tablewidth = "96%";
//String tablewidth2 = "94%";

      out.write('\r');
      out.write('\n');

  if((String)session.getValue("IsLogin")!="true")
   {
     String loginmsg="loginfirst";
     response.sendRedirect("login.jsp?loginmsg="+loginmsg);
   }

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
      out.write("<META HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">\r\n");
      out.write("<META HTTP-EQUIV=\"Cache-Control\" CONTENT=\"no-cache\">\r\n");
      out.write("<title>");
      out.print(title);
      out.write("</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/style.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/calendar-win2k-1.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar-en.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar-setup.js\"></script>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("function check_input(theForm)\r\n");
      out.write("{\r\n");
      out.write("  if (theForm.oldpassword.value == \"\")\r\n");
      out.write("  {\r\n");
      out.write("    alert(\"请输入旧密码.\");\r\n");
      out.write("    theForm.oldpassword.focus();\r\n");
      out.write("    return (false);\r\n");
      out.write("  }\r\n");
      out.write("  if (theForm.newpassword.value != theForm.confirmpassword.value)\r\n");
      out.write("  {\r\n");
      out.write("    alert(\"两次输入密码不一致.\");\r\n");
      out.write("    theForm.confirmpassword.focus();\r\n");
      out.write("    return (false);\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<body topmargin=\"0\">\r\n");
      out.write("<table width=\"1000\" background=\"../images/bg.jpg\" align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\">\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("\t<TABLE border=0 cellPadding=0 width=844 style=\"border-collapse: collapse\" >\r\n");
      out.write("\t\t<!-- MSTableType=\"nolayout\" -->\r\n");
      out.write("\t\t<TR bgcolor=\"#FFFFFF\">\r\n");
      out.write("\t\t\t<TD width=\"98\" align=center>\r\n");
      out.write("\t\t\t<br></TD>\r\n");
      out.write("\t\t</TR>\r\n");
      out.write("\t</TABLE></div>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<table width=\"844\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" background=\"../images/neaselogoback.gif\" height=\"35\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"130\" height=\"35\" class=\"td3\">\r\n");
      out.write("\t<img src=\"../images/line2.gif\" width=\"130\" height=\"23\"></td>\r\n");
      out.write("    <td width=\"90\"><div align=\"center\"><a href=\"../index.jsp\">Home</a></div></td>\r\n");
      out.write("      <td width=\"100\"><div align=\"center\"><a href=\"../psw/ModifyPasswordStep1.jsp\">Modify Password</a></div></td>\r\n");
      out.write("          <td width=\"90\"><div align=\"center\"><a href=\"../level/ListLevel.jsp\">Modify level</a></div></td>\r\n");
      out.write("  \r\n");
      out.write("    <td width=\"100\"><div align=\"center\"><a href=\"../employee/Employee.jsp\">Vip Information</a></div></td>\r\n");
      out.write("   \r\n");
      out.write("    <td width=\"100\"><div align=\"center\"><a href=\"../Ajob/Job.jsp\">Recruitment Management System</a></div></td>\r\n");
      out.write("     <td width=\"100\"><div align=\"center\"><a href=\"../Logout.jsp\">Exit</a></div></td>\r\n");
      out.write("    <td width=\"130\"><div align=\"center\">\r\n");
      out.write("\t\t<img src=\"../images/line2.gif\" width=\"130\" height=\"24\"></div></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write(" </td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<table width=\"1000\" background=\"../images/bg.jpg\" align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" >\r\n");
      out.write("<table width=\"844\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n");
      out.write("  <tr><td width=\"7\" align=\"center\" background=\"../images/Snap1.gif\">　</td>\r\n");
      out.write("    <td align=\"center\" valign=\"top\">\t\r\n");
      out.write("    \t<form name=\"form1\" method=\"post\" action=\"ModifyPasswordStep2.jsp\" onsubmit=\"return check_input(this)\">\r\n");
      out.write("      <br>\r\n");
      out.write("      <p class=\"title1\">Modify Password</p>\r\n");
      out.write("      <table width=\"389\" height=\"177\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"0\" bordercolor=\"#CCCCCC\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"135\" height=\"29\"><div align=\"right\">UserName: </div></td>\r\n");
      out.write("          <td width=\"236\">");
String username = (String)session.getValue("UserName");out.println(username);
      out.write("</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"29\"><div align=\"right\">Old password: \r\n");
      out.write("            </div>\r\n");
      out.write("            <div align=\"right\"></div></td>\r\n");
      out.write("          <td height=\"29\"><input name=\"oldpassword\" type=\"password\"  class=\"data\" id=\"oldpassword2\" size=\"25\" maxlength=\"16\" ></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"29\"><div align=\"right\">New Password: \r\n");
      out.write("            </div>\r\n");
      out.write("            <div align=\"right\"></div></td>\r\n");
      out.write("          <td height=\"29\"><input name=\"newpassword\" type=\"password\"  class=\"data\" id=\"newpassword2\" size=\"25\" maxlength=\"16\" ></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"44\"><div align=\"right\">New password2: \r\n");
      out.write("            </div></td>\r\n");
      out.write("          <td height=\"44\"><input name=\"confirmpassword\" type=\"password\"  class=\"data\" id=\"confirmpassword2\" size=\"25\" maxlength=\"16\" ></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"44\" colspan=\"2\"><div align=\"center\">\r\n");
      out.write("            <input type=\"submit\" name=\"Submit\" value=\"Modify\">\r\n");
      out.write("            <input type=\"reset\" name=\"Submit2\" value=\"Cancel\">\r\n");
      out.write("</div></td>\r\n");
      out.write("\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("    </form></td>\r\n");
      out.write("    <td width=\"7\" align=\"center\" background=\"../images/Snap1.gif\">　</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"1000\" background=\"../images/bg.jpg\" align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\">\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("\r\n");
      out.write("<table width=\"844\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"23\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"831\" height=\"23\" background=\"../images/bot1.GIF\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<table width=\"844\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"176\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"197\" height=\"48\" background=\"../images/bot3.GIF\"></td>\r\n");
      out.write("    <td width=\"380\" background=\"../images/bot3.GIF\"><div align=\"center\">\r\n");
      out.write("        <p style=\"margin-top: 0; margin-bottom: 0\"><br></p>\r\n");
      out.write("      </div></td>\r\n");
      out.write("    <td width=\"251\" background=\"../images/bot3.GIF\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("    <td width=\"780\" height=\"128\" background=\"../images/footer.jpg\" colspan=\"3\" align=\"center\" valign=\"top\"><br></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table></div>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
