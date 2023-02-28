package xyz.itwill.controller;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//Spring Framework를 사용하여 테스트 프로그램을 작성하여 단위 프로그램(모듈)을 테스트 하는 방법
// => SpringMVC에서의 모듈 : DAO 클래스, Service 클래스, Controller 클래스의 메소드 
//1.junit 라이브러리와 spring-test 라이브러리를 프로젝트에 빌드 처리 - 메이븐 : pom.xml
//2.테스트 프로그램에서 사용될 로그 구현체의 환경설정파일 변경 
// => [src/test/resources] 폴더의 log4j.xml 파일의 내용 수정
//3.[src/test/java] 폴더에 테스트 프로그램에 대한 클래스 작성
// => junit 라이브러리와 spring-test 라이브러리에서 scope 속성을 주석 처리해야 테스트
//프로그램 관련 클래스 작성 가능 - 테스트 프로그램 실행 후 주석 제거
//4.테스트 프로그램(JUnit) 실행 - 모듈 테스트

//@RunWith : 테스트 프로그램의 클래스를 객체로 생성하여 테스트 메소드를 호출하기 위한 클래스를
//설정하는 어노테이션 - 테스트 클래스를 실행하기 위한 클래스 설정하는 어노테이션
//value 속성 : 테스트 클래스을 실행하기 위한 클래스(Class 객체)를 속성값으로 설정
// => 다른 속성이 없는 경우 속성값만 설정 가능
//SpringJUnit4ClassRunner 클래스를 사용하여 테스트 클래스를 실행할 경우 ApplicationContext 
//객체(Spring Container)가 생성되어 제공
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration : 테스트 클래스에서 사용할 수 있는 Spring Bean를 제공하기 위한 Spring
//Bean Configuration File을 설정하는 어노테이션 - 스프링 컨테이너에 의해 관리하기 위한 객체 
//locations 속성 : Spring Bean Configuration File의 경로를 요소로 저장한 배열을 속성값으로 설정
// => Spring Bean Configuration File의 경로는 file 접두사를 사용하여 파일 시스템 형식으로 표현
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class DataSourceTest {
	private static final Logger logger=LoggerFactory.getLogger(DataSourceTest.class);
	
	//테스트 클래스의 메소드에서 사용할 객체를 저장하기 위한 필드 선언
	// => @AutoWired 어노테이션을 필드에 사용하여 의존성 주입 - 생성자를 이용한 의존성 주입 불가능
	@Autowired
	private DataSource dataSource;
	
	//@Test : 테스트 메소드를 설정하는 어노테이션
	// => SpringJUnit4ClassRunner에 의해 호출되어 모듈 테스트를 실행할 메소드
	@Test
	public void testDataSource() throws SQLException {
		logger.info("DataSource = "+dataSource);
		Connection connection=dataSource.getConnection();
		logger.info("Connection = "+connection);
		connection.close();
	}
}
