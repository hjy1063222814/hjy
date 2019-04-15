package cn.edu.zjut.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.edu.zjut.po.Student;

public class StudentDAO extends BaseHibernateDAO implements IStudentDAO {
	//����ѧ���û���Ϣ
	public boolean save(Student transientInstance) {
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
	
	public void update(Student transientInstance) {
		
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
