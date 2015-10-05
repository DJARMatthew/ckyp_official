<%@page import="entity.Users"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if (session.getAttribute("status") != "online") {
		response.sendRedirect("login.jsp");
	}
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path ;
	SimpleDateFormat formater_hms = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	SimpleDateFormat formater_ymd = new SimpleDateFormat("yyyy-MM-dd");
	Date currentTime = new Date();
	String dateString = formater_hms.format(currentTime);
%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="container">
	<div class="top-navbar header b-b">
		<a data-original-title="Toggle navigation"
			class="toggle-side-nav pull-left" href="#"><i
			class="icon-reorder"></i> </a>

		<div class="brand pull-left">
			<a href="index.html"><img src="images/logo.png" width="147"
				height="33"></a>
		</div>
		<ul class="nav navbar-nav navbar-right  hidden-xs">
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <i class="icon-warning-sign"></i>
					<span class="badge">5</span>
			</a>
				<ul class="dropdown-menu extended notification">
					<li class="title">
						<p>You have 5 new notifications</p>
					</li>
					<li><a href="#"> <span class="label label-success"><i
								class="icon-plus"></i></span> <span class="message">创建新用户</span> <span
							class="time">1 mins</span>
					</a></li>
					<li><a href="#"> <span class="label label-danger"><i
								class="icon-warning-sign"></i></span> <span class="message">有客户发来信息</span>
							<span class="time">5 mins</span>
					</a></li>
					<li><a href="#"> <span class="label label-success"><i
								class="icon-plus"></i></span> <span class="message">创建新用户</span> <span
							class="time">10 mins</span>
					</a></li>
					<li><a href="#"> <span class="label label-info"><i
								class="icon-bullhorn"></i></span> <span class="message">员工名发布了博客</span>
							<span class="time">25 mins</span>
					</a></li>
					<li><a href="#"> <span class="label label-warning"><i
								class="icon-bolt"></i></span> <span class="message">员工名发布了</span> <span
							class="time">35 mins</span>
					</a></li>
					<li class="footer"><a href="#">清除信息</a></li>
				</ul></li>
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <i class="icon-female"></i> <span
					class="badge">3</span>
			</a>
				<ul class="dropdown-menu extended notification">
					<li class="title">
						<p>在线用户</p>
					</li>
					<li><a href="#"> <span class="photo"> <img
								src="images/profile.png" width="34" height="34"></span> <span
							class="subject"> <span class="from">John Doe</span> <span
								class="time">Just Now</span>
						</span> <span class="text"> 职称工种</span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								src="images/profile.png" width="34" height="34"></span> <span
							class="subject"> <span class="from">John Doe</span> <span
								class="time">35 mins</span>
						</span> <span class="text"> 职称工种 </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								src="images/profile.png" width="34" height="34"></span> <span
							class="subject"> <span class="from">John Doe</span> <span
								class="time">5 hours</span>
						</span> <span class="text"> Development manager at Riaxe </span>
					</a></li>
				</ul></li>
			<li class="dropdown user  hidden-xs"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <i class="icon-cog"></i> <span
					class="username"> ${accountinfo.name } </span> <i
					class="icon-caret-down small"></i>
			</a>
				<ul class="dropdown-menu">
					<li><a href="myprofile.html"><i class="icon-user"></i>
							我的档案</a></li>
					<li class="divider"></li>
					<li><a href="<%=path%>/admin/authorityOut.action"><i
							class="icon-key"></i> 注销</a></li>
				</ul></li>
		</ul>
	</div>
</div>