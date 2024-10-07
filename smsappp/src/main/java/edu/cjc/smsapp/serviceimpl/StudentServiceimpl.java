package edu.cjc.smsapp.serviceimpl;

import java.util.List;
import java.util.Optional;

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
	public List<Student> loginStudent() {
		
		return sr.findAll();
	}

	@Override
	public void onDelete(int studentId) {
		sr.deleteById(studentId);
		
	}

	@Override
	public Student getsingleStudent(int studentId) {
		Optional<Student>opstudent=sr.findById(studentId);
		Student student=opstudent.get();
		return student;
	}

	@Override
	public void payfees(int studentId, float ammount) {
		Optional<Student>opstudent=sr.findById(studentId);
		Student stu=opstudent.get();
		stu.setFeesPaid(stu.getFeesPaid()+ammount);
		sr.save(stu);
		
		
	}



	@Override
	public void batchshift(int studentId, String batch) {
		Optional<Student>opstudent=sr.findById(studentId);
		Student stu=opstudent.get();
		stu.setBatchNumber(batch);
		sr.save(stu);
		
		
	}






}
