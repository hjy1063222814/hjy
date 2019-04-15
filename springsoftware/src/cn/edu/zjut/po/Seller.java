package cn.edu.zjut.po;

public class Seller {
	private String seller_sellernumber;
	private String user_username;
	private String seller_sellername;
	private String seller_photo;
	private String seller_place;
	private String seller_telephone;
	private int seller_average;
	private String seller_type;
	private float seller_score;
	private String seller_opentime;
	private String seller_sellerinfo;
	public Seller(String seller_sellernumber, String user_username,
			String seller_sellername, String seller_photo, String seller_place,
			String seller_telephone, int seller_average, String seller_type,
			float seller_score, String seller_opentime, String seller_sellerinfo) {
		super();
		this.seller_sellernumber = seller_sellernumber;
		this.user_username = user_username;
		this.seller_sellername = seller_sellername;
		this.seller_photo = seller_photo;
		this.seller_place = seller_place;
		this.seller_telephone = seller_telephone;
		this.seller_average = seller_average;
		this.seller_type = seller_type;
		this.seller_score = seller_score;
		this.seller_opentime = seller_opentime;
		this.seller_sellerinfo = seller_sellerinfo;
	}
	public Seller() {
		super();
	}
	public String getSeller_sellernumber() {
		return seller_sellernumber;
	}
	public void setSeller_sellernumber(String seller_sellernumber) {
		this.seller_sellernumber = seller_sellernumber;
	}
	public String getUser_username() {
		return user_username;
	}
	public void setUser_username(String user_username) {
		this.user_username = user_username;
	}
	public String getSeller_sellername() {
		return seller_sellername;
	}
	public void setSeller_sellername(String seller_sellername) {
		this.seller_sellername = seller_sellername;
	}
	public String getSeller_photo() {
		return seller_photo;
	}
	public void setSeller_photo(String seller_photo) {
		this.seller_photo = seller_photo;
	}
	public String getSeller_place() {
		return seller_place;
	}
	public void setSeller_place(String seller_place) {
		this.seller_place = seller_place;
	}
	public String getSeller_telephone() {
		return seller_telephone;
	}
	public void setSeller_telephone(String seller_telephone) {
		this.seller_telephone = seller_telephone;
	}
	public int getSeller_average() {
		return seller_average;
	}
	public void setSeller_average(int seller_average) {
		this.seller_average = seller_average;
	}
	public String getSeller_type() {
		return seller_type;
	}
	public void setSeller_type(String seller_type) {
		this.seller_type = seller_type;
	}
	public float getSeller_score() {
		return seller_score;
	}
	public void setSeller_score(float seller_score) {
		this.seller_score = seller_score;
	}
	public String getSeller_opentime() {
		return seller_opentime;
	}
	public void setSeller_opentime(String seller_opentime) {
		this.seller_opentime = seller_opentime;
	}
	public String getSeller_sellerinfo() {
		return seller_sellerinfo;
	}
	public void setSeller_sellerinfo(String seller_sellerinfo) {
		this.seller_sellerinfo = seller_sellerinfo;
	}
	
	
	
}
