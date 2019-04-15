package cn.edu.zjut.interceptor;  
  
import java.util.Map;

import cn.edu.zjut.po.Student;

import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;  
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;  
  
/** 
 * @author ThinkPad 
 * 
 */  
@SuppressWarnings("serial")
public class LoginInterceptor extends MethodFilterInterceptor{  
	private Map<String, Object> request, session;
    @Override  
    protected String doIntercept(ActionInvocation invoker) throws Exception {  
        // TODO Auto-generated method stub  
    	ActionContext ctx= ActionContext.getContext();
		session=(Map) ctx.getSession();
		request=(Map) ctx.get("request");
		Student user = (Student) session.get("userMessage");
        if(null == user){
        	request.put("tip", "请先登陆!");
            return "loginfail";  
        }
        else {
        	return invoker.invoke();
        }
    }  
  
}  