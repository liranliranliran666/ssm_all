<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="/portal/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="/portal/css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="/portal/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="/portal/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home/demo.jsp"><img alt="" src="/portal/images/logobig.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="/portal/images/big.jpg" /></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">邮箱注册</a></li>
								<li><a href="">手机号注册</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-active">
									<form id="addUser" method="post">

										<div class="user-name">
											<label for="user"><i class="am-icon-user"></i></label>
											<input type="text" name="username" placeholder="请输入用户名">
										</div>
										<div class="user-email">
										<label for="email"><i class="am-icon-envelope-o"></i></label>
										<input type="email" name="email" placeholder="请输入邮箱账号">
                 </div>										
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="password" placeholder="设置密码">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="password2" placeholder="确认密码">
                 </div>

				</form>
                 
								 <div class="login-links">
										<label for="reader-me">
											<input  type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf">
											<input type="button" onclick="toadd()" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>


								</div>

								<div class="am-tab-panel">
									<form method="post">
                 <div class="user-phone">
								    <label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
								    <input type="tel" name="" id="phone" placeholder="请输入手机号">
                 </div>																			
										<div class="verification">
											<label for="code"><i class="am-icon-code-fork"></i></label>
											<input type="tel" name="" id="code" placeholder="请输入验证码">
											<a class="btn" href="javascript:void(0);" onClick="sendMobileCode();" id="sendMobileCode">
												<span id="dyMobileButton">获取</span></a>
										</div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="password" placeholder="设置密码">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="passwordRepeat" placeholder="确认密码">
                 </div>	
									</form>
								 <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf">
											<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>

							</div>
						</div>

				</div>
			</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="http://www.itcast.cn">传智播客</a>
								<b>|</b>
								<a href="index.jsp">商城首页</a>
								<b>|</b>
								<a href="javascript:void(0)">支付宝</a>
								<b>|</b>
								<a href="javascript:void(0)">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="http://www.itheima.com">关于华飞</a>
								<a href="javascript:void(0)">合作伙伴</a>
								<a href="javascript:void(0)">联系我们</a>
								<a href="javascript:void(0)">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有</em>
							</p>
						</div>
					</div>
	</body>

</html>
<script>

	function toadd() {
		var pwd1 = $("[name=password]").val();
		var pwd2 = $("[name=password2]").val();
		if(pwd1!=pwd2 ){
			alert("两次输入的密码不一致");
		} else if (pwd1.length < 6 || pwd2.length < 6) {
			alert("密码长度必须是6位！");
		} else if (pwd1 == pwd2) {
			if($('input[type="checkbox"]').is(':checked')){
				console.log('checked'); //页面里可以看到点击勾选时打印
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "/user/registerUser",//这个是控制器的路径
				data: $("#addUser").serialize(), //newsForm序列化
				success: function (data) {
					alert("注册成功！");
					window.location.href = "/user/tologin";
				},
				error: function () {
					alert("注册失败！");
					window.location.reload();
				}
			});
			}else{
				alert("请勾选协议!")
				console.log('empty'); //页面里可以看到点击非勾选时打印
			}

		}
	}
</script>