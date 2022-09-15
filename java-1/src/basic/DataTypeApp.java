package basic;

//자료형(DataType) : 값이나 특정 대상을 표현하기 위한 키워드 또는 식별자 
// => 값이나 특정 대상을 저장하기 위한 변수 생성을 위해 사용
//1.원시형(PrimitiveType) : 값을 표현하기 위한 자료형 - 키워드
// => 숫자형(정수형, 실수형, 문자형) - 연산 가능, 논리형
//2.참조형(ReferenceType) : 특정 대상을 표현하기 위한 자료형 - 식별자(클래스)
// => String 클래스 : 문자열을 표현하기 위한 자료형(클래스)

//컴퓨터에서 값을 표현하는 단위 : 1Bit(0 또는 1) >> 1Byte(8Bit) - Character

public class DataTypeApp {
	public static void main(String[] args) {
		//정수형(IntegerType) : 소숫점이 없는 숫자값  
		// => Java의 정수형 리터럴은 기본적으로 4Byte(Interger)로 표현 >> -2147483648~2147483647
		System.out.println("<<정수형(IntegerType)>>");
		System.out.println("정수값(10진수 100) = "+100);//숫자값 >> 10진수 정수값을 표현한 리터럴
		//println 메소드는 무조건 10진수의 정수값으로 변환하여 출력 처리
		System.out.println("정수값(8진수 100) = "+0100);//0숫자값 >> 8진수 정수값을 표현한 리터럴
		System.out.println("정수값(16진수 100) = "+0x100);//0x숫자값 >> 16진수 정수값을 표현한 리터럴
		System.out.println("정수값(10진수 100) = "+100L);//숫자값L >> 8Byte(Long)의 정수값을 표현한 리터럴
		
		//정수값을 표현하기 위한 자료형 - byte(1Byte), short(2Byte), int(4Byte), long(8Byte)
		
	}
}






