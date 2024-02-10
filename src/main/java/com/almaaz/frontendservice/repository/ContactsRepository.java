package com.almaaz.frontendservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.almaaz.frontendservice.model.Contact;

public interface ContactsRepository extends JpaRepository<Contact, Integer> {

}
