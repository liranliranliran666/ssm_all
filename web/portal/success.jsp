<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>付款成功页面</title>
<link rel="stylesheet"  type="text/css" href="/portal/AmazeUI-2.4.2/assets/css/amazeui.css"/>
<link href="/portal/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
<link href="/portal/basic/css/demo.css" rel="stylesheet" type="text/css" />

<link href="/portal/css/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/portal/basic/js/jquery-1.7.min.js"></script>

</head>

<body>


<%@include file="aHeader.jsp"%>



<div class="take-delivery">
 <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额<em>¥9.90</em></li>
       <div class="user-info">
         <p>收货人：艾迪</p>
         <p>联系电话：15871145629</p>
         <p>收货地址：湖北省 武汉市 武昌区 东湖路75号众环大厦</p>
       </div>
             请认真核对您的收货信息，如有错误请联系客服
                               
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        <a href="${pageContext.request.contextPath}/user/toorder" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
        <a href="${pageContext.request.contextPath}/user/toorderinfo" class="J_MakePoint">查看<span>交易详情</span></a>
     </div>
    </div>
  </div>
</div>


<div class="footer" >
 <div class="footer-hd">
 <p>
 <a href="http://www.itcast.cn">传智播客</a>
 <b>|</b>
 <a href="javascript:void(0)">商城首页</a>
 <b>|</b>
 <a href="javascript:void(0)">支付宝</a>
 <b>|</b>
 <a href="javascript:void(0)">物流</a>
 </p>
 </div>
 <div class="footer-bd">
 <p>
 <a href="http://www.itcast.cn">关于华飞</a>
 <a href="javascript:void(0)">合作伙伴</a>
 <a href="javascript:void(0)">联系我们</a>
 <a href="javascript:void(0)">网站地图</a>
 <em>© 2015-2025 Hengwang.com 版权所有</em>
 </p>
 </div>
</div>


</body>
</html>
