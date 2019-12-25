package org.apache.jsp.HR;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HR_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("         <link href=\"../css.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function checkForm(form)\n");
      out.write("{\n");
      out.write("    if (form.id.value == \"\") {\n");
      out.write("        document.getElementById(\"lab\").innerHTML=\"Error: UserID cannot be blank!\";\n");
      out.write("        document.getElementById(\"labid\").innerHTML=\"*\";\n");
      out.write("        document.getElementById(\"labpass\").innerHTML=\"\";\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    else if (form.password.value == \"\") {\n");
      out.write("        document.getElementById(\"lab\").innerHTML=\"Error: UserPassword cannot be blank!\";\n");
      out.write("        document.getElementById(\"labid\").innerHTML=\"\";\n");
      out.write("        document.getElementById(\"labpass\").innerHTML=\"*\";\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    else return true;\n");
      out.write("}\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"navbar\">\n");
      out.write("            <span class=\"gradience\">HR-System</span>\n");
      out.write("            \n");
      out.write("            <ul class=\"list\"> \n");
      out.write("                <li><a href=\"index.jsp\">logout</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h1 class=\"header\" style=\"padding-left: 80px;\">HR PAGE</h1>\n");
      out.write("            \n");
      out.write("            <form action=\"board.jsp\" method=\"post\" onsubmit=\"return checkForm(this)\" >\n");
      out.write("            <h1 class=\"h1\">Log in</h1>\n");
      out.write("            <table class=\"table\">\n");
      out.write("            <tr>\n");
      out.write("            <label id=\"lab\">\n");
      out.write("            </label>\n");
      out.write("            <tr><td><label id=\"labid\">\n");
      out.write("                ");

                    if(request.getParameter("value")!=null)
                   out.print( request.getParameter("value") );
                
      out.write("\n");
      out.write("                    </label>\n");
      out.write("            <input type=\"text\" name=\"email\" placeholder=\"Enter-Email\" /></td></tr>\n");
      out.write("            \n");
      out.write("            <tr><td><label id=\"labpass\"></label><input type=\"password\" name=\"password\" placeholder=\"Enter-Password\" /></td></tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td><input class=\"button\" type=\"submit\"  value=\"Log in\"/></td> \n");
      out.write("            </tr>\n");
      out.write("        </form>\n");
      out.write("            <tr>\n");
      out.write("                <td><a class=\"signup\" href=\"signup.jsp\">Sign up</a></td> \n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        <footer class=\"footer\">\n");
      out.write("            <p style=\"text-align: center; padding: 20px;color: white\">@copy writer saved</p>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
