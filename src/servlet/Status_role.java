package servlet;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import entity.Users;


public class Status_role extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1904523046057711437L;


	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		Users user = (Users) ServletActionContext.getRequest().getSession().getAttribute("accountInfo");
		String role = user.getRole();
		if(role != "admin"){
			return actionInvocation.invoke();
			
		}else {
			return Action.LOGIN;
		}
	}

}
