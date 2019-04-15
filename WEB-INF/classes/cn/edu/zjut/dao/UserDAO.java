package cn.edu.zjut.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.zjut.po.User;

public class UserDAO extends BaseHibernateDAO implements IUserDAO {
	//��ѯ�û��������û���¼��
	public List findByHql(String hql) {
	
		try {
			
			String queryString = hql;
			Query queryObject = getSession().createQuery(queryString);
		
			return queryObject.list();
			
		}
		catch (RuntimeException re) {
			
			throw re;
		}
	}
	//����û��������û�ע�ᣩ
	public boolean save(User transientInstance) {
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			session.save(transientInstance);
			tran.commit();
			return true;
		}
		catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			return false;
		}
		finally {
			session.close();
		}
	}
	public List findByINFO(String hql){
		
		try {
			
			String queryString = hql;
			Query queryObject = getSession().createQuery(queryString);
		
			return queryObject.list();
			
		}
		catch (RuntimeException re) {
			
			throw re;
		}
	}

}
