package net.mygigong.javarush.internship.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.mygigong.javarush.internship.model.Book;

@Repository
public class BookDaoImp implements BookDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void createBook(Book book) {

        sessionFactory.getCurrentSession().save(book);
    }

    @Override
    public Book updateBook(Book book) {
        sessionFactory.getCurrentSession().update(book);
        return book;
    }

    @Override
    public Book getBookById(int id) {
        return sessionFactory.getCurrentSession().get(Book.class, id);
    }

    @Override
    public void deleteBook(int id) {
        Book book = new Book();
        book.setId(id);
        sessionFactory.getCurrentSession().delete(book);
    }

    @Override
    public List<Book> getAllBooks() {
        @SuppressWarnings("unchecked")
        TypedQuery<Book> query = sessionFactory.getCurrentSession().createQuery("from Book");
        return query.getResultList();
    }

    @Override
    public List<Book> getBooksByName(String bookname) {
        @SuppressWarnings("unchecked")
        TypedQuery<Book> query = sessionFactory.getCurrentSession().createQuery("from Book where title like '%" + bookname + "%'");
        return query.getResultList();
    }

    @Override
    public List<Book> getBooksByAuthor(String bookAuthor) {
        @SuppressWarnings("unchecked")
        TypedQuery<Book> query = sessionFactory.getCurrentSession().createQuery("from Book where author like '%" + bookAuthor + "%'");
        return query.getResultList();
    }

}