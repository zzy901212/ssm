<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Document</title>
</head>
<body>
    ${requestScope.user.id}
    ${requestScope.user.name}
    ${requestScope.user.age}
    ${requestScope.user.birthday}
<fmt:formatDate value="${requestScope.user.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate>

    <a href="${pageContext.request.contextPath}/user/showUsers">点我一下</a>
</body>
</html>
