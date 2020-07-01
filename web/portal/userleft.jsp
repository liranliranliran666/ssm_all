
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <li class="person active">
        <a href="${pageContext.request.contextPath}/user/portalUser">个人中心</a>
    </li>
    <li class="person">
        <a href="javascript:void(0)">个人资料</a>
        <ul>
            <li> <a href="${pageContext.request.contextPath}/user/portalUserId">个人信息</a></li>
            <li> <a href="${pageContext.request.contextPath}/user/portalUserId2">安全设置</a></li>
            <li> <a href="address.html">收货地址</a></li>
        </ul>
    </li>
    <li class="person">
        <a href="javascript:void(0)">我的交易</a>
        <ul>
            <li><a href="${pageContext.request.contextPath}/user/toorder">订单管理</a></li>
            <li> <a href="${pageContext.request.contextPath}/user/tochange">退款售后</a></li>
        </ul>
    </li>
    <li class="person">
        <a href="javascript:void(0)">我的资产</a>
        <ul>
            <li> <a href="${pageContext.request.contextPath}/user/tocoupon">优惠券 </a></li>
            <li> <a href="${pageContext.request.contextPath}/user/tobonus">红包</a></li>
            <li> <a href="${pageContext.request.contextPath}/user/tobill">账单明细</a></li>
        </ul>
    </li>

    <li class="person">
        <a href="javascript:void(0)">我的小窝</a>
        <ul>
            <li> <a href="${pageContext.request.contextPath}/user/tocollection">收藏</a></li>
            <li> <a href="${pageContext.request.contextPath}/user/tofoot">足迹</a></li>
            <li> <a href="${pageContext.request.contextPath}/user/tocomment">评价</a></li>
            <li> <a href="${pageContext.request.contextPath}/user/tonews">消息</a></li>
        </ul>
    </li>

</ul>
</body>
</html>
