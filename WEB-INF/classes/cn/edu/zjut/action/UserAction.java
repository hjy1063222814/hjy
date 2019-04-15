package cn.edu.zjut.action;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import  cn.edu.zjut.po.User;


import cn.edu.zjut.service.ILoginService;
import cn.edu.zjut.service.LoginService;

public class UserAction {
	private Map<String, Object> request, session;
	private User loginUser;
	private ILoginService loginService = null;
	
	public User getLoginUser(){
		return loginUser;
	}
	
	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}
	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}
	
	
	public String login() {
		String res=loginService.login(loginUser);
		if(res==null)
			return "loginfail";
		else if(res.equals("logintrue"))
			return "loginsuccess";
		else
			return res;
	}
	
	public String register() {
		//if(loginService.register(loginUser)) return "registersuccess";
		//else return "registerfail";
		String res=loginService.register(loginUser);
		if(res==null)
			return "registerfail";
		else if(res.equals("student"))
			return "studentregister";
		else if(res.equals("seller"))
			return "sellerregister";
		else
			return "registerfail";
	}
	
	public String home()
	{
		return "success";
	}
	
	public String quit() {
		ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		request.clear();
		session.clear();
		return "success";
	}
}