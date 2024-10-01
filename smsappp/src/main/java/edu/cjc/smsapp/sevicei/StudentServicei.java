package edu.cjc.smsapp.sevicei;

import java.util.List;

import edu.cjc.smsapp.model.Student;

public interface StudentServicei {

	void saveStudentDetails(Student s);

	List<Student> loginStudent(String username, String password);

	List<Student> loginStudent();



}
