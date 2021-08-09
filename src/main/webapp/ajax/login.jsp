
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js"></script>

    <script type="text/javascript">
       $(function(){

           $("#btn").click(function () {

                $.ajax({
                    type: 'post',
                    url: '/ssm/user/showUsers',
                    success:function (result) {

                       var parse = JSON.parse(result);
                       $("ul").remove();
                        for(var i =0;i<parse.length;i++){

                            var idLi=$("<li/>").text(parse[i].id);
                            var nameLi=$("<li/>").text(parse[i].name);
                            var ageLi=$("<li/>").text(parse[i].age);
                            var birthdayLi=$("<li/>").text(parse[i].birthday);
                            var ul = $("<ul/>").append(idLi).append(nameLi).append(ageLi).append(birthdayLi);
                            $("body").append(ul);
                        }

                    }
                })
           });
           $("#btn1").click(function () {
                $("ul").remove();
                $.post('/ssm/user/login',function (result) {
                   var idLi = $("<li/>").text(result.id);
                   var nameLi = $("<li/>").text(result.name);
                   var ageLi = $("<li/>").text(result.age);
                   var birthdayLi = $("<li/>").text(result.birthday);
                    var ul = $("<ul/>").append(idLi).append(nameLi).append(ageLi).append(birthdayLi);
                    $("body").append(ul);
                },"JSON")
           })
       })
    </script>
</head>
<body>


    <input type="button" name="id" id="btn" value="展示茫茫多人"/>
    <input type="button" name="id1" id="btn1" value="展示"/>

</body>
</html>
