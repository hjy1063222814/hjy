package cn.edu.zjut.dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.zjut.po.*;
public class StuspaceDAO extends BaseHibernateDAO implements IStuspaceDAO{
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

	public void save(Stuspace transientInstance) {
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			session.save(transientInstance);
			tran.commit();
		}
		catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			throw re;
		}
		finally {
			session.close();
		}
	}
}
