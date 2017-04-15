package com.king.dao.implement;

import java.text.SimpleDateFormat;

import com.king.dao.DAOSupport;
import com.king.dao.interfaces.ReBoBookDAO;
public class ReBoBookDAOImplement extends DAOSupport implements ReBoBookDAO {


	@Override
	public void returnBook(int booid) throws Exception {
		java.util.Date date=new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		this.execSql("UPDATE borrowrecord SET `redate` = ? WHERE `id` = ? and redate=null",sdf.format(date),booid);
		
	}

	@Override
	public void borrowBook(int bookId, String userId) throws Exception {
		java.util.Date date=new java.util.Date();
		SimpleDateFormat sdfDate=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		this.execSql("INSERT INTO borrowrecord (`id`,`username`,`bookid`,`date`)VALUES(?,?,?,?)", 
				sdf.format(date),userId,bookId,sdfDate.format(date));	
	}

	

}
