package org.apache.jsp.HR;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.javatpoint.DB;
import java.sql.ResultSet;

public final class board_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"../css.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"navbar\">\n");
      out.write("            <span class=\"gradience\">HR-System</span>\n");
      out.write("            \n");
      out.write("            <ul class=\"list\"> \n");
      out.write("                <li><a href=\"index.jsp\">logout</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        ");

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            //out.print("<p><p/>"+email+password);
            DB conn =new DB();
            if(conn.Connection())
            {
                //out.print("<p>connected1<p/>");
            }
            String query_id="select HRMail and HRPassword from hr where HRMail='"+email+"' and HRPassword ='"+password+"'";
            
            conn.Make_Read_Query(query_id);
             ResultSet rs=conn.Make_Read_Query(query_id);
            if(rs.next())
            {
                //response.sendRedirect("board.jsp?value=Wrong email");
                
            }
            else
            {
                response.sendRedirect("HR_login.jsp?value=Wrong email");
            }
            
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div>\n");
      out.write("                <h1 style=\"color:#6fc1a5\">HR Dashboard</h1>\n");
      out.write("                <ul class=\"lists\">\n");
      out.write("                    <li><a href=\"exam_list.jsp\">List of Exams</a></li>\n");
      out.write("                    <li><a href=\"question_list.jsp\">List of Question </a></li>\n");
      out.write("                    <li><a href=\"answer_list.jsp\">List of Answers</a></li>\n");
      out.write("                    <li><a href=\"makeexam.html\">Make Exam</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            \n");
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
