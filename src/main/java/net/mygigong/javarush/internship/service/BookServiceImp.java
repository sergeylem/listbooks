package net.mygigong.javarush.internship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.mygigong.javarush.internship.dao.BookDao;
import net.mygigong.javarush.internship.model.Book;

@Service
public class BookServiceImp implements BookService {

    @Autowired
    private BookDao bookDao;

    @Transactional
    public void createBook(Book book) {
        bookDao.createBook(book);
    }

    @Transactional
    public Book updateBook(Book book) {
        return bookDao.updateBook(book);
    }

    @Transactional
    public void deleteBook(int id) {
        bookDao.deleteBook(id);
    }

    @Transactional
    public Book getBookById(int id) {
        return bookDao.getBookById(id);
    }

    @Transactional(readOnly = true)
    public List<Book> getAllBooks() {
        return bookDao.getAllBooks();
    }

    @Transactional(readOnly = true) // Внимание readOnly = true !!!
    public List<Book> getBooksByName(String bookName) {
        return bookDao.getBooksByName(bookName);
    }

    @Transactional(readOnly = true)
    public List<Book> getBooksByAuthor(String bookAuthor) {
        return bookDao.getBooksByAuthor(bookAuthor);
    }
}