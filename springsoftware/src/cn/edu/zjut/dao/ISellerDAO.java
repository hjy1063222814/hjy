package cn.edu.zjut.dao;

import java.util.List;

import cn.edu.zjut.po.Seller;
import cn.edu.zjut.po.Space;

public interface ISellerDAO {
	public List searchByText(String hql);
	boolean save(Seller instance);
	public List<Seller> findByHql(String hql);
	public List<Space> comment(String hql);
	public void add(Space transientInstance);
	public void update(Seller transientInstance);
	public double checkavg(String hql);
}
