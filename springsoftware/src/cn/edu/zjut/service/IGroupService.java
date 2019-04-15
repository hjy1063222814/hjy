package cn.edu.zjut.service;

import cn.edu.zjut.po.GroupBean;

public interface IGroupService {
	public String mygroup();
	public String delete();
	public String leave();
	public String addGroup(GroupBean group) ;
	public String searchItem(String type);
	public String join(String teamid) ;
}
