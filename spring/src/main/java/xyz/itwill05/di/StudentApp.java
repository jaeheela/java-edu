package xyz.itwill05.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StudentApp {
	public static void main(String[] args) {
		System.out.println("================== Spring Container 초기화 전 ==================");
		ApplicationContext context=new ClassPathXmlApplicationContext("05-1_di.xml");
		System.out.println("================== Spring Container 초기화 후 ==================");
		Student student1=context.getBean("student1",Student.class);
		//참조변수 출력시 Student 클래스의 toString() 메소드 자동 호출 - 객체의 필드값 확인
		System.out.println(student1);
		System.out.println("================================================================");
		Student student2=context.getBean("student2",Student.class);
		System.out.println(student2);
		System.out.println("================================================================");
		((ClassPathXmlApplicationContext)context).close();
	}
}
