package cn.edu.zjut.po;

public class LikePK implements java.io.Serializable{
	 public LikePK()
     {}
    public String getStu_usernumber() {
		return stu_usernumber;
	}
	public void setStu_usernumber(String stu_usernumber) {
		this.stu_usernumber = stu_usernumber;
	}
	public String getStuspace_time() {
		return stuspace_time;
	}
	public void setStuspace_time(String stuspace_time) {
		this.stuspace_time = stuspace_time;
	}
	public String getLike_usernumber() {
		return like_usernumber;
	}
	public void setLike_usernumber(String like_usernumber) {
		this.like_usernumber = like_usernumber;
	}
	private String stu_usernumber;
    private String stuspace_time;
    private String like_usernumber;
}
