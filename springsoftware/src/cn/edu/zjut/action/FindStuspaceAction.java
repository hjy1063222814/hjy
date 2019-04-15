package cn.edu.zjut.action;


import java.util.*; 

import cn.edu.zjut.po.*;
import cn.edu.zjut.service.*;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.*;
public class FindStuspaceAction {
	private Map session;
	public void setSession(Map<String, Object> session) 
	{ this.session=session;
	}
	private IStuspaceService stuspaceService = null;
	private List items = new ArrayList(); 
	private String submit;

	public String getSubmit() {
		return submit;
	}


	public void setSubmit(String submit) {
		this.submit = submit;
	}




	
	public void setStuspaceService(IStuspaceService stuspaceService) {
		this.stuspaceService = stuspaceService;
	}
	
	
	

		
	
	
	public String findStuspace() {
		ActionContext ctx= ActionContext.getContext(); 
		session=(Map) ctx.getSession();
	if(submit.equals("mycommit")){
		items=stuspaceService.findbyStu();
		session.put("items",items);
	}
	if(submit.equals("hotcommit")){
		items=stuspaceService.findbyHot();
		session.put("items",items);
		}
	else if(submit.equals("recentcommit")){
		items=stuspaceService.findbyTime();
		session.put("items",items);
		}
return "success";
	}
}
