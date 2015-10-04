package entity;

import java.util.Date;

//用户类
public class Users {

	private int uid;
	private String role;
	private String username;
	private String password;
	private String name;
	private String gender;
	private Date birthday;
	private String position;
	private Date onboardT;
	private String phone;
	private String email;
	private String qq;
	private String weibo;
	private String photo;
	private String weixin;
	private String mypage;

	public Users() {

	}

	public Users(int uid, String role, String username, String password, String name, String gender, Date birthday,
			String position, Date onboardT, String phone, String email, String qq, String weibo, String photo,
			String weixin, String mypage) {
		super();
		this.uid = uid;
		this.role = role;
		this.username = username;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.position = position;
		this.onboardT = onboardT;
		this.phone = phone;
		this.email = email;
		this.qq = qq;
		this.weibo = weibo;
		this.photo = photo;
		this.weixin = weixin;
		this.mypage = mypage;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Date getOnboardT() {
		return onboardT;
	}

	public void setOnboardT(Date onboardT) {
		this.onboardT = onboardT;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getWeibo() {
		return weibo;
	}

	public void setWeibo(String weibo) {
		this.weibo = weibo;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}

	public String getMypage() {
		return mypage;
	}

	public void setMypage(String mypage) {
		this.mypage = mypage;
	}

}
