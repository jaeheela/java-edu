package xyz.itwill08.dao;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StudentApp {
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("08_dao.xml");
		StudentService service=context.getBean("studentService", StudentService.class);
		System.out.println("================================================================");
		List<Student> studentList=service.getStudentList();
		for(Student student:studentList) {
			System.out.println("학번 = "+student.getNo()+", 이름 = "+student.getName()
				+", 전화번호 = "+student.getPhone()+", 주소 = "+student.getAddress()
				+", 생년월일 = "+student.getBirthday().substring(0, 10));
		}
		System.out.println("================================================================");
		((ClassPathXmlApplicationContext)context).close();	
	}
}








