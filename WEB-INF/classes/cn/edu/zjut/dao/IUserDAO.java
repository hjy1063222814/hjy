package cn.edu.zjut.dao;
import java.util.List;
import cn.edu.zjut.po.User;
public interface IUserDAO {
	 List findByHql(String hql);
	 boolean save(User instance);
	 public List findByINFO(String hql);
}

