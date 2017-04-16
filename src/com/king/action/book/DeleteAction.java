package com.king.action.book;

import com.king.dao.implement.BookDAOImplement;
import com.king.dao.interfaces.BookDAO;
import com.king.model.Book;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BookDAO bookDAO=new BookDAOImplement();
	private Book book;
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public String execute() {
		try {
			bookDAO.deleteBook(book.getId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
