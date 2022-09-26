package oop;

public class RuntimeApp {
	public static void main(String[] args) {
		//Runtime : Java 프로그램을 실행하는 JVM 관련 정보를 저장하기 위한 클래스
		// => 생성자가 은닉화 선언되어 있어 new 연산자로 객체 생성 불가능
		// => 프로그램에 객체를 하나만 제공하기 위한 클래스 - 싱글톤 클래스(Singleton Class)
		//Runtime runtime=new Runtime();
		
		//Runtime.getRuntime() : Runtime 객체를 반환하는 정적 메소드 - 클래스명으로 호출
		// => getRuntime() 메소드를 여러번 호출해도 같은 객체를 반환
		Runtime runtime1=Runtime.getRuntime();
		Runtime runtime2=Runtime.getRuntime();
		
		System.out.println("runtime1 = "+runtime1);
		System.out.println("runtime2 = "+runtime2);
		System.out.println("===============================================================");
		//Runtime.totalMemory() : JVM이 사용 가능한 전체 메모리의 크기(Byte)를 반환하는 메소드
		//Runtime.freeMemory() : JVM이 사용 가능한 여유 메모리의 크기(Byte)를 반환하는 메소드
		//System.out.println("청소 전 JVM 사용 메모리 크기 = "
		//		+(runtime1.totalMemory()-runtime1.freeMemory())+"Byte");
		//싱글톤 클래스는 객체를 반환받아 참조변수에 저장하여 메소드를 호출하지 않고 객체를 
		//반환받아 직접 메소드를 호출하여 사용하는 것을 권장
		System.out.println("청소 전 JVM 사용 메모리 크기 = "
				+(Runtime.getRuntime().totalMemory()-Runtime.getRuntime().freeMemory())+"Byte");
		
		//Runtime.gc() : 메모리를 청소하는 가비지 콜렉터(Garbage Collector)를 실행하는 메소드
		//Runtime.getRuntime().gc();
		System.gc();//가비지 콜렉터(Garbage Collector)를 실행하는 정적 메소드 
		
		System.out.println("청소 후 JVM 사용 메모리 크기 = "
				+(Runtime.getRuntime().totalMemory()-Runtime.getRuntime().freeMemory())+"Byte");
		System.out.println("===============================================================");
	}
}
