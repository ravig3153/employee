package com.royal.employee.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.royal.employee.entity.Task;

public interface ImageRepository extends JpaRepository<Task, Long> {
}



