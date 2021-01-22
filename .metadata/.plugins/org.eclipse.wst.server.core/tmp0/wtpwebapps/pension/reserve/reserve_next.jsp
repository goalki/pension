<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="pension.dao.Dao" %>   
<%@page import="pension.dto.RoomDto" %>   
<%
 if(session.getAttribute("userid") != null)
 {
    String y=request.getParameter("y");
    String m=request.getParameter("m");
    String d=request.getParameter("day");
    String id=request.getParameter("id"); // room테이블의 id 

    String inday=y+"-"+m+"-"+d;
    
    pageContext.setAttribute("inday", inday);
    
    // 사용자가 선택한 방의 정보를 읽어오기
    Dao dao=new Dao();
    RoomDto rdto=dao.select_room(id);
    pageContext.setAttribute("rdto", rdto);
    
    // 이름과 전화번호 가져오기 => 아래의 form태그에 추가하기 위한 값
    String np=dao.get_name_phone(session.getAttribute("userid").toString());
    String[] imsi=np.split(",");
    pageContext.setAttribute("imsi", imsi);
%>  
<%@ include file="../top.jsp" %> 
 
 <script>
   /* function change_price(my)  
   {
	   // 숙박일수에 따른 숙박비용을 계산
	   var suk=${rdto.price}*parseInt(my);
	   // 숙박비용을 브라우저에 출력
	   document.getElementById("suk_price").innerText=suk;
   }
   
   function inwon_check()
   {
	   // 3분류의 인원값을 가져오기
	   var inwon1=parseInt(document.getElementById("inwon1").value);
	   var inwon2=parseInt(document.getElementById("inwon2").value);
	   var inwon3=parseInt(document.getElementById("inwon3").value);
	   var inwon=inwon1+inwon2+inwon3; // 합계 인원
	   // 최대인원을 초과여부
	   if(${rdto.max} < inwon)  // 방의 최대인원(max필드)   select태그 3개의 value값의 합
	   {
	      // 인원을 초기화	
	      document.getElementById("inwon1").selectedIndex=0;
	      document.getElementById("inwon2").selectedIndex=0;
	      document.getElementById("inwon3").selectedIndex=0;
	   }
	   else
	   {
		 // inwon(숙박인원) 값이 최소인원보다 작다면
		   // 추가된 인원요금을 숙박비용에 +해서 전달 
		  if(inwon > ${rdto.min} }  
		  {	  
		    var a_price=10000; // 1인당 추가요금
		    var add_inwon=inwon-${rdto.min};  // 1-2 => -1
		    var add_tot=a_price*add_inwon;
		  }
		  else
			var add_tot=0;
		   // 기존 숙박비용 + 추가인원요금(add_tot)
		   var suk=document.getElementById("suk").value;
		   var suk_price=${rdto.price}*suk;     // 순수한 숙박비용 => ${rdto.price}*숙박일수;
		   suk_price=suk_price+add_tot;
		   document.getElementById("suk_price").innerText=suk_price;
	   }	   
   } */
   function suk_cal() // 숙박+인원추가 => 전달
   {
	   // 숙박비용
	   // 숙박일수에 따른 숙박비용을 계산
	   var suk=document.getElementById("suk").value; // 숙박일
	   var suk_price=${rdto.price}*suk; // 숙박비용은 계산
	   //alert(suk_price);
	    
	   // 인원추가요금
	   // 3분류의 인원값을 가져오기
	   var inwon1=parseInt(document.getElementById("inwon1").value);
	   var inwon2=parseInt(document.getElementById("inwon2").value);
	   var inwon3=parseInt(document.getElementById("inwon3").value);
	   var inwon=inwon1+inwon2+inwon3; // 합계 인원
	   // 최대인원을 초과여부
	   if(${rdto.max} < inwon)  // 방의 최대인원(max필드)   select태그 3개의 value값의 합
	   {
	      // 인원을 초기화	
	      document.getElementById("inwon1").selectedIndex=0;
	      document.getElementById("inwon2").selectedIndex=0;
	      document.getElementById("inwon3").selectedIndex=0;
	      document.getElementById("suk_price").innerText=suk_price;
	   }
	   else
	   {
		    // inwon(숙박인원) 값이 최소인원보다 작다면
		   // 추가된 인원요금을 숙박비용에 +해서 전달 
		  if(inwon > ${rdto.min})
		  {	  
		    var a_price=10000; // 1인당 추가요금
		    var add_inwon=inwon-${rdto.min};  // 1-2 => -1
		    var add_tot=(a_price*add_inwon)*suk;
		  }
		  else
			var add_tot=0;
		   // 기존 숙박비용 + 추가인원요금(add_tot)
 
		   document.getElementById("suk_price").innerText=suk_price+add_tot;
	   }	   

	   tot_price();
   }
   function etc_cal()
   {
	   var bbq=document.getElementById("bbq").value;
	   var pork=document.getElementById("pork").value;
	   var bbq_price=0;
	   var pork_price=0;
	   if(bbq != 0)
	   {
		   bbq_price=bbq*20000;
	   }	   
	   if(pork != 0)
	   {
		   pork_price=pork*25000;
	   }	   
	   
	   document.getElementById("etc_price").innerText=bbq_price+pork_price;
	   
	   tot_price();
   }
   function tot_price() // 총결제비용 나타내기 
   {                    // 숙박,부대,총비용 => 6개의 select onchange=> 현재함수를 전부 지나간다..
	   var suk_price=document.getElementById("suk_price").innerText; // 숙박비용
	   var etc_price=document.getElementById("etc_price").innerText; // 부대비용
	   var tot_price=parseInt(suk_price)+parseInt(etc_price);
	   document.getElementById("tot_price").innerText=tot_price;   // 총결제비용
	   // type="hidden" 에 값 넘기기
	   document.pkc.suk_price.value=suk_price;
	   document.pkc.etc_price.value=etc_price;
	   document.pkc.tot_price.value=tot_price;
	   //alert(document.pkc.tot_price.value);
   }
 </script>
 <div id="section">
  <form name="pkc" method="post" action="reserve_ok.jsp">
   <input type="hidden" name="rid" value="${rdto.id}">
   <input type="hidden" name="inday" value="${inday}">
   <input type="hidden" name="suk_price" value="${rdto.price}">
   <input type="hidden" name="etc_price" value="0">
   <input type="hidden" name="tot_price" value="${rdto.price}">
   
   <table width="500" align="center">
     <tr>
      <td colspan="2" align="center"> <h3>숙박관련</h3> </td>
     </tr>
     <tr>
       <td> 예약할 방 </td>
       <td> ${rdto.name}</td>
     </tr>
     <tr>  <!-- 회원,비회원에 따라 다르게 -->
       <td> 예약자 </td>
       <td> <input type="text" name="name" value="${imsi[0]}"> </td>
     </tr>
     <tr>  <!-- 회원,비회원에 따라 다르게 -->
       <td> 전화번호 </td>
       <td> <input type="text" name="phone" value="${imsi[1]}"> </td>
     </tr>
     <tr>
       <td> 입실일 </td>
       <td> ${inday} </td>  
     </tr>
     <%
          int chk=dao.suk_check(y,m,d,id);  // 년,월,일 , room테이블의 id => rid
          pageContext.setAttribute("chk", chk);
          //out.print(chk);
     %>
     <tr>
       <td> 숙박예정 </td>
       <td>  
          <select onchange="suk_cal()" id="suk" name="suk">
          <c:forEach var="i" begin="1" end="${chk}"> <!-- end값을 가능한 박 수만큼 변경 -->
           <option value="${i}"> ${i}박 </option>
          </c:forEach>
          </select>
       </td>
     </tr>
     <tr>
       <td> 인원 </td>
       <td>
         성인 
         <select onchange="suk_cal()" id="inwon1" name="inwon1"> <!-- end값을 최대인원 기준으로 맞춘다. -->
          <c:forEach var="i" begin="1" end="${rdto.max}"> 
           <option value="${i}"> ${i} </option>
          </c:forEach>
         </select>
         청소년    
         <select onchange="suk_cal()" id="inwon2" name="inwon2">
          <c:forEach var="i" begin="0" end="${rdto.max-1}">
           <option value="${i}"> ${i} </option>
          </c:forEach>
         </select>
          유아동    
         <select onchange="suk_cal()" id="inwon3" name="inwon3">
          <c:forEach var="i" begin="0" end="${rdto.max-1}">
           <option value="${i}"> ${i} </option>
          </c:forEach>
         </select>
       </td>
     </tr>
     <tr>
       <td colspan="2" align="right"> 숙박비용 : <span id="suk_price">${rdto.price}</span>원 </td>
     </tr>
     
     <tr>
       <td colspan="2" align="center"> <h3>부대시설 관련</h3> </td>
     </tr>
     <tr>
       <td> 바비큐사용(1개당 20,000원) </td>
       <td>
          <select onchange="etc_cal()" id="bbq" name="bbq">
            <option value="0"> 선택안함 </option>
            <option value="1"> 1개 </option>
            <option value="2"> 2개 </option>
            <option value="3"> 3개 </option>
          </select>
       </td>
     </tr>
     <tr>
       <td> 삼겹살추가(1kg당 25,000원) </td>
       <td>
          <select onchange="etc_cal()" id="pork" name="pork">
            <option value="0"> 선택안함 </option>
            <option value="1"> 1kg </option>
            <option value="2"> 2kg </option>
            <option value="3"> 3kg </option>
            <option value="4"> 4kg </option>
          </select>
       </td>
     </tr>
     <tr>
       <td colspan="2" align="right"> 부대비용 : <span id="etc_price">0</span>원 </td>
     </tr>
     <tr>
       <td colspan="2" align="right"> 총결제비용 : <span id="tot_price">${rdto.price}</span>원 </td>
     </tr>
     <tr>
       <td colspan="2" align="center">
         <input type="submit" value="예약하기">
       </td>
     </tr>
   </table>
  </form>
</div>


 <%@ include file="../bottom.jsp" %> 
<%
}
else
	response.sendRedirect("../login/login.jsp?reser=2");
%>






