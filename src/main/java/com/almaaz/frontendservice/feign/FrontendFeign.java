package com.almaaz.frontendservice.feign;


import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.almaaz.frontendservice.model.Employee;


@FeignClient("DISPLAY-SERVICE")
public interface FrontendFeign {
	
	@GetMapping("/list/listEmployee")
	public ResponseEntity<List<Employee>> listEmployee();
	
	@GetMapping("/list/searchEmployee")
	public ResponseEntity<List<Employee>> searchEmployee(@RequestParam String name);

}




