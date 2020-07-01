<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>框架</title>

		<link href="/portal/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/portal/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/portal/css/personal.css" rel="stylesheet" type="text/css">

		<script src="/portal/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="/portal/AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
		
	</head>

	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<%@ include file="aHeader.jsp"%>
				</div>
				</div>
			</article>
		</header>







		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
				
				</div>
				<!--底部-->
				<div class="footer">
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
							<a href="http://www.itcast.cn">关于黑马</a>
							<a href="javascript:void(0)">合作伙伴</a>
							<a href="javascript:void(0)">联系我们</a>
							<a href="javascript:void(0)">网站地图</a>
							<em>© 2015-2025 Hengwang.com 版权所有</em>
						</p>
					</div>
				</div>
			</div>

			<aside class="menu">
				<%@ include file="userleft.jsp"%>

			</aside>
		</div>

	</body>

</html>