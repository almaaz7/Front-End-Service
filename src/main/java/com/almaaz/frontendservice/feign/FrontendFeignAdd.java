package com.almaaz.frontendservice.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.almaaz.frontendservice.model.Employee;


@FeignClient("INSERT-SERVICE")
public interface FrontendFeignAdd {

	@PostMapping("insert/addEmployee")
	public ResponseEntity<String> insertEmployee(@RequestBody Employee employee);
}
