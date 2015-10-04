package action;

import java.text.SimpleDateFormat;
import java.util.Map;

import com.opensymphony.xwork2.ModelDriven;

import entity.Users;
import service.UsersDAO;
import service.impl.UsersDAOImpl;
import com.opensymphony.xwork2.ActionContext;

public class EditAction extends SupperAction implements ModelDriven<Users> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4222955160096062760L;
	Map<String, Object> session = ActionContext.getContext().getSession();

	// 查询用户资料动作
	public String modify() {

		// 获得传递过来的uid
		int uid = Integer.valueOf(request.getParameter("uid"));
		UsersDAO udao = new UsersDAOImpl();
		Users u = udao.queryUsersByUid(uid);
		// 保存在会话中
		session.put("modify_users", u);
		return "modify_success";

	}

	// 保存自己用户资料
	public String save() throws Exception {

		Users u = new Users();
		Users me = (Users) session.get("accountinfo");
		
		if (me.getRole().equals("admin")) {
			u.setRole("admin");

		}else {
			u.setRole("employee");
		}
	
		u.setUid(me.getUid());
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setName(request.getParameter("name"));
		u.setGender(request.getParameter("gender"));
		//格式日期转化-转Sun Oct 27 00:00:00 CST 1985格式
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		u.setBirthday(sdf.parse(request.getParameter("birthday")));
		u.setOnboardT(sdf.parse(request.getParameter("onboardT")));
		u.setPosition(request.getParameter("position"));
		u.setPhone(request.getParameter("phone"));
		u.setEmail(request.getParameter("email"));
		u.setQq(request.getParameter("qq"));
		u.setWeibo(request.getParameter("weibo"));
		u.setMypage(request.getParameter("mypage"));

		//处理上传 
		UsersDAO udao = new UsersDAOImpl();
		udao.updateUsers(u);
	
		
		session.put("accountinfo", u);

		return "save_success";
	}

	@Override
	public Users getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
