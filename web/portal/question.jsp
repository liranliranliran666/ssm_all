<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>安全问题</title>

		<link href="/portal/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/portal/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/portal/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/portal/css/stepstyle.css" rel="stylesheet" type="text/css">

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
            <div class="nav-table">
				<%@ include file="aHeader2.jsp"%>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">设置安全问题</strong> / <small>Set&nbsp;Safety&nbsp;Question</small></div>
					</div>
					<hr/>
					<!--进度条-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">设置安全问题</p>
                            </span>
							<span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">完成</p>
                            </span>
							<span class="u-progress-placeholder"></span>
						</div>
						<div class="u-progress-bar total-steps-2">
							<div class="u-progress-bar-inner"></div>
						</div>
					</div>
					<form class="am-form am-form-horizontal">
						<div class="am-form-group select">
							<label for="user-question1" class="am-form-label">问题一</label>
							<div class="am-form-content">
								<select data-am-selected>
									<option value="a" selected>请选择安全问题</option>
									<option value="b">您最喜欢的颜色是什么？</option>
									<option value="c">您的故乡在哪里？</option>
								</select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-answer1" class="am-form-label">答案</label>
							<div class="am-form-content">
								<input type="text" id="user-answer1" placeholder="请输入安全问题答案">
							</div>
						</div>
						<div class="am-form-group select">
							<label for="user-question2" class="am-form-label">问题二</label>
							<div class="am-form-content">
								<select data-am-selected>
									<option value="a" selected>请选择安全问题</option>
									<option value="b">您最喜欢的颜色是什么？</option>
									<option value="c">您的故乡在哪里？</option>
								</select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-answer2" class="am-form-label">答案</label>
							<div class="am-form-content">
								<input type="text" id="user-answer2" placeholder="请输入安全问题答案">
							</div>
						</div>
						<div class="info-btn">
							<div class="am-btn am-btn-danger">保存修改</div>
						</div>

					</form>

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