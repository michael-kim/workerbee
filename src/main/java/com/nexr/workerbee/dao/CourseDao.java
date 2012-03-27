package com.nexr.workerbee.dao;

import java.util.List;

import com.nexr.workerbee.dto.Course;

public interface CourseDao {
	public void store(Course course);
	
	public void delete(Long courseId);
	
	public Course findById(Long courseId);
	
	public List<Course> findAll();
}
