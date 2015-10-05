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
	<script type="text/javascript" src="js/Calendar3.js"></script>
	<%@ include file="fragment/top_nav.jsp"%>
	<div class="wrapper">
		<%@ include file="fragment/left_nav.jsp"%>
		<div class="page-content">
			<div class="content container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="page-title">
							伙伴管理 <small>添加、删除、修改 伙伴信息</small>
						</h2>
						<div class="form-group">
							<label for="search-input">搜索小伙伴</label>
							<div class="input-group">
								<input type="search" id="search_member" class="form-control"
									placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名"> <span
									class="input-group-btn">
									<button class="btn btn-success" type="button">搜索</button>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-table"></i>
								<h3>人物列表</h3>
							</div>
							<div class="widget-content">
								<div class="body">
									<table class="table table-striped table-images">
										<thead>
											<tr>
												<th class="hidden-xs"><i class="icon-picture"></i> 照片</th>
												<th><i class="icon-info"></i> 姓名</th>
												<th class="hidden-xs"><i class="icon-tags"></i> 职位</th>
												<th class="hidden-xs"><i class="icon-time"></i> 邮箱</th>
												<th><i class="icon-inbox"></i> 电话</th>
												<th><i class="icon-cogs"></i> 操作</th>
											</tr>
										</thead>
										<tbody>
											<s:iterator value="#session.userinfo" var="ulist">
												<tr>
													<td class="hidden-xs"><img
														src="<%=basePath%><s:property value="#ulist.photo"/>"></td>
													<td><s:property value="#ulist.name" /></td>
													<td class="hidden-xs"><s:property
															value="#ulist.position" /></td>
													<td class="hidden-xs"><s:property value="#ulist.email" /></td>
													<td><s:property value="#ulist.phone" /></td>
													<td><a class="btn btn-sm btn-primary"
														data-toggle="modal" data-target="#profilechange"><i
															class="icon-edit"></i></a>
														<a role="button" href="<%=path %>/admin/Edit_userdelete.action?uid=<s:property value="#ulist.uid"/>" class="btn btn-sm btn-danger delete">
															<i class="icon-trash"></i>
														</a></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
									<div class="clearfix">
										<ul class="pagination no-margin pull-right">
											<li class="disabled"><a href="#">后退</a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">前进</a></li>
										</ul>
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
								<h3>添加小伙伴</h3>
							</div>
							<div class="widget-content">
								<form method="post" class="form-horizontal"
									action="<%=path%>/admin/Edit_adduser.action"
									enctype="multipart/form-data">
									<fieldset>
										<div class="col-lg-6">
											<div class="control-group">
												<div class="col-md-3">
													<label for="person" class="control-label">姓名</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input type="text" class="form-control" name="name"
															required>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="gender" class="control-label">性别</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<div data-toggle="buttons" class="btn-group" id="gender">
															<label data-toggle-passive-class="btn-default"
																onclick="sexselector('男')"
																data-toggle-class="btn-primary"
																class="btn btn-info active"> <input type="radio"
																value="男" checked name="gender"> &nbsp; 男 &nbsp;
															</label> <label data-toggle-passive-class="btn-default"
																onclick="sexselector('女')"
																data-toggle-class="btn-primary" class="btn btn-danger">
																<input type="radio" value="女" name="gender">
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
														<input type="date" class="form-control" name="birthday"
															onclick="new Calendar(1920,2016).show(this);" id="control_date1"
															size="20" maxlength="10" readonly="readonly" required>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="position" class="control-label ">职位工种</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input type="text" class="form-control" name="position"
															required>
													</div>
												</div>
											</div>
											<div class="control-group">
												<div class="col-md-3">
													<label for="onboardT" class="control-label ">加入时间</label>
												</div>
												<div class="col-md-9">
													<div class="form-group">
														<input type="date" class="form-control" name="onboardT"
															onclick="new Calendar(1920,2016).show(this);" id="control_date2"
															size="20" maxlength="10" readonly="readonly" required>
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
																class="icon-user"></i></span> <input type="text"
																class="form-control" name="username" required>
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
																class="icon-lock"></i></span> <input type="text"
																name="password" class="form-control" required>
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
																class="icon-phone"></i></span> <input type="text"
																class="form-control" name="phone">
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
																class="icon-envelope"></i></span> <input type="text"
																name="email" class="form-control">
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
														<input type="text" class="form-control" name="qq"
															id="qqnum">
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
																class="form-control" name="weibo">
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
																<img
																	src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" />
															</div>
															<div class="fileinput-preview fileinput-exists thumbnail"
																style="max-width: 200px; max-height: 150px;"></div>
															<div>
																<span class="btn btn-success btn-file"><span
																	class="fileinput-new">选择图片</span><span
																	class="fileinput-exists">更改</span><input type="file"
																	name="file" id="photo"></span> <a href="#"
																	class="btn btn-danger fileinput-exists"
																	data-dismiss="fileinput">取消</a>
																<a role="button" onclick="ajaxFileUpload('adduser','${nextuid}','photo');"
																	class="btn btn-primary fileinput-exists">上传</a>
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
																	name="file" id="weixin"></span> <a href="#"
																	class="btn btn-danger fileinput-exists"
																	data-dismiss="fileinput">取消</a>
																<a role="button" onclick="ajaxFileUpload('adduser','${nextuid}','weixin');"
																	class="btn btn-primary fileinput-exists">上传</a>
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
																class="form-control" name="mypage">
														</div>
													</div>
												</div>
											</div>
										</div>
									</fieldset>
									<div class="form-actions text-center">
										<div>
											<button class="btn btn-success" type="submit">保存</button>
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
	<!--project_modifer-->
	<div style="display: none;" aria-hidden="true"
		aria-labelledby="myModalLabel" role="dialog" tabindex="-1"
		class="modal fade" id="profilechange">
		<div class="modal-dialog" style="width: 80%;">
			<div class="modal-content"
				style="background-size: cover; background-image: url(images/a.jpg); color: #ffffff;">
				<div class="modal-header" style="border-bottom: none;">
					<button aria-hidden="true" data-dismiss="modal" class="close"
						type="button">×</button>
					<h4 class="modal-title">
						<strong class="icon-refresh" style="color: #fe0000;"></strong>
						修改资料
					</h4>
				</div>
				<div class="modal-body">
					<div class="widget">
						<div class="widget-header">
							<i class="icon-align-left"></i>
							<h3>添加小伙伴</h3>
						</div>
						<div class="widget-content">
							<form method="post" class="form-horizontal">
								<fieldset>
									<div class="col-lg-6">
										<div class="control-group">
											<div class="col-md-3">
												<label for="person" class="control-label">姓名</label>
											</div>
											<div class="col-md-9">
												<div class="form-group">
													<input type="text" class="form-control" name="name"
														required>
												</div>
											</div>
										</div>
										<div class="control-group">
											<div class="col-md-3">
												<label for="gender" class="control-label">性别</label>
											</div>
											<div class="col-md-9">
												<div class="form-group">
													<div data-toggle="buttons" class="btn-group" id="gendermodal">
														<label data-toggle-passive-class="btn-default"
															data-toggle-class="btn-primary" onclick="sexselector1('男')"
															class="btn btn-info active"> <input type="radio"
															value="男" name="gender" checked> &nbsp; 男 &nbsp;
														</label> <label data-toggle-passive-class="btn-default"
															onclick="sexselector1('女')" data-toggle-class="btn-primary"
															class="btn btn-danger"> <input type="radio"
															value="女" name="gender"> &nbsp; 女 &nbsp;
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
													<input type="date" class="form-control" name="birthday"
														onclick="new Calendar(1920,2016).show(this);" id="control_date3"
														size="20" maxlength="10" readonly="readonly" required>
												</div>
											</div>
										</div>
										<div class="control-group">
											<div class="col-md-3">
												<label for="position" class="control-label ">职位工种</label>
											</div>
											<div class="col-md-9">
												<div class="form-group">
													<input type="text" class="form-control" name="position"
														required>
												</div>
											</div>
										</div>
										<div class="control-group">
											<div class="col-md-3">
												<label for="onboardT" class="control-label ">加入时间</label>
											</div>
											<div class="col-md-9">
												<div class="form-group">
													<input type="text" class="form-control" name="onboardT"
														onclick="new Calendar(1920,2016).show(this);" id="control_date4"
														size="20" maxlength="10" readonly="readonly" required>
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
															class="icon-user"></i></span> <input type="text"
															class="form-control" name="username" required>
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
															class="icon-lock"></i></span> <input type="text" name="password"
															class="form-control" required>
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
															class="icon-phone"></i></span> <input type="text"
															class="form-control" name="phone">
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
															class="icon-envelope"></i></span> <input type="text"
															name="email" class="form-control">
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
													<input type="text" class="form-control" name="qq"
														id="qqnum">
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
															class="form-control" name="weibo" id="weibo">
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
															<img
																src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" />
														</div>
														<div class="fileinput-preview fileinput-exists thumbnail"
															style="max-width: 200px; max-height: 150px;"></div>
														<div>
															<span class="btn btn-success btn-file"><span
																class="fileinput-new">选择图片</span><span
																class="fileinput-exists">更改</span><input type="file"
																name="file" id="editphoto"></span> <a href="#"
																class="btn btn-danger fileinput-exists"
																data-dismiss="fileinput">取消</a>
															<button type="submit"
																class="btn btn-primary fileinput-exists">上传</button>
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
																name="file" id="editweixin"></span> <a href="#"
																class="btn btn-danger fileinput-exists"
																data-dismiss="fileinput">取消</a>
															<button type="submit"
																class="btn btn-primary fileinput-exists">上传</button>
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
															class="form-control" name="mypage">
													</div>
												</div>
											</div>
										</div>
									</div>
								</fieldset>
								<div class="form-actions text-center">
									<div>
										<button class="btn btn-success" type="submit">保存</button>
										<button class="btn btn-warning" type="button">重置</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<%@ include file="fragment/footer.jsp"%>
	<script src="js/bootstrap-fileupload.js"></script>
	<script src="js/ajaxfileupload.js"></script>
	<script type="text/javascript">
		function sexselector(v) {
			_this = jQuery("#gender").children("label")
			jQuery("#gender").find("input[name='gender']").removeAttr("checked");
			jQuery(_this).children("input[value=" + v + "]").attr("checked",
					true);
		}
		function sexselector1(s) {
			_this = jQuery("#gendermodal").children("label")
			jQuery("#gendermodal").find("input[name='gender']").removeAttr("checked");
			jQuery(_this).children("input[value=" + s + "]").attr("checked",
					true);
		}
	</script>
	<script type="text/javascript">
	function ajaxFileUpload(v,t,x) {

		
		jQuery.ajaxFileUpload({
			url : "<%=path%>/admin/fileUploadAction.action?uploadtype="+v+"&useruid="+t+"&type="+x, //用于文件上传的服务器端请求地址
			secureuri : false, //一般设置为false
			fileElementId : x, //文件上传空间的id属性  <input type="file" id="file" name="file" />
			dataType : 'json',//返回值类型 一般设置为json
			success : function(data, status) //服务器成功响应处理函数
			{
				alert(data.message + "\n \n 记得点击底部的修改按钮");//从服务器返回的json中取出message中的数据,其中message为在struts2中action中定义的成员变量

				if (typeof (data.error) != 'undefined') {
					if (data.error != '') {
						alert(data.error);
					} else {
						alert(data.message);
					}
				}
				
			},
			error : function(data, status, e)//服务器响应失败处理函数
			{
				alert(e);
			}
		})

		return false;

	}
	</script>
</body>
</html>