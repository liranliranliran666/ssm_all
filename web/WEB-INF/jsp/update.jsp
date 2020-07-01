<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
</head>
<body>
<div class="container">
<form  action="updateUser" method="post" >
           ID：      <input type="hidden" name="id" id="id" value="${user.id}"/><br>
           用户：   <input type="text" name="username" id="username" value="${user.username}"/><br>
           密码：     <input type="text" id="password" name="password" value="${user.password}"/><br>
           手机：   <input type="text" id="phone" name="phone" value="${user.phone}"/><br>
           邮箱：     <input type="text" id="email" name="email" value="${user.email}"/><br>
           生日：     <input type="text" id="birthday" name="birthday"  value="${user.birthday}"/><br>
        <button id="send" type="submit" class="btn btn-success">保存</button>
        <button type="button" class="btn btn-primary" id="back">返回</button>
</form>
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
</body>
</html>