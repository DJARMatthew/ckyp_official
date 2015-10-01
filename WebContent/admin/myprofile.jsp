<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="fragment/head.jsp"%>
<link href="css/bootstrap-fileupload.css" rel="stylesheet"
	media="screen">
</head>
<body>
	<%@ include file="fragment/top_nav.jsp"%>
	<div class="wrapper">
		<%@ include file="fragment/left_nav.jsp"%>
		<div class="page-content">
			<div class="content container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="page-title">
							我的档案 <small>删除、修改 档案信息</small>
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-bookmark"></i>
								<h3>快速链接</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<div class="shortcuts">
									<a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-list-alt"></i> <span
										class="shortcut-label">博客维护</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-bookmark"></i> <span
										class="shortcut-label">案例维护</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-signal"></i> <span
										class="shortcut-label">公司信息</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-comment"></i> <span
										class="shortcut-label">客户管理</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-user"></i> <span
										class="shortcut-label">伙伴管理</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-file"></i> <span
										class="shortcut-label">发布案例</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-picture"></i> <span
										class="shortcut-label">发布博客</span>
									</a> <a class="shortcut" href="javascript:;"> <i
										class="shortcut-icon icon-tag"></i> <span
										class="shortcut-label">我的档案</span>
									</a>
								</div>
								<!-- /shortcuts -->
							</div>
							<!-- /widget-content -->
						</div>
					</div>
					<div class="col-lg-6">
						<div class="widget-container">
							<div class="padded">
								<a href="#" class="pull-right"><i class="icon-map-marker"></i></a>
								<span class="h4">山东 青岛</span>

								<div class="text-center padder m-t">
									<span class="h1"><i class="icon-sun text-muted"></i> 68A</span>
								</div>
							</div>
							<div class="widget-footer lt">
								<div class="row">
									<div class="col-xs-4">
										<small class="text-muted block">湿度</small> <span>56 %</span>
									</div>
									<div class="col-xs-4">
										<small class="text-muted block">降雨</small> <span>0.00
											in</span>
									</div>
									<div class="col-xs-4">
										<small class="text-muted block">风速</small> <span>7 mp</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-align-left"></i>
								<h3>我的资料</h3>
							</div>
							<div class="widget-content">
								<form method="post" class="form-horizontal"
									action="<%=request.getContextPath()%>/admin/upload.action"
									enctype="multipart/form-data">
									<fieldset>
										<div class="col-lg-6">
											<div class="control-group">
												<div class="col-md-3">
													<label for="person" class="control-label">姓名</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input required type="text" class="form-control"
															id="person" value='${accountinfo.name }'>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="gender" class="control-label">性别</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div data-toggle="buttons" class="btn-group" id="gender"
															title="${accountinfo.gender }">
															<label data-toggle-passive-class="btn-default"
																data-toggle-class="btn-primary" class="btn btn-info">
																<input type="radio" value="male" name="gender">
																&nbsp; 男 &nbsp;
															</label> <label data-toggle-passive-class="btn-default"
																data-toggle-class="btn-primary" class="btn btn-danger">
																<input type="radio" value="female" name="gender">
																&nbsp; 女 &nbsp;
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="birthday" class="control-label"> 出生日期 </label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input required type="date" class="form-control"
															id="birthday" value="${accountinfo.birthday }"
															placeholder="日期格式：YYYY-MM-DD">
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="position" class="control-label ">职位工种</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input required type="text" class="form-control"
															id="position" value="${accountinfo.position }">
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="onboardT" class="control-label ">加入时间</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input required type="text" class="form-control"
															id="onboardT" placeholder="日期格式：YYYY-MM-DD"
															value="${accountinfo.onboardT }">
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="username" class="control-label">登陆账号</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="icon-user"></i></span> <input required type="text"
																class="form-control" name="username" id="username"
																value="${accountinfo.username }">
														</div>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="passowrd" class="control-label">登陆密码</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="icon-lock"></i></span> <input required type="text"
																name="password" id="passowrd" class="form-control"
																value="${accountinfo.password }">
														</div>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="phone" class="control-label">电话</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="icon-phone"></i></span> <input required type="text"
																class="form-control" name="phone" id="phone"
																value="${accountinfo.phone }">
														</div>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="email" class="control-label">电子邮箱</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="icon-envelope"></i></span> <input required type="email"
																name="email" id="email" class="form-control"
																value="${accountinfo.email }">
														</div>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="qqnum" class="control-label">QQ账号</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input type="text" required class="form-control"
															name="qqnum" id="qqnum" value="${accountinfo.qq }">
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="weibo_link" class="control-label">微博地址</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="icon-weibo"></i></span> <input type="text"
																class="form-control" name="weibo_link" id="weibo_link"
																${accountinfo.weibo }>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="control-group">
												<div class="col-md-3">
													<label for="person" class="control-label">照片</label>
												</div>
												<div class="col-md-9">
													<div class="form-group text-center">
														<div class="fileinput fileinput-new"
															data-provides="fileinput">
															<p class="alert alert-warning">尺寸（300*300），JPG</p>
															<div class="fileinput-new thumbnail"
																style="width: 200px; height: 150px;">
																<img src="images/user.jpg" />
															</div>
															<div class="fileinput-preview fileinput-exists thumbnail"
																style="max-width: 200px; max-height: 150px;"></div>
															<div>
																<span class="btn btn-success btn-file"><span
																	class="fileinput-new">选择图片</span><span
																	class="fileinput-exists">更改</span><input type="file"
																	name="upload"></span> <a href="#"
																	class="btn btn-danger fileinput-exists"
																	data-dismiss="fileinput">取消</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="person" class="control-label">微信二维码</label>
												</div>
												<div class="col-md-9">
													<div class="form-group text-center">
														<div class="fileinput fileinput-new"
															data-provides="fileinput">
															<p class="alert alert-warning">尺寸（300*300），JPG</p>
															<div class="fileinput-new thumbnail"
																style="width: 200px; height: 150px;">
																<img
																	src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" />
															</div>
															<div class="fileinput-preview fileinput-exists thumbnail"
																style="max-width: 200px; max-height: 150px;"></div>
															<div>
																<span class="btn btn-success btn-file"><span
																	class="fileinput-new">选择图片</span><span
																	class="fileinput-exists">更改</span><input type="file"
																	name="upload"></span> <a href="#"
																	class="btn btn-danger fileinput-exists"
																	data-dismiss="fileinput">取消</a>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="control-group">
												<div class="col-md-3">
													<label for="myweb" class="control-label">个人主页</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div class="input-group">
															<span class="input-group-addon"><i
																class="icon-globe"></i></span> <input type="text"
																class="form-control" name="myweb" id="myweb"
																${accountinfo.mypage }>
														</div>
													</div>
												</div>
											</div>
										</div>
									</fieldset>
									<div class="form-actions text-center">
										<div>
											<button class="btn btn-success" type="submit">修改</button>
											<button class="btn btn-warning" type="button">重置</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="fragment/footer.jsp"%>

	<script src="js/bootstrap-fileupload.js"></script>
	<script type="text/javascript">
		jQuery(".footer")
				.ready(
						function() {
							var gender = jQuery("#gender").attr("title");
							if (gender == "男") {
								jQuery("#gender").children("label:first-child")
										.addClass("active");
								jQuery("input[value='male']").attr("checked",
										"true");
							} else {
								jQuery("#gender").children("label:last-child")
										.addClass("active");
								jQuery("input[value='female']").attr("checked",
										"true");
							}
						})
		jQuery("#gender").children("label").click(
				function() {
					jQuery("input[name='gender']").removeAttr("checked");
					jQuery(this).children("input[name='gender']").attr(
							"checked", true);
				})
	</script>
</body>
</html>