package cn.edu.zjut.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.zjut.po.GroupBean;
import cn.edu.zjut.po.ShowGroup;

public class GroupDAO extends BaseHibernateDAO implements IGroupDAO{
	private Log log = LogFactory.getLog(GroupDAO.class);
	public List findByHql(String hql) {
	log.debug("finding Customer instance by hql");
	try {
	String queryString = hql;
	Query queryObject = getSession().createQuery(queryString);
	return queryObject.list();
	} catch (RuntimeException re) {
	log.error("find by hql failed", re);
	throw re;
	}
	}
	public void save(GroupBean group) {
		Transaction tran = null;
		Session session = null;
	log.debug("saving Customer instance");
	try {
		session = getSession();
		tran = session.beginTransaction();
		session.save(group);
		tran.commit();
	log.debug("save successful");
	} catch (RuntimeException re) {
		if(tran != null) tran.rollback();
	throw re;
	}
	finally
	{
		session.close();
		}
	}
	public void update(ShowGroup instance) 
	{
		Transaction tran = null;
		Session session = null;
		log.debug("save UserBean instance");
		try {
			
			session = getSession();
			tran = session.beginTransaction();
			session.save(instance);
			tran.commit();
		log.debug("save successful");
		} catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			re.printStackTrace();
		log.error("save failed", re);
		throw re;
		}
		finally
		{
			session.close();
			}

	}
	public void delete(ShowGroup user)
	{

		Transaction tran = null;
		Session session = null;
		log.debug("delete UserBean instance");
		try {
			
			session = getSession();
			tran = session.beginTransaction();
			session.delete(user);
			tran.commit();
		log.debug("delete successful");
		} catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			re.printStackTrace();
		log.error("delete failed", re);
		throw re;
		}
		finally
		{
			session.close();
			}
		

	}
	public void deleteall(List list)
	{

		Transaction tran = null;
		Session session = null;
		log.debug("delete UserBean instance");
		try {
			System.out.println("okok");
			session = getSession();
			tran = session.beginTransaction();
			for(int i=0;i<list.size();i++)
				session.delete((ShowGroup)list.get(i));
			tran.commit();
		log.debug("delete successful");
		} catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			re.printStackTrace();
		log.error("delete failed", re);
		throw re;
		}
		finally
		{
			session.close();
			}
		

	}
	public void delete(GroupBean group)
	{

		Transaction tran = null;
		Session session = null;
		log.debug("updating UserBean instance");
		try {
			
			session = getSession();
			tran = session.beginTransaction();
			session.delete(group);
			tran.commit();
		log.debug("update successful");
		} catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			re.printStackTrace();
		log.error("update failed", re);
		throw re;
		}
		finally
		{
			session.close();
			}
		

	}
	public void update(GroupBean instance) {
		Transaction tran = null;
		Session session = null;
		log.debug("updating UserBean instance");
		try {
			session = getSession();
			tran = session.beginTransaction();
			session.merge(instance);
			tran.commit();
		log.debug("update successful");
		} catch (RuntimeException re) {
			if(tran != null) tran.rollback();
		log.error("update failed", re);
		throw re;
		}
		finally
		{
			session.close();
			}
	}
}
