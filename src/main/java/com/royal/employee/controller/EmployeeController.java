package com.royal.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.royal.employee.entity.Employee;
import com.royal.employee.entity.Task;
import com.royal.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(path="/",method=RequestMethod.GET)
	public String home(){
		return "index";
	}
	
	@RequestMapping(path="/signup",method=RequestMethod.GET)
	public String signup(){
		return "signup";
	}
	
	@RequestMapping(path="/login",method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(path="/logout",method=RequestMethod.GET)
	public String logout(){
		return "logout";
	}
	
	@RequestMapping(path="/task",method=RequestMethod.GET)
	public String task(){
		return "dashboard";
	}
	
	@RequestMapping(path="/register",method=RequestMethod.POST)
	public String register(Employee employee){
		employeeService.save(employee);
		return "success";
	}
	
	@RequestMapping(path="/task",method=RequestMethod.POST)
	public String task(Task task){
		employeeService.saveTask(task);
		return "dashboard";
	}
		
	@RequestMapping(path="/login",method=RequestMethod.POST)
	public String login(Employee employee, Model model){
		Employee emp = employeeService.getEmployeeByUserNameAndPassword(employee.getUserName(), employee.getPassword());
		if(emp!=null) {
			model.addAttribute("emp", emp);
			return "dashboard";
		}else {
			model.addAttribute("msg", "Invalid username or password");
			return "index";	
		}
		
	}
	
	@RequestMapping(path="/gettask",method=RequestMethod.GET)
	public String gettask(Model model){
		List<Task> taskList = employeeService.getAllTask();
		model.addAttribute("taskList", taskList);
		return "dashboard";
	}
}
