/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.8.v20171121
 * Generated at: 2018-12-25 10:14:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class _9multi9_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>9*9乘法表</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div>\r\n");
      out.write("        <table>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>1*1=1</td>\r\n");
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                <td>2*1=2</td>\r\n");
      out.write("                <td>2*2=4</td>\r\n");
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>3*1=3</td>\r\n");
      out.write("                <td>3*2=6</td>\r\n");
      out.write("                <td>3*3=9</td>\r\n");
      out.write("\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>4*1=4</td>\r\n");
      out.write("                <td>4*2=8</td>\r\n");
      out.write("                <td>4*3=12</td>\r\n");
      out.write("                <td>4*4=16</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>5*1=5</td>\r\n");
      out.write("                <td>5*2=10</td>\r\n");
      out.write("                <td>5*3=15</td>\r\n");
      out.write("                <td>5*4=20</td>\r\n");
      out.write("                <td>5*5=25</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>6*1=6</td>\r\n");
      out.write("                <td>6*2=12</td>\r\n");
      out.write("                <td>6*3=18</td>\r\n");
      out.write("                <td>6*4=24</td>\r\n");
      out.write("                <td>6*5=30</td>\r\n");
      out.write("                <td>6*6=36</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>7*1=7</td>\r\n");
      out.write("                <td>7*2=14</td>\r\n");
      out.write("                <td>7*3=21</td>\r\n");
      out.write("                <td>7*4=28</td>\r\n");
      out.write("                <td>7*5=35</td>\r\n");
      out.write("                <td>7*6=42</td>\r\n");
      out.write("                <td>7*7=49</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>8*1=8</td>\r\n");
      out.write("                <td>8*2=16</td>\r\n");
      out.write("                <td>8*3=24</td>\r\n");
      out.write("                <td>8*4=32</td>\r\n");
      out.write("                <td>8*5=40</td>\r\n");
      out.write("                <td>8*6=48</td>\r\n");
      out.write("                <td>8*7=56</td>\r\n");
      out.write("                <td>8*8=64</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>9*1=9</td>\r\n");
      out.write("                <td>9*2=18</td>\r\n");
      out.write("                <td>9*3=27</td>\r\n");
      out.write("                <td>9*4=36</td>\r\n");
      out.write("                <td>9*5=45</td>\r\n");
      out.write("                <td>9*6=54</td>\r\n");
      out.write("                <td>9*7=63</td>\r\n");
      out.write("                <td>9*8=72</td>\r\n");
      out.write("                <td>9*9=81</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("    </div>\r\n");
      out.write("    <input type=\"text\" x-webkit-speech onwebkitspeechchange=\"$(this).cloest('form').submit()\"/>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}