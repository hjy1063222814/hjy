package cn.edu.zjut.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;








import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.dao.*;
import cn.edu.zjut.po.*;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
public class StuspaceService implements IStuspaceService{
	private Map<String, Object> request, session;
	private IStuspaceDAO stuspaceDAO = null;
	public StuspaceService(){
	}
	
	public void setStuspaceDAO(IStuspaceDAO stuspaceDAO) {
		this.stuspaceDAO = stuspaceDAO;
	}


	public List findbyStu() {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student stu=(Student)session.get("userMessage");
		String stu_usernumber = stu.getStu_usernumber();
		String hql = "from Stuspace as stuspace where software_stu_usernumber='" +stu_usernumber + "' ";

		if(stuspaceDAO==null)
		{System.out.println("dao��"); }
		List item =stuspaceDAO.findByINFO(hql);

		if (item.isEmpty())	
			{System.out.println("û�õ�����");
			List list=null;
			return list;}
		else{
			request.put("tip", "Ѱ�ҳɹ���");
			return item;
		
		}
	}
	public List findbyHot(){
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String hql = "from Stuspace as stuspace order by software_stuspace_like DESC";

		if(stuspaceDAO==null){System.out.println("dao��"); }
		List item =stuspaceDAO.findByINFO(hql);

		if (item.isEmpty())	
		{System.out.println("û�õ�����");
			List list=null;
			return list;}
		else{
			request.put("tip", "Ѱ�ҳɹ���");
			return item;
		
		}
	}
	public List findbyTime(){
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String hql = "from Stuspace as stuspace order by software_stuspace_time DESC";

		if(stuspaceDAO==null){System.out.println("dao��"); }
		List item =stuspaceDAO.findByINFO(hql);

		if (item.isEmpty())	
		{System.out.println("û�õ�����");
			List list=null;
			return list;}
		else{
			request.put("tip", "Ѱ�ҳɹ���");
			return item;
		
		}
	}
	public boolean addcomment(String txt,File upload,String uploadFileName,String uploadContentType){
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		if(txt.equals("")||upload==null)
			{
				request.put("tip", "文本和图片不能为空");
				return false;
			}
		
		else
		{
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 Date now = new Date();
		
		int i=(int)(Math.random()*90000)+10000; 
	  	String stuspace_photo=Integer.toString(i)+".jpg";
		
		try {
        	 File file = new File("D:/java/eclipse/springsoftware/WebContent/images2/"+stuspace_photo);
            FileUtils.copyFile(upload, file);
        } catch (IOException e) {
            e.printStackTrace();
        }
		
		Student stu=(Student)session.get("userMessage");
		String stu_usernumber = stu.getStu_usernumber();
		Stuspace stuspace = new Stuspace();
		StuspacePK spk=new StuspacePK();
		spk.setStu_usernumber(stu_usernumber);
		spk.setStuspace_time(sdf.format(now));
		stuspace.setSpk(spk);
		stuspace.setStuspace_txt(txt);
		stuspace.setStuspace_photo("images2/" + stuspace_photo);
		stuspace.setStuspace_like(0);
		stuspaceDAO.save(stuspace);

	return true;}
		}
	}

