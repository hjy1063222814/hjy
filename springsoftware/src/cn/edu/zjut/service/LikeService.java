package cn.edu.zjut.service;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.zjut.dao.*;
import cn.edu.zjut.po.*;


public class LikeService implements ILikeService{
	private Map<String, Object> request, session;
	private ILikeDAO likeDAO = null;
	public LikeService(){

	}

	public void setLikeDAO(ILikeDAO likeDAO) {

		this.likeDAO = likeDAO;
	}

	
	public boolean like(String usernumber,String time) {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		

		String like_usernumber=(String)session.get("user");
		String stu_usernumber = usernumber;
		String stuspace_time = time;
		
		String hql = "from Like as like where software_stu_usernumber='" +stu_usernumber + "'and software_stuspace_time='" +stuspace_time + "'and software_like_usernumber='" +like_usernumber+ "' ";

		if(likeDAO==null){System.out.println("dao¿Õ"); }
	    List list =likeDAO.findByPK(hql);

		if (list.isEmpty())
			return false;
		else{

			request.put("tip", "µÇÂ¼³É¹¦£¡");
			return true;
		
		}
	}
	

	public void addlike(String usernumber,String time){
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String test_time;
		String test_usernumber;
		String like_usernumber=(String)session.get("user");
		String stu_usernumber = usernumber;
		String stuspace_time = time;

		Like like=new Like();
		LikePK lpk=new LikePK();
		
		lpk.setLike_usernumber(like_usernumber);
		lpk.setStu_usernumber(stu_usernumber);
		lpk.setStuspace_time(stuspace_time);
		like.setLpk(lpk);

	likeDAO.save(like);
	List item=(List)session.get("items");
	for(int i=0;i<item.size();i++){
	{Stuspace stuspace=(Stuspace)item.get(i);
	StuspacePK spk=stuspace.getSpk();
	test_usernumber=(String)spk.getStu_usernumber();
	test_time=(String)spk.getStuspace_time();
	int likenumber=(int)stuspace.getStuspace_like();
	if(test_usernumber.equals(stu_usernumber)&&test_time.equals(stuspace_time))
	{likenumber=likenumber+1;
	stuspace.setStuspace_like(likenumber);
	break;
	}
	
	}
	}
	session.put("items",item);
}

	public void deletelike(String usernumber,String time){
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		String test_time;
		String test_usernumber;
		Like like=new Like();
		LikePK lpk=new LikePK();
		String stu_usernumber = usernumber;
		String stuspace_time = time;
		
		String like_usernumber=(String)session.get("user");
		lpk.setLike_usernumber(like_usernumber);
		lpk.setStu_usernumber(stu_usernumber);
		lpk.setStuspace_time(stuspace_time);


		like.setLpk(lpk);

	likeDAO.delete(like);
	List item=(List)session.get("items");
	for(int i=0;i<item.size();i++){
	{Stuspace stuspace=(Stuspace)item.get(i);
	StuspacePK spk=stuspace.getSpk();
	test_usernumber=(String)spk.getStu_usernumber();
	test_time=(String)spk.getStuspace_time();
	int likenumber=(int)stuspace.getStuspace_like();
	if(test_usernumber.equals(stu_usernumber)&&test_time.equals(stuspace_time))
	{likenumber=likenumber-1;
	stuspace.setStuspace_like(likenumber);
	break;
	}
	
	}
	}
	session.put("items",item);
	}
}