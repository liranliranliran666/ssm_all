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
    <td><a href="${pageContext.request.contextPath}/user/add">新增用户</a></td>
    <table class="table table-striped table-bordered table-hover">
        <caption>用户列表</caption>
        <thead>
        <tr>
            <td>ID</td>
            <td>用户名</td>
            <td>密码</td>
            <td>手机号</td>
            <td>邮箱</td>
            <td>生日</td>
            <td>修改</td>
            <td>删除</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td><a href="${pageContext.request.contextPath}/user/id/${user.id}">${user.id}</a></td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.phone}</td>
                <td>${user.email}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${user.birthday}"/></td>
                <td><a href="${pageContext.request.contextPath}/user/${user.id}">修改</a></td>
                <td><a href="${pageContext.request.contextPath}/user/delete/${user.id}">删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
</body>
</html>

