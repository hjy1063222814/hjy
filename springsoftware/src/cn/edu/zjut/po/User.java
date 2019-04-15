package cn.edu.zjut.po;

public class User {
	private String user_username;
	private String user_password;
	private String user_type;
	public String getUser_username() {
		return user_username;
	}
	public void setUser_username(String user_username) {
		this.user_username = user_username;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public User(String user_username, String user_password, String user_type) {
		
		this.user_username = user_username;
		this.user_password = user_password;
		this.user_type = user_type;
	}
	public User() {
		
	}	
	
}
