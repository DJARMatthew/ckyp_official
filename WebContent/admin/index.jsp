<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="fragment/head.jsp"%>
<body>
	<%@ include file="fragment/top_nav.jsp"%>
	<div class="wrapper">
		<%@ include file="fragment/left_nav.jsp"%>
		<div class="page-content">
			<div class="content container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="page-title">
							便捷面板 <small>信息 操作 查阅</small>
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>
									登录时间：<small><%=dateString%></small>
								</h3>
							</div>
							<div class="widget-content">
								<div class="body">
									<form data-validate="parsley" method="post" novalidate
										class="form-horizontal label-left" id="user-form">
										<div class="row">
											<div class="col-md-6">
												<div class="text-align-center">
													<s:if test="%{#myinfo.photo !=null & #myinfo.photo !='' }">
														<img style="height:99px" class="img-circle" alt="photo" src="<%=basePath %>${accountinfo.photo}" />
													</s:if>
													<s:else>
														<img style="height: 99px" alt="photo"
														src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" class="img-circle">
													</s:else>
													
												</div>
											</div>
											<div class="col-md-6">
												<h3 class="no-margin">${accountinfo.name}</h3>
												<address>
													<strong> ${accountinfo.position } </strong><br>
												</address>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
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
						<div class="widget">
							<div class="widget-header">
								<i class="icon-warning-sign "></i>
								<h3>系统消息</h3>
							</div>
							<div class="widget-content">
								<div class="panel-body">
									<div class="alert alert-danger alert-block fade in">
										<button type="button" class="close close-sm"
											data-dismiss="alert">
											<i class="icon-remove"></i>
										</button>
										<h4>
											<i class="icon-ok-sign"></i> 客户信息
										</h4>
										<p>Best check yo self, you're not looking too good...</p>
									</div>
									<div class="alert alert-info fade in">
										<button type="button" class="close close-sm"
											data-dismiss="alert">
											<i class="icon-remove"></i>
										</button>
										<strong>案例发布</strong> This alert needs your attention, but
										it's not super important.
									</div>
									<div class="alert alert-warning fade in">
										<button type="button" class="close close-sm"
											data-dismiss="alert">
											<i class="icon-remove"></i>
										</button>
										<strong>博客发布</strong> Best check yo self, you're not looking
										too good.
									</div>
									<div class="alert alert-success fade in">
										<button type="button" class="close close-sm"
											data-dismiss="alert">
											<i class="icon-remove"></i>
										</button>
										<strong>用户登陆</strong> Best check yo self, you're not looking
										too good.
									</div>
								</div>
							</div>
						</div>
						<div class="widget">
							<div class="widget-header">
								<i class="icon-check "></i>
								<h3>员工列表</h3>
							</div>
							<div class="widget-content">
								<div class="widget widget-tabs">
									<div>
										<ul class="nav nav-tabs">
											<li class="active"><a data-toggle="tab"
												href="#allemployee">全部员工</a></li>
											<li class=""><a data-toggle="tab" href="#online">在线员工</a></li>
											<li class=""><a data-toggle="tab" href="#offline">离线员工</a></li>
										</ul>
									</div>
									<div class="tab-content">
										<div class="tab-pane clearfix active" id="allemployee">
											<ul class="users-list user-list-no-hover">
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-success">
																<i class="icon-signin"></i> 在线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-danger">
																<i class="icon-signin"></i> 离线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-success">
																<i class="icon-signin"></i> 在线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-danger">
																<i class="icon-signin"></i> 离线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-success">
																<i class="icon-signin"></i> 在线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-danger">
																<i class="icon-signin"></i> 离线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
											</ul>
										</div>
										<div class="tab-pane clearfix" id="online">
											<ul class="users-list user-list-no-hover">
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-success">
																<i class="icon-signin"></i> 在线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
											</ul>
										</div>
										<div class="tab-pane clearfix" id="offline">
											<ul class="users-list user-list-no-hover">
												<li><img class="pull-left img-circle" alt=""
													src="images/img1.jpg">
													<div class="user-info">
														<div class="name">
															<a href="#">蔡晓凡</a>
														</div>
														<div class="options">
															<button class="btn btn-xs btn-danger">
																<i class="icon-signin"></i> 离线
															</button>
															&nbsp; &nbsp; &nbsp;
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="12121212121">
																<i class="icon-phone"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="dzj_mgt_ceo@ckyp-data.com">
																<i class="icon-envelope-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="<img src='http://china-guolin.com/GLF/img/weichat-qocde.jpg'>">
																<i class="icon-comments-alt"></i>
															</button>
															<button class="btn btn-xs btn-info" data-toggle="popover"
																data-content="36598658">
																<strong>QQ</strong>
															</button>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-weibo"></i></a>
															<a href="http://www.weibo.com" target="_blank"
																class="btn btn-xs btn-info"><i class="icon-globe"></i></a>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="fragment/footer.jsp"%>
	<script>
		jQuery(document).ready(function() {
			jQuery('[data-toggle="popover"]').popover({
				container : 'body',
				trigger : 'hover',
				placement : 'top',
				html : true
			})
		})
	</script>
</body>
</html>