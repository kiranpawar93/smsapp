package edu.cjc.smsapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.smsapp.model.Student;
@Repository
public interface studentRepository extends JpaRepository<Student, Integer> {
	


}
