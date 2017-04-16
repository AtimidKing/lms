package com.king.test;

import com.king.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class TextAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String execute() {
		System.out.println("test执行成功");
		System.out.println(user.getUsername());
		return SUCCESS;
	}
}
