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
                    <h2 class="page-title">客户管理 <small>查看、删除 客户信息</small></h2>
                    <div class="form-group">
                        <label for="search-input">搜索客户</label>
                        <div class="input-group">
                            <input type="search" id="search_member" class="form-control" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名称、状态、电话、邮箱">
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
                            <h3>人物列表</h3>
                        </div>
                        <div class="widget-content">
                            <div class="body">
                                <table class="table table-striped table-images">
                                    <thead>
                                    <tr>
                                        <th width="10%"><i class="icon-info"></i> 名称</th>
                                        <th width="20%"><i class="icon-tags"></i> 电话</th>
                                        <th width="30%" class="hidden-xs"><i class="icon-time"></i> 邮箱</th>
                                        <th  width="30%" class="hidden-xs"><i class="icon-inbox"></i> 信息</th>
                                        <th width="10%"><i class="icon-cogs"></i> 操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td> 丁志嘉 </td>
                                        <td>0532-88913338-819</td>
                                        <td class="hidden-xs">dzj_mgt_ceo@ckyp-data.com</td>
                                        <td class="hidden-xs">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque eaque labore reiciendis ea natus a explicabo at cum eius autem expedita sint, quae atque porro numquam est officiis! Hic, ipsa.</td>
                                        <td>
                                            <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#custinfo"><i class="icon-edit"></i></a>
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
<div style="display: none" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-2" id="custinfo" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: none;">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">x</button>
            </div>
            <div class="modal-body">
                <h5><span class="icon-user"></span> 某某某 | <span class="icon-phone"></span> 0532-89898989-8250 | <strong>@</strong> :dzj_mgt_ceo@ckyp-data.com</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque eaque labore reiciendis ea natus a explicabo at cum eius autem expedita sint, quae atque porro numquam est officiis! Hic, ipsa.</p>
            </div>
            <div class="modal-footer text-center" style="border-top: none;">
                <button type="button" class="btn btn-warning" data-dismiss="modal"> 关闭</button>
            </div>
        </div>
    </div>
</div>
<%@ include file = "fragment/footer.jsp" %>
<script src="js/bootstrap-fileupload.js"></script>
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