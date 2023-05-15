package com.obs.util;

import java.util.List;

import com.obs.model.Student;

public class Calculator {
	
	public static double calculatePercentage(String department, List<Student> students) {
		int numberOfStudents = students.size();
		int numberOfPassStudents = 0;
		for(Student student : students) {
			if(student.getMark() >= 40) {
				numberOfPassStudents += 1;
			}
		}
		System.out.println(numberOfPassStudents);
		return ((numberOfPassStudents * 100) / numberOfStudents);
	}
}
