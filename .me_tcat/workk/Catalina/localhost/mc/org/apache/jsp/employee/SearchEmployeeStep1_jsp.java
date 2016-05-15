package org.apache.jsp.employee;

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
import java.util.*;

public final class SearchEmployeeStep1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(5);
    _jspx_dependants.add("/employee/../incoming/Common.jsp");
    _jspx_dependants.add("/employee/../Check.jsp");
    _jspx_dependants.add("/employee/../incoming/Header.jsp");
    _jspx_dependants.add("/employee/EmployeeLeft.jsp");
    _jspx_dependants.add("/employee/../incoming/Footer.jsp");
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
      response.setContentType("text/html;charset=UTF-8");
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
     response.sendRedirect("../login.jsp?loginmsg="+loginmsg);
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
      out.write("<table width=\"844\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"120\" valign=\"top\" background=\"../images/in_left_bg.gif\">");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<table width=\"185\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"left\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"187\" colspan=\"5\"><div align=\"center\">\r\n");
      out.write("\t\t\tVIP Information<br></div></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgColor=#99cdfd><div align=\"center\"></div></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\"bgColor=#99cdfd></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"><div align=\"center\">\r\n");
      out.write("\t\t\t<a href=\"AddEmployeeStep1.jsp\">Add Vip Information</a></div></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"><div align=\"center\">\r\n");
      out.write("\t\t\t<a href=\"ManageEmployee.jsp\">Manage Vip Information</a></div></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"22\" width=\"4\" bgcolor=\"#99CDFD\"><div align=\"center\"></div></td>\r\n");
      out.write("          <td height=\"22\" width=\"175\" colspan=\"3\" align=\"center\" background=\"../images/in_left_bg1.gif\">\r\n");
      out.write("\t\t\t<a href=\"SearchEmployeeStep1.jsp\">Search Vip Information</a></td>\r\n");
      out.write("          <td height=\"22\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" align=\"center\" background=\"../images/in_left_bg1.gif\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"4\" bgcolor=\"#99CDFD\">\r\n");
      out.write("\t\t\t<p align=\"center\"></td>\r\n");
      out.write("          <td width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("          <td width=\"5\" bgcolor=\"#99CDFD\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"22\" width=\"4\" bgcolor=\"#99CDFD\"><br><br></td>\r\n");
      out.write("          <td height=\"22\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"></td>\r\n");
      out.write("          <td height=\"22\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\" align=\"left\" valign=\"bottom\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"78\" align=\"left\" valign=\"bottom\" background=\"../images/in_left_bg1.gif\">\r\n");
      out.write("\t\t\t<img border=\"0\" src=\"../images/flowt1.gif\" width=\"6\" height=\"5\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"33\" align=\"right\" valign=\"bottom\" background=\"../images/in_left_bg1.gif\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"62\" align=\"right\" valign=\"bottom\" background=\"../images/in_left_bg1.gif\">\r\n");
      out.write("\t\t\t<img border=\"0\" src=\"../images/flowt2.gif\" width=\"6\" height=\"5\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\" align=\"right\" valign=\"bottom\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\" height=\"5\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" height=\"43\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr height=\"25\">\r\n");
      out.write("          <td align=\"center\" width=\"187\" colspan=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("</td>\r\n");
      out.write("    <td width=\"660\" align=\"center\">\r\n");
      out.write("\t<p align=\"center\" class=\"title1\">SearchVip Information<br></p>\r\n");
      out.write("\t <form name=\"form1\" method=\"post\" action=\"SearchEmployeeStep2.jsp\">\r\n");
      out.write("\t<table width=\"640\" height=\"282\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"0\" bordercolor=\"#CCCCCC\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"113\" height=\"33\"><div align=\"right\"> VipID:</div></td>\r\n");
      out.write("        <td width=\"164\"><input name=\"employeeid\" type=\"text\"  class=\"data\" id=\"employeeid\" size=\"6\" maxlength=\"6\" onkeyup=\"value=value.replace(/[^\\d]/g,'')\">      </td>\r\n");
      out.write("        <td width=\"98\" height=\"33\"><div align=\"right\">Name:</div></td>\r\n");
      out.write("        <td width=\"231\"><input name=\"username\" type=\"text\"  class=\"data\" id=\"username\" size=\"8\" maxlength=\"20\" >\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"33\"><div align=\"right\"> Sex: </div></td>\r\n");
      out.write("        <td><select name=\"sex\" id=\"sex\">\r\n");
      out.write("            <option value=\"\" selected>Both</option>\r\n");
      out.write("            <option value=\"男\">M</option>\r\n");
      out.write("            <option value=\"女\">F</option>\r\n");
      out.write("          </select>\r\n");
      out.write("        </td>\r\n");
      out.write("        <td><div align=\"right\">Place:</div></td>\r\n");
      out.write("        <td><select name=\"branch\" id=\"branch\">\r\n");
      out.write("            <option value=\"\" selected>All</option>\r\n");
      out.write("            <option value=\"总经理室\">Chaoyang</option>\r\n");
      out.write("          <option value=\"副总经理室\">haidian</option>\r\n");
      out.write("          <option value=\"经理室\">Sydney</option>\r\n");
      out.write("     >\r\n");
      out.write("          </select>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><div align=\"right\">Native: </div></td>\r\n");
      out.write("        <td><input name=\"nativeplace\" type=\"text\"  class=\"data\" id=\"nativeplace\" size=\"10\" maxlength=\"10\" >\r\n");
      out.write("        </td>\r\n");
      out.write("        <td height=\"33\"><div align=\"right\">Married: </div></td>\r\n");
      out.write("        <td><select name=\"marriage\" id=\"marriage\">\r\n");
      out.write("            <option value=\"\" selected>Both</option>\r\n");
      out.write("            <option value=\"未婚\">No</option>\r\n");
      out.write("            <option value=\"已婚\">Yes</option>\r\n");
      out.write("            \r\n");
      out.write("          </select>\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"49\" colspan=\"4\"><div align=\"center\">\r\n");
      out.write("          <input type=\"submit\" name=\"Submit\" value=\"Submit\">\r\n");
      out.write("          <input type=\"reset\" name=\"Submit2\" value=\"Cancel\">\r\n");
      out.write("        </div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\t\r\n");
      out.write("\t</form>    \r\n");
      out.write("    </td>\r\n");
      out.write("    <td width=\"7\" align=\"center\" background=\"../images/Snap1.gif\">　</td>\r\n");
      out.write("  </tr>\r\n");
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
