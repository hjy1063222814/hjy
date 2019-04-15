package cn.edu.zjut.action;
import  cn.edu.zjut.po.Student;


import cn.edu.zjut.service.IStudentService;
import cn.edu.zjut.service.StudentService;

public class StudentAction {
	private Student studentUser;
	private IStudentService studentService = null;
	
	public Student getStudentUser(){
		return studentUser;
	}
	
	public void setStudentUser(Student studentUser) {
		this.studentUser = studentUser;
	}
	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}
	
	public String addStudent() {
		if(studentService.addStudent(studentUser))
			return "addstudentsuccess";
		else 
			return "addstudentfail";
	}
	
	public String adjustStudent() {
		if(studentService.adjustStudent(studentUser))
			return "adjuststudentsuccess";
		else 
			return "adjuststudentfail";
	}
	
	public String showStudent()
	{
		return "success";
	}
}