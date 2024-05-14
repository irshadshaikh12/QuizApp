package com.project.quiz.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quiz.Model.Student;

public interface Student_info extends JpaRepository<Student, Integer>{
	public Student findByEmail(String email);

}
