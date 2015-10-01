<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "fragment/head.jsp" %>
<link href="css/bootstrap-fileupload.css" rel="stylesheet" media="screen">
<link href="style/dropzone.css" rel="stylesheet">
</head>
<body>
<%@ include file = "fragment/top_nav.jsp" %>
<div class="wrapper">
	<%@ include file = "fragment/left_nav.jsp" %>
	<div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="page-title">发布案例 <small>展示作品 秀秀技能</small></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-picture"></i>
                            <h3> 案例封面 </h3>
                        </div>
                        <div class="widget-content text-center">
                            <div class="fileinput fileinput-new" data-provides="fileinput" style="width: 100%">
                                <p class="alert alert-warning">尺寸570*390</p>
                                <div class="fileinput-new thumbnail" style="width: 230px; height: 180px;"></div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 230px; max-height: 180px;"></div>
                                <div>
                                    <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                    <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                    <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-lemon"></i>
                            <h3>案例名称</h3>
                        </div>
                        <div class="widget-content">
                            <div class="form-group">
                                <p>起个吸引人的名字吧！</p>
                                <div class="input-group">
                                    <input type="text" required class="form-control" name="project_title">
                                    <div class="input-group-addon label-primary">
                                        <i class="icon-pencil"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget">
                        <div class="widget-header"><i class="icon-tags"></i>
                            <h3>案例分类</h3>
                        </div>
                        <div class="widget-content">
                            <div class="form-group">
                                <p>请务必选择至少一个分类</p>
                                <div class="m-b-sm text-center">
                                    <div data-toggle="buttons" class="btn-group">
                                        <label class="btn btn-sm btn-warning"><input type="checkbox" id="option1" name="options">平面设计</label>
                                        <label class="btn btn-sm btn-warning"><input type="checkbox" id="option2" name="options">UI设计</label>
                                        <label class="btn btn-sm btn-warning"><input type="checkbox" id="option3" name="options">网站设计</label>
                                        <label class="btn btn-sm btn-warning"><input type="checkbox" id="option4" name="options">电商设计</label>
                                        <label class="btn btn-sm btn-warning"><input type="checkbox" id="option5" name="options">动画三维</label>
                                        <label class="btn btn-sm btn-warning"><input type="checkbox" id="option6" name="options">其他</label>
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
                        <div class="widget-header"> <i class="icon-camera-retro"></i>
                            <h3> 展示图片 </h3>
                        </div>
                        <div class="widget-content">
                            <div class="panel-body">
                                <div class="alert alert-info">
                                    <i class="icon-info-sign"></i> 图片尺寸：640*640 或长宽不大于640像素，图片数不多于8张。命名规则为：img00*.jpg
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                </div>
                                <!-- The file upload form used as target for the file upload widget -->
                                <form id="my-awesome-dropzone" class="dropzone dz-clickable" action="/file-upload"><div class="dz-default dz-message"><h1 class="text-center"><strong>点击或拖拽文件</strong></h1></div></form>                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-retweet"></i>
                            <h3> 轮播图片</h3>
                        </div>
                        <div class="widget-content">
                            <p class="alert alert-warning">理念配图1-3张，图片尺寸1400*1000。图片格式jpg</p>
                            <div class="row">
                                <div class="col-md-4 text-center">
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
                                <div class="col-md-4 text-center">
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
                                <div class="col-md-4 text-center">
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
                            <br>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-file-alt"></i>
                            <h3>案例文字</h3>
                        </div>
                        <div class="widget-content">
                            <div class="control-group">
                                <div class="col-md-3">
                                    <label class="control-label" for="project_introduce">客户案例简介</label>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <textarea required class="form-control" name="text" rows="6" id="project_introduce"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="col-md-3">
                                    <label class="control-label" for="project_description">案例工作，设计思路，灵感源泉等</label>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <textarea required class="form-control" name="text" rows="10" id="project_description"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-success btn-lg " type="submit" style="width: 66%">发 布 案 例</button>
            </div>
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
<script src="javascript/dropzone.js"></script>
</body>
</html>