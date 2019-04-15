package cn.edu.zjut.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.zjut.po.Space;

public class SpaceDAO extends BaseHibernateDAO implements ISpaceDAO{
	public List<Space> comment(String hql) {
    	Transaction tran = null;
    	Session session = null;
    	try {
        session = getSession();
        tran = session.beginTransaction();
		Query query=getSession().createQuery(hql);
        @SuppressWarnings("unchecked")
		List<Space> list =query.list();
        return list;
    }catch (RuntimeException re) { 
		if(tran != null) 
			tran.rollback();
		throw re;
		} finally {
			session.close();
			}
    }

}
