package com.nexr.workerbee.dao.impl;

import java.sql.Date;
import java.util.List;

import junit.framework.Assert;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nexr.workerbee.dao.CourseDao;
import com.nexr.workerbee.dto.Course;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
	"classpath:spring/root-beans.xml",
	"classpath:spring/db-beans.xml"})
public class CourseDaoTest {
	
	@Autowired
	private CourseDao courseDao;
	
	@Before
	public void setup(){
	}
	
	@Test
	public void testStoreDelete(){
		Course course = new Course();
		course.setTitle("cs101");
		course.setFee(2);
		course.setEndDate(new Date(10000));
		course.setBeginDate(new Date(2102));

		courseDao.store(course);
		
		Course c = courseDao.findById(course.getId());
		Assert.assertEquals("cs101",c.getTitle());
		courseDao.delete(course.getId());
	}
	
	@Test
	public void testFindAll(){
		Course course = new Course();
		course.setTitle("cs101");
		course.setFee(2);
		course.setEndDate(new Date(10000));
		course.setBeginDate(new Date(2102));
		courseDao.store(course);
		courseDao.store(course);
		courseDao.store(course);
		List<Course> courses = courseDao.findAll();
		for(Course co :courses){
			Assert.assertEquals("cs101", co.getTitle());
			courseDao.delete(co.getId());
		}
	}
	
	@Test(expected = Exception.class)
	public void exceptionTest() throws Exception{
		throw new Exception();
	}
	
	@After
	public void cleanup(){
		
	}
}
