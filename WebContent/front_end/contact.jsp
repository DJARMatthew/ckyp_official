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
            <h1 class="white">联 系 我 们</h1>
            <p class="white sub-title">您可以通过邮箱、电话等方式与我们取得联系，也可以在下方提交您的需求表格，我们的业务代表将在最短的时间内答复您</p>
            <div class="two spacing"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="full dark parallax" style="background: #f9f9f9;">
      <div class="four spacing"></div>
      <div class="row">
        <div class="large-3 columns">
          <div class="contact-details wow slideInUp">
            <i class='icon-basic-geolocalize-01'></i>
            <h3>公 司 地 址</h3>
            <p>41 Dean Street, London, UK.</p>
          </div>
        </div>
        <div class="large-3 columns">
          <div class="contact-details wow slideInUp">
            <i class='icon-basic-headset'></i>
            <h3>联 系 电 话</h3>
            <p>+86 (03) 9810 4612</p>
          </div>
        </div>
        <div class="large-3 columns">
          <div class="contact-details wow slideInUp">
            <i class='icon-basic-mail'></i>
            <h3>电 子 邮 箱</h3>
            <p>info@p/n-team.com</p>
          </div>
        </div>
        <div class="large-3 columns">
          <div class="contact-details wow slideInUp">
            <i class='icon-basic-message'></i>
            <h3>在 线 联 系</h3>
            <p>info@p/n-team.com</p>
          </div>
        </div>
      </div>
      <div class="spacing"></div>
    </div>
    <div class="full" style="background: #FF8635;">
      <div class="row">
        <div class="large-12 columns">
          <div class='form'>
            <form id='contact_form' method='POST'>
              <p id='thanks' class='hide'>谢谢！您的需求我们已经收到，请耐心等候！我们的业务代表将在48小时内与您联系，请及时查看邮箱或接听电话。</p>
              <input class='required' name='name' placeholder='NAME' type='text'>
              <input class='required email' name='email' placeholder='EMAIL' type='text'>
              <input class='required' name='subject' placeholder='SUBJECT' type='text'>
              <textarea class='required' name='message' placeholder='MESSAGE'></textarea>
              <div class='spacing'></div>
              <input class='button white small boxed' type='submit' name="submit" value="提交">
              <input class='button white small boxed' type='reset' name="reset" value="重置">
            </form>
          </div>
        </div>
      </div>
    </div>
	<%@ include file ="fragment/footer.jsp" %>
	<script src="js/jquery.validate.js"></script>
  </body>
</html>
