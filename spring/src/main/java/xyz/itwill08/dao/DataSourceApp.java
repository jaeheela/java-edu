package xyz.itwill08.dao;

//DataSource 객체 : 다수의 Connection 객체를 미리 생성하여 저장하기 위한 객체 - DBCP(DataBase ConnectionPool)
// => Spring Bean Configuration File에서 DataSource 인터페이스를 상속받은 자식클래스를 
//Spring Bean 등록하여 사용
// => DataSource 인터페이스를 상속받은 자식클래스는 Apache 그룹에서 제공하는 라이브러리의 클래스
//또는 Spring Framework 그룹에서 제공하는 라이브러리의 클래스를 사용
// => DataSource 관련 라이브러리 전에 Oracle Driver 관련 라이브러리(ojdbc)를 프로젝트에 빌드 처리 - pom.xml
public class DataSourceApp {
	public static void main(String[] args) {
		
	}
}
