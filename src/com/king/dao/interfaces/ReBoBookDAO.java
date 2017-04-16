package com.king.dao.interfaces;

public interface ReBoBookDAO {
	public void returnBook(int booid)throws Exception;
	public void borrowBook(int bookId ,String userId)throws Exception;
}
