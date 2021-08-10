<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>

    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/ssm/static/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/ssm/static/easyui/themes/icon.css">
    <script type="text/javascript" src="/ssm/static/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/ssm/static/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/ssm/static/easyui/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="/ssm/static/easyui/form.validator.rules.js"></script>
    <link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
    <script type="text/javascript">
        $(function () {



        })
    </script>
</head>
<body>
<form id="ff" method="post">
    <div>
        <label for="name">Name:</label>
        <input class="easyui-validatebox" id="name" type="text" name="name" data-options="required:true,validType:'uname'" />
    </div>
    <div>
        <label for="ff">Email:</label>
        <input class="easyui-validatebox" type="text" id="email" name="email" data-options="validType:'email'" />
    </div>

</form>
</body>
</html>