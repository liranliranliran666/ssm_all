<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>修改密码</title>

		<link href="/portal/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/portal/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/portal/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/portal/css/stepstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="/portal/js/jquery-1.7.2.min.js"></script>
		<script src="/portal/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

	</head>

	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<%@ include file="aHeader.jsp"%>
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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
					</div>
					<hr/>
					<!--进度条-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">重置密码</p>
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
					<form class="am-form am-form-horizontal" id="updatepwd" >
						<div class="am-form-group">
							<label for="user-old-password" class="am-form-label">原密码</label>
							<div class="am-form-content">
								<input type="password" id="user-old-password" name="pwd" placeholder="请输入原登录密码">
								<input type="hidden" name="ppwd" value="${user.password}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">新密码</label>
							<div class="am-form-content">
								<input type="password" id="user-new-password" name="pwd1" placeholder="由数字、字母组合">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">确认密码</label>
							<div class="am-form-content">
								<input type="password" id="user-confirm-password" name="password" placeholder="请再次输入上面的密码">
							</div>
						</div>
						<div class="info-btn">
							<button onclick="toupdate(this,${user.id})"  class="am-btn am-btn-danger" type="button">保存修改</button>
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
<script>

	function toupdate(obj,id) {
		var ppwd = $("[name=ppwd]").val();
		var pwd  = $("[name=pwd]").val();
		var pwd1 = $("[name=pwd1]").val();
		var pwd2 = $("[name=password]").val();
		if(ppwd!=pwd ){
			alert("输入的密码与原密码不一致");
			window.location.reload();
		} else	if(pwd1!=pwd2 ){
			alert("两次输入的密码不一致");
			window.location.reload();
		} else if (pwd1.length < 6 || pwd2.length < 6) {
			alert("密码长度必须是6位！");
			window.location.reload();
		} else if (pwd1 == pwd2 && ppwd == pwd) {
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "/user/updateUserPwd/" + id,//这个是控制器的路径
				data: $("#updatepwd").serialize(), //newsForm序列化
				success: function (data) {
					alert("修改成功！");
					window.location.href = "/user/portalUserId2"
				},
				error: function () {
					alert("异常！");
					window.location.reload();
				}
			});
		}
	}

	/*//验证原密码1.ajax,正则
	var ok1=false,ok2=false,ok3=false;
	$(function () {

		$("[name=password]").blur(function () {
			var pwd=$(this).val();
			$.ajax({
				url:"/user/updatepassword",
				data:"password="+pwd,
				type:"post",
				datatype:"text",
				success:function (rs) {
					if (rs==null) {
						ok1=false;
					}else {
						ok1=true;
					}
					$("[name=password]").next().html("<font color='red'>"+rs+"</font>");
				}
			});
		});

		//验证新密码
		$("[name=pwd1]").blur(function() {
			var newpass=$(this).val();
			var reg=/^\w{6,}$/;
			if(reg.test(newpass)){
				$(this).next().html("新密码可用");
				ok2=true;
			}else {
				$(this).next().html("新密码不可用");
				ok2=false;
			}
		});


		//验证重复密码格式，是否与新密码相同
		$("[name=pwd2]").blur(function () {
			var newpass2=$(this).val();
			var newpass=$("[name=pwd1]").val();
			var reg=/^\w{6,}$/;
			if(reg.test(newpass2)){
				if (newpass==newpass2){
					$("[name=newpass2]").next().html("两次密码一致");
					ok3=true;
				} else {
					$("[name=newpass2]").next().html("两次密码不一致");
					ok3=false;
				}
			}else {
				$(this).next().html("重复密码不可用");
				ok3=false;
			}
		});

		//提交表单
		$("#button2").click(function () {
			if(ok1&&ok2&&ok3){
				document.forms[0].submit();
			}else{
				alert("输入有误")
			}
		});

	});*/
</script>