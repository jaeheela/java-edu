package xyz.itwill.app;

//import : 다른 패키지의 클래스를 현재 클래스에서 명확하게 표현하기 위해 사용하는 키워드
//형식)import 패키지명.클래스명; 
// => package 명령 하단에 작성
// => 이클립스에서는 다른 패키지의 클래스를 자동 완성(Ctrl+Space)할 경우 자동 import 처리
//import 설정을 정리하는 단축키 : [Ctrl]+[Shift]+[O]
// => 불필요한 클래스의 import 설정을 제거하거나 필요한 클래스의 import 설정 추가
import xyz.itwill.subject.OracleSubject;

//패키지(Package) : 같은 목적의 클래스를 명확히 구분하여 그룹화 하기 위해 패키지 사용
// => 클래스 관리 용이성
// => 패키지의 이름은 도메인을 역방향으로 나열하고 그룹명을 지정하여 작성하는 것을 권장
// ex) itwill.xyz : 도메인 >> xyz.itwill.board
//도메인(Domain) : 인터넷에서 개인 또는 그룹이 사용하기 위한 네트워크 식별자

//패키지에 작성된 소스파일의 첫번째 줄에는 사용 패키지를 반드시 설정
//형식) package 패키지명;
// => 소스파일에 작성된 Java 자료형(참조형)이 어떤 패키지에 선언되어 있는지를 명확하게 표현

public class SubjectApp {
	public static void main(String[] args) {
		//같은 패키지의 클래스는 패키지 표현없이 클래스만 사용하여 접근 가능 - 클래스명
		//다른 패키지의 클래스는 패키지를 표현해야만 클래스 접근 가능 - 패키지명.클래스명
		//xyz.itwill.subject.OracleSubject subject1=new xyz.itwill.subject.OracleSubject();
		
		//다른 패키지의 클래스를 import 처리한 경우 패키지 표현없이 클래스만 사용하여 접근 가능
		OracleSubject subject1=new OracleSubject();
		subject1.display();
	}
}
















