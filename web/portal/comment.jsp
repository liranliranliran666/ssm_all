<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>评价管理</title>

		<link href="/portal/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/portal/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/portal/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/portal/css/cmstyle.css" rel="stylesheet" type="text/css">

		<script src="/portal/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="/portal/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

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

					<div class="user-comment">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">评价管理</strong> / <small>Manage&nbsp;Comment</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">所有评价</a></li>
								<li><a href="#tab2">有图评价</a></li>

							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">

									<div class="comment-main">
										<div class="comment-list">
											<ul class="item-list">

												
												<div class="comment-top">
													<div class="th th-price">
														<td class="td-inner">评价</td>
													</div>
													<div class="th th-item">
														<td class="td-inner">商品</td>
													</div>													
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="/portal/images/kouhong.jpg_80x80.jpg" class="itempic">
														</a>
													</div>
												</li>

												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">好评</div>
														<div class="item-name">
															<a href="javascript:void(0)">
																<p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
															</a>
														</div>
													</div>
													<div class="item-comment">
														宝贝非常漂亮，超级喜欢！！！ 口红颜色很正呐，还有第两支半价，买三支免单一支的活动，下次还要来买。就是物流太慢了，还要我自己去取快递，店家不考虑换个物流么？
													</div>

													<div class="item-info">
														<div>
															<p class="info-little"><span>颜色：12#玛瑙</span> <span>包装：裸装</span> </p>
															<p class="info-time">2015-12-24</p>

														</div>
													</div>
												</li>

											</ul>

										</div>
									</div>

								</div>
								<div class="am-tab-panel am-fade" id="tab2">
									
									<div class="comment-main">
										<div class="comment-list">
											<ul class="item-list">
												
												
												<div class="comment-top">
													<div class="th th-price">
														<td class="td-inner">评价</td>
													</div>
													<div class="th th-item">
														<td class="td-inner">商品</td>
													</div>													
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="/portal/images/kouhong.jpg_80x80.jpg" class="itempic">
														</a>
													</div>
												</li>											
												
												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">好评</div>
														<div class="item-name">
															<a href="javascript:void(0)">
																<p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
															</a>
														</div>
													</div>
													<div class="item-comment">
														宝贝非常漂亮，超级喜欢！！！ 口红颜色很正呐，还有第两支半价，买三支免单一支的活动，下次还要来买。就是物流太慢了，还要我自己去取快递，店家不考虑换个物流么？
													<div class="filePic"><img src="images/image.jpg" alt=""></div>	
													</div>

													<div class="item-info">
														<div>
															<p class="info-little"><span>颜色：12#玛瑙</span> <span>包装：裸装</span> </p>
															<p class="info-time">2015-12-24</p>

														</div>
													</div>
												</li>

											</ul>

										</div>
									</div>									
									
								</div>
							</div>
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