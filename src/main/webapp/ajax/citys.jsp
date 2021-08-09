
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <style>
        select{
            width:140px;
            height: 25px;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js"></script>

    <script type="text/javascript">
       $(function () {

           $.post("/ssm/city/showProvince", function (result) {
               $("#province option").remove();
               for (var i = 0; i < result.length; i++) {
                   //   console.log(result[i].name);
                   var provinceName = $("<option />").text(result[i].name).val(result[i].code);
                   $("#province").append(provinceName);
               };
               $("#province").change();
           }, "JSON");

           $("#province").change(function () {

               var code =$(this).val();
               $("#city option").remove();
               $.post("/ssm/city/showCitys",{code:code},function (citys) {
                   console.log(citys);
                    $.each(citys,function (index,p) {
                        console.log(p);
                        var cityOption=$("<option/>").text(p.name).val(p.code);

                        $("#city").append(cityOption);
                    });
                   $("#city").change();
               },"JSON");
           })
           $("#city").change(function () {

               var code =$(this).val();
               $("#area option").remove();
               $.post("/ssm/city/showAreas",{code:code},function (areas) {

                   $.each(areas,function (index,p) {
                       console.log(p);
                       var areaOption=$("<option/>").text(p.name).val(p.code);

                       $("#area").append(areaOption);
                   })
               },"JSON")
           })
       })

    </script>
</head>
<body>
    省：<select id="province"> </select>
    市：<select id="city"></select>
    县：<select id="area"></select>
</body>
</html>

