package net.mygigong.javarush.internship.controller;

import org.springframework.beans.support.PagedListHolder;
import net.mygigong.javarush.internship.model.Book;
import net.mygigong.javarush.internship.service.BookService;

import org.jboss.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class BookController {
    private static final Logger logger = Logger.getLogger(BookController.class);
    private static final int MAX_ROWS_PER_PAGE = 10;

    public BookController() {
        System.out.println("BookController()");
    }

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "createBook", method = RequestMethod.GET)
    public String createBook(Model model) {
        Book book = new Book();
        model.addAttribute("book", book);
        return ("bookCreateForm");
    }

    @RequestMapping(value= "createBook", method = RequestMethod.POST)
    public String createBook(@Valid Book book, BindingResult result, Model model){
        if(result.hasErrors()) {
            return "bookCreateForm";
        }
        if(book.getId() == 0){ // if book id is 0 then creating book other updating book
            bookService.createBook(book);
        } else {
            bookService.updateBook(book);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "editBook/{id}", method = RequestMethod.GET)
    public String editBook(@PathVariable("id")int id, Model model){
        Book book = new Book();
        book = bookService.getBookById(id);
        model.addAttribute("book", book);

        if (book.isReadAlready() == false) { //Если не прочитана,
            book.setReadAlready(true);      //то значение поля должно быть true.
            return "bookReadForm";          //В форме доступно для редактирования только readAlready
        } else {
            book.setReadAlready(false);     //Если уже прочитана
            return "bookEditForm";          //предлагается изменить на новое издание
                                            //В форме доступны: title, description, isbn, printYear
                                            //не доступно author
        }
    }

    @RequestMapping(value = "editBook/{id}", method = RequestMethod.POST)
    public String updateBook(@Valid Book book, BindingResult result, Model model){
//    public String updateBook(@Valid Book book, Model model){  //Без BindingResult result,
        if(result.hasErrors()) {
            return "bookEditForm";
        }
        bookService.updateBook(book);
        return "redirect:/";
    }

    @RequestMapping(value = "deleteBook/{id}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable("id") int id){
        bookService.deleteBook(id);
        return "redirect:/";
    }

    @RequestMapping(value = "getAllBooks", method = RequestMethod.GET)
    public String getAllBooks(Model model){
        model.addAttribute("book", new Book());
        model.addAttribute("bookList", bookService.getAllBooks());
        return "bookListForm";
    }

    @RequestMapping("searchName")
    public ModelAndView searchByName(@RequestParam("searchName") String searchName){
        List<Book> bookList = bookService.getBooksByName(searchName);
        return new ModelAndView("bookListForm", "bookList", bookList);
    }

    @RequestMapping("searchAuthor")
    public ModelAndView searchByAuthor(@RequestParam("searchAuthor") String searchAuthor){
        List<Book> bookList = bookService.getBooksByAuthor(searchAuthor);
        return new ModelAndView("bookListForm", "bookList", bookList);
    }

    @RequestMapping(value="/")
    public ModelAndView listOfBooks(@RequestParam(required = false) Integer page) {
        logger.info("Getting all Books.");
        ModelAndView modelAndView = new ModelAndView("bookListForm");

        List<Book> books = bookService.getAllBooks();
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<>(books);
        pagedListHolder.setPageSize(MAX_ROWS_PER_PAGE);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            page=1;
        }
        modelAndView.addObject("page", page);
        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            modelAndView.addObject("bookList", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            modelAndView.addObject("bookList", pagedListHolder.getPageList());
        }
        return modelAndView;
    }
}

/*
    @RequestMapping("createBook")
    public ModelAndView createBook(@ModelAttribute Book book) {
        logger.info("Creating Book. Data: "+book);
        return new ModelAndView("bookCreateForm");
    }

    @RequestMapping("editBook")
    public ModelAndView editBook(@RequestParam int id, @ModelAttribute Book book) {
        logger.info("Updating the Book for the Id "+id);
        book = bookService.getBook(id);

        return new ModelAndView("bookEditForm", "bookObject", book);
    }

    @RequestMapping(value = {"getAllBooks"})
    public ModelAndView getAllBooks(){
        logger.info("Getting all Books.");
        List<Book> bookList = bookService.getAllBooks();
        return new ModelAndView("bookList", "bookList", bookList);
    }

    @RequestMapping("saveBook")
    public ModelAndView saveBook(@ModelAttribute Book book) {
        logger.info("Saving the Book. Data : "+book);
        if(book.getId() == 0){ // if book id is 0 then creating book other updating book
            bookService.createBook(book);
        } else {
            bookService.updateBook(book);
        }
        return new ModelAndView("redirect:/");
    }


     @RequestMapping("deleteBook")
     public ModelAndView deleteBook(@RequestParam int id)
     {
        logger.info("Deleting the Book. Id : " + id);
        bookService.deleteBook(id);
        return new ModelAndView("redirect:/");
     }



     @RequestMapping("searchBook")
     public ModelAndView searchBook(@RequestParam("searchName") String searchName){
            logger.info("Searching the Book. Book Names: "+searchName);
            List<Book> bookList = bookService.getBooks(searchName);
            return new ModelAndView("bookList", "bookList", bookList);
        }
*/
