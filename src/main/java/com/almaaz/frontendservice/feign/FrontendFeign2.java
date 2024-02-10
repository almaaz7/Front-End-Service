package com.almaaz.frontendservice.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient("DELETE-SERVICE")
public interface FrontendFeign2 {
	
	@DeleteMapping("delete/deleteEmployee")
	public ResponseEntity<String> deleteEmployee(@RequestParam int id);
}
