package cn.edu.zjut.service;
import cn.edu.zjut.po.User;
public interface ILoginService {
	public String login(User loginUser);
	//public boolean register(User transientInstance);
	public String register(User transientInstance);
}
