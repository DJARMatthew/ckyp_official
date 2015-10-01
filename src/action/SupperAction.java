package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

//所有Action的动作父类
public class SupperAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,ServletContextAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3445539114205756046L;
	/**
	 * 
	 */
	
	protected HttpServletRequest request;//保护请求对象
	protected HttpServletResponse response;//保护响应对象
	protected HttpSession session;//保护会话对象
	protected ServletContext application;//保护全局对象
	
	public void setServletContext(ServletContext application) {
		// TODO Auto-generated method stub
		
		this.application = application;
		
	}

	
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		this.response = response;
		
	}

	
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		this.request = request;
		this.session = this.request.getSession();
	}

	
}