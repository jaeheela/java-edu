package xyz.itwill.jdbc;

import java.sql.DriverManager;
import java.sql.SQLException;

//JDBC(Java DataBase Connectivity) : Java를 이용하여 DBMS에 접속해 SQL 명령을 전달하여
//실행하기 위한 기능의 제공하기 위한 클래스 또는 인터페이스

//java.sql : JDBC 기능을 작성하기 위한 클래스(인터페이스)가 선언된 패키지
// => JDBC 기능은 대부분 인터페이스로 제공 - DBMS의 종류가 다양하므로 클래스로 제공 불가능
// => DBMS 회사의 웹사이트에서 JDBC 기능의 클래스(JDBC Driver)를 배포하여 제공
// => JDBC 드라이버가 포함된 라이브러리를 다운로드 받아 프로젝트에 빌드 처리해야만 JDBC 프로그램 작성 가능

//Oralce DBMS를 사용한 JDBC 프로그램 작성을 위한 환경설정
//1.https://www.oracle.com 사이트에서 Oracle JDBC Driver 관련 라이브러리 파일 다운로드
// => Oracle JDBC Driver 관련 라이브러리 파일 : ojdbc11.jar - JDK 버전 참조
//2.Oracle JDBC Driver 관련 라이브러리 파일(ojdbc11.jar)을 프로젝트의 폴더에 붙여넣기
//3.프로젝트의 폴더에 저장된 라이브러리 파일을 프로젝트에서 사용할 수 있도록 연결 - 빌드(Build) 처리
// => 라이브러리의 클래스(인터페이스)를 프로젝트에서 사용 가능하도록 설정
// => 프로젝트 >> 마우스 오른쪽 버튼 >> Properties(속성) >> Java Build Path(메뉴) >> Libraries 탭(클릭) 
//    >> classpath(클릭) >> Add JARs(클릭) >> 프로젝트의 jar 파일 선택 >> Apply And Close

//STUDENT 테이블 : 학번(숫자형-PRIMARY KEY),이름(문자형),전화번호(문자형),주소(문자형),생년월일(날짜형)
//CREATE TABLE STUDENT(NO NUMBER(4) PRIMARY KEY,NAME VARCHAR2(50),PHONE VARCHAR2(20)
//	,ADDRESS VARCHAR2(100),BIRTHDAY DATE)

//STUDENT 테이블에 학생정보를 삽입하는 JDBC 프로그램
public class InsertStudentApp {
	public static void main(String[] args) {
		try {
			//1.OracleDriver 클래스를 객체로 생성하여 DriverManager 클래스의 JDBC Driver 객체로 등록
			//JDBC Driver : DriverManager 클래스에 등록된 다수의 Driver 객체
			// => Driver 객체 : DBMS 서버에 접속하여 SQL 명령을 전달하기 위한 기능을 제공하는 객체
			// => 접속 URL 주소의 프로토콜을 이용하여 특정 DBMS 서버에 접속하여 SQL 명령 전달
			//DriverManager 클래스 : Driver 객체를 관리하기 위한 기능을 제공하는 클래스
			//DriverManager.registerDriver(Driver driver) : Driver 객체를 전달받아 DriverManager
			//클래스가 관리할 수 있는 JDBC Driver로 등록하는 메소드
			// => 동일한 Driver 객체가 DriverManager 클래스에 등록 가능 - 불필요한 객체 등록 가능
			//DriverManager.registerDriver(new OracleDriver());
			
			//Class.forName(String className) 메소드를 호출하여 ClassLoader 프로그램을 수동으로
			//실행하여 OracleDriver 클래스를 읽어 메모리에 저장
			// => OracleDriver 클래스의 정적영역에서 OracleDriver 클래스로 객체를 생성하여
			//DriverManager 클래스의 registerDriver() 메소드를 호출하여 OracleDriver 객체를
			//JDBC Driver로 등록 처리 - 프로그램에서 한번만 실행
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("OracleDriver 클래스를 찾을 수 없습니다.");
		}		
	}
}













