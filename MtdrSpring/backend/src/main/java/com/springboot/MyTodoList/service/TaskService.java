package com.springboot.MyTodoList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.MyTodoList.model.Task;
import com.springboot.MyTodoList.repository.TaskRepository;

@Service
public class TaskService {

    @Autowired
    private TaskRepository taskRepository;

    public List<Task> getTasksByOracleUserId(int oracleUserId) {
        return taskRepository.findByOracleUserId (oracleUserId); // Ajusta el método llamado
    }

    public Task saveTask(Task task) {
        return taskRepository.save(task);
    }
}


