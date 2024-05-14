package com.project.quiz.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.quiz.Model.Student;
import com.project.quiz.Repositary.Student_info;



@Controller
public class studentController {
	@Autowired
	Student_info repo;
	
	@RequestMapping("/")
	public String Registration() {
		return "studentlogin.jsp";
	}
	@RequestMapping("/reg")
	public String view() {
		return "studentregistration.jsp";
	}
	@RequestMapping("/registration")
	public String log(@ModelAttribute Student st) {
		
		repo.save(st);
		
		return "studentlogin.jsp";
	}
	@RequestMapping("/studentlogin")
	public String login(@RequestParam String email,@RequestParam String password) {
		
		Student ob=repo.findByEmail(email);
		if(ob!=null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password)) {
			return "redirect:/Quiztest";
			
		}
		else {
			return "studentlogin.jsp";
		}
		
	}

}

