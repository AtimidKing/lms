package com.king.action.book;

import java.util.ArrayList;
import java.util.List;

import com.king.dao.implement.BookDAOImplement;
import com.king.dao.interfaces.BookDAO;
import com.king.model.Book;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Book book;
	private BookDAO bookDAO= new BookDAOImplement();
	private List<Book> lBooks=new ArrayList<Book>();

	public List<Book> getlBooks() {
		return lBooks;
	}


	public void setlBooks(List<Book> lBooks) {
		this.lBooks = lBooks;
	}


	public Book getBook() {
		return book;
	}


	public void setBook(Book book) {
		this.book = book;
	}


	public String execute() {
		
		try {
			setlBooks(bookDAO.searchBook());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
