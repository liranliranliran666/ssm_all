<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="/portal/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/portal/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/portal/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/portal/css/infstyle.css" rel="stylesheet" type="text/css">
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

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="portal/images/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i>${user.username}</i></b></div>
								<div class="u-level">
									<span class="rank r2">
							          <s class="vip1"></s><a class="classes" href="#">
										                <c:choose>
															<c:when test="${user.user_level <20 && user.user_level>=1}">普通用户 等级:${user.user_level}</c:when>
															<c:when test="${user.user_level <30 && user.user_level>=20}">银牌用户 等级:${user.user_level}</c:when>
															<c:when test="${user.user_level <50 && user.user_level>=30}">金牌用户 等级:${user.user_level}</c:when>
															<c:when test="${user.user_level >50}">钻石用户 等级:${user.user_level}</c:when>
															<c:otherwise>普通用户 用户等级：:${user.user_level}</c:otherwise>
														</c:choose>
										</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="safety.jsp">
									 账户积分:
									<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">${user.points}</i></span>
									</a>
								</div>
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<form id="updateform" method="post" class="am-form am-form-horizontal" >
								<!--<input type="hidden" name="id" value="${user.id}">-->
								<div class="am-form-group">
									<label  class="am-form-label">昵称</label>
									<div class="am-form-content">
										<input type="text" value="${user.username}" name="username" >

									</div>
								</div>

								<div class="am-form-group">
									<label  class="am-form-label">姓名</label>
									<div class="am-form-content">
										<input type="text" value="${user.name}" name="name">

									</div>
								</div>

								<div class="am-form-group">
									<label class="am-form-label">性别</label>
									<div class="am-form-content sex" >
										<label class="am-radio-inline">
											<input type="radio" name="sex" checked="checked" value="1" > 男
										</label>
										<label class="am-radio-inline">
											<input type="radio" name="sex" value="2" > 女
										</label>
										<label class="am-radio-inline">
											<input type="radio" name="sex" value="0" > 保密
										</label>
									</div>
								</div>

								<div class="am-form-group">
									<label class="am-form-label">生日</label>
									<div class="am-form-content birth">
										<input type="date" name="birthday" value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd" />">

									</div>
							
								</div>
								<div class="am-form-group">
									<label  class="am-form-label">电话</label>
									<div class="am-form-content">
										<input name="phone" value="${user.phone}"  type="tel">
									</div>
								</div>
								<div class="am-form-group">
									<label class="am-form-label">电子邮件</label>
									<div class="am-form-content">
										<input name="email" value="${user.email}" type="email">
									</div>
								</div>
								<div class="info-btn">
									<button onclick="toupdate(this,${user.id})" class="am-btn am-btn-danger" type="button">保存修改</button>
								</div>

							</form>
						</div>

					</div>

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
							<a href="http://www.itcast.cn">关于华飞</a>
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
	function toupdate(obj,id){
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "/user/updateUser/"+id,//这个是控制器的路径
			data: $("#updateform").serialize(), //newsForm序列化
			success  :  function(data){
				alert("修改成功！");
				window.location.href="/user/portalUser"
			},
			error : function () {
				alert("异常！");
				window.location.reload();
			}
		});
	}
</script>