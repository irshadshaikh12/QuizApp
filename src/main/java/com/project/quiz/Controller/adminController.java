package com.project.quiz.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.quiz.Model.Admin;
import com.project.quiz.Repositary.Admin_info;




@Controller
public class adminController {

		@Autowired
		private Admin_info adminrepo;
		
		@RequestMapping("/aa")
		public String registration() {
			return "adminregistration.jsp";
		}
		@RequestMapping("/registrationadmin")
		public String login(@ModelAttribute Admin ee) {
			
			adminrepo.save(ee);
			
			return "adminlogin.jsp";
		}
		@RequestMapping("/adminlogin")
		public String adminlogin(@RequestParam String email,@RequestParam String password) {
			
			Admin ob=adminrepo.findByEmail(email);
			if(ob!=null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password)) {
				return "dashboard.jsp";
				
			}
			else {
				return "adminlogin.jsp";
			}
			
		}

	}



