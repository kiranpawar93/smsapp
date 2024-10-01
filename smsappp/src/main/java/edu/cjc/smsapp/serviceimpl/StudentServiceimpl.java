package edu.cjc.smsapp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.smsapp.model.Student;
import edu.cjc.smsapp.repository.studentRepository;
import edu.cjc.smsapp.sevicei.StudentServicei;

@Service
public class StudentServiceimpl implements StudentServicei {
	@Autowired
	studentRepository sr;

	@Override
	public void saveStudentDetails(Student s) {
		sr.save(s);
		
	}

	@Override
	public List<Student> loginStudent(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Student> loginStudent() {
		
		return sr.findAll();
	}






}
