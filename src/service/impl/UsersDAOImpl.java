package service.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.Iterator;
import java.util.List;
import db.MyHibernateSessionFactory;
import entity.Users;
import service.UsersDAO;

public class UsersDAOImpl implements UsersDAO {

	// 登陆查询-数据库操作
	public Users usersLogin(Users u) {

		// 业务对象
		Transaction tx = null;// 事务对象
		Users loginInfo = null;
		String hql = "";// hql对象

		try {

			// 创建session对象
			Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			// 开启一个事物
			tx = session.beginTransaction();
			// 编辑hql语句
			hql = "from Users where username=? and password=? ";
			// 创建query对象
			Query query = session.createQuery(hql);
			// 为hql里的？参数设置
			query.setParameter(0, u.getUsername());
			query.setParameter(1, u.getPassword());
			// 开始查询，返回一个结果集
			List list = query.list();
			// 提交事务
			tx.commit();
			// 判断是否查到对应的记录
			if (list.size() == 1) {
				Iterator its = list.iterator();
				while (its.hasNext()) {
					loginInfo = (Users) its.next();
				}
				return loginInfo;
			} else {
				return loginInfo;
			}

		} catch (Exception e) {

			// TODO: handle exception
			e.printStackTrace();
			loginInfo = null;
			return loginInfo;

		} finally {

			if (tx != null) {

				// tx.commit();
				tx = null;
			}

		}
	}

	// 查询所有用户
	@Override
	public List<Users> queryAllUsers() {
		Transaction tx = null;
		List<Users> list = null;
		String hql = "";
		try{
			Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Users";
			Query query = session.createQuery(hql);
			list = query.list();
			tx.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return list;
		}finally {
			if (tx != null){
				tx = null;
			}
		}
	}

	// 根据用户ID查询用户
	@Override
	public Users queryUsersByUid(int uid) {
		Transaction tx = null;
		Users u = null;

		try {

			Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			u = (Users) session.get(Users.class, uid);
			tx.commit();
			return u;

		} catch (Exception e) {

			e.printStackTrace();
			tx.commit();
			return u;

		} finally {
			if (tx != null) {

				tx = null;

			}
		}
	}

	// 添加用户-数据库操作
	@Override
	public boolean addUsers(Users u) {
		Transaction tx = null;
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			session.save(u);
			tx.commit();
			return true;
		} catch (Exception e){
			e.printStackTrace();
			tx.commit();
			return false;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	//更新用户
	@Override
	public boolean updateUsers(Users u) {
		Transaction tx = null;
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			session.update(u);
			tx.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			tx.commit();
			return false;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	@Override
	public boolean deleteUsers(int uid) {
		Transaction tx = null;
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Users u = (Users) session.get(Users.class, uid);
			session.delete(u);
			tx.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			tx.commit();
			return false;
		}finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

}
