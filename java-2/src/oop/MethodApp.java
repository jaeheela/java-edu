package oop;

//실행이 목적인 클래스 => main 메소드가 선언된 클래스 - 프로그램 
public class MethodApp {
	public static void main(String[] args) {
		//클래스로 객체를 생성하여 객체의 메모리 주소를 참조변수에 저장
		// => 같은 패키지의 클래스는 패키지 표현없이 클래스만 사용하여 접근 가능
		// => 참조변수를 사용하여 객체의 필드 또는 메소드 접근
		Method method=new Method();
		//참조변수에 저장된 값을 출력할 경우 "자료형@메모리주소" 형식으로 제공된 결과값 출력
		System.out.println("method = "+method);
		System.out.println("==============================================================");
		//메소드 호출 : 메소드를 호출하면 프로그램 흐름(스레드)이 객체의 메소드로 이동하여
		//메소드의 명령을 실행하고 메소드가 종료되면 다시 되돌아와 다음 명령 실행
		method.displayOne();
		method.displayTwo();
		method.displayOne();
		System.out.println("==============================================================");
		method.printOne();
		method.printOne();
		System.out.println("==============================================================");
		method.printTwo(80);
		method.printTwo(50);
		method.printTwo(-30);
		System.out.println("==============================================================");
		//메소드 호출시 나열될 값이 매개변수에 차례대로 전달되어 저장
		method.printThree(25, 75);
		method.printThree(12, 96);
		method.printThree(77, 45);
		System.out.println("==============================================================");
	}
}







