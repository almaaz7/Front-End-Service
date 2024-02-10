package com.almaaz.frontendservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.almaaz.frontendservice.feign.FrontendFeign;
import com.almaaz.frontendservice.feign.FrontendFeign2;
import com.almaaz.frontendservice.feign.FrontendFeignAdd;
import com.almaaz.frontendservice.feign.FrontendFeignUpdate;
import com.almaaz.frontendservice.model.Admin;
import com.almaaz.frontendservice.model.Contact;
import com.almaaz.frontendservice.model.Employee;
import com.almaaz.frontendservice.repository.AdminRepository;
import com.almaaz.frontendservice.repository.ContactsRepository;
import com.almaaz.frontendservice.repository.EmployeeRepository;

@Controller
public class FrontEndController {
	
	@Autowired
	EmployeeRepository employeerepository;
	
	@Autowired
	FrontendFeign frontendfeign;
	
	@Autowired
	FrontendFeign2 frontendfeign2;
	
	@Autowired
	FrontendFeignAdd frontendfeignadd;
	
	@Autowired
	FrontendFeignUpdate frontendfeingupdate;
	
	@Autowired
	AdminRepository adminrepository;
	
	@Autowired
	ContactsRepository contactsrepository;
	
	@GetMapping("/")
	public String home() {
		return "home";
		
	}
	
	@GetMapping("/explore")
	public String explore() {
		return "explore";
	}
	
	@GetMapping("/aboutus")
    public String aboutUs() {
        return "aboutus";
    }

    @GetMapping("/contactus")
    public String contactUs() {
        return "contactus";
    }
    
    @GetMapping("/employeelogin")
    public String employeelogin() {
        return "employeelogin";
    }
    
    @PostMapping("/loginemployee")
    public ModelAndView logineEmployee(@RequestParam String name, @RequestParam String number) {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("loginemployee");
        Employee employee = employeerepository.findByName(name);

        if (employee != null && employee.getNumber().equals(number)) {
            mv.addObject("name", name);
            System.out.println("Employee found: " + employee.getName());
            return mv;
        } 
        	String n = "not found";
            mv.setViewName("employeelogin");
            return mv; 
        
    }
    
    @PostMapping("/submitContact")
    public ResponseEntity<String> submitContact(@RequestBody Contact contact){
    	contactsrepository.save(contact);
    	return new ResponseEntity<>("success",HttpStatus.OK);
    }
    
    @GetMapping("/adminlogin")
    public String adminlogin() {
    	return "adminlogin";
    }
    
    @PostMapping("/loginadmin")
    public ModelAndView loginAdmin(@RequestParam String username, @RequestParam String password) {
    	ModelAndView mv = new ModelAndView();
        Admin admin = adminrepository.findByUsername(username);

        if (admin != null && admin.getPassword().equals(password)) {
        	mv.setViewName("loginadmin");
        	mv.addObject("username", username);
            System.out.println("Admin found: " + admin.getUsername());
            return mv;
        } 
        	mv.setViewName("redirect:/adminlogin");
            return mv; 
        
    }
    
    @GetMapping("/insertPage")
    public String insertPage(){
    	return "insertEmployee";
    }
    
    @GetMapping("/deletePage")
    public String deletePage() {
    	return "deleteEmployee";
    }
    
    @GetMapping("/updatePage")
    public String updatePage() {
    	return "updateEmployee";
    }
    
    @GetMapping("/getList")
    public ModelAndView getList() {
    	ModelAndView modelAndView = new ModelAndView();
    	List<Employee> employees =  frontendfeign.listEmployee().getBody();
	    modelAndView.setViewName("displaylist");
	    modelAndView.addObject("employees", employees);
	    return modelAndView;
    }
    
    @GetMapping("/searchList")
    public ResponseEntity<List<Employee>> searchList(@RequestParam String name) {
    	ResponseEntity<List<Employee>> employees = frontendfeign.searchEmployee(name);
    	return employees;
//    	ModelAndView modelAndView = new ModelAndView();
//    	ResponseEntity<List<Employee>> employees =  frontendfeign.searchEmployee(name);
//	    modelAndView.setViewName("displaylist");
//	    modelAndView.addObject("employees", employees);
//	    return modelAndView;
//    	return employees.getBody();
    }
    
    @PostMapping("/deleteEmp")
    public ResponseEntity<String> deleteEmployee(@RequestParam int id) {
    	ResponseEntity<String> str = frontendfeign2.deleteEmployee(id);
    	return str;
    }
    
    @PostMapping("/insertEmp")
    public ResponseEntity<String> insertEmployee(@RequestBody Employee employee){
    	ResponseEntity<String> str = frontendfeignadd.insertEmployee(employee);
    	return str;
    }
    
    @PostMapping("/updateEmp")
    public ResponseEntity<String> updateEmployee(@RequestBody Employee employee){
    	ResponseEntity<String> str = frontendfeingupdate.updateEmployeeName(employee);
    	return str;
    }
}
