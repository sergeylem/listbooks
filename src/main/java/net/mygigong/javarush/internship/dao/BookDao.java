package net.mygigong.javarush.internship.dao;

import java.util.List;

import net.mygigong.javarush.internship.model.Book;

public interface BookDao {
    public void createBook(Book book);
    public Book updateBook(Book book);
    public void deleteBook(int id);
    public Book getBookById(int id);
    public List<Book> getAllBooks();
    public List<Book> getBooksByName(String bookName);
    public List<Book> getBooksByAuthor(String bookAuthor);
}