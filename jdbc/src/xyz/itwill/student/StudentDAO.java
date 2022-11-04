package xyz.itwill.student;

//DAO 클래스가 반드시 상속받기 위한 인터페이스
// => 추상메소드를 이용하여 모든 DAO 클래스가 동일한 형태로 선언되도록 메소드 작성 규칙 제공
public interface StudentDAO {
	//학생정보를 전달받아 STUDENT 테이블에 삽입하고 삽입행의 갯수를 반환하는 메소드
	int insertStudent(int no,String name,String phone,String address,String birthday);
}
