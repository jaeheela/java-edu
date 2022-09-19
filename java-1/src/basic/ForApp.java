package basic;

//for : 명령에 대한 반복 횟수가 정해져 있는 경우 사용되는 반복문(Loop Statement) 
//형식) for(초기식;조건식;증감식) { 명령; 명령; ... }
// => 초기식 : 변수에 초기값을 저장하는 연산식, 증감식 : 변수값을 증가 또는 감소하는 연산식
// => 초기식, 조건식, 증감식은 반드시 ;를 이용하여 구분 - ; 기호를 반드시 2번 사용
// => 초기식 >> 조건식(참) - { } 안의 명령 실행 >> 증감식 >> 조건식(참) - { } 안의 명령 실행 >> 증감식 >> ...
// => 조건식의 결과가 거짓(false)인 경우 for 구문 종료
// => 주의)조건식의 결과가 항상 참(true)인 경우 무한반복 - 무한루프(Endless Loop) >> 프로그램 강제 종료(Terminate)
// => 초기식, 증감식은 , 기호 이용하여 나열 작성 가능
// => 초기식, 조건식, 증감식 생략 가능 - 조건식이 생략된 경우 무조건 참으로 처리

//프로그램 흐름 파악하기 위한 이클립스 기능 - Debug Perspective 사용
//중지점(breakpoint) 설정 >> [F11] : Debug 기능 실행 단축키 >> Debug Perspective 변환
// >> [F6] : 현재 클래스에서 명령을 하나씩 실행(프로그램의 흐름 파악) 
// >> 프로그램 강제 종료(Terminate : Ctrl+F2) >> Java Perspective 변환 >> 중지점 제거

public class ForApp {
	public static void main(String[] args) {
		//"Java Programming"를 화면에 5번 출력
		System.out.println("Java Programming");
		System.out.println("Java Programming");
		System.out.println("Java Programming");
		System.out.println("Java Programming");
		System.out.println("Java Programming");
		System.out.println("==============================================================-");
		//"Java Programming"를 화면에 5번 출력
		for(int i=1;i<=5;i++) {
			System.out.println("Java Programming");
		}
		System.out.println("==============================================================-");
		//"Java Programming"를 화면에 5번 출력
		for(int i=5;i>=1;i--) {
			System.out.println("Java Programming");
		}
		System.out.println("==============================================================-");
		//"Java Programming"를 화면에 5번 출력
		for(int i=2;i<=10;i+=2) {
			System.out.println("Java Programming");
		}
		System.out.println("==============================================================-");

	}
}















