/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-21 08:23:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pension.dto.TourDto;
import pension.dao.Dao;
import pension.dto.BoardDto;
import pension.dao.BoardDao;
import java.util.ArrayList;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/main/../bottom.jsp", Long.valueOf(1609392720441L));
    _jspx_dependants.put("/main/../top.jsp", Long.valueOf(1611213492323L));
    _jspx_dependants.put("jar:file:/D:/pension/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/pension/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1609398773456L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("pension.dto.TourDto");
    _jspx_imports_classes.add("pension.dto.BoardDto");
    _jspx_imports_classes.add("pension.dao.Dao");
    _jspx_imports_classes.add("pension.dao.BoardDao");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("   \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>       <!-- index.jsp -->\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("  <style>\r\n");
      out.write("    body {\r\n");
      out.write("      margin:0px;\r\n");
      out.write("    }\r\n");
      out.write("    a {\r\n");
      out.write("      text-decoration:none;\r\n");
      out.write("      color:black;\r\n");
      out.write("    }\r\n");
      out.write("    a:hover {\r\n");
      out.write("      color:blue;\r\n");
      out.write("    }\r\n");
      out.write("    #first {  /* 광고관련 1층 */\r\n");
      out.write("      width:1100px;\r\n");
      out.write("      height:30px;\r\n");
      out.write("      margin:auto;\r\n");
      out.write("      background:#f15657;\r\n");
      out.write("      text-align:center;\r\n");
      out.write("      padding-top:10px;\r\n");
      out.write("      color:white;\r\n");
      out.write("    }\r\n");
      out.write("    #second {  /* 로고, 메뉴 2층 */\r\n");
      out.write("      width:1100px;\r\n");
      out.write("      height:60px;\r\n");
      out.write("      margin:auto;\r\n");
      out.write("    }\r\n");
      out.write("    #second #left {\r\n");
      out.write("      padding-top:15px;\r\n");
      out.write("      width:100px;\r\n");
      out.write("      float:left;\r\n");
      out.write("    }\r\n");
      out.write("    #second #right {\r\n");
      out.write("      padding-top:15px;\r\n");
      out.write("      width:1000px;\r\n");
      out.write("      float:right;\r\n");
      out.write("      text-align:right;\r\n");
      out.write("    }\r\n");
      out.write("    #second #right #menu {\r\n");
      out.write("      display:inline-block;\r\n");
      out.write("      width:170px;\r\n");
      out.write("      height:30px; /* 주메뉴의 높이를 줘야 됩니다 */\r\n");
      out.write("      position:relative;\r\n");
      out.write("    }\r\n");
      out.write("    #second #right #menu:last-child {\r\n");
      out.write("      width:250px;\r\n");
      out.write("    }\r\n");
      out.write("    #second #right #menu .sub {\r\n");
      out.write("      position:absolute;\r\n");
      out.write("      width:120px;\r\n");
      out.write("      left:88px;\r\n");
      out.write("      top:10px;\r\n");
      out.write("      background:white;\r\n");
      out.write("      padding-left:0px;\r\n");
      out.write("      visibility:hidden;\r\n");
      out.write("      padding-top:10px;\r\n");
      out.write(" \r\n");
      out.write("    }\r\n");
      out.write("    #second #right #menu .sub li {\r\n");
      out.write("      list-style-type:none;\r\n");
      out.write("      text-align:center; /* 서브메뉴의 글자 중앙 */\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("  </style>\r\n");
      out.write("    <script src=\"http://code.jquery.com/jquery-latest.js\"></script>\r\n");
      out.write("  <script>\r\n");
      out.write("    function view_sub(n)\r\n");
      out.write("    {\r\n");
      out.write("    \tdocument.getElementsByClassName(\"sub\")[n].style.visibility=\"visible\";\r\n");
      out.write("    }\r\n");
      out.write("    function hide_sub(n)\r\n");
      out.write("    {\r\n");
      out.write("    \tdocument.getElementsByClassName(\"sub\")[n].style.visibility=\"hidden\";\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    $(function()\r\n");
      out.write("    {\r\n");
      out.write("    \t$(\"#ff\").click(function()\r\n");
      out.write("    \t{\r\n");
      out.write("    \t\t$(\"#first\").slideUp();\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t});\r\n");
      out.write("    });\r\n");
      out.write("  </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <div id=\"first\">\r\n");
      out.write("     저희 펜션에 회원가입하시면  1박 공짜로 해드립니다 \r\n");
      out.write("   <span id=\"ff\"  style=\"cursor:pointer\"> X </span>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"second\">\r\n");
      out.write("     <div id=\"left\"> <a href=\"../main/index.jsp\"> 차니펜션 </a></div>\r\n");
      out.write("     <div id=\"right\">\r\n");
      out.write("        <span id=\"menu\" onmouseenter=\"view_sub(0)\" onmouseleave=\"hide_sub(0)\"> 펜션소개 \r\n");
      out.write("        <!-- 부메뉴 -->\r\n");
      out.write("           <ul class=\"sub\">   \r\n");
      out.write("            <li> <a href=\"../sogae/sogae.jsp\"> 우리펜션 </a> </li>\r\n");
      out.write("            <li> 오시는길 </li>\r\n");
      out.write("           </ul>\r\n");
      out.write("        </span>\r\n");
      out.write("        <span id=\"menu\" onmouseenter=\"view_sub(1)\" onmouseleave=\"hide_sub(1)\"> 주변시설 \r\n");
      out.write("        <!-- 부메뉴 -->\r\n");
      out.write("           <ul class=\"sub\">\r\n");
      out.write("            <li> 만리포 </li>\r\n");
      out.write("            <li> 연포</li>\r\n");
      out.write("            <li> 채석정 </li>\r\n");
      out.write("           </ul>\r\n");
      out.write("        </span>\r\n");
      out.write("        <span id=\"menu\" onmouseenter=\"view_sub(2)\" onmouseleave=\"hide_sub(2)\"> 예약관련 \r\n");
      out.write("         <!-- 부메뉴 -->\r\n");
      out.write("           <ul class=\"sub\">\r\n");
      out.write("            <li>  예약 규정 </a> </li>  \r\n");
      out.write("            <li> <a href=\"../reserve/reserve.jsp\"> 실시간 예약 </a> </li>  \r\n");
      out.write("           </ul>\r\n");
      out.write("        </span>\r\n");
      out.write("        <span id=\"menu\" onmouseenter=\"view_sub(3)\" onmouseleave=\"hide_sub(3)\"> 커뮤니티 \r\n");
      out.write("        <!-- 부메뉴 -->\r\n");
      out.write("           <ul class=\"sub\">\r\n");
      out.write("            <li> <a href=\"../tour/list.jsp\"> 여행 후기  </a></li>\r\n");
      out.write("            <li> <a href=\"../board/list.jsp\"> 자유게시판 </a></li>\r\n");
      out.write("           </ul>\r\n");
      out.write("        </span>\r\n");
      out.write("        <span id=\"menu\"> \r\n");
      out.write("          <!-- 로그인 전 -->\r\n");
      out.write("          ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write(" \r\n");
      out.write("          <!-- 관리자 로그인 한 경우 -->    \r\n");
      out.write("          ");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("          <!--  로그인 한 후 -->\r\n");
      out.write("          ");
      if (_jspx_meth_c_005fif_005f2(_jspx_page_context))
        return;
      out.write("       \r\n");
      out.write("                 \r\n");
      out.write("        </span>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- 여기까지 1층과 2층  top.jsp -->\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  ");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");

   // 자유게시판에서 5개 레코드만!!
   Dao dao=new Dao();
   ArrayList<TourDto> tlist=dao.get_five();
   pageContext.setAttribute("tlist", tlist);
   // 여행후기에서 5개 레코드만
   BoardDao bdao=new BoardDao();
   ArrayList<BoardDto> blist=bdao.get_five();
   pageContext.setAttribute("blist", blist);

      out.write("\r\n");
      out.write("  <style>\r\n");
      out.write("  #third {     /* 큰 사진 3층 */\r\n");
      out.write("      width:1100px;\r\n");
      out.write("      height:400px;\r\n");
      out.write("      margin:auto;\r\n");
      out.write("    } \r\n");
      out.write("    #fourth {    /* 아무거나 4층 */\r\n");
      out.write("      width:1100px;\r\n");
      out.write("      height:300px;\r\n");
      out.write("      margin:auto;\r\n");
      out.write("      margin-top:20px;\r\n");
      out.write("    }\r\n");
      out.write("    #fourth #left{\r\n");
      out.write("      float:left;\r\n");
      out.write("    }\r\n");
      out.write("    #fourth #right {\r\n");
      out.write("      float:right;\r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("  <div id=\"third\">\r\n");
      out.write("     <img src=\"../1.jpg\" width=\"1100\" height=\"400\">\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"fourth\">\r\n");
      out.write("    <div id=\"left\">\r\n");
      out.write("      <table width=\"500\">\r\n");
      out.write("       <caption> <h3> 여행후기 </h3></caption>\r\n");
      out.write("       ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("      </table>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"right\">\r\n");
      out.write("    <table width=\"500\">\r\n");
      out.write("       <caption> <h3> 자유게시판 </h3></caption>\r\n");
      out.write("       ");
      if (_jspx_meth_c_005fforEach_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("      </table>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write(" ");
      out.write("\r\n");
      out.write(" <style>\r\n");
      out.write(" #fifth {     /* 펜션소개 5층 */\r\n");
      out.write("      width:1100px;\r\n");
      out.write("      height:100px;\r\n");
      out.write("      margin:auto;\r\n");
      out.write("    } \r\n");
      out.write(" </style>\r\n");
      out.write("<!-- 여기부터 5층 => bottom.jsp -->\r\n");
      out.write("  <div id=\"fifth\">\r\n");
      out.write("    주소 : 서울시 구로구 구로동 차니펜션 <br>\r\n");
      out.write("    전화 : 010-1111-2222 <br>\r\n");
      out.write("    관리자 : 나야나  (goalki@naver.com) <br>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write(' ');
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

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f0_reused = false;
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /main/../top.jsp(133,10) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userid == null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("           <a href=\"../login/login.jsp\"> 로그인 </a>\r\n");
          out.write("          ");
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      _jspx_th_c_005fif_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /main/../top.jsp(137,10) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userid == 'admin'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("           <a href=\"../admin/reserve_view.jsp\"> 예약관리  </a> /\r\n");
          out.write("           <a href=\"../admin/member_view.jsp\"> 회원관리 </a> /\r\n");
          out.write("           <a href=\"../login/logout.jsp\"> 로그아웃 </a>\r\n");
          out.write("          ");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f2_reused = false;
    try {
      _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f2.setParent(null);
      // /main/../top.jsp(143,10) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userid != null and userid != 'admin'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
      if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \r\n");
          out.write("            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("님!! <a href=\"../mypage/mypage.jsp\"> 내정보 </a>  <a href=\"../login/logout.jsp\"> 로그아웃 </a>\r\n");
          out.write("          ");
          int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
      _jspx_th_c_005fif_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f2_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /main/index.jsp(47,7) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("tdto");
      // /main/index.jsp(47,7) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/main/index.jsp(47,7) '${tlist}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${tlist}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("       <tr>\r\n");
            out.write("        <td> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${tdto.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" </td>\r\n");
            out.write("        <td> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${tdto.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" </td>\r\n");
            out.write("        <td> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${tdto.writeday}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" </td>\r\n");
            out.write("       </tr>\r\n");
            out.write("       ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f1_reused = false;
    try {
      _jspx_th_c_005fforEach_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f1.setParent(null);
      // /main/index.jsp(59,7) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f1.setVar("bdto");
      // /main/index.jsp(59,7) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f1.setItems(new org.apache.jasper.el.JspValueExpression("/main/index.jsp(59,7) '${blist}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${blist}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f1 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f1 = _jspx_th_c_005fforEach_005f1.doStartTag();
        if (_jspx_eval_c_005fforEach_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("       <tr>\r\n");
            out.write("        <td> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bdto.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" </td>\r\n");
            out.write("        <td> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bdto.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" </td>\r\n");
            out.write("        <td> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bdto.writeday}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" </td>\r\n");
            out.write("       </tr>\r\n");
            out.write("       ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f1.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f1[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f1.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f1.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f1);
      _jspx_th_c_005fforEach_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f1_reused);
    }
    return false;
  }
}
