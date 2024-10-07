package edu.cjc.smsapp.sevicei;

import java.util.List;

import edu.cjc.smsapp.model.Student;

public interface StudentServicei {

	void saveStudentDetails(Student s);

	List<Student> loginStudent();

    void onDelete(int studentId);

	Student getsingleStudent(int studentId);

	void payfees(int studentId, float ammount);

	void batchshift(int studentId, String batch);



}
