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
                    <h2 class="page-title">图片管理  <small>更新网站静态图片</small></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-picture"></i>
                            <h3> 首页</h3>
                        </div>
                        <div class="widget-content">
                            <div class="row">
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">作品1（400*600）</p>
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                            <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                            <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                            <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">作品2（400*600）</p>
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                            <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                            <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                            <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">作品3（400*600）</p>
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                            <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                            <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                            <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">作品4（400*600）</p>
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
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-picture"></i>
                            <h3> 关于我们</h3>
                        </div>
                        <div class="widget-content">
                            <div class="row">
                                <div class="col-md-4 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">理念配图1（420*420）</p>
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
                                        <p class="alert alert-warning">理念配图2（420*420）</p>
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
                                        <p class="alert alert-warning">理念配图3（420*420）</p>
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
                        <div class="widget-header"> <i class="icon-picture"></i>
                            <h3> 抬头大图</h3>
                        </div>
                        <div class="widget-content">
                            <div class="row">
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">关于我们（3000*800）</p>
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                            <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                            <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                            <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">设计案例（2507*1674）</p>
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                            <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                            <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                            <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">团队博客（2507*1674）</p>
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"></div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                            <span class="btn btn-success btn-file"><span class="fileinput-new">选择图片</span><span class="fileinput-exists">更改</span><input type="file" name="..."></span>
                                            <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">取消</a>
                                            <button type="submit" class="btn btn-primary fileinput-exists">上传</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <p class="alert alert-warning">联系我们（2000*2000）</p>
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
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
</body>
</html>