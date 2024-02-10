package com.almaaz.frontendservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
@EnableDiscoveryClient
public class FrontEndServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(FrontEndServiceApplication.class, args);
	}

}
