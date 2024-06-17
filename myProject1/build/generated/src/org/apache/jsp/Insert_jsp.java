package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;

public final class Insert_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("                <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("          <link href=\"style.css\"  rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("        <body class=\"body\">\n");
      out.write("        <div>TODO write content</div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <header>Registration</header>\n");
      out.write("        <form action=\"Insert.jsp\" class=\"form\">\n");
      out.write("            <div class=\"personal-details\">\n");
      out.write("                <span class=\"title\">Personal Information</span>\n");
      out.write("                \n");
      out.write("                <div class=\"field\">\n");
      out.write("                    <div class=\"input-field\">\n");
      out.write("                        <label>Roll No</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Roll No\" required name=\"t1\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-field\">\n");
      out.write("                        <label>Name</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Name\" required name=\"t2\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-field\">\n");
      out.write("                        <label>Address</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Address\" required name=\"t3\">\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"input-field\">\n");
      out.write("                        <label> Phone Number</label>\n");
      out.write("                        <input type=\"number\" placeholder=\"Enter Your phone No\" required name=\"t4\">\n");
      out.write("                    </div><div class=\"input-field\">\n");
      out.write("                        <label>Qualification</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Qualification\" required name=\"t5\">\n");
      out.write("                    </div><div class=\"input-field\">\n");
      out.write("                        <label>Division</label>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter Your Division\" required name=\"t6\">\n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"submit\" name=\"SAVE\" value=\"SAVE\" class=\"button\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <h1>Insert Data</h1>\n");
      out.write("         ");

             int rollno=Integer.parseInt(request.getParameter("t1"));
            String name=request.getParameter("t2");
                String address=request.getParameter("t3");
            int phone=Integer.parseInt(request.getParameter("t4"));
            String qual=request.getParameter("t5");
            String div= request.getParameter("t6");
             
          try{
              
              Class.forName("org.postgresql.Driver");
              Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Gitesh@2002");
               Statement stmt= conn.createStatement();
                String query="insert into student values('"+rollno+"','"+name+"','"+address+"','"+phone+"','"+qual+"','"+div+"')";
                int result=stmt.executeUpdate(query);
                if(result==1){
                    out.print("Record inserted successfully.....");
                }
                else{
                    out.print("Record  not inserted successfully.....");
                }
             }catch(Exception e)
             {
                 out.print(e);
             }
          
      out.write("\n");
      out.write("        <body\n");
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
