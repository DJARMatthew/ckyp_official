package service;

import java.util.List;

import entity.Users;

//用户业务逻辑接口
public interface UsersDAO {

	// 用户登录方法
	public Users usersLogin(Users u);// 用户登录是否成功
	// 查询所有用户资料

	public List<Users> queryAllUsers();

	// 根据用户ID查询数据
	public Users queryUsersByUid(int uid);

	// 添加用户资料
	public boolean addUsers(Users u);

	// 修改用户资料
	public boolean updateUsers(Users u);

	// 删除用户 资料
	public boolean deleteUsers(int uid);

}
