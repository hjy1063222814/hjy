package cn.edu.zjut.service;
import cn.edu.zjut.po.Student;
public interface IStudentService {
	public boolean addStudent(Student transientInstance);
	public boolean adjustStudent(Student studentUser);
}
