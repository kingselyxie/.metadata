package org.apache.jsp;

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

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/incoming/Common.jsp");
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

request.getSession(true);
session.putValue("IsLogin","false");
 String loginmsg = request.getParameter("loginmsg");


      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Swimming pool reservation system </title>\r\n");
      out.write("<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=gb2312\">\r\n");
      out.write("\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("function check_input() \r\n");
      out.write("{\r\n");
      out.write("\tif( form.username.value.length<1 || form.username.value.length>16 ) \r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please input your username.\")\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif( form.password.value.length<1 || form.password.value.length>16 ) \r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please input your password.\")\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("<table align=\"center\" width=\"800\" height=\"600\" background=\"images/zhuce.jpg\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("<p>　</p>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("　<p>　</p>\r\n");
      out.write("<p>　</p>\r\n");
      out.write(" <form action=\"ChkLogin.jsp\" method=\"post\" name=\"form\" onSubmit=\"return check_input()\">\r\n");
      out.write("<table width=\"320\" height=\"197\" border=\"0\" cellpadding=\"2\"  >\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"306\" height=\"189\"><div align=\"center\">\r\n");
      out.write("      <table width=\"102%\" border=0 cellpadding=0 cellspacing=0 class=bg>\r\n");
      out.write("       \r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"313\" height=40 align=left><div align=\"center\"><b><a class=\"title1\">\r\n");
      out.write("\t\t\t\t<font size=\"6\" face=\"方正舒体\" color=\"#000000\">Swimming pool Management system</font></a></b></div>\r\n");
      out.write("\t\t\t<div align=\"center\">　</div>\r\n");
      out.write("\t\t\t<div align=\"center\">　</div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td align=center valign=top>\r\n");
      out.write("              <table width=283 border=0 cellspacing=0 cellpadding=0>\r\n");
      out.write("                <input type=hidden name=url value=\"\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"98\" height=29><div align=\"right\"><font size=\"4\">UserName :</font> </div></td>\r\n");
      out.write("                  <td width=\"213\" height=29 align=\"left\">\r\n");
      out.write("\t\t\t\t\t<input name=username class=data size=24 maxlength=16 value=\"\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td height=29> <div align=\"right\"><font size=\"4\">Password :</font> </div></td>\r\n");
      out.write("                  <td height=29 align=\"left\">\r\n");
      out.write("\t\t\t\t\t<input name=password type=password class=data size=26 maxlength=16></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td height=\"41\" colspan=\"2\" align=right><div align=\"center\">\r\n");
      out.write("                        <font color=fe8c14>&nbsp;\r\n");
      out.write("                        <input name=\"submit\" type=submit value=\"Submit\" class=button>\r\n");
      out.write("                        <input name=reset type=reset class=button id=\"reset2\"  value=\"Cancel\">&nbsp;\r\n");
      out.write("                        <a href=\"jobseeker/Zhuce1.jsp\">Register</a>\r\n");
      out.write("                                            </font></div>\r\n");
      out.write("                    <div align=\"center\">　</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("            </table></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td align=\"center\" >\r\n");
      out.write("              <table width=\"75%\" height=\"36%\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td height=\"42\"> <font color=\"#CC0000\">\r\n");
      out.write("                    ");

 					if(loginmsg != null && loginmsg.equals("userwrong"))
 					 	out.print("Username or password is not right.");
					 else if(loginmsg != null && loginmsg.equals("loginfirst"))
 					 	out.print("Please login at first.");
 					 else if(loginmsg != null && loginmsg.equals("logout"))
 					 	out.print("You have to exit.");	
					
      out.write("\r\n");
      out.write("                  </font></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("       \r\n");
      out.write("      </table>\r\n");
      out.write("    </div></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("   </form>\r\n");
      out.write("</div>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
