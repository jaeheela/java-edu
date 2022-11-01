package xyz.itwill.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

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
		//JDBC 관련 객체를 저장하기 위한 참조변수는 try 영역 외부에서 선언
		// => try 영역을 포함한 모든 영역에서 참조변수를 이용해 객체 사용 가능
		Connection con=null;
		Statement stmt=null;
		try {
			//1.OracleDriver 클래스를 객체로 생성하여 DriverManager 클래스의 JDBC Driver 객체로 등록
			//JDBC Driver : DriverManager 클래스에 등록된 다수의 Driver 객체
			// => Driver 객체 : DBMS 서버에 접속하여 SQL 명령을 전달하기 위한 기능을 제공하는 객체
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
			
			//2.DriverManager 클래스에 등록된 JDBC Driver 객체를 이용하여 DBMS 서버에 접속하여 
			//Connection 객체를 반환받아 저장
			// => Connection 객체 : DBMS 서버에 접속된 정보를 저장하기 위한 객체
			//DriverManager.getConnection(String url,String username,String password)
			// => DriverManager 클래스에 등록된 JDBC Driver 객체를 사용하여 DBMS 서버에 접속하는 메소드
			// => 접속된 DBMS 서버의 정보가 저장된 Connection 객체 반환
			// => 접속 URL 주소의 프로토콜을 이용하여 특정 DBMS 서버에 접속하여 SQL 명령 전달
			//URL(Uniform Resource Locator) : 인터넷에 존재하는 자원의 위치를 표현하는 주소
			//형식)Protocol:ServerName:Port:Resource  >> ex)http://www.itwill.xyz:80/test/index.html
			//Oracle DBMS 서버에 접속하여 데이타베이스를 사용하기 위한 URL 주소
			//형식)jdbc:oracle:thin:@ServerName:Port:SID
			//JDBC 관련 클래스의 메소드를 호출하면 반드시 SQLException 발생
			// => SQLException : DBMS 서버 관련 문제(SQL 명령)가 있는 경우 발생되는 예외
			// => SQLException은 일반 예외이므로 반드시 예외처리를 해야만 에러 미발생
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String username="scott";
			String password="tiger";
			con=DriverManager.getConnection(url, username, password);
			
			//3.Connection 객체로부터 SQL 명령을 전달할 수 있는 Statement 객체를 반환받아 저장
			//Connection.createStatement() : SQL 명령을 전달할 수 있는 Statement 객체를 
			//생성하여 반환하는 메소드
			//Statement 객체 : SQL 명령을 접속 DBMS 서버에 전달하여 실행하기 위한 객체
			stmt=con.createStatement();
			
			//4.Statement 객체를 이용하여 SQL 명령을 전달하여 실행하고 실행결과를 반환받아 저장
			//Statement.executeUpdate(String sql) : DML 명령 또는 DDL 명령을 전달하여 실행하기
			//위한 메소드 - 실행결과로 조작행의 갯수를 정수값(int)으로 반환
			//Statement.executeQuery(String sql) : SELECT 명령을 전달하여 실행하기 위한 메소드
			// => 실행결과로 검색행이 저장된 ResultSet 객체 반환
			//String sql="insert into student values(1000,'홍길동','010-1324-7512','서울시 강남구','00/01/01')";
			//String sql="insert into student values(2000,'임꺽정','010-4561-7864','수원시 월정구','02/05/08')";
			String sql="insert into student values(3000,'전우치','017-8741-2130','인천시 상당구','1998-12-11')";
			int rows=stmt.executeUpdate(sql);
			
			//5.반환받은 SQL 명령의 실행결과를 이용하여 출력
			// => JDBC 기능을 메소드로 작성할 경우 실행에 대한 결과값 반환
			System.out.println("[메세지]"+rows+"명의 학생정보를 삽입 하였습니다.");
		} catch (ClassNotFoundException e) { 
			System.out.println("[에러]OracleDriver 클래스를 찾을 수 없습니다.");
		} catch (SQLException e) {
			System.out.println("[에러]JDBC 관련 오류 = "+e.getMessage());
		} finally {//예외와 상관없이 무조건 실행될 명령을 작성하는 영역
			//6.JDBC 관련 객체의 close() 메소드를 호출하여 객체 제거
			// => JDBC 관련 객체 생성의 반대 순서로 제거 
			try {
				//if 구문을 이용하여 참조변수에 객체가 저장되어 있는 경우에만 close() 
				//메소드 호출 - NullPointerExcetion 발생 방지
				//NullPointerExcetion : 참조변수에 null이 저장된 상태에서 메소드를 호출한 경우 발생되는 예외
				if(stmt!=null) stmt.close();//Statement.close() : Statement 객체 제거
				//Connection.close() : Connection 객체 제거 - DBMS 서버 접속 종료
				if(con!=null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		
	}
}

