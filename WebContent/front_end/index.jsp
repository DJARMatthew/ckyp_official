<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="fragment/head.jsp" %>
<body>
<%@ include file="fragment/nav.jsp" %>
  <div class="full no-padding video-bg no-overflow fullscreen-header top-shift">
      <div class="touch-video-image" style="background-image: url(images/@stock/touch-video-image.jpg);">
      </div>
      <video autoplay='autoplay' class="no-overflow" id='fullscreen-video' loop='loop' muted='muted' poster="images/@stock/touch-video-image.jpg">
        <source src='images/@stock/design.mp4' type='video/mp4'>
        <source src='images/@stock/design.webm' type='video/webm'>
      </video>
      <div class="home-overlay"></div>
      <div class="header-intro centered-text">
        <h1 class="wow slideInUp">CKYP</h1>
        <p class="sub-title wow slideInDown">诚客奕品设计工作室</p>
      </div>
    </div>
    <div class="full centered-text no-padding" style="background: #fff;">
      <div class="four spacing"></div>
      <div class="three spacing"></div>
      <div class="row">
        <div class="large-12 columns">
          <h2>我 们 用 心 设 计</h2>
          <p class="sub-title">快速, 创新, 独特， 高效</p>
          <div class="four spacing"></div>
        </div>
      </div>
	  <%@ include file="fragment/count.jsp" %>
      <ul class="images-overlap">
        <li class="image-1"><img src="images/@stock/image-1.jpg" alt=""></li>
        <li class="image-2"><img src="images/@stock/image-2.jpg" alt=""></li>
        <li class="image-3"><img src="images/@stock/image-3.jpg" alt=""></li>
        <li class="image-4"><img src="images/@stock/image-4.jpg" alt=""></li>
      </ul>
    </div>
 	<%@ include file="fragment/service.jsp" %>
    <div class="full centered-text no-overflow">
      <div class="row">
        <div class="large-12 columns">
          <h2>设计案例</h2>
          <p class="sub-title">平面设计、UI设计、网站搭建、电商设计、动画三维</p>
          <div class="four spacing"></div>
        </div>
      </div>
      <%@ include file = "fragment/projects.jsp" %>
      <a href="works.jsp" class="button boxed black slideInUp">查看全部</a>
    </div>
	<%@ include file = "fragment/design_process.jsp" %>
    <div class="full parallax light" style="background-image: url(images/@stock/bottom-bg.jpg);">
      <div class="row centered-text">
        <div class="large-12 columns">
          <h1 class="white wow slideInUp">有意与我们联系？</h1>
          <p class="sub-title white wow slideInUp">请填写洽谈表格</p>
          <div class="four spacing"></div>
          <div><a href="#" class="button boxed">洽谈表格</a></div>
        </div>
      </div>
    </div>
	<%@ include file = "fragment/footer.jsp" %>  
  </body>
</html>
