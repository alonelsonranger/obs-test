package com.obs.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.obs.model.Student;

public class StudentService {
	
	Map<String, List<Student>>map = new TreeMap<>();
	
	public Map<String, List<Student>> findAll(){
		return map;
	}
	
	public List<Student> find(String department) {
		return map.get(department);
	}
	
	public void init() {
		
		String department = "Dep 1";
		List<Student>students = new ArrayList<>();
		
		Student student = new Student("S1", "Nelson", department, 35);
		students.add(student);
		student = new Student("S2", "Yulio", department, 70);
		students.add(student);
		student = new Student("S3", "Nayla", department, 60);
		students.add(student);
		student = new Student("S4", "Annisa", department, 90);
		students.add(student);
		
		map.put(department, students);
		
		students = new ArrayList<>();
		department = "Dep 2";
		student = new Student("S5", "Agus", department, 30);
		students.add(student);
		
		map.put(department, students);
		
		students = new ArrayList<>();
		department = "Dep 3";
		student = new Student("S6", "Suparno", department, 32);
		students.add(student);
		student = new Student("S7", "Lutiyem", department, 70);
		students.add(student);
		student = new Student("S8", "Anwari", department, 20);
		students.add(student);
		
		map.put(department, students);
		
	}

}
