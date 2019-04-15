package cn.edu.zjut.action;

import cn.edu.zjut.po.*;
import cn.edu.zjut.service.*;

public class LikeAction {
	private String stu_usernumber;
	private String stuspace_time;
	private ILikeService likeService = null;
	boolean message;


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


	public void setLikeService(ILikeService likeService) {
		this.likeService = likeService;
	}


	public String findLike() {
		message=likeService.like(stu_usernumber,stuspace_time);
			if(message==true)
			{	likeService.deletelike(stu_usernumber,stuspace_time);
			}
			else if(message==false)
			{	likeService.addlike(stu_usernumber,stuspace_time);
			}	
			return "success"; 
	}

}
