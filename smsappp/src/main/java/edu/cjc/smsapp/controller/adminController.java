package edu.cjc.smsapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.smsapp.model.Student;
import edu.cjc.smsapp.sevicei.StudentServicei;

@Controller
public class adminController {
	@Autowired
	StudentServicei ssi;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	@RequestMapping("/login")
	public String onlogin(@RequestParam("username") String username,@RequestParam("password") String password ,Model m) {
		if (username.equals("ADMIN")&& password.equals("ADMIN")) {
			
			List<Student>list=ssi.loginStudent();
			m.addAttribute("data", list);
			return"adminscreen";
		}else {
			return"login";
		}
		
		
		
		
	}
	@RequestMapping("/enroll_student")
	public String saveStudent(@ModelAttribute Student s) {
		
		ssi.saveStudentDetails(s);
		
		return"adminscreen";
	}

}

