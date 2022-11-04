package xyz.itwill.student;

import java.util.List;

//DAO(Data Access Object) 클래스 : 저장매체에 행단위 정보(Record)를 삽입,변경,삭제,검색하는
//기능을 제공하기 위한 클래스
// => 저장매체 : 정보를 행단위로 저장하여 관리하기 위한 하드웨어 또는 소프트웨어 - DBMS
// => 인터페이스를 상속 받아 작성하는 것을 권장 - 메소드의 작성 규칙 제공 : 유지보수의 효율성 증가

//STUDENT 테이블에 행(학생정보)을 삽입,변경,삭제,검색하기 위한 메소드를 제공하는 클래스
// => 하나의 메소드는 매개변수로 객체(값)을 전달받아 하나의 SQL 명령을 전달하여 실행하고 
//실행결과를 Java 객체(값) 반환
public class StudentDAOImpl implements StudentDAO {
	//학생정보를 전달받아 STUDENT 테이블에 삽입하고 삽입행의 갯수를 반환하는 메소드
	@Override
	public int insertStudent(StudentDTO student) {
		// TODO Auto-generated method stub
		return 0;
	}

	//학생정보를 전달받아 STUDENT 테이블에 저장된 학생정보를 변경하고 변경행의 갯수를 반환하는 메소드
	@Override
	public int updateStudent(StudentDTO student) {
		// TODO Auto-generated method stub
		return 0;
	}

	//학번을 전달받아 STUDENT 테이블에 저장된 학생정보를 삭제하고 삭제행의 갯수를 반환하는 메소드
	@Override
	public int deleteStudent(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

	//학번을 전달받아 STUDENT 테이블에 저장된 해당 학번의 학생정보를 검색하여 반환하는 메소드
	@Override
	public StudentDTO selectNoStudent(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	//이름을 전달받아 STUDENT 테이블에 저장된 해당 이름의 학생목록을 검색하여 반환하는 메소드
	@Override
	public List<StudentDTO> selectNameStudentList(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	//STUDENT 테이블에 저장된 모든 학생정보를 검색하여 반환하는 메소드
	@Override
	public List<StudentDTO> selectAllStudentList() {
		// TODO Auto-generated method stub
		return null;
	}

}
