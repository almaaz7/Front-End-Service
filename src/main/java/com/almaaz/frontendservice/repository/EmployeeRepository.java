package com.almaaz.frontendservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.almaaz.frontendservice.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	
	Employee findByName(String name);

}
