package cn.edu.zjut.service;

import cn.edu.zjut.po.*;

public interface ILikeService {
	public boolean like(String usernumber,String time);
	public void addlike(String usernumber,String time);
	public void deletelike(String usernumber,String time);
}
