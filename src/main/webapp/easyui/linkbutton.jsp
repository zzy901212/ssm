
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>

    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/ssm/static/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/ssm/static/easyui/themes/icon.css">
    <script type="text/javascript" src="/ssm/static/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/ssm/static/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").linkbutton({
                iconCls:'icon-search'
            });
            $("#btn1").click( function () {
                $("#btn2").linkbutton({
                    disable: 'none'
                });
            })
        })
    </script>
</head>
<body>
<a id="btn" href="javascript:;" >easyui</a>
<input type="button" id="btn1"  value="原始按钮"/>
<input type="button" id="btn2" value="原始按钮2"/>
</body>
</html>