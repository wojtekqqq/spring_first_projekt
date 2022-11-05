package com.slawomir_aleksak.spring_first_projekt.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.slawomir_aleksak.spring_first_projekt.data.BooksRepository;
import com.slawomir_aleksak.spring_first_projekt.models.Book;

@Controller
@RequestMapping("/books")
public class BooksController {

    @Autowired
    private BooksRepository booksData;

//    @RequestMapping(value = "/addNew", method = RequestMethod.POST)
//    public String newBook(Book book) {
//
//        booksData.save(book);
//        return ("redirect:/books/list");
//
//    }

//    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
//    public ModelAndView addNewBook() {
//
//        Book book = new Book();
//        return new ModelAndView("newBook", "form", book);
//
//    }

    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
    public ModelAndView addNewBook() {

        Book book = new Book();
        return new ModelAndView("editBook", "form", book);

    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView books() {
        List<Book> allBooks = booksData.findAll();
        return new ModelAndView("allBooks", "books", allBooks);
    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable long id) {
        Optional<Book> book = booksData.findById(id);
        if (book!=null)
        {
            booksData.delete(book.get());
        }
        return ("redirect:/books/list");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editBook(@PathVariable long id) {
        Optional<Book> book = booksData.findById(id);

        if (book != null) {
            return new ModelAndView("editBook", "form", book.get());
        } else {
            return books();
        }
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Book book) {

        if (book!=null)
        {
            booksData.save(book);
        }
        return ("redirect:/books/list");
    }
    
}
