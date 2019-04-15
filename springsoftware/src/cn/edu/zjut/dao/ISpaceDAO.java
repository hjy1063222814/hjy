package cn.edu.zjut.dao;

import java.util.List;

import cn.edu.zjut.po.Space;

public interface ISpaceDAO {
	public List<Space> comment(String hql);
}
