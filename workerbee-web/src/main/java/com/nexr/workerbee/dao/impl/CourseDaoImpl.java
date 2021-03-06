package com.nexr.workerbee.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nexr.workerbee.repository.CourseDao;
import com.nexr.workerbee.dto.Course;

@Repository("courseDao")
public class CourseDaoImpl implements CourseDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void store(Course course) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("1234");
		//session.save(course);
		session.saveOrUpdate(course);
	}
	
	@Transactional
	public void delete(Long courseId) {
		Session session = sessionFactory.getCurrentSession();
		Course course = (Course)session.get(Course.class, courseId);
		session.delete(course);
	}

	@Transactional(readOnly=true)
	public Course findById(Long courseId) {
		return (Course)sessionFactory.getCurrentSession().get(Course.class, courseId);
	}

	@Transactional(readOnly=true)
	public List<Course> findAll() {
		return sessionFactory.getCurrentSession().createQuery("from Course").list();
	}

}
