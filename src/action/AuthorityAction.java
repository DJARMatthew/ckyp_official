package action;

import org.apache.struts2.interceptor.validation.SkipValidation;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

import entity.Users;
import service.UsersDAO;
import service.impl.UsersDAOImpl;

public class AuthorityAction extends SupperAction implements ModelDriven<Users> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5505628531551332998L;
	private Users user = new Users();
	Map<String, Object> session = ActionContext.getContext().getSession();

	// 用户登陆动作,登录方法
	public String login() {
		UsersDAO udao = new UsersDAOImpl();
		String piccode = (String) session.get(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		String checkcode = request.getParameter("checkcode");
		Users accountInfo = new Users();
		accountInfo = udao.usersLogin(user);
		if (checkcode.equals(piccode) && accountInfo != null) {
			session.put("accountinfo", accountInfo);
			session.put("status", "online");
			return "login_success";
		} else {
			return "login_failure";
		}
	}

	// 用户注销方法
	@SkipValidation
	public String logout() {

		// 判断是否session中保存了用户名，有则释放,无则保持在本页
		if (session.get("status") == "online") {

			session.clear();
		}

		return "logout_success";

	}

	// 验证表单信息方法，用户名和密码不对的时候，返回页面错误信息。本方法通过重写父类里继承的方法实现
	@Override
	public void validate() {

		UsersDAO udao = new UsersDAOImpl();
		String piccode = (String) session.get(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);

		String checkcode = request.getParameter("checkcode");
		Users accountInfo = new Users();
		accountInfo = (Users) udao.usersLogin(user);
		if (accountInfo == null) {

			this.addFieldError("loginError", "用户名或密码输入错误");

		}

		if (!(checkcode.equals(piccode))) {
			this.addFieldError("checkcodeError", "验证码输入错误");
		}
	}
	
	public Users getModel() {

		return this.user;
	}

}
