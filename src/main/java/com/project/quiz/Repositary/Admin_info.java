package com.project.quiz.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quiz.Model.Admin;

public interface Admin_info extends JpaRepository<Admin, Integer>{
	public Admin findByEmail(String email);

}
