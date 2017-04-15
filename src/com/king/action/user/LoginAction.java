package com.king.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.king.dao.implement.UserDAOImplement;
import com.king.dao.interfaces.UserDAO;
import com.king.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO=new UserDAOImplement();
	private User user;
	private HttpServletRequest request;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String execute() {
		Object object=ActionContext.getContext().
				getSession().get("validation_code");
		String validationCode=(object!=null)?object.toString():"";
		if (!validationCode.equalsIgnoreCase(user.getValidationCode())) {
			if (user.getValidationCode()!=null) {
				this.addActionError("��֤���������");
			}
			return INPUT;
		}
		
		try {
			if (!userDAO.validateUser(user)) {
				this.addActionError("用户名或密码错误");
				return INPUT;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		
		session.setAttribute("username", user.getUsername());
		
		session.setMaxInactiveInterval(60*60*3);
		return SUCCESS;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {		
		this.request=request;
	}

}
