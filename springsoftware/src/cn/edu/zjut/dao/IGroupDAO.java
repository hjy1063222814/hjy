package cn.edu.zjut.dao;

import java.util.List;

import org.hibernate.Session;

import cn.edu.zjut.po.GroupBean;
import cn.edu.zjut.po.ShowGroup;

public interface IGroupDAO {
	public Session getSession();
	public void save(GroupBean group);
	public List findByHql(String hql);
	public void update(ShowGroup instance) ;

	public void delete(GroupBean group);
	
	public void deleteall(List list);
		
	public void delete(ShowGroup group);

	public void update(GroupBean instance);
}
