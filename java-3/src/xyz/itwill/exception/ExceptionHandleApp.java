package xyz.itwill.exception;

//예외(Exception) : 사용자에 의해 프로그램을 잘못 실행하거나 프로그램을 잘못 개발한 경우
//발생되는 프로그램 오류
// => 예외가 발생된 경우 예외가 발생된 지점에서 프로그램 강제 종료
// => 예외가 발생되어 프로그램가 강제로 종료되는 것을 방지하거나 프로그램이 강제로 종료된 
//이유를 알기 위해 예외처리(ExceptionHandle) 필요

//예외를 처리하기 위해 Java에서는 다양한 예외클래스를 제공
//예외클래스(Exception Class) : 예외 관련 정보를 저장하기 위한 클래스
// => Exception 클래스를 상속받아 작성된 자식클래스
//Throwable 클래스 : 프로그램에서 발생되는 모든 오류정보를 저장하기 위한 부모클래스
// => 자식클래스 : Error 클래스, Exception 클래스 

//예외클래스의 분류
//1.일반 예외 - RuntimeException 클래스를 상속받지 않는 예외클래스로 예외처리
// => 프로그램 실행시 예외가 발생될 수 있는 가능성이 높아 컴파일시 예외처리 되어 있지 않으면 에러 발생 
//2.실행 예외 - RuntimeException 클래스를 상속은 예외클래스로 예외처리
// => 프로그램 실행시 예외가 발생될 수 있는 가능성이 낮아 컴파일시 예외처리 불필요
// => 예외가 발생된 경우 JVM에서 자동으로 예외처리를 하여 예외메세지 제공

public class ExceptionHandleApp {
	public static void main(String[] args) {
		int[] array={10,20,30,40,50};
		
		for(int i=0;i<array.length;i++) {
			System.out.println("array["+i+"] = "+array[i]);
		}
	}
}










