<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "fragment/head.jsp" %>
<link href="css/bootstrap-fileupload.css" rel="stylesheet" media="screen">
<link rel='stylesheet' type='text/css' href='assets/jquery-fileupload/css/jquery.fileupload-ui.css' />
</head>
<body>
<%@ include file = "fragment/top_nav.jsp" %>
<div class="wrapper">
	<%@ include file = "fragment/left_nav.jsp" %>
	<div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-facetime-video"></i>
                            <h3> 首页视频背景 </h3>
                        </div>
                        <div class="widget-content">
                            <div class="panel-body">
                                <div class="alert alert-info">
                                    <i class="icon-info-sign"></i> 上传2种视频格式，MP4(H.264)和WEBM。文件大小不超过5MB
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                </div>
                                <!-- The file upload form used as target for the file upload widget -->
                                <form id="fileupload" action="//jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
                                <!-- Redirect browsers with JavaScript disabled to the origin page -->
                                <noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/" /></noscript>
                                <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
                                <div class="row fileupload-buttonbar">
                                    <div class="col-lg-7">
                                        <div class="btn-toolbar">
                                            <!-- The fileinput-button span is used to style the file input field as button -->
                                    <span class="btn btn-success fileinput-button">
                                        <i class="icon-plus"></i>
                                        <span>添加文件</span>
                                        <input type="file" name="files[]" multiple />
                                    </span>
                                            <button type="submit" class="btn btn-primary start">
                                                <i class="icon-upload"></i>
                                                <span>全部上传</span>
                                            </button>
                                            <button type="reset" class="btn btn-warning cancel">
                                                <i class="icon-ban-circle"></i>
                                                <span>全部取消</span>
                                            </button>
                                            <button type="button" class="btn btn-danger delete">
                                                <i class="icon-trash"></i>
                                                <span>全部删除</span>
                                            </button>
                                            <input type="checkbox" class="toggle" />
                                            <!-- The loading indicator is shown during file processing -->
                                            <span class="fileupload-loading"></span>
                                        </div>
                                    </div>
                                    <!-- The global progress information -->
                                    <div class="col-lg-5 fileupload-progress fade">
                                        <!-- The global progress bar -->
                                        <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                                            <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                                        </div>
                                        <!-- The extended global progress information -->
                                        <div class="progress-extended">&nbsp;</div>
                                    </div>
                                </div>
                                <!-- The table listing the files available for upload/download -->
                                <table role="presentation" class="table table-striped">
                                    <tbody class="files"></tbody>
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-picture"></i>
                            <h3> 首页视频静态图</h3>
                        </div>
                        <div class="widget-content text-center">
                            <div class="fileinput fileinput-new" data-provides="fileinput" style="width: 100%">
                                <p class="alert alert-warning">尺寸1656*1151</p>
                                <div class="fileinput-new thumbnail" style="width: 100%; height: 380px;"></div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 100%; max-height: 380px;"></div>
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
            </div><div class="row">
            <div class="col-lg-12">
                <div class="widget">
                    <div class="widget-header"><i class="icon-flickr"></i>
                        <h3>在线视频</h3>
                    </div>
                    <div class="widget-content text-center">
                        <div class="form-group">
                            <p>添加视频地址（ifame用）</p>
                            <div class="input-group">
                                <input type="text" class="form-control" name="web_video">
                                <div class="input-group-btn">
                                    <button class="btn btn-success" type="submit"><i class="icon-pencil"></i></button>
                                </div>
                            </div>
                        </div>
                        <iframe style="width: 570px;height: 361px" class="iframe" src="https://player.vimeo.com/video/132399880?color=ffffff&amp;byline=0&amp;portrait=0"></iframe>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            {% if (file.error) { %}
            <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <p class="size">{%=o.formatFileSize(file.size)%}</p>
            {% if (!o.files.error) { %}
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100"
                 aria-valuenow="0">
                <div class="progress-bar progress-bar-success" style="width:0%;"></div>
            </div>
            {% } %}
        </td>
        <td>
            {% if (!o.files.error && !i && !o.options.autoUpload) { %}
            <button class="btn btn-primary start">
                <i class="icon-upload"></i>
            </button>
            {% } %}
            {% if (!i) { %}
            <button class="btn btn-warning cancel">
                <i class="icon-ban-circle"></i>
            </button>
            {% } %}
        </td>
    </tr>
    {% } %}
</script>

<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
<span class="preview">
    {% if (file.thumbnailUrl) { %}
        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img
                src="{%=file.thumbnailUrl%}"></a>
    {% } %}
</span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}">
                    {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
            <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
            <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}">{% if
                (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}
                <i class="icon-trash "></i>
                <span>Delete</span>
            </button>
            <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
            <button class="btn btn-warning cancel">
                <i class="icon-ban-circle"></i>
                <span>Cancel</span>
            </button>
            {% } %}
        </td>
    </tr>
    {% } %}
</script>
<script type='text/javascript' src='javascript/jquery-1.10.2.min.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/vendor/jquery.ui.widget.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/tmpl.min.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/load-image.min.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/canvas-to-blob.min.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.blueimp-gallery.min.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload-process.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload-image.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload-audio.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload-video.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload-validate.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/jquery.fileupload-ui.js'></script>
<script type='text/javascript' src='assets/jquery-fileupload/js/main.js'></script>
</body>
</html>