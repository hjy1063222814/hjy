package cn.edu.zjut.po;

public class StuspacePK implements java.io.Serializable {
	 public StuspacePK()
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
	private String stu_usernumber;
    private String stuspace_time;
}
