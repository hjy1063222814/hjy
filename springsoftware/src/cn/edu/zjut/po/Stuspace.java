package cn.edu.zjut.po;

import java.util.Date;


public class Stuspace {
     private StuspacePK spk;
     private String stuspace_txt;
     private String stuspace_photo;
     private int stuspace_like;
     public Stuspace()
     {}
    	 public Stuspace(StuspacePK spk, String stuspace_txt,
    	String stuspace_photo, int stuspace_like) {
    	 this.spk = spk;
    	 this.stuspace_txt = stuspace_txt;
    	 this.stuspace_photo = stuspace_photo; 
    	 this.stuspace_like = stuspace_like;
    	 }
		public StuspacePK getSpk() {
			return spk;
		}
		public void setSpk(StuspacePK spk) {
			this.spk = spk;
		}
		public String getStuspace_txt() {
			return stuspace_txt;
		}
		public void setStuspace_txt(String stuspace_txt) {
			this.stuspace_txt = stuspace_txt;
		}
		public String getStuspace_photo() {
			return stuspace_photo;
		}
		public void setStuspace_photo(String stuspace_photo) {
			this.stuspace_photo = stuspace_photo;
		}
		public int getStuspace_like() {
			return stuspace_like;
		}
		public void setStuspace_like(int stuspace_like) {
			this.stuspace_like = stuspace_like;
		}

     
}
