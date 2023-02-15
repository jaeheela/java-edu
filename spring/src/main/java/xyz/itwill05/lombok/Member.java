package xyz.itwill05.lombok;

//클래스의 생성자나 메소드를 자동으로 만들어주는 Lombok 라이브러리를 사용하는 방법
//1.Lombok 라이브러리를 프로젝트에 빌드 처리 - 메이븐 사용 : pom.xml
//2.이클립스를 종료하고 콘솔을 관리자 권한으로 실행한 후 Lombok 라이브러리가 저장된 로컬
//저장소(Local REpository)의 폴더(.m2)로 이동
//3.콘솔에서 Jar 프로그램 실행하여 Lombok 라이브러리를 이클립스에 사용할 수 있도록 설정
// => java -jar lombok-1.18.26.jar

//회원정보를 저장하기 위한 클래스 - VO 클래스 : 값을 저장하기 위한 목적의 객체를 생성하기 위한 클래스
public class Member {
	private String id;
	private String name;
	private String email;
}
