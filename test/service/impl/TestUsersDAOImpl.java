package service.impl;

import java.util.Date;

import org.junit.Test;

import entity.Users;
import junit.framework.Assert;
import service.UsersDAO;

public class TestUsersDAOImpl {
	
	@Test
	public void testUsersLogin(){
		
		Users u = new Users(1, "admin", "admin", "admin", "丁志嘉", "男", new Date(), "网站管理员", new Date(), "13905328489", "dzj_mgt_ceo@ckyp-data.com", "93659249", "http://www.baidu.com", "*.jpg", "*.jpg", "*.jpg");
		UsersDAO udao = new UsersDAOImpl();
		System.out.println(u.getBirthday());
		Assert.assertEquals(true, udao.usersLogin(u));
//		Assert.assertEquals(true, udao.addUsers(u));
	}
	
	@Test
	public void testAddUsers(){
		Users u = new Users();
		u.setRole("admin");
		u.setUsername("admin");
		u.setPassword("admin");
		u.setName("丁志嘉");
		u.setGender("男");
		u.setBirthday(new Date());
		u.setPosition("网站管理员");
		u.setOnboardT(new Date());
		u.setPhone("13905328489");
		u.setEmail("dzj_mgt_ceo@ckyp-data.com");
		UsersDAO udao = new UsersDAOImpl();
		System.out.println(u.getBirthday());
//		Assert.assertEquals(true, udao.addUsers(u));
	}
}
