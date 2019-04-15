package cn.edu.zjut.service;

import java.util.List;
import java.util.Map;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.dao.IGroupDAO;
import cn.edu.zjut.dao.IStudentDAO;
import cn.edu.zjut.dao.GroupDAO;
import cn.edu.zjut.po.GroupBean;
import cn.edu.zjut.po.ShowGroup;
import cn.edu.zjut.po.Student;


public class GroupService implements IGroupService{
	private Map<String, Object> request, session;
	private ShowGroup user= null;
	private IGroupDAO dao= null;
	private GroupBean group= null;
	public IGroupDAO getDao() {
		return dao;
	}

	public void setDao(IGroupDAO dao) {
		this.dao = dao;
	}

	public ShowGroup getUser() {
		return user;
	}

	public void setUser(ShowGroup user) {
		this.user = user;
	}

	public GroupBean getGroup() {
		return group;
	}

	public void setGroup(GroupBean group) {
		this.group = group;
	}
	public String mygroup() {                      //������ѯ��
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		ShowGroup User;
		String stuId=stu.getStu_usernumber();
		String hql = "from ShowGroup as user where stuId='"+stuId+"'";
				List list = dao.findByHql(hql);
				
				if(list.isEmpty())             //�����ѯ���Ϊ�շ���false
				{
					dao.getSession().close();
					String message="你没有加入任何组团活动";                //���������ʾ������Ϣ
					request.put("message",message);
				return "null";
				}
				User=(ShowGroup)list.get(0);
				String teamid=User.getTeamId();
				
				 if(User.getTeamId()==null)                  //����û�û�вμ����ŷ���false
				{
					dao.getSession().close();
					String message="当前无组团信息";                //���������ʾ������Ϣ
					request.put("message",message);
				return "null";
				}
				 String hql2 = "from GroupBean as user where teamId='"+teamid+"'";
					List list2 = dao.findByHql(hql2);
					GroupBean group=(GroupBean)list2.get(0);
				 if(User.getStuId().equals(group.getOrganizer()))               //�ж��û��μ����ŵ����
				{	
					session.put("group",group);
					dao.getSession().close();
				return "leader";
				}
				else 
				{
					
					session.put("group",group);
					dao.getSession().close();
				return "member";
				}
}
	
	public String delete()              //������������ɾ���Ŷ�
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		ShowGroup User;
		String stuId=stu.getStu_usernumber();
		String hql = "from GroupBean as User where organizer='"+stuId+"'";
				List list = dao.findByHql(hql);
				GroupBean group=(GroupBean)list.get(0);
				
				String teamId=group.getTeamId();
				String hql2 = "from ShowGroup as group where teamId='"+teamId+"'";                 //����student���е�teamidȥ��ѯgroup���������Ϣ
				List list2 = dao.findByHql(hql2);

