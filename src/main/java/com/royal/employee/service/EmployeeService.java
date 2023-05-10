package com.royal.employee.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.royal.employee.entity.Employee;
import com.royal.employee.entity.Task;
import com.royal.employee.repository.EmployeeRepo;
import com.royal.employee.repository.ImageRepository;

@Service
@Transactional
public class EmployeeService {
	
	@Autowired
	EmployeeRepo employeeRepo;
	
	@Autowired
	ImageRepository imageRepository;
	
	public Employee save(Employee employee) {
        Employee emp = employeeRepo.save(employee);
        return emp;
    }
	
	public Employee getEmployeeByUserNameAndPassword(String userName, String password) {
		 Employee e = employeeRepo.findByUserName(userName, password);
		 return e;
	}
	
	public Task saveTask(Task task) {
		Task tsk = imageRepository.save(task);
		return tsk;
	}

	public List<Task> getAllTask() {
		List<Task> taskList= imageRepository.findAll();
		return taskList;
	}

}
