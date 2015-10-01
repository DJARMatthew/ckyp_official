<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "fragment/head.jsp" %>
</head>
<body>
<%@ include file = "fragment/top_nav.jsp" %>
<div class="wrapper">
	<%@ include file = "fragment/left_nav.jsp" %>
	<div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-title">文字更新 <small>更新页面静态文字内容</small></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>首页</h3>
                        </div>
                        <div class="widget-content">
                            <div id="accordion1" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse1" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed"> 首页欢迎页面 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse1">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="web_title">网站名<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="web_title" id="web_title">
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="web_subtitle">副标题<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <input type="text" required class="form-control" name="web_subtitle" id="web_subtitle">
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse2" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed"> 第一部分 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse2">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="index_section1_title">标题<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="index_section1_title" id="index_section1_title">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="index_section1_subtitle">简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="index_section1_subtitle" id="index_section1_subtitle"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse3" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed"> 底部部分 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse3">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="index_section2_title">标题<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="index_section1_title" id="index_section2_title">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="index_section2_subtitle">简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="index_section2_subtitle" id="index_section2_subtitle"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>关于我们</h3>
                        </div>
                        <div class="widget-content">
                            <div id="accordion2" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse4" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed"> 页面抬头 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse4">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="about_section1_subtitle">描述<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <textarea required class="form-control" rows="3" name="about_section1_subtitle" id="about_section1_subtitle"></textarea>
                                                            <span class="help-block">内容尽量简短</span>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse5" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed"> 第二部分 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse5">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="about_section2_title">标题<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="about_section2_title" id="about_section2_title">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="about_section2_subtitle">简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="about_section2_subtitle" id="about_section2_subtitle"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse6" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed"> 介绍我们 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse6">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="introduce1_title">标题1<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="introduce1_title" id="introduce1_title">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="introduce1_description">简介1<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="introduce1_description" id="introduce1_description"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="introduce2_title">标题2<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="introduce2_title" id="introduce2_title">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="introduce2_description">简介2<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="introduce2_description" id="introduce2_description"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="introduce3_title">标题3<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="introduce3_title" id="introduce3_title">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="introduce3_description">简介1<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="introduce3_description" id="introduce3_description"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>设计案例</h3>
                        </div>
                        <div class="widget-content">
                            <p class="text-center">副标题或简介(内容精炼)</p>
                            <form class="form-horizontal" novalidate data-validate="parsley" action="" method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <textarea required class="form-control" rows="3" name="project_section1_title" id="project_section1_title"></textarea>
                                    </div>
                                </fieldset>
                                <div class="text-center">
                                    <button class="btn btn-success" type="submit">提交</button>
                                    <button class="btn btn-danger" type="reset">重置</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>团队博客</h3>
                        </div>
                        <div class="widget-content">
                            <p class="text-center">副标题或简介(内容精炼)</p>
                            <form class="form-horizontal" novalidate data-validate="parsley" action="" method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <textarea required class="form-control" rows="3" name="blog_section1_title" id="blog_section1_title"></textarea>
                                    </div>
                                </fieldset>
                                <div class="text-center">
                                    <button class="btn btn-success" type="submit">提交</button>
                                    <button class="btn btn-danger" type="reset">重置</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>联系我们</h3>
                        </div>
                        <div class="widget-content">
                            <p class="text-center">副标题或简介(内容精炼)</p>
                            <form class="form-horizontal" novalidate data-validate="parsley" action="" method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <textarea required class="form-control" rows="3" name="contact_section1_title" id="contact_section1_title"></textarea>
                                    </div>
                                </fieldset>
                                <div class="text-center">
                                    <button class="btn btn-success" type="submit">提交</button>
                                    <button class="btn btn-danger" type="reset">重置</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>业务</h3>
                        </div>
                        <div class="widget-content">
                            <div id="accordion3" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse7" data-parent="#accordion7" data-toggle="collapse" class="accordion-toggle collapsed"> 业务概述 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse7">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service_introduce">副标题<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <input type="text" required class="form-control" name="service_introduce" id="service_introduce">
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse8" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed"> 业务1 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse8">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="service1_name">业务名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="service1_name" id="service1_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service1_introduce">业务简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="service1_introduce" id="service1_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse9" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed"> 业务2 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse9">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="service2_name">业务名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="service2_name" id="service2_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service2_introduce">业务简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="service2_introduce" id="service2_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse10" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed"> 业务3 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse10">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="service3_name">业务名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="service3_name" id="service3_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service3_introduce">业务简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="service3_introduce" id="service3_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse11" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed"> 业务4 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse11">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="service4_name">业务名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="service4_name" id="service4_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service4_introduce">业务简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="service4_introduce" id="service4_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse12" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed"> 业务5 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse12">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="service5_name">业务名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="service5_name" id="service5_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service5_introduce">业务简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="service5_introduce" id="service5_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse13" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed"> 业务6 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse13">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="service6_name">业务名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="service6_name" id="service6_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="service6_introduce">业务简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="service6_introduce" id="service6_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-arrow-down"></i>
                            <h3>设计流程</h3>
                        </div>
                        <div class="widget-content">
                            <div id="accordion4" class="panel-group">
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse14" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed"> 概述 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse14">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="design_introduce">描述<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <textarea required class="form-control" rows="3" name="design_introduce" id="design_introduce"></textarea>
                                                            <span class="help-block">内容尽量简短</span>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse15" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed"> 步骤1 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse15">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="design_step1_name">名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="design_step1_name" id="design_step1_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="design_step1_introduce">简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="design_step1_introduce" id="design_step1_introduce"></textarea>
                                                                <span class="help-block">内容尽量简短</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse16" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed"> 步骤2 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse16">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="design_step2_name">名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="design_step2_name" id="design_step2_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="design_step2_introduce">简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="design_step2_introduce" id="design_step2_introduce"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading"> <a href="#collapse17" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle collapsed"> 步骤3 </a> </div>
                                    <div class="panel-collapse collapse" id="collapse17">
                                        <div class="panel-body">
                                            <form data-validate="parsley" novalidate method="post" class="form-horizontal">
                                                <fieldset>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label" for="design_step3_name">名称<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <input type="text" required class="form-control" name="design_step3_name" id="design_step3_name">
                                                        </div>
                                                    </div>
                                                    <div class="row control-group">
                                                        <div class="col-md-3">
                                                            <label class="control-label text-left" for="design_step3_introduce">简介<span class="required">*</span></label>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="form-group">
                                                                <textarea required class="form-control" rows="3" name="design_step3_introduce" id="design_step3_introduce"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="text-center">
                                                    <button class="btn btn-success" type="submit">提交</button>
                                                    <button class="btn btn-danger" type="reset">重置</button>
                                                </div>
                                            </form>
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
</div>
<%@ include file = "fragment/footer.jsp" %>
</body>
</html>