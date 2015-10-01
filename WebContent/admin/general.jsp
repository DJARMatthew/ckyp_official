<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "fragment/head.jsp" %>
<link href="css/bootstrap-fileupload.css" rel="stylesheet" media="screen">
</head>
<body>
<%@ include file = "fragment/top_nav.jsp" %>
<div class="wrapper">
	<%@ include file = "fragment/left_nav.jsp" %>
	<div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-title">公司信息 <small>公司档案编辑</small></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-tasks"></i>

                            <h3>联系方式</h3>
                        </div>
                        <div class="widget-content">
                            <div class="tabbable tabs-left">
                                <ul id="myTabLeft" class="nav nav-tabs">
                                    <li class="active"><a href="#homeaddress" data-toggle="tab"><i class="icon-map-marker"></i>地址</a></li>
                                    <li><a href="#homephone" data-toggle="tab"><i class="icon-phone"></i> 电话</a></li>
                                    <li><a href="#homeemail" data-toggle="tab"><i class="icon-envelope"></i> 邮箱</a></li>
                                    <li><a href="#homeqq" data-toggle="tab"><i class="icon-comment"></i> QQ</a></li>
                                </ul>
                                <div id="myTabContentLeft" class="tab-content">
                                    <div class="tab-pane fade in active" id="homeaddress">
                                        <div class="form-group">
                                            <p>&nbsp;</p>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="company_address">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="homephone">
                                        <div class="form-group">
                                            <p>&nbsp;</p>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="company_phone">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="homeemail">
                                        <div class="form-group">
                                            <p>&nbsp;</p>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="company_email">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="homeqq">
                                        <div class="form-group">
                                            <p>&nbsp;</p>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="company_qq">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-tasks"></i>
                            <h3>社交信息</h3>
                        </div>
                        <div class="widget-content">
                            <div class="tabbable tabs-left">
                                <ul id="myTabLeft1" class="nav nav-tabs">
                                    <li class="active"><a href="#social_weibo" data-toggle="tab"><i class="icon-weibo"></i>微博</a></li>
                                    <li><a href="#social_weixin" data-toggle="tab"><i class="icon-comments"></i> 微信</a></li>
                                    <li><a href="#social_qq" data-toggle="tab"><i class="icon-comment"></i> QQ</a></li>
                                </ul>
                                <div id="myTabContentLeft1" class="tab-content">
                                    <div class="tab-pane fade in active" id="social_weibo">
                                        <div class="form-group">
                                            <p>微博地址</p>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="social_weibo">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade text-center" id="social_weixin">
                                        <p class="text-left">上传微信二维码</p>
                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                            <div>
                                                <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                                <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                                <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade text-center" id="social_qq">
                                        <p class="text-left">上传QQ号码图片</p>
                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                            <div>
                                                <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                                <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                                <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-lock"></i>
                            <h3>备案信息</h3>
                        </div>
                        <div class="widget-content">
                            <div class="form-group">
                                <p>备案号码</p>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="web_lisence">
                                    <div class="input-group-btn">
                                        <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-warning-sign "></i>
                            <h3>系统消息 </h3>
                        </div>
                        <div class="widget-content">
                            <div class="panel-body">
                                <div class="alert alert-danger alert-block fade in">
                                    <button type="button" class="close close-sm" data-dismiss="alert"><i
                                            class="icon-remove"></i></button>
                                    <h4><i class="icon-ok-sign"></i> 客户信息 </h4>
                                    <p>Best check yo self, you're not looking too good...</p>
                                </div>
                                <div class="alert alert-info fade in">
                                    <button type="button" class="close close-sm" data-dismiss="alert"> <i class="icon-remove"></i> </button>
                                    <strong>案例发布</strong> This alert needs your attention, but it's not super important. </div>
                                <div class="alert alert-warning fade in">
                                    <button type="button" class="close close-sm" data-dismiss="alert"> <i class="icon-remove"></i> </button>
                                    <strong>博客发布</strong> Best check yo self, you're not looking too good. </div>
                                <div class="alert alert-success fade in">
                                    <button type="button" class="close close-sm" data-dismiss="alert"> <i class="icon-remove"></i> </button>
                                    <strong>用户登陆</strong> Best check yo self, you're not looking too good. </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
</body>
</html>