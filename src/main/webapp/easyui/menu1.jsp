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
            $(document).contextmenu(function (e) {
                $("#mm").menu('show',{
                    top:e.pageY,
                    left:e.pageX
                });
                return false;
            })

        })
        function test(item) {
            console.log(item.target);
        }
    </script>
</head>
<body>
<div id="mm" class="easyui-menu" data-options="hideOnUnhover:false,onClick:test" >
    <div data-options="iconCls:'icon-save'" >添加</div>
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

</body>
</html>