package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class superAdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<html\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Login/Logout animation concept</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=yes\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet prefetch\" href=\"https://fonts.googleapis.com/css?family=Open+Sans\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"cont\">\n");
      out.write("            <div class=\"demo\">\n");
      out.write("                <div class=\"login\">\n");
      out.write("                    <div class=\"login__check\"></div>\n");
      out.write("                    <div class=\"login__form\">\n");
      out.write("                        <div class=\"login__row\">\n");
      out.write("                            <svg class=\"login__icon name svg-icon\" viewBox=\"0 0 20 20\">\n");
      out.write("                            <path d=\"M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8\"></path>\n");
      out.write("                            </svg>\n");
      out.write("                            <input type=\"text\" class=\"login__input name\" placeholder=\"Username\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"login__row\">\n");
      out.write("                            <svg class=\"login__icon pass svg-icon\" viewBox=\"0 0 20 20\">\n");
      out.write("                            <path d=\"M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0\"></path>\n");
      out.write("                            </svg>\n");
      out.write("                            <input type=\"password\" class=\"login__input pass\" placeholder=\"Password\">\n");
      out.write("                        </div>\n");
      out.write("                        <button type=\"button\" class=\"login__submit\">Sign in</button>\n");
      out.write("                        <p class=\"login__signup\">Don't have an account? &nbsp;<a>Sign up</a></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"app\">\n");
      out.write("                    <div class=\"app__top\">\n");
      out.write("                        <div class=\"app__menu-btn\">\n");
      out.write("                            <span></span>\n");
      out.write("                        </div>\n");
      out.write("                        <svg class=\"app__icon search svg-icon\" viewBox=\"0 0 20 20\">\n");
      out.write("                        <!-- yeap, its purely hardcoded numbers straight from the head :D (same for svg above) -->\n");
      out.write("                        <path d=\"M20,20 15.36,15.36 a9,9 0 0,1 -12.72,-12.72 a 9,9 0 0,1 12.72,12.72\"></path>\n");
      out.write("                        </svg>\n");
      out.write("                        <p class=\"app__hello\">Good Morning!</p>\n");
      out.write("                        <div class=\"app__user\">\n");
      out.write("                            <img src=\"//s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-512_5.jpg\" alt=\"\" class=\"app__user-photo\">\n");
      out.write("                            <span class=\"app__user-notif\">3</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"app__month\">\n");
      out.write("                            <span class=\"app__month-btn left\"></span>\n");
      out.write("                            <p class=\"app__month-name\">March</p>\n");
      out.write("                            <span class=\"app__month-btn right\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"app__bot\">\n");
      out.write("                        <div class=\"app__days\">\n");
      out.write("                            <div class=\"app__day weekday\">Sun</div>\n");
      out.write("                            <div class=\"app__day weekday\">Mon</div>\n");
      out.write("                            <div class=\"app__day weekday\">Tue</div>\n");
      out.write("                            <div class=\"app__day weekday\">Wed</div>\n");
      out.write("                            <div class=\"app__day weekday\">Thu</div>\n");
      out.write("                            <div class=\"app__day weekday\">Fri</div>\n");
      out.write("                            <div class=\"app__day weekday\">Sad</div>\n");
      out.write("                            <div class=\"app__day date\">8</div>\n");
      out.write("                            <div class=\"app__day date\">9</div>\n");
      out.write("                            <div class=\"app__day date\">10</div>\n");
      out.write("                            <div class=\"app__day date\">11</div>\n");
      out.write("                            <div class=\"app__day date\">12</div>\n");
      out.write("                            <div class=\"app__day date\">13</div>\n");
      out.write("                            <div class=\"app__day date\">14</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"app__meetings\">\n");
      out.write("                            <div class=\"app__meeting\">\n");
      out.write("                                <img src=\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-80_5.jpg\" alt=\"\" class=\"app__meeting-photo\">\n");
      out.write("                                <p class=\"app__meeting-name\">Feed the cat</p>\n");
      out.write("                                <p class=\"app__meeting-info\">\n");
      out.write("                                    <span class=\"app__meeting-time\">8 - 10am</span>\n");
      out.write("                                    <span class=\"app__meeting-place\">Real-life</span>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"app__meeting\">\n");
      out.write("                                <img src=\"//s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-512_5.jpg\" alt=\"\" class=\"app__meeting-photo\">\n");
      out.write("                                <p class=\"app__meeting-name\">Feed the cat!</p>\n");
      out.write("                                <p class=\"app__meeting-info\">\n");
      out.write("                                    <span class=\"app__meeting-time\">1 - 3pm</span>\n");
      out.write("                                    <span class=\"app__meeting-place\">Real-life</span>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"app__meeting\">\n");
      out.write("                                <img src=\"//s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-512_5.jpg\" alt=\"\" class=\"app__meeting-photo\">\n");
      out.write("                                <p class=\"app__meeting-name\">FEED THIS CAT ALREADY!!!</p>\n");
      out.write("                                <p class=\"app__meeting-info\">\n");
      out.write("                                    <span class=\"app__meeting-time\">This button is just for demo &gt;</span>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"app__logout\">\n");
      out.write("                        <svg class=\"app__logout-icon svg-icon\" viewBox=\"0 0 20 20\">\n");
      out.write("                        <path d=\"M6,3 a8,8 0 1,0 8,0 M10,0 10,12\"></path>\n");
      out.write("                        </svg>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"js/index.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
