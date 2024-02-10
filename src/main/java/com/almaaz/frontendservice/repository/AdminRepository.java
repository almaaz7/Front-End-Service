package com.almaaz.frontendservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.almaaz.frontendservice.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

	Admin findByUsername(String username);

}
