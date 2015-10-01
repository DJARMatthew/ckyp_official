<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "fragment/head.jsp" %>
<link href="css/bootstrap-fileupload.css" rel="stylesheet" media="screen">
<style>
        input.cke_dialog_ui_input_text{
            color:#333333;
        }
        .cke_source{
            color:#333333;
        }
    </style>
</head>
<body>
<%@ include file = "fragment/top_nav.jsp" %>
<div class="wrapper">
    <%@ include file = "fragment/left_nav.jsp" %>
    <div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="page-title">发布博客 <small>分享心得、联通客户</small></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-picture"></i>
                            <h3> 博客封面 </h3>
                        </div>
                        <div class="widget-content text-center">
                            <div class="fileinput fileinput-new" data-provides="fileinput" style="width: 100%">
                                <p class="alert alert-warning">尺寸800*600</p>
                                <div class="fileinput-new thumbnail" style="width: 100%; height: 188px;"></div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
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
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-lemon"></i>
                            <h3>博客题目</h3>
                        </div>
                        <div class="widget-content">
                            <div class="form-group">
                                <p>起个吸引人的名字吧！</p>
                                <div class="input-group">
                                    <input type="text" required class="form-control" name="blog_title">
                                    <div class="input-group-addon label-primary">
                                        <i class="icon-pencil"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"><i class="icon-tags"></i>
                            <h3>信息分类</h3>
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
                        <div class="widget-header"> <i class="icon-file-alt"></i>
                            <h3>书写博客</h3>
                        </div>
                        <div class="widget-content">
                            <div class="form">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <textarea class="form-control ckeditor" name="blog" rows="10"></textarea>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-success btn-lg " type="submit" style="width: 66%">发 布 博 客</button>
            </div>
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="assets/plugins/ckeditor/ckeditor.js"></script>
</body>
</html>

</body>
</html>