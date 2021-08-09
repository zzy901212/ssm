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
            $("#mm").menu(
                'show', {
                    left: 200,
                    top: 200
                }
            );
            $("#btn").click(function () {
                var item = $("#mm").menu('findItem','添加');
                console.log(item.target);
            })
        })
        function test2(item) {
            
        }
    </script>
</head>
<body>
<div id="mm" class="easyui-menu" data-options="onClick:test2,hideOnUnhover:false">
    <div data-options="iconCls:'icon-save'" onclick="test2()">添加</div>
    <div data-options="iconCls:'icon-add'">复制</div>
    <div data-options="iconCls:'icon-remove'">修改</div>
    <div class="menu-sep"></div>
    <div data-options="iconCls:'icon-edit'">删除
        <div>
            <div data-options="iconCls:'icon-save'">二级</div>
            <div>二级·1</div>
            <div>二级·2</div>
        </div>
    </div>

</div>
    <button id="btn">销毁菜单</button>
</body>
</html>