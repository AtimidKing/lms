package com.king.dao.interfaces;

public interface ReBoBookDAO {
	public boolean returnBook(String bookId)throws Exception;
	public boolean borrowBook(String bookId ,String userId)throws Exception;
}
