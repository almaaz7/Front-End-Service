package com.almaaz.frontendservice.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.almaaz.frontendservice.model.Employee;

@FeignClient("UPDATE-SERVICE")
public interface FrontendFeignUpdate {
	@PutMapping("update/updateEmployee")
	public ResponseEntity<String> updateEmployeeName(@RequestBody Employee employee);
}
