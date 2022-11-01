package xyz.itwill.jdbc;

//JDBC(Java DataBase Connectivity) : Java를 이용하여 DBMS에 접속해 SQL 명령을 전달하여
//실행하기 위한 기능의 제공하기 위한 클래스 또는 인터페이스

//java.sql : JDBC 기능을 작성하기 위한 클래스(인터페이스)가 선언된 패키지
// => JDBC 기능은 대부분 인터페이스로 제공 - DBMS의 종류가 다양하므로 클래스로 제공 불가능
// => DBMS 회사의 웹사이트에서 JDBC 기능의 클래스(JDBC Driver)를 배포하여 제공
// => JDBC 드라이버가 포함된 라이브러리를 다운로드 받아 프로젝트에 빌드 처리해야만 JDBC 프로그램 작성 가능

//Oralce DBMS를 사용한 JDBC 프로그램 작성을 위한 환경설정
//1.https://www.oracle.com 사이트에서 Oracle JDBC Driver 관련 라이브러리 파일 다운로드
// => Oracle JDBC Driver 관련 라이브러리 파일 : ojdbc11.jar - JDK 버전과 호환성 주의 
//2.Oracle JDBC Driver 관련 라이브러리 파일(ojdbc11.jar)을 프로젝트의 폴더에 붙여넣기
//3.프로젝트의 폴더에 저장된 라이브러리 파일을 프로젝트에서 사용할 수 있도록 연결 - 빌드(Build) 처리
// => 라이브러리의 클래스(인터페이스)를 프로젝트에서 사용 가능하도록 설정
// => 프로젝트 >> 마우스 오른쪽 버튼 >> Properties(속성) >> Java Build Path(메뉴) >> Libraries 탭(클릭) 
//    >> classpath(클릭) >> Add JARs(클릭) >> 프로젝트의 jar 파일 선택 >> Apply And Close

//JDBC 프로그램 작성 방법


public class InsertStudentApp {

}
