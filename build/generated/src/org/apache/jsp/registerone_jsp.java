package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registerone_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!-- Add icon library -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<style>\n");
      out.write("body {font-family: Arial, Helvetica, sans-serif;}\n");
      out.write("* {box-sizing: border-box;}\n");
      out.write("\n");
      out.write(".input-container {\n");
      out.write("    display: -ms-flexbox; /* IE10 */\n");
      out.write("    display: flex;\n");
      out.write("    width: 100%;\n");
      out.write("    margin-bottom: 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon {\n");
      out.write("    padding: 10px;\n");
      out.write("    background: dodgerblue;\n");
      out.write("    color: white;\n");
      out.write("    min-width: 50px;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input-field {\n");
      out.write("    width: 100%;\n");
      out.write("    padding: 10px;\n");
      out.write("    outline: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input-field:focus {\n");
      out.write("    border: 2px solid dodgerblue;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Set a style for the submit button */\n");
      out.write(".btn {\n");
      out.write("    background-color: dodgerblue;\n");
      out.write("    color: white;\n");
      out.write("    padding: 15px 20px;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("    width: 100%;\n");
      out.write("    opacity: 0.9;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn:hover {\n");
      out.write("    opacity: 1;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<form action=\"/action_page.php\" style=\"max-width:500px;margin:auto\">\n");
      out.write("  <h2>Register Form</h2>\n");
      out.write("  <div class=\"input-container\">\n");
      out.write("    <i class=\"fa fa-user icon\"></i>\n");
      out.write("    <input class=\"input-field\" type=\"text\" placeholder=\"Username\" name=\"usrnm\">\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"input-container\">\n");
      out.write("    <i class=\"fa fa-envelope icon\"></i>\n");
      out.write("    <input class=\"input-field\" type=\"text\" placeholder=\"Email\" name=\"email\">\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"input-container\">\n");
      out.write("    <i class=\"fa fa-key icon\"></i>\n");
      out.write("    <input class=\"input-field\" type=\"password\" placeholder=\"Password\" name=\"psw\">\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <button type=\"submit\" class=\"btn\">Register</button>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
