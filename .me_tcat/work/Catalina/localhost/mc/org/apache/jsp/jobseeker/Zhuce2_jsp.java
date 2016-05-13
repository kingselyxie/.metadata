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

public final class Zhuce2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/jobseeker/../incoming/Common.jsp");
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

	String IsSucceed = "";
	String username = new String(request.getParameter("username"));

      out.write('\r');
      out.write('\n');
try{	
	String password = new String(request.getParameter("password"));
    String question=new String(request.getParameter("question"));
    String answer=new String(request.getParameter("answer"));
	if(User.IsExist(username))
		{
			
      out.write("\r\n");
      out.write("\t\t\t<script>\r\n");
      out.write("\t\t\talert(\"The username has been registed,please regist again！\");\r\n");
      out.write("\t\t\twindow.history.back();\r\n");
      out.write("\t\t\t</script>\r\n");
      out.write("\t");
	} 
	else
		{
			IsSucceed =User.Add(username,password,question,answer);
		}
	}
	catch(Exception e){
		out.println("error:"+e.getMessage());
	}

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Swimming pool reservation system </title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/style.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/calendar-win2k-1.css\" type=\"text/css\" media=\"screen\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar-en.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/calendar-setup.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<table align=\"center\" width=\"800\" height=\"600\" background=\"../images/zhuce.jpg\">\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("<table align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td><a class=\"title2\"> \r\n");
      out.write("      ");

	if(IsSucceed.equals("1"))
		{
		out.println("Vip registion is successful!");
		
      out.write("\r\n");
      out.write("\t\tPlease <a href=\"../login.jsp\">Login</a>!\r\n");
      out.write("\t\t");
 }
		
	else
	{
		out.println("Vip registion is not successful!");	
  
      out.write("\r\n");
      out.write("        <br>\r\n");
      out.write("        ");
		
		out.println("Error : "+IsSucceed);
		
      out.write("\r\n");
      out.write("\t\tPlease <a href=\"zhuce1.jsp\">regist</a>!\r\n");
      out.write("\t\t");
	
	}	
  
      out.write("\r\n");
      out.write("  </a>\r\n");
      out.write("  <img src=\"../images/success.jpg\" width=\"132\" height=\"148\"> \r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
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
