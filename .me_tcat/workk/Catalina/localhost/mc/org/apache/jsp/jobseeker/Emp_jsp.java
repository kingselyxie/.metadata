package org.apache.jsp.jobseeker;

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

public final class Emp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(5);
    _jspx_dependants.add("/jobseeker/../incoming/Common.jsp");
    _jspx_dependants.add("/jobseeker/../Check.jsp");
    _jspx_dependants.add("/jobseeker/Header.jsp");
    _jspx_dependants.add("/jobseeker/EmployeeLeft.jsp");
    _jspx_dependants.add("/jobseeker/Footer.jsp");
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
      out.write('\r');
      out.write('\n');

String UserName = (String)session.getValue("UserName");
 
      out.write("\r\n");
      out.write("<html>\r\n");
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
      out.write("    <td width=\"228\" height=\"35\" class=\"td3\">\r\n");
      out.write("\t<img src=\"../images/line2.gif\" width=\"223\" height=\"23\"></td>\r\n");
      out.write("    <td width=\"90\"><div align=\"center\"><a href=\"ModifyPasswordStep1.jsp\">Modify Password</a></div></td>\r\n");
      out.write("    <td width=\"90\"><div align=\"center\"><a href=\"Emp.jsp\">Personal Information</a></div></td>\r\n");
      out.write("    <td width=\"90\"><div align=\"center\"><a href=\"AddJob.jsp\">Job Position</a></div></td>\r\n");
      out.write("    <td width=\"90\"><div align=\"center\"><a href=\"MInvite.jsp\">Notice</a></div></td>\r\n");
      out.write("    <td width=\"90\"><div align=\"center\"><a href=\"../Logout.jsp\">Exit</a></div></td>\r\n");
      out.write("    <td>\r\n");
      out.write("    <div align=\"center\">\r\n");
      out.write("\t\t<img src=\"../images/line2.gif\" width=\"195\" height=\"24\"></div></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
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
      out.write("\t\t\t<img border=\"0\" src=\"../images/flowh4.gif\" width=\"1\" height=\"30\"><img border=\"0\" src=\"../images/flowh3.gif\" width=\"5\" height=\"30\"></div></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgColor=#99cdfd><div align=\"center\"></div></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\"bgColor=#99cdfd></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"25\" width=\"4\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("          <td height=\"25\" width=\"175\" colspan=\"3\" background=\"../images/in_left_bg1.gif\"><div align=\"center\">\r\n");
      out.write("\t\t\t<a href=\"AddEmployeeStep1.jsp\">Add Information</a></div></td>\r\n");
      out.write("          <td height=\"25\" width=\"5\" bgcolor=\"#99CDFD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"22\" width=\"4\" bgcolor=\"#99CDFD\"><div align=\"center\"></div></td>\r\n");
      out.write("          <td height=\"22\" width=\"175\" colspan=\"3\" align=\"center\" background=\"../images/in_left_bg1.gif\">\r\n");
      out.write("\t\t\t<a href=\"ViewEmployeeStep1.jsp\">View Information</a></td>\r\n");
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
      out.write("    <td width=\"660\" align=\"center\"><p><font class=\"title2\">Welcome to Swimming pool reservation system</font></p>\r\n");
      out.write("      <p><img src=\"../images/welcome.gif\" width=\"274\" height=\"247\"></p>\r\n");
      out.write("    <p>　</p></td>\r\n");
      out.write("<td width=\"7\" align=\"center\" background=\"../images/Snap1.gif\">　</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<body>\r\n");
      out.write("<div align=\"center\">\r\n");
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
      out.write("          <p style=\"margin-top: 0; margin-bottom: 0\">Welcome to Swimming pool reservation system</p>\r\n");
      out.write("          <p style=\"margin-top: 0; margin-bottom: 0\">Contact us at 6739 1234 </p>\r\n");
      out.write("          <p style=\"margin-top: 0; margin-bottom: 0\">Email : abc@bjut.edu.cn </p>\r\n");
      out.write("      </div></td>\r\n");
      out.write("    <td width=\"251\" background=\"../images/bot3.GIF\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("    <td width=\"780\" height=\"128\" background=\"../images/footer.jpg\" colspan=\"3\" align=\"center\" valign=\"top\"><br></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table></div>\r\n");
      out.write("</body></html>\r\n");
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
