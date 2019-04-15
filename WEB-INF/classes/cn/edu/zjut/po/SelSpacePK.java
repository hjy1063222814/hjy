package cn.edu.zjut.po;

public class SelSpacePK implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private String seller_sellernumber;
	private String selspace_time;
	private String stu_usernumber;
	public SelSpacePK() {
		super();
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public SelSpacePK(String seller_sellernumber, String selspace_time, String stu_usernumber) {
		super();
		this.seller_sellernumber = seller_sellernumber;
		this.selspace_time = selspace_time;
		this.stu_usernumber = stu_usernumber;
	}
	public String getSeller_sellernumber() {
		return seller_sellernumber;
	}
	public void setSeller_sellernumber(String seller_sellernumber) {
		this.seller_sellernumber = seller_sellernumber;
	}
	public String getSelspace_time() {
		return selspace_time;
	}
	public void setSelspace_time(String selspace_time) {
		this.selspace_time = selspace_time;
	}
	public String getStu_usernumber() {
		return stu_usernumber;
	}
	public void setStu_usernumber(String stu_usernumber) {
		this.stu_usernumber = stu_usernumber;
	}
	
}
