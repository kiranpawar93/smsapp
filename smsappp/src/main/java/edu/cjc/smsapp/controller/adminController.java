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
	public String saveStudent(@ModelAttribute Student s,Model m) {
		
		ssi.saveStudentDetails(s);
		List<Student>list=ssi.loginStudent();
		m.addAttribute("data", list);
		
		return"adminscreen";
	}
	@RequestMapping("/remove")
	public String onRemove(@RequestParam("StudentId")int StudentId,Model m) {
		ssi.onDelete(StudentId);
		List<Student>list=ssi.loginStudent();
		m.addAttribute("data", list);
		
		return"adminscreen";
	}
	@RequestMapping("/fees")
	public String onfees(@RequestParam int StudentId,Model m) {
		Student student=ssi.getsingleStudent(StudentId);
		m.addAttribute("s", student);
		return"fees";
	}
    @RequestMapping("/payfees")
	public String addinstailment(@RequestParam int studentId,@RequestParam float ammount,Model m) {
    	ssi.payfees(studentId,ammount);
		List<Student>list=ssi.loginStudent();
		m.addAttribute("data", list);
    	
    	return"adminscreen";
		
	}
    @RequestMapping("/batch")
    public String onbatch(@RequestParam int StudentId,Model m) {
    	Student student=ssi.getsingleStudent(StudentId);
    	m.addAttribute("s", student);
    	
    	return"batch";
    }
    @RequestMapping("/batchshift")
    public String onbatchshift(@RequestParam int studentId,@RequestParam String batch,Model m ) {
    	ssi.batchshift(studentId,batch);
		List<Student>list=ssi.loginStudent();
		m.addAttribute("data", list);
    	return"adminscreen";
    }

}

