<%@page import="entity.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:iterator value="%{#session.accountinfo}" id="myinfo"/>
<div class="left-nav">
	<div id="side-nav">
		<ul id="nav">
			<li class="current"><a href="index.html"> <i
					class="icon-dashboard"></i> 便捷面板
			</a></li>
			<s:if test="%{#myinfo.role == 'admin'}">
				<li><a href="general.html"> <i class="icon-gears"></i> 公司信息
				</a></li>
				<li><a href="#"> <i class="icon-file-text-alt"></i>&nbsp;页面管理
						<span class="label label-info pull-right">3</span> <i
						class="arrow icon-angle-left"></i>
				</a>
					<ul class="sub-menu">
						<li><a href="pic_mgt.html"> <i class="icon-angle-right"></i>
								图片
						</a></li>
						<li><a href="video_mgt.html"> <i class="icon-angle-right"></i>
								视频
						</a></li>
						<li><a href="text_mgt.html"> <i class="icon-angle-right"></i>
								文字
						</a></li>
					</ul></li>
			</s:if>
			<li><a href="#"> <i class="icon-edit"></i> 文章管理 <span
					class="label label-info pull-right">
					<s:if test="%{#myinfo.role == 'admin'}">3</s:if>
					<s:if test="%{#myinfo.role !== 'admin'}">2</s:if>
					</span> <i
					class="arrow icon-angle-left"></i></a>
				<ul class="sub-menu">
					<li><a href="publish_mgt.html"> <i
							class="icon-angle-right"></i> 文章维护
					</a></li>
					<li><a href="blog_publish.html"> <i
							class="icon-angle-right"></i> 发布博客
					</a></li>
					<s:if test="%{#myinfo.role == 'admin'}">
						<li><a href="project_publish.html"> <i
								class="icon-angle-right"></i> 发布案例
						</a></li>
					</s:if>
				</ul></li>
			<s:if test="%{#myinfo.role == '！admin'}">
				<li><a href="customer_mgt.html"> <i class="icon-table"></i>
						客户管理
				</a></li>
				<li><a href="member_mgt.jsp"> <i class="icon-flag"></i>
						伙伴管理
				</a></li>
			</s:if>
			<li><a href="http://mail.ckyp-data.com" target="_blank"> <i
					class="icon-folder-open-alt"></i> 办公文档
			</a></li>
			<li><a href="myprofile.jsp"> <i class="icon-user"></i>
					&nbsp;我的档案
			</a></li>
		</ul>
	</div>
</div>