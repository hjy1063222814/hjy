package cn.edu.zjut.dao;

import java.util.List;

import cn.edu.zjut.po.Like;

public interface ILikeDAO {
	 List findByPK(String hql);
	 void save(Like instance);
	 void delete(Like instance);
}