				Transaction tran = null;
				try {
					tran = dao.getSession().beginTransaction();
					dao.deleteall(list2);
					tran.commit();
				tran = dao.getSession().beginTransaction();
				dao.delete(group);
				tran.commit();
				String message="解散团队成功";                //���������ʾ������Ϣ
				request.put("message",message);
				return "success";
				} catch (Exception e) {
					e.printStackTrace();
				if(tran != null) tran.rollback();
				return "fail";
				} finally {
				dao.getSession().close();
				}
	}
	
	public String leave()              //�������μ����˳��Ŷ�
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		ShowGroup User;
		String stuId=stu.getStu_usernumber();
		String hql = "from ShowGroup as User where stuId='"+stuId+"'";
				List list = dao.findByHql(hql);
				User=(ShowGroup)list.get(0);
				String teamId=User.getTeamId();
				String hql2 = "from GroupBean as group where teamId='"+teamId+"'";                 //����student���е�teamidȥ��ѯgroup���������Ϣ
				List list2 = dao.findByHql(hql2);
				group=(GroupBean)list2.get(0);
				Transaction tran = null;
				try {
				group.setNumNow(group.getNumNow()-1);         //�μ����˳�ʱ����ǰ����-1
				tran = dao.getSession().beginTransaction();               
				dao.delete(User);
				tran.commit();
				tran = dao.getSession().beginTransaction();               
				dao.update(group);
				tran.commit();
				String message="脱离团队成功";                //���������ʾ������Ϣ
				request.put("message",message);
				return "success";
				} catch (Exception e) {
					e.printStackTrace();
				if(tran != null) tran.rollback();
				return "fail";
				} finally {
				dao.getSession().close();
				}
	}
	
	
	public String addGroup(GroupBean group)              //���������Ŷ�
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		ShowGroup user=new ShowGroup();
		String stuId=stu.getStu_usernumber();
	
		String hql = "from ShowGroup as user where stuId="+stuId;
		List list = dao.findByHql(hql);
		if(list.size()!=0)                 //�������ҡ��Ƿ��Ѿ���������
		{
			String message="创建失败，你已创建或加入一个组团";                //���������ʾ������Ϣ
			request.put("message",message);
			return "fail";
		}
		int i = (int) (Math.random() * 90000) + 10000;
		group.setTeamId(Integer.toString(i));               //Ϊ�˸�ÿ���Ŷ�һ�޶��ı��������ά��������ʹ��stuid����Ϊteamid
		user.setTeamId(Integer.toString(i));
		group.setOrganizer(stuId);
		user.setStuId(stuId);
		group.setNumNow(1);
		Transaction tran = null;
		try {
		tran = dao.getSession().beginTransaction();               
		dao.save(group);
		tran.commit();
		tran = dao.getSession().beginTransaction();               
		dao.update(user);
		tran.commit();
		return "success";
		} catch (Exception e) {
			e.printStackTrace();
		if(tran != null) tran.rollback();
		return "fail";
		} finally {
		dao.getSession().close();
		}
	}
	
	public String searchItem(String type)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		ShowGroup User;
		String stuId=stu.getStu_usernumber();
		List list2=null;
				if(type=="all")
				{
					String hql2 = "from GroupBean as user where numNow<limitNum";                 //����group0���е�typeȥ��ѯgroup���������Ϣ
				list2 = dao.findByHql(hql2);
				dao.getSession().close();}
				else if(type!="all")
				{
				String hql2 = "from GroupBean as user where numNow<limitNum and type='"+type+"'";                 //����group0���е�typeȥ��ѯgroup���������Ϣ
				list2 = dao.findByHql(hql2);
				dao.getSession().close();
				}
				if(list2.size()==0)
				{
					String message="该分类没有组团!";                //���������ʾ������Ϣ
					request.put("message",message);
					return "fail";
				}
				else
				{
				group=(GroupBean)list2.get(0); //��List�д��GroupBeanʵ������ʼ��group
				}
				
				session.put("list",list2);
				session.put("group",group);
				return "success";
				
	}
	
	
	
	
	public String join(String teamid)              //�������û�����ĳ���Ŷӵ�
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		ShowGroup User= new ShowGroup();
		Student stu=(Student)session.get("userMessage");
		String stuId=stu.getStu_usernumber();
		String hql2 = "from ShowGroup as user where stuId="+stuId;
		List list2 = dao.findByHql(hql2);
		if(list2.size()!=0)                 //�������ҡ��Ƿ��Ѿ���������
		{
			String message="加入失败，你已创建或加入一个组团";                //���������ʾ������Ϣ
			request.put("message",message);
			return "fail";
		}

		String hql = "from GroupBean as user where teamId='"+teamid+"'";
		List list = dao.findByHql(hql);
		group=(GroupBean)list.get(0);
		Transaction tran = null;
		try {
			User.setTeamId(teamid);
			User.setStuId(stuId);              
			dao.update(User);                             
		group.setNumNow(group.getNumNow()+1);    
		dao.update(group);
		return "success";
		
		} catch (Exception e) {
			e.printStackTrace();
		if(tran != null) tran.rollback();
		return "fail";
		} finally {
		dao.getSession().close();
		}
	}
	
	
}
