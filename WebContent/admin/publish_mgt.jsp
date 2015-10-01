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
                <div class="col-lg-12">
                    <h2 class="page-title">文章维护 <small>删除 修改 已发布过的文章</small></h2>
                    <div class="form-group">
                        <label for="search-input">搜索文章</label>
                        <div class="input-group">
                            <input type="search" id="search_paper" class="form-control" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间，分类，发布类型，标题名称">
                      <span class="input-group-btn">
                      <button class="btn btn-success" type="button">搜索</button>
                      </span> </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-table"></i>
                            <h3>文章列表</h3>
                        </div>
                        <div class="widget-content">
                            <div class="body">
                                <table class="table table-striped table-images">
                                    <thead>
                                    <tr>
                                        <th class="hidden-xs"><i class="icon-picture"></i> 封面</th>
                                        <th><i class="icon-info"></i> 标题</th>
                                        <th class="hidden-xs"><i class="icon-tags"></i> 分类</th>
                                        <th class="hidden-xs"><i class="icon-time"></i> 时间</th>
                                        <th><i class="icon-inbox"></i> 类型</th>
                                        <th><i class="icon-cogs"></i> 操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>案例</td>
                                            <td>
                                                <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#pchange"><i class="icon-edit"></i></button>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>博文</td>
                                            <td>
                                                <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#bchange"><i class="icon-edit"></i></a>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>案例</td>
                                            <td>
                                                <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#pchange"><i class="icon-edit"></i></button>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>博文</td>
                                            <td>
                                                <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#bchange"><i class="icon-edit"></i></a>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>案例</td>
                                            <td>
                                                <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#pchange"><i class="icon-edit"></i></button>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>博文</td>
                                            <td>
                                                <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#bchange"><i class="icon-edit"></i></a>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>案例</td>
                                            <td>
                                                <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#pchange"><i class="icon-edit"></i></button>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>博文</td>
                                            <td>
                                                <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#bchange"><i class="icon-edit"></i></a>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>案例</td>
                                            <td>
                                                <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#pchange"><i class="icon-edit"></i></button>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="hidden-xs"><img src="images/1.jpg"></td>
                                            <td> 国林实业企业官网 </td>
                                            <td class="hidden-xs">平面设计、UI设计、网站设计</td>
                                            <td class="hidden-xs"> 2015-07-06 22:36</td>
                                            <td>博文</td>
                                            <td>
                                                <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#bchange"><i class="icon-edit"></i></a>
                                                <button class="btn btn-sm btn-danger delete"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
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
        </div>
    </div>
</div>
<div style="display: none;" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" class="modal fade" id="pchange">
    <div class="modal-dialog" style="width: 88%;">
        <div class="modal-content" style="background-size: cover;background-image: url(images/b.jpg);color: #ffffff;">
            <div class="modal-header" style="border-bottom: none;">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title"><strong class="icon-refresh" style="color:#fe0000;"></strong> 修改案例</h4>
            </div>
            <div class="modal-body">
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
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="grdesign" name="p_category">平面设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="uidesign" name="p_category">UI设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="wbdesign" name="p_category">网站设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="ondesign" name="p_category">电商设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="tddesign" name="p_category">动画三维</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="otdesign" name="p_category">其他</label>
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
                                    <form id="my-awesome-dropzone" class="dropzone dz-clickable" action="/file-upload"><div class="dz-default dz-message"><h2 class="text-center"><strong>点击或拖拽文件</strong></h2></div></form>
                                </div>
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
            </div>
            <div class="modal-footer text-center" style="border-top: none;">
                <button class="btn btn-success" type="button">保存修改</button>
                <button data-dismiss="modal" class="btn btn-warning" type="button">取消关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!--blog_modifer-->
<div style="display: none;" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" class="modal fade" id="bchange">
    <div class="modal-dialog" style="width: 88%;">
        <div class="modal-content" style="background-size: cover;background-image: url(images/b.jpg);color: #ffffff;">
            <div class="modal-header" style="border-bottom: none;">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title"><strong class="icon-refresh" style="color:#fe0000;"></strong> 修改博文</h4>
            </div>
            <div class="modal-body">
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
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="grdesign" name="b_category">平面设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="uidesign" name="b_category">UI设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="wbdesign" name="b_category">网站设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="ondesign" name="b_category">电商设计</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="tddesign" name="b_category">动画三维</label>
                                            <label class="btn btn-sm btn-warning"><input type="checkbox" value="otdesign" name="b_category">其他</label>
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
            </div>
            <div class="modal-footer text-center" style="border-top: none;">
                <button class="btn btn-success" type="button">保存修改</button>
                <button data-dismiss="modal" class="btn btn-warning" type="button">取消关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!--delte alert-->
<div style="display: none" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-2" id="delete_alert" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content" style="background-size: cover;background-image: url(images/c.jpg);color: #ffffff;">
            <div class="modal-header" style="border-bottom: none;">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">x</button>
            </div>
            <div class="modal-body text-center">
                <h1 class="text-danger"><strong class="icon-warning-sign"></strong> 注意！</h1>
                <p class="text-danger">是否删除此条记录？</p>
            </div>
            <div class="modal-footer text-center" style="border-top: none;">
                <button type="button" class="btn btn-danger" id="confirm"> 确认删除</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal"> 取消删除</button>
            </div>
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
<script src="javascript/dropzone.js"></script>
<script type="text/javascript" src="assets/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript" language="javascript">
    jQuery('.delete').click(function(){
        derow = jQuery(this).parents('tr');
        jQuery('#delete_alert').modal('show');
        jQuery('#confirm').click(function(){
            derow.remove();
            jQuery('#delete_alert').modal('hide');
        });
    });
</script>
</body>
</html>