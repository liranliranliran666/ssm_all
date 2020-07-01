<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
</head>
<body>
<div class="container">
    <ul class="list-group">
        <li class="list-group-item">用户ID:${user.id}</li>
        <li class="list-group-item">用户名:${user.username}</li>
        <li class="list-group-item">用户密码:${user.password}</li>
        <li class="list-group-item">用户电话:${user.phone}</li>
        <li class="list-group-item">用户邮箱:${user.email}</li>
        <li class="list-group-item">用户生日:<fmt:formatDate pattern="yyyy-MM-dd" value="${user.birthday}" /></li>
    </ul>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
</body>
</html>
