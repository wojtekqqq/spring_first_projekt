package com.slawomir_aleksak.spring_first_projekt.controllers;

import java.util.List;
import java.util.Optional;

import com.slawomir_aleksak.spring_first_projekt.models.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.slawomir_aleksak.spring_first_projekt.data.ExpensesRepository;
import com.slawomir_aleksak.spring_first_projekt.models.Expense;

@Controller
@RequestMapping("/expenses")
public class ExpensesController {

    @Autowired
    private ExpensesRepository expensesData;

//    @RequestMapping(value = "/addNew", method = RequestMethod.POST)
//    public String newExpense(Expense expense) {
//
//        expensesData.save(expense);
//        return ("redirect:/expenses/list");
//
//    }

//    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
//    public ModelAndView addNewExpense() {
//
//        Expense expense = new Expense();
//        return new ModelAndView("newExpense", "form", expense);

//    }

    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
    public ModelAndView addNewExpense() {

        Expense expense = new Expense();
        return new ModelAndView("editExpense", "form", expense);

    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView expenses() {
        List<Expense> allExpenses = expensesData.findAll();
        return new ModelAndView("allExpenses", "expenses", allExpenses);
    }


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteExpense(@PathVariable long id) {
        Optional<Expense> expense = expensesData.findById(id);
        if (expense!=null)
        {
            expensesData.delete(expense.get());
        }
        return ("redirect:/expenses/list");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editExpense(@PathVariable long id) {
        Optional<Expense> expense = expensesData.findById(id);

        if (expense != null) {
            return new ModelAndView("editExpense", "form", expense.get());
        } else {
            return expenses();
        }
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(Expense expense) {

        if (expense!=null)
        {
            expensesData.save(expense);
        }
        return ("redirect:/expenses/list");
    }
}
