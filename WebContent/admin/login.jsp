<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="fragment/head.jsp"%>
<style>
.popover.fade.right.in, .popover.fade.top.in {
	background-color: rgba(0, 0, 0, 0.25);
}

.popover-title {
	background-color: rgba(0, 0, 0, 0.25);
	border-bottom: none;
	text-align: center;
}

.popover.right .arrow:after {
	border-right-color: transparent;
}

.popover.top .arrow:after {
	border-top-color: transparent;
}
</style>
</head>
<body>
	<div class="login-logo">
		<img src="images/logo.png" width="147" height="33">
	</div>

	<div class="widget">
		<div class="login-content">
			<div class="widget-content" style="padding-bottom: 0;">
				<form name="loginForm" method="post"
					action="<%=path%>/admin/authorityIn.action" class="no-margin">
					<h3 class="form-title">登陆到账户</h3>
					
					<fieldset>
						<div class="form-group no-margin">
							<label for="username">用户名</label>

							<div class="input-group input-group-lg">
								<span class="input-group-addon"> <i class="icon-user"></i>
								</span> <input required type="text" placeholder="您的帐号"
									class="form-control input-lg" name="username" id="username">
							</div>
						</div>

						<div class="form-group">
							<label for="password">密码</label>

							<div class="input-group input-group-lg">
								<span class="input-group-addon"> <i class="icon-lock"></i>
								</span> <input required type="password" placeholder="您的密码"
									class="form-control input-lg" id="password" name="password">
							</div>
							<span style="color: rgb(255, 0, 0)">
								<s:fielderror>
									<s:param>loginError</s:param>
								</s:fielderror>
							</span>
						</div>
						<div class="form-group">
							<label for="checkcode">验证码</label>

							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="icon-key"></i>
								</span> <input required type="password" placeholder="点击此处显示验证码"
									class="form-control input-lg" id="checkcode" name="checkcode"
									data-toggle="popover">
							</div>
							<span style="color: rgb(255, 0, 0)">
								<s:fielderror>
									<s:param>checkcodeError</s:param>
								</s:fielderror>
							</span>
						</div>
					</fieldset>
					
					<div class="form-actions text-center">
						<button class="btn btn-success" type="submit" >
							&nbsp; 登 陆 &nbsp;<i class="m-icon-swapright m-icon-white"></i>
						</button>
						<button class="btn btn-warning" type="reset">
							&nbsp; 重 置 &nbsp;<i class="m-icon-swapright m-icon-white"></i>
						</button>
					</div>


				</form>


			</div>
		</div>
	</div>

<!-- <div class="modal fade" id="loadingmodal" tabindex="-1" role="dialog"
		aria-labelledby="loading">
		<div class="modal-dialog modal-sm" style="width: 300px;">
			<div class="modal-content widget-content"
				style="background-color: rgba(0, 0, 0, 0.66);">
				<div class="padded">
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							style="width: 100%"></div>
					</div>
				</div>
				<p class="text-center text-info">
					<strong>数据传送中</strong>
				</p>
			</div>
		</div>
	</div> -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var a;
			if ($(window).width() < 1024) {
				a = "top";
			} else {
				a = "right";
			}
			$('#checkcode')
					.popover(
							{
								trigger : 'focus',
								container : 'body',
								placement : a,
								html : true,
								content : '<img id ="imgcode" alt="验证码" src="randomcode.jpg">',
								title : '<span class="text-info">看不清图片？</span><a class="text-info" href="javascript: window.location.reload();"><strong>刷新</strong></a>'
							});
		})
	</script>
	
</body>
</html>