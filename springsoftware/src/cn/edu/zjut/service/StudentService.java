package cn.edu.zjut.service;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.dao.IStudentDAO;
import cn.edu.zjut.po.Student;
import cn.edu.zjut.po.User;

public class StudentService implements IStudentService {
	private Map<String, Object> request, session;
	private IStudentDAO studentDAO = null;
	public StudentService(){}
	public void setStudentDAO(IStudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}
	
	//����ѧ����Ϣ
	public boolean addStudent(Student studentUser) {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String petname = studentUser.getStu_petname();
		String name = studentUser.getStu_name();
		String usernumber = studentUser.getStu_studentnumber();
		String school = studentUser.getStu_school();
		if(petname.equals(""))
		{
			request.put("tip", "昵称不能为空！");
			return false;
		}
		else if(name.equals(""))
		{
			request.put("tip", "姓名不能为空！");
			return false;
		}
		else if(usernumber==null)
		{
			request.put("tip", "学号不能为空！");
			return false;
		}
		else if(school.equals(""))
		{
			request.put("tip", "学校不能为空！");
			return false;
		}
		int i=(int)(Math.random()*90000)+10000; 
	  	String stu_number=Integer.toString(i);
	  	studentUser.setStu_usernumber(stu_number);
	  	User user=(User) session.get("loginUser");
	  	studentUser.setUser_username(user.getUser_username());
		if(studentDAO.save(studentUser))
			return false;
		return true;
	}

	public boolean adjustStudent(Student studentUser) {
	ActionContext ctx= ActionContext.getContext();
	session=(Map) ctx.getSession();
	request=(Map) ctx.get("request");
	String petname = studentUser.getStu_petname();
	String name = studentUser.getStu_name();
	String studentnumber = studentUser.getStu_studentnumber();
	String school = studentUser.getStu_school();
	if(petname.equals(""))
	{
		request.put("tip", "鏄电О涓嶈兘涓虹┖锛�");
		return false;
	}
	else if(name.equals(""))
	{
		request.put("tip", "濮撳悕涓嶈兘涓虹┖锛�");
		return false;
	}
	else if(studentnumber==null)
	{
		request.put("tip", "瀛﹀彿涓嶈兘涓虹┖锛�");
		return false;
	}
	else if(school.equals(""))
	{
		request.put("tip", "瀛︽牎涓嶈兘涓虹┖锛�");
		return false;
	}
  	Student student=(Student) session.get("userMessage");
  	String stu_username=student.getStu_usernumber();
  	studentUser.setStu_usernumber(stu_username);
  	User user=(User) session.get("loginUser");
  	String user_username=user.getUser_username();
  	studentUser.setUser_username(user_username);
	studentDAO.update(studentUser);
	return true;
}
}
