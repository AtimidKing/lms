package com.king.dao.implement;

import java.util.ArrayList;
import java.util.List;

import com.king.dao.DAOSupport;
import com.king.dao.interfaces.BookDAO;
import com.king.model.Book;

public class BookDAOImplement extends DAOSupport implements BookDAO {

	@Override
	public List<Book> searchBook() throws Exception {
		List<Book> list = new ArrayList<Book>();
		try {
			java.sql.ResultSet resultSet = this.execSql("SELECT * FROM book");
			while (resultSet.next()) {
				com.king.model.Book book = new com.king.model.Book();
				book.setId(Integer.parseInt(resultSet.getString("id")));
				book.setName(resultSet.getString("name"));
				book.setAuthor(resultSet.getString("author"));
				book.setPublishunit(resultSet.getString("publishunit"));
				book.setPublishdate(resultSet.getString("publishdate"));
				book.setAddress(resultSet.getString("address"));
				list.add(book);
			}
			resultSet.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void modifyBook(Book book) throws Exception {
		try {
			this.execSql("UPDATE `lms`.`book`SET`id` = ?,"
					+ "`name` = ?,`author` = ?,`sort` = ?,"
					+ "`publishunit` = ?,`publishdate` = ?,"
					+ "`address` = ?WHERE `id` = ?", book.getId(),
					book.getName(),book.getAuthor(),book.getSort(),
					book.getPublishunit(),book.getPublishdate(),
					book.getAddress(),book.getId());
		} catch (java.sql.SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void deleteBook(int id) throws Exception {
		this.execSql("DELETE FROM book WHERE id=?;", id);
	}

	@Override
	public void addBook(Book book) throws Exception {
		this.execSql("INSERT INTO book (`id`,`name`,`author`,`sort`,`publishunit`,`publishdate`,`address`)VALUES(?,?,?,?,?,?,?)", 
				book.getId(),book.getName(),book.getAuthor(),
				book.getSort(),book.getPublishunit(),book.getPublishdate(),
				book.getAddress());
	}

}
