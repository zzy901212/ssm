<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>

    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/ssm/static/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/ssm/static/easyui/themes/icon.css">
    <script type="text/javascript" src="/ssm/static/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/ssm/static/easyui/jquery.easyui.min.js"></script>
    <link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
    <script type="text/javascript">
        $(function () {
           $("#mb").menubutton({
               menu:"#mm",
               hasDownArrow:true,
               plain:true
           });
        })
        function test(item) {
            console.log(item.target);
        }
    </script>
</head>
<body>
<a href="javascript:void(0)" id="mb" >按钮</a>
<div id="mm" style="width:150px;">
    <div data-options="iconCls:'icon-undo'">Undo</div>
    <div data-options="iconCls:'icon-redo'">Redo</div>
    <div class="menu-sep"></div>
    <div>Cut</div>
    <div>Copy</div>
    <div>Paste</div>
    <div class="menu-sep"></div>
    <div data-options="iconCls:'icon-remove'">Delete</div>
    <div>Select All</div>
</div>
<input type="button" id="btn" value="点我禁用"/>
</body>
</html>