package com.king.action.borrowreturn;

import com.king.dao.implement.ReBoBookDAOImplement;
import com.king.dao.interfaces.ReBoBookDAO;
import com.king.model.Book;
import com.king.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class BorrowAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Book book;
	private User user;
	private ReBoBookDAO reBoBookDAO= new  ReBoBookDAOImplement();
	public String execute() {
		try {
			reBoBookDAO.borrowBook(book.getId(), user.getUsername());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
