package com.slawomir_aleksak.spring_first_projekt.data;

import org.springframework.data.jpa.repository.JpaRepository;
import com.slawomir_aleksak.spring_first_projekt.models.Expense;


public interface ExpensesRepository extends JpaRepository<Expense, Long> {
    
}