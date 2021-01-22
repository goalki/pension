<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %>    

 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
  }
  #section #form {
    width:400px;
    height:300px;
    margin:auto;
    margin-top:100px;
  }
  #section #form input {
    width:300px;
    height:40px;
    border:1px solid #f15657;
    margin-top:20px;
    font-size:18px;
  }
  #section #form input[type=submit] {
    width:306px;
    height:44px;
    background:#f15657;
    color:white;
    font-weight:900;
  }
 </style>
 <script>
  // 아이디는 8자이상 12자 이내
  // 비밀번호는 4자이상 10자이내
  // 비밀번호입력칸 2개의 값이 일치하는지 비교
  // 이름, 아이디, 비밀번호, 전화번호는 필히 입력      ==> 오늘의 과제!!~~~~
  function check(ttt)
  { 
	  if(ttt.userid.value.length < 8 || ttt.userid.value.length > 12)
      {
		  alert("아이디는 8자이상 12자 이내입니다");
		  return false;
      }
	  else if(ttt.pwd.value != ttt.pwd1.value)
		   {
		      alert("비밀번호가 틀립니다");
		      return false;
		   }
	       else if(ttt.pwd.value.trim().length < 4 || ttt.pwd.value.trim().length > 10)
	    	    {
	    	      alert("비밀번호는 4자이상 8자이내입니다.");
	    	      return false;
	    	    }
	            else if(ttt.name.value.trim().length == 0)
	            	 {
	            	    alert("이름을 입력하세요");
	            	    return false;
	            	 }
	                 else if(ttt.phone.value.trim().length == 0)
	                	  {
	                	    alert("전화번호를 입력하세요");
	                	    return false;
	                	  }
	                      else if(ttt.check_id.value != "0")
	                    	   {
	                    	      alert("아이디가 중복되었으니 다시 확인하세요");
	                    	      ttt.userid.focus();
	                    	      return false;
	                    	   }
	                           else
	                    	      return true;
	       
  }
  var pkc=new XMLHttpRequest();
  function id_check(userid)
  {  
 
	
	  pkc.open("get","id_check.jsp?userid="+userid);
	  pkc.send();
	  
	  pkc.onreadystatechange=function()
	  {
		 if(pkc.readyState==4)
		 {
			 //alert(pkc.responseText);
			 if(pkc.responseText == 0) // 사용가능 아이디
			 {
				document.getElementById("uid").innerHTML="<br> <span style='color:blue'> 사용가능 아이디 </span>"; 
				document.getElementById("check_id").value="0";
			 }	 
			 else   // 사용불가능 아이디
			 {
				 document.getElementById("uid").innerHTML="<br> <span style='color:red'> 사용 불가능 아이디 </span>"; 
				 document.getElementById("check_id").value="";
			 }
		 }
	  }
 
  }
 </script>
 <div id="section">
  <div id="form">
   <form method="post" action="member_ok.jsp" onsubmit="return check(this)">
    <input type="hidden" name="check_id" id="check_id">
     <div id="name"> <input type="text" name="name" placeholder="이 름"> </div>
     <div id="userid"> <input type="text" name="userid" placeholder="아이디" onblur="id_check(this.value)"> 
        <span id="uid"></span>
     </div>
     <div id="pwd"> <input type="password" name="pwd" placeholder="비밀번호"> </div>
     <div id="pwd1"> <input type="password" name="pwd1" placeholder="비밀번호 확인"> </div>
     <div id="phone"> <input type="text" name="phone" placeholder="전화번호"> </div>
     <div id="submit"> <input type="submit" value="회원가입"> </div>
   </form> 
  </div>
 </div>
 
<%@ include file="../bottom.jsp" %> 