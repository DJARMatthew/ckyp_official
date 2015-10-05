package action;

import java.text.SimpleDateFormat;
import java.util.List;
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

	// 查询所有用户资料动作
	public String queryalluser(){
		
		UsersDAO udao = new UsersDAOImpl();
		List<Users> list = udao.queryAllUsers();
		int nextuid = list.size() + 1;
		if (list != null && list.size() >0) {
			session.put("userinfo", list);
			session.put("nextuid", String.valueOf(nextuid));
		}
		
		return "queryalluser_success";
	}
	
	//修改用户资料
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
	public String profile() throws Exception {

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
		u.setPhoto(me.getPhoto());
		u.setWeixin(me.getWeixin());
		UsersDAO udao = new UsersDAOImpl();
		udao.updateUsers(u);
	
		
		session.put("accountinfo", u);

		return "save_success";
	}

	
	//保存其他用户资料
	public String adduser() throws Exception {

		Users u = new Users();
		u.setRole("employee");
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setName(request.getParameter("name"));
		u.setGender(request.getParameter("gender"));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		u.setBirthday(sdf.parse(request.getParameter("birthday")));
		u.setOnboardT(sdf.parse(request.getParameter("onboardT")));
		u.setPosition(request.getParameter("position"));
		u.setPhone(request.getParameter("phone"));
		u.setEmail(request.getParameter("email"));
		u.setQq(request.getParameter("qq"));
		u.setWeibo(request.getParameter("weibo"));
		u.setMypage(request.getParameter("mypage"));
		if (session.get("adduserweixin") != null) {
			u.setWeixin((String) session.get("adduserweixin"));
		}
		if (session.get("adduserphoto") != null){
			u.setPhoto((String) session.get("adduserphoto"));
		}
		UsersDAO udao = new UsersDAOImpl();
		udao.addUsers(u);
		return "adduser_success";
	}
	
	//删除用户-根据uid
	public String userdelete(){
		UsersDAO udao = new UsersDAOImpl();
		int uid = Integer.valueOf(request.getParameter("uid"));
		udao.deleteUsers(uid);
		
		return "deleteuser_success";
	}
	
	@Override
	public Users getModel() {
		// TODO Auto-generated method stub
		return null;
	}
}
