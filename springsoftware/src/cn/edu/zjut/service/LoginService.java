package cn.edu.zjut.service;
import java.util.List;
import java.util.Map;

import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;



import cn.edu.zjut.dao.ISellerDAO;
import cn.edu.zjut.dao.IStudentDAO;
import cn.edu.zjut.dao.IUserDAO;


import cn.edu.zjut.po.Seller;
import cn.edu.zjut.po.Student;
import cn.edu.zjut.po.User;

public class LoginService implements ILoginService {
	private Map<String, Object> request, session;
	private IUserDAO loginDAO = null;
	public LoginService(){}
	
	public void setLoginDAO(IUserDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	public String login(User loginUser) {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		List userMessage=null;
		String username = loginUser.getUser_username();
		String password = loginUser.getUser_password();
		String type =loginUser.getUser_type();
		if(type==null)
		{
			request.put("tip", "请选择用户类型！");
			return null;
		}
		else if(username.equals("")||username==null)
		{
			request.put("tip", "用户名不能为空！");
			return null;
		}
		else if(password.equals("")||password==null)
		{
			request.put("tip", "密码不能为空！");
			return null;
		}
		String hql = "from User as user where user_username='" + username+ "' and user_password='" + password + "' and user_type='" + type + "' ";

		if(loginDAO==null){System.out.println("dao��"); }
	    List list =loginDAO.findByHql(hql);

		if (list.isEmpty())
		{	
			request.put("tip", "用户不存在！");
			return null;
		}
		else{
			session.put("user", username);
			request.put("tip", "登陆成功，请完善信息！");
			loginUser=(User)list.get(0);
			session.put("loginUser", loginUser);
			if(type.equals("student"))
			{	
				String hql1 = "from Student as student where user_username='" + username+ "' ";
				userMessage=loginDAO.findByINFO(hql1);
				if(userMessage.size()==0)
					return "studentmessage";
				Student stu=(Student) userMessage.get(0);
				session.put("userMessage", stu);
				return "logintrue";
			}
			else if(type.equals("seller"))
			{	
				String hql1 = "from Seller as seller where user_username='" + username+ "' ";
				userMessage=loginDAO.findByINFO(hql1);
				if(userMessage.size()==0)
					return "sellermessage";
				Seller seller=(Seller) userMessage.get(0);
				session.put("userMessage", seller);
				return "logintrue";
			}
			else return "loginfail";
		}
	}
	
	public String register(User loginUser) {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String username = loginUser.getUser_username();
		String password = loginUser.getUser_password();
		String type =loginUser.getUser_type();
		if(type==null)
		{
			request.put("tip", "请选择用户类型！");
			return null;
		}
		else if(username.equals("")||username==null)
		{
			request.put("tip", "用户名不能为空！");
			return null;
		}
		else if(password.equals("")||password==null)
		{
			request.put("tip", "密码不能为空！");
			return null;
		}
		if(!loginDAO.save(loginUser))
		{
			request.put("tip", "用户名已存在！");
			return null;
		}	
		session.put("loginUser", loginUser);
		return type;
	}
}