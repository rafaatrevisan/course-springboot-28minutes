package com.trevisan.spring.myfirstwebapp.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    private static List<Todo> todoList = new ArrayList<>();

    static {
        todoList.add(new Todo(1, "Rafael", "Learn AWS",
                LocalDate.now().plusMonths(3), false));
        todoList.add(new Todo(1, "Rafael", "Learn Python",
                LocalDate.now().plusYears(1), false));
        todoList.add(new Todo(1, "Rafael", "Learn DevOps",
                LocalDate.now().plusMonths(2), false));
    }

    public List<Todo> findByUsername(String username){
        return todoList;
    }
}
