package lnlinelibrary2.onlinelibrary2.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import lnlinelibrary2.onlinelibrary2.dao.BookDao;
import lnlinelibrary2.onlinelibrary2.dto.Book;

@Repository("BookDao")
public class BookDaoImpl implements BookDao {

	private static List<Book> books=new ArrayList<>();
	
	static
	{
		Book book=new  Book();
		book.setId(1);
		book.setName("poorna");
		book.setDescription("this is poorna");
		book.setImage_url("lib.jpg");
		books.add(book);
		
		
		book.setId(2);
		book.setName("chandu");
		book.setDescription("this is poornachandu");
		book.setImage_url("library.jpg");
		books.add(book);
		
		
		book.setId(1);
		book.setName("rao");
		book.setDescription("this is rao");
		book.setImage_url("library1.jpg");
		books.add(book);
		
	}
	
	
	
	@Override
	public List<Book> bookslist() {
		// TODO Auto-generated method stub
		return books;
	}

}
