package cn.edu.zjut.dao;
import java.util.List;

import cn.edu.zjut.po.Student;

public interface IStudentDAO {
	boolean save(Student instance);
	public void update(Student transientInstance);
}

