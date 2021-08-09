
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>

    <script type="text/javascript">
       $(function(){
           $("#username").blur(function () {
               var username=$(this).val();
               var xhr;
               if(window.XMLHttpRequest){
                   xhr=new XMLHttpRequest();
               }else{
                   xhr=new ActiveXObject("Microsoft.XMLHTTP");
               }
               xhr.open("GET","${pageContext.request.contextPath}/user/logintest?name="+username);
                xhr.send();
               xhr.onreadystatechange=function () {
                   if(xhr.readyState==4&&xhr.status==200){
                       var responseText = xhr.responseText;
                       var parse = JSON.parse(responseText);
                       if(parse =="ok"){
                           $("#userMessage").css("color","green");

                       }else{
                           $("#userMessage").css("color","red");
                       } $("#userMessage").text(responseText);
                   }
               }
           })
       })
    </script>
</head>
<body>
用户名：<input type="text" name="name" id="username"/><span id="userMessage"></span>
</body>
</html>
