
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Document</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#username").blur(function () {
                var xhr;
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest();
                }else{
                    xhr=new ActiveXObject("Microsoft.XMLHTTP");

                }
                var username = $(this).val();
                xhr.open("POST","${pageContext.request.contextPath}/user/logintest");
                xhr.setRequestHeader("content-Type","application/x-www-form-urlencoded;charset=UTF-8");
                    alert(username);
                xhr.send("name="+username);
                xhr.onreadystatechange =function () {
                    if(xhr.readyState==4&&xhr.status==200){
                        console.log(xhr.responseText);
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