package xyz.itwill.util;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class StudentSetApp {
	public static void main(String[] args) {
		Set<Student> studentSet=new HashSet<Student>();
		
		studentSet.add(new Student(1000, "홍길동"));
		studentSet.add(new Student(2000, "임꺽정"));
		studentSet.add(new Student(3000, "전우치"));
		//Set 객체에 동일한 값이 저장된 Student 객체가 요소로 저장 가능
		// => Student 객체에 저장된 값은 같지만 객체는 다르므로 요소로 저장 가능
		//hashCode() 메소드와 equals() 메소드를 오버라이드 선언하여 동일한 값이 저장된
		//객체가 Set 객체의 요소로 저장하지 않도록 설정 가능
		// => 매개변수로 전달받은 객체를 hashCode() 메소드로 기존 요소의 HashCode와 비교하여 
		//같은 경우 equals() 메소드로 필드값을 비교해 같으면 Set 객체에 추가되지 않도록 동작
		// => HashCode가 다르거나 비교 필드값이 다르면 Set 객체에 요소가 추가되어 저장
		studentSet.add(new Student(4000, "홍길동"));
		
		Iterator<Student> iterator=studentSet.iterator();
		
		while (iterator.hasNext()) {
			//객체를 반환받아 출력할 경우 Student.toString() 메소드 자동 호출
			System.out.println(iterator.next());
		}
	}
}
