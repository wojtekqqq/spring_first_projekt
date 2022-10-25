package com.slawomir_aleksak.spring_first_projekt.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Expense {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private long id;
    private String name;
    private long cost;

    public long getCost() {
        return cost;
    }

    public void setCost(long value) {
        this.cost = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    @Override
   public String toString() {
       return "Expense [id=" + id + ", name=" + name + ", value=" + cost + "]";
   }

    }