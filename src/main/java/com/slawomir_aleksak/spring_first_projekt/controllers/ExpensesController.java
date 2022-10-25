package com.slawomir_aleksak.spring_first_projekt.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

    @RequestMapping(value = "/addNew", method = RequestMethod.POST)
    public String newExpense(Expense expense) {

        expensesData.save(expense);
        return ("redirect:/expenses/list");

    }

    @RequestMapping(value = "/addNew", method = RequestMethod.GET)
    public ModelAndView addNewExpense() {

        Expense expense = new Expense();
        return new ModelAndView("newExpense", "form", expense);

    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView expenses() {
        List<Expense> allExpenses = expensesData.findAll();
        return new ModelAndView("allExpenses", "expenses", allExpenses);
    }
    
}
