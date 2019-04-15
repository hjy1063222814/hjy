package cn.edu.zjut.po;

public class Student {
	private String stu_usernumber;
	private String user_username;
	private String stu_petname;
	private String stu_studentnumber;
	private String stu_name;
	private String stu_school;
	private String stu_headphoto;
	private int stu_age;
	private String stu_sex;
	private String stu_email;
	private String stu_telephone;
	private String stu_hobby;
	public String getStu_usernumber() {
		return stu_usernumber;
	}
	public void setStu_usernumber(String stu_usernumber) {
		this.stu_usernumber = stu_usernumber;
	}
	public String getUser_username() {
		return user_username;
	}
	public void setUser_username(String user_username) {
		this.user_username = user_username;
	}
	public String getStu_petname() {
		return stu_petname;
	}
	public void setStu_petname(String stu_petname) {
		this.stu_petname = stu_petname;
	}
	public String getStu_studentnumber() {
		return stu_studentnumber;
	}
	public void setStu_studentnumber(String stu_studentnumber) {
		this.stu_studentnumber = stu_studentnumber;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getStu_school() {
		return stu_school;
	}
	public void setStu_school(String stu_school) {
		this.stu_school = stu_school;
	}
	public String getStu_headphoto() {
		return stu_headphoto;
	}
	public void setStu_headphoto(String stu_headphoto) {
		this.stu_headphoto = stu_headphoto;
	}
	public int getStu_age() {
		return stu_age;
	}
	public void setStu_age(int stu_age) {
		this.stu_age = stu_age;
	}
	public String getStu_sex() {
		return stu_sex;
	}
	public void setStu_sex(String stu_sex) {
		this.stu_sex = stu_sex;
	}
	public String getStu_email() {
		return stu_email;
	}
	public void setStu_email(String stu_email) {
		this.stu_email = stu_email;
	}
	public String getStu_telephone() {
		return stu_telephone;
	}
	public void setStu_telephone(String stu_telephone) {
		this.stu_telephone = stu_telephone;
	}
	public String getStu_hobby() {
		return stu_hobby;
	}
	public void setStu_hobby(String stu_hobby) {
		this.stu_hobby = stu_hobby;
	}
	public Student(String stu_usernumber, String user_username,
			String stu_petname, String stu_studentnumber, String stu_name,
			String stu_school, String stu_headphoto, int stu_age,
			String stu_sex, String stu_email, String stu_telephone,
			String stu_hobby) {
		super();
		this.stu_usernumber = stu_usernumber;
		this.user_username = user_username;
		this.stu_petname = stu_petname;
		this.stu_studentnumber = stu_studentnumber;
		this.stu_name = stu_name;
		this.stu_school = stu_school;
		this.stu_headphoto = stu_headphoto;
		this.stu_age = stu_age;
		this.stu_sex = stu_sex;
		this.stu_email = stu_email;
		this.stu_telephone = stu_telephone;
		this.stu_hobby = stu_hobby;
	}
	public Student() {
		super();
	}
	
	
	
}
