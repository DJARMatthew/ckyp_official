<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="fragment/head.jsp" %>
  <body>
   <%@ include file="fragment/nav.jsp" %>
    <div class="full page-header parallax top-shift" style="background-image: url(images/@stock/about-us.jpg)">
      <div class="row">
        <div class="large-12 columns">
          <div class="header-intro centered-text">
            <div class="two spacing"></div>
            <h1 class="white">关 于 我 们</h1>
            <p class="white sub-title">我们是一群热爱生活并敢于创新的年轻人！</p>
            <div class="two spacing"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="full">
      <%@ include file = "fragment/count.jsp" %>
    </div>
    <div class="full no-overflow" style="background: #f9f9f9;">
      <div class="row centered-text">
        <div class="large-12 columns">
          <h2>我 们 的 哲 学</h2>
          <p class="sub-title">我们坚信和实践着3条原则</p>
          <div class="four spacing"></div>
        </div>
      </div>
      <div class="row">
        <div class="large-6 columns">
          <ul class="shapes-overlap">
            <li class="overlap-1"></li>
            <li class="overlap-2"></li>
            <li class="overlap-3"></li>
          </ul>
        </div>
        <div class="large-6 columns">
          <div class="principle wow slideInDown">
            <h3><span>01.</span> 工作不能缺少激情</h3>
            <p>Aliquid tempore, earum illum ut temporibus. Obcaecati voluptate ullam pariatur reiciendis optio harum quae aut, eveniet explicabo. Commodi pariatur ut provident ipsam.</p>
          </div>
          <div class="principle wow fadeIn" data-wow-delay="0.6s">
            <h3><span>02.</span> 向失败中学习</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid tempore, earum illum ut temporibus. Obcaecati voluptate ullam pariatur reiciendis optio harum quae aut, eveniet explicabo.</p>
          </div>
          <div class="principle wow fadeIn" data-wow-delay="1s">
            <h3><span>03.</span> 尝试、再尝试，直到成功</h3>
            <p>Obcaecati voluptate ullam pariatur reiciendis optio harum quae aut, eveniet explicabo. Commodi pariatur ut provident ipsam.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="full">
      <div class="row">
        <div class="large-12 columns">
          <h2>我们的团队</h2>
        </div>
      </div>
      <div class="two spacing"></div>
      <div class="row">
        <div class="large-3 columns">
          <div class="member slideInUp">
            <img src="images/@stock/member-1.jpg" alt="">
            <img class='colored' src="images/@stock/member-1-c.jpg" alt="">
            <h4>Tom Hanson</h4>
            <p class='position'>Founder</p>
            <ul class="socials">
              <li><a href="#"><i class='fa fa-weibo'></i></a></li>
              <li><a href="#"><i class='fa fa-weixin'></i></a></li>
            </ul>
          </div>
        </div>
        <div class="large-3 columns">
          <div class="member slideInUp" data-wow-delay="0.2s">
            <img src="images/@stock/member-2.jpg" alt="">
            <img class='colored' src="images/@stock/member-2-c.jpg" alt="">
            <h4>Kate Holms</h4>
            <p class='position'>Project manager</p>
            <ul class="socials">
              <li><a href="#"><i class='fa fa-weibo'></i></a></li>
              <li><a href="#"><i class='fa fa-weixin'></i></a></li>
            </ul>
          </div>
        </div>
        <div class="large-3 columns">
          <div class="member slideInUp" data-wow-delay="0.4s">
            <img src="images/@stock/member-3.jpg" alt="">
            <img class='colored' src="images/@stock/member-3-c.jpg" alt="">
            <h4>Munk Taylor</h4>
            <p class='position'>Web designer</p>
            <ul class="socials">
              <li><a href="#"><i class='fa fa-weibo'></i></a></li>
              <li><a href="#"><i class='fa fa-weixin'></i></a></li>
            </ul>
          </div>
        </div>
          <div class="large-3 columns">
            <div class="member slideInUp" data-wow-delay="0.6s">
              <img src="images/@stock/member-5.jpg" alt="">
              <img class='colored' src="images/@stock/member-5-c.jpg" alt="">
              <h4>Zam White</h4>
              <p class='position'>Developer</p>
              <ul class="socials">
                <li><a href="#"><i class='fa fa-weibo'></i></a></li>
                <li><a href="#"><i class='fa fa-weixin'></i></a></li>
              </ul>
            </div>
          </div>
      </div>
    </div>
	<%@ include file = "fragment/service.jsp" %>  
	<%@ include file ="fragment/design_process.jsp" %>  
    <div class="full" style="background: #f9f9f9;">
      <div class='row'>
        <div class='large-12 columns'>
          <div class='clients'>
            <div><a href="#"><img alt="" src="images/@stock/client-1.png" /></a></div>
            <div><a href="#"><img alt="" src="images/@stock/client-2.png" /></a></div>
            <div><a href="#"><img alt="" src="images/@stock/client-3.png" /></a></div>
            <div><a href="#"><img alt="" src="images/@stock/client-4.png" /></a></div>
            <div><a href="#"><img alt="" src="images/@stock/client-5.png" /></a></div>
            <div><a href="#"><img alt="" src="images/@stock/client-6.png" /></a></div>
          </div>
        </div>
      </div>
    </div>
	<%@ include file = "fragment/footer.jsp" %>
  </body>
</html>
