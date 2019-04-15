package cn.edu.zjut.dao;

import java.util.List;

import cn.edu.zjut.po.Stuspace;

public interface IStuspaceDAO {
	
	 List findByINFO(String hql);
	 void save(Stuspace instance);
}
