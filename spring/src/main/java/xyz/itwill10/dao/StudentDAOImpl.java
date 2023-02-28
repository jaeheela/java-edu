package xyz.itwill10.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.dto.Student;
import xyz.itwill10.mapper.StudentMapper;

//SpringMVC Framework에 Mybatis Framework를 사용하여 DAO 클래스를 작성하는 방법
//1.DataSource 관련 라이브러리와 Mybatis 관련 라이브러리를 프로젝트에 빌드 처리 - 메이븐 : pom.xml
// => ojdbc, spring-jdbc(spring-tx), mybatis, mybatis-spring
//2.Mybatis Framework의 환경설정파일 작성 - 생략 가능
// => src/main/webapp 폴더에 작성해야만 스프링 컨테이너(WebApplicationContenxt 객체)가 Mybatis 
//Framework의 환경설정파일에 접근 가능 
// => 환경설정에 따라 src/main/java 또는 src/main/resources  폴더에 작성 가능
//3.DataSource 관련 클래스, SqlSessionFactroy 관련 클래스, SqlSession 관련 클래스를 Spring Bean으로 등록
// => SpringMVC Framework의 스프링 컨테이너를 초기화 처리하기 위한 Spring Bean Configuration 
//File에서 bean 엘리먼트로 해당 클래스를 Spring Bean으로 등록 - root-context.xml 또는 servlet-context.xml
//4.테이블 생성 >> DTO 클래스 작성 >> 매퍼 파일 작성 >> DAO 클래스 작성 - 반복

//Mybatis Framework의 로그 팩토리에 의해 생성된 로그 이벤트를 Spring Framework의 로그 구현체에게 전달하여 기록하는 방법
//1.log4jdbc-log4j2-jdbc4 라이브러리를 프로젝트에 빌드 처리 - 메이븐 : pom.xml 


//DAO 클래스 : 저장매체에게 행에 대한 삽입,변경,삭제,검색 기능을 제공하는 객체를 생성하기 위한 클래스
// => DAO 클래스의 메소드에서는 DBMS 서버에 SQL 명령을 전달하여 실행하고 실행결과를 제공받아
//Java 객체(원시값)으로 변환하여 반환되도록 작성
// => DAO 클래스가 변경돼도 의존관계로 설정된 Service 클래스에 영향을 최소화 하기 위해 인터페이스를 상속받아 작성

//DAO 클래스는 Service 클래스의 객체로 제공받아 사용되도록 반드시 Spring Bean으로 등록
// => DAO 클래스는 @Repository 어노테이션을 사용하여 Spring Bean으로 등록되도록 처리
// => @Repository 어노테이션을 사용하면 SQL 명령으로 발생되는 예외를 Spring 관련 예외로 제공되도록 처리
// => @Repository 어노테이션를 스프링 컨테이너가 처리하기 위해서는 반드시 클래스를 작성한 패키지를  
//Spring Bean Configuration File(servlet-context.xml)의 component-scan 엘리먼트로 검색되도록 설정
@Repository
//final 필드만 초기화 설정하는 생성자를 만들어 주는 어노테이션
// => 생성자가 하나만 작성된 경우 @Autowired 어노테이션 생략 가능
@RequiredArgsConstructor
public class StudentDAOImpl implements StudentDAO {
	//Mybatis Framework로 DAO 클래스를 작성할 경우 매퍼에 등록된 SQL 명령을 전달하여 실행하고
	//결과를 Java 객체(원시값)로 반환받기 위해 SqlSession 객체가 반드시 필요
	// => SqlSession 객체를 저장하기 위한 필드를 선언하고 스프링 컨테이너에 의해 관리되는 
	//Spring Bean에서 SqlSession 관련 객체를 제공받아 필드에 인젝션 처리 - DI
	// => 필드를 초기화하는 생성자를 생성하여 @Autowired 어노테이션을 사용하여 의존성 주입 - 순환참조 방지
	private final SqlSession sqlSession;
	
	@Override
	public int insertStudent(Student student) {
		return sqlSession.getMapper(StudentMapper.class).insertStudent(student);
	}

	@Override
	public List<Student> selectStudentList() {
		return sqlSession.getMapper(StudentMapper.class).selectStudentList();
	}
}
