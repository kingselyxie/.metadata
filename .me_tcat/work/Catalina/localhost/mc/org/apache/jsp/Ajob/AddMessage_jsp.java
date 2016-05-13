package org.apache.jsp.Ajob;

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

public final class AddMessage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(4);
    _jspx_dependants.add("/Ajob/../incoming/Common.jsp");
    _jspx_dependants.add("/Ajob/../Check.jsp");
    _jspx_dependants.add("/Ajob/../incoming/Header.jsp");
    _jspx_dependants.add("/Ajob/../incoming/Footer.jsp");
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>My JSP 'AddJob.jsp' starting page</title>   \r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/style.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/calendar-win2k-1.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar-en.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar-setup.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head> \r\n");
      out.write("<body>\r\n");
      out.write("  <div align=\"center\">\r\n");
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
      out.write("<table width=\"1000\" background=\"../images/bg.jpg\" align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\">\r\n");
      out.write("<form action=\"AddMessage2.jsp\" method=\"post\">\r\n");
      out.write("<table width=\"640\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"0\" >\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=\"2\" align=\"center\">Interview notice</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" width=\"100\">Title<br></td><td><input type=\"text\" name=\"title\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" width=\"100\">Time<br></td><td><input name=\"ftime\" type=\"text\"  class=\"data\" id=\"ftime\" value=\"");
      out.print(DataConvert.getStringDate());
      out.write("\" size=\"10\" maxlength=\"8\">\r\n");
      out.write("            <input name=\"startime\" type=\"button\" id=\"startime\" value=\"...\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" width=\"100\">Notice information<br></td><td><textarea name=\"resume\" cols=\"60\" rows=\"4\" id=\"resume\"></textarea></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" colspan=\"2\" ><input type=\"submit\" name=\"Submit\" value=\"Submit\">\r\n");
      out.write("          <input type=\"reset\" name=\"Submit2\" value=\"Cannel\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("</td></tr>\r\n");
      out.write("</table>\r\n");
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
      out.write("<script language=\"JavaScript\" type=\"text/JavaScript\">\r\n");
      out.write("\tCalendar.setup(\r\n");
      out.write("\t{\r\n");
      out.write("      inputField  : \"ftime\",         // ID of the input field\r\n");
      out.write("      ifFormat    : \"%Y-%m-%d\",    // the date format\r\n");
      out.write("      button      : \"startime\"       // ID of the button\r\n");
      out.write("    }\r\n");
      out.write("\t);\t\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("</div>\r\n");
      out.write("  </body>\r\n");
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
