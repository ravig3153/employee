package com.royal.employee.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.royal.employee.entity.Employee;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee, Long>  {
	
	@Query("SELECT c FROM employee c WHERE c.userName = ?1 and c.password = ?2")
    public Employee findByUserName(String userName, String password);

}
