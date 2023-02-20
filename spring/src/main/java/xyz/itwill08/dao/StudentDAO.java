package xyz.itwill08.dao;

import java.util.List;

public interface StudentDAO {
	int insertStudent(Student student);
	int updateStudent(Student student);
	int deleteStudent(int no);
	Student seleteStudent(int no);
	List<Student> seleteStudentList();
}
