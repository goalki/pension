<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  div {
    width:300px;
    height:100px;
   }
</style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
   <script>
     $(function() //  이거는 ready개념입니다 => 해주셔야 됩니다..  안해도 되는지는 모르겠네요  작년까지는 해야 됩니다...
      {
    	 var test=$(".aaa"); // 연속적이지 않은 태그에서 연속으로 사용할 클래스명을 지정하고!!
    	 $(".aaa").click(function()
    	 {
    		 var n=test.index(this);  // index값은 이방식으로 합니다..
    		 var url="url('"+n+".jpg')";   // 지금 예제는 같은 폴더에 있는거!!
     		 $(".aaa").eq(n).css("background-image",url);
    	 });
     });
   </script>
</head>
<body>
   <div class="aaa">aa</div>
   <div> 하하하 </div> <div> 하하하 </div> <div> 하하하 </div> <div> 하하하 </div> <div> 하하하 </div> <div> 하하하 </div>
   <div class="aaa">aa</div>
   <div class="aaa">aa</div>
   <div> 호호호 </div>
   <div class="aaa">aa</div>
</body>
</html>