<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "fragment/head.jsp" %>
  <body>
	<%@ include file = "fragment/nav.jsp" %> 
    <div class="full page-header parallax top-shift" style="background-image: url(images/@stock/contact.jpg)">
      <div class="row">
        <div class="large-12 columns">
          <div class="header-intro centered-text">
            <div class="two spacing"></div>
            <h1 class="white">设计案例</h1>
            <p class="white sub-title">平面设计、UI设计、网站搭建、电商设计、动画三维</p>
            <div class="two spacing"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="full centered-text no-overflow">
      <%@ include file = "fragment/projects.jsp" %>
      <a href="" class="button boxed black slideInUp">加载更多</a>
    </div>
	<%@ include file = "fragment/footer.jsp" %>
  </body>
</html>
