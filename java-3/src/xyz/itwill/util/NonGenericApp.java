package xyz.itwill.util;



public class NonGenericApp {
	public static void main(String[] args) {
		NonGeneric nonGeneric1=new NonGeneric();
		
		//Integer 객체를 Object 클래스의 매개변수로 전달받아 Object 클래스의 필드값으로 변경
		nonGeneric1.setField(100);//오토박싱
		
		//필드값은 Object 클래스 타입의 객체로 반환되므로 반드시 명시적 객체 형변환을 해야
		//자식클래스의 객체의 메소드 호출 가능
		Integer returnObject1=(Integer)nonGeneric1.getField();
		
		System.out.println("필드값 = "+returnObject1);//오토언박싱
		System.out.println("==============================================================");
		NonGeneric nonGeneric2=new NonGeneric();
		
		//Double 객체를 Object 클래스의 매개변수로 전달받아 Object 클래스의 필드값으로 변경
		nonGeneric2.setField(12.34);//오토박싱
		
		Double returnObject2=(Double)nonGeneric2.getField();
		
		System.out.println("필드값 = "+returnObject2);//오토언박싱
		System.out.println("==============================================================");
		NonGeneric nonGeneric3=new NonGeneric();
		
		//String 객체를 Object 클래스의 매개변수로 전달받아 Object 클래스의 필드값으로 변경
		nonGeneric3.setField("홍길동");

		String returnObject3=(String)nonGeneric3.getField();

		System.out.println("필드값 = "+returnObject3);
		System.out.println("==============================================================");
	}
}
