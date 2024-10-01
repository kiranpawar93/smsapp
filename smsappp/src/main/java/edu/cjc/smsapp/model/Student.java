package edu.cjc.smsapp.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int studentId;
	private String studentFullName;
	private String studentEmail;
	private int studentAge;
	private String studentCollageName;
	private String feesPaid;
	private String studentCourse;
	private String batchMode;
	private String batchNumber;
	
	

}
