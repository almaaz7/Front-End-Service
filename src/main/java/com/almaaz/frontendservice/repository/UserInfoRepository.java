package com.almaaz.frontendservice.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.almaaz.frontendservice.model.UserInfo;

public interface UserInfoRepository extends JpaRepository<UserInfo, Integer>{


	Optional<UserInfo> findByName(String username);

	

}
