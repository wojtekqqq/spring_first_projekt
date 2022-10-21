package com.slawomir_aleksak.spring_first_projekt.data;

import org.springframework.data.jpa.repository.JpaRepository;
import com.slawomir_aleksak.spring_first_projekt.models.Book;

// public class BooksRepository {
    
// }
public interface BooksRepository extends JpaRepository <Book, Long> {
    
}