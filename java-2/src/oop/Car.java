package oop;

//클래스(Class) : 객체(Object)를 만들기 위한 자료형 - 참조형
// => 객체 대신 인스턴스(Instance)로 표현 가능
// => 현실 세계의 존재하는 사물을 클래스라는 자료형으로 표현하여 객체로 구현

//클래스 선언 형식
//형식) [public] class 클래스명 {
//			필드(Field) : 대상의 속성을 표현하여 속성값을 저장하기 위해 선언된 변수(멤버변수) 
//          ...
//          생성자(Constructor) : 객체 생성을 목적으로 선언된 메소드
//          ...
//          메소드(Method) : 대상의 행위를 명령의 모임으로 표현하기 위해 선언된 함수(멤버함수) 
//          ...
//      }
// => 필드에는 프로그램 실행에 필요한 값을 저장하고 메소드로 필드값을 사용해 원하는 기능을 제공

//객체 생성 방법
//형식) 클래스명 참조변수=new 클래스명();
// => new 연산자로 클래스의 생성자를 호출하여 객체를 생성하고 참조변수를 객체의 주소를 저장
// => 참조변수에 저장된 객체의 필드 또는 메소드를 . 연산자로 접근하여 프로그램 작성

//자동차를 객체 모델링하여 작성된 클래스
// => 속성 : 모델명, 엔진상태, 현재속도 - 필드
// => 행위 : 시동 온(On), 시동 오프(Off), 속도 증가, 속도 감소, 이동 중지 - 메소드 
public class Car {
	//필드(Field) : 클래스에 선언된 모든 메소드는 필드 사용 가능
	String modelName;//모델명
	boolean engineStatus;//엔진상태 - false : Off, true : On
	int currentSpeed;//현재속도
	
	//생성자(Constructor) : 생성자 선언을 생략하면 매개변수가 없는 기본 생성자(Default Constructor)가
	//존재하는 것으로 처리
		
	//메소드 : 필드를 이용하여 명령들로 필요한 기능을 제공
	void startEngine() {//시동 온(On)
		engineStatus=true;
		System.out.println(modelName+"의 시동을 켰습니다.");
	}
	
	void stopEngine() {//시동 오프(Off)
		if(currentSpeed!=0) {//자동차가 멈췄있지 않은 경우
			//currentSpeed=0;
			//System.out.println(modelName+"의 자동차가 멈췄습니다.");
			
			//클래스에 선언된 메소드를 서로 호출 가능
			// => 코드의 중복성 최소화 : 프로그램의 생산성 및 유지보수의 효율성 증가 
			speedZero();
		}
		
		engineStatus=false;
		System.out.println(modelName+"의 시동을 껐습니다.");
	}
	
	void speedUp(int speed) {//속도 증가
		if(!engineStatus) {//시동이 꺼져 있는 경우
			System.out.println(modelName+"의 시동이 꺼져 있습니다.");
			return;//메소드 종료
		}
		
		if(currentSpeed+speed>150) {//현재속도와 증가된 속도의 합이 최고 속도보다 큰 경우
			speed=150-currentSpeed;//증가된 속도 변경
		}
		
		currentSpeed+=speed;
		System.out.println(modelName+"의 속도가 "+speed+"Km/h 증가 되었습니다. 현재 속도는 "
				+currentSpeed+"Km/h입니다.");
	}
	
	void speedDown(int speed) {//속도 감소
		if(!engineStatus) {//시동이 꺼져 있는 경우
			System.out.println(modelName+"의 시동이 꺼져 있습니다.");
			return;//메소드 종료
		}
		
		if(currentSpeed<speed) {//현재속도보다 감소된 속도가 큰 경우
			speed=currentSpeed;//감소된 속도 변경
		}
		
		currentSpeed-=speed;
		System.out.println(modelName+"의 속도가 "+speed+"Km/h 감소 되었습니다. 현재 속도는 "
				+currentSpeed+"Km/h입니다.");
	}
	
	void speedZero() {
		currentSpeed=0;
		System.out.println(modelName+"의 자동차가 멈췄습니다.");
	}
}













