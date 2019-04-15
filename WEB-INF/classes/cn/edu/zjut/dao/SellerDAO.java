package cn.edu.zjut.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.zjut.po.Seller;
import cn.edu.zjut.po.Space;

public class SellerDAO extends BaseHibernateDAO implements ISellerDAO {
	//�̼���פ�������̼���Ϣ��
	public List searchByText(String hql)     //通过商家名或特色查找
	{
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			Query queryObject = session.createQuery(hql);
			return queryObject.list();
		} catch (RuntimeException re) {
			if(tran != null) tran.rollback();
			throw re;
		} finally {
			session.close();
		}
	}
	public boolean save(Seller transientInstance) {
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
	public List<Seller> findByHql(String hql) {
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			Query query = getSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Seller> list = query.list();
			return list;
		} catch (RuntimeException re) {
			if (tran != null)
				tran.rollback();
			throw re;
		} finally {
			session.close();
		}
	}

	public List<Space> comment(String hql) {
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			Query query = getSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Space> list = query.list();
			return list;
		} catch (RuntimeException re) {
			if (tran != null)
				tran.rollback();
			throw re;
		} finally {
			session.close();
		}
	}

	public void add(Space transientInstance) {
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			session.save(transientInstance);
			tran.commit();
		} catch (RuntimeException re) {
			if (tran != null)
				tran.rollback();
			throw re;
		} finally {
			session.close();
		}
	}

	public double checkavg(String hql)
	{
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			Query query = getSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List list = query.list();
			return (double)list.get(0);
		} catch (RuntimeException re) {
			if (tran != null)
				tran.rollback();
			throw re;
		} finally {
			session.close();
		}
	}
	
	public void update(Seller transientInstance) {
		
		Transaction tran = null;
		Session session = null;
		try {
			session = getSession();
			tran = session.beginTransaction();
			session.update(transientInstance);
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
