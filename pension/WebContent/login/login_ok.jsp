<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.Dao" %>    
<%
   // 사용자가 입력한 userid, pwd를 가져오기
   String userid=request.getParameter("userid");
   String pwd=request.getParameter("pwd");
   int reser=0;
   if(request.getParameter("reser")!=null)
	   reser=Integer.parseInt(request.getParameter("reser"));
   // 아이디,비번 확인하고 세션변수 설정하는 부분 => Dao
   Dao dao=new Dao();
   boolean chk=dao.ismember(userid,pwd);
   
   if(chk)
   {
	   // 세션변수 생성 => 메인페이지 이동
       session.setAttribute("userid", userid);
	   // name이라는 세션변수 생성
	   String name=dao.get_name(userid);
	   session.setAttribute("name",name);
	   // index.jsp에서 로그인 한 상태와 하지 않은 상태를 사용자가 알수 있게 표현
	   if(reser == 0)
	     response.sendRedirect("../main/index.jsp");
	   else
		 response.sendRedirect("../reserve/reserve.jsp");
	   
   }
   else
   {
	   // 로그인 페이지로 다시 이동
	   response.sendRedirect("login.jsp?chk=1");
	   // 사용자에게 상황을 전달
   }
%>