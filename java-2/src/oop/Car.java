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

//클래스를 선언할 때 필드 또는 메소드에 접근지정자를 선언하여 접근 가능 유무 설정
//접근지정자(Access Modifier) : private, package(default), protected, public
// => 클래스, 필드, 생성자, 메소드를 선언할 때 접근 유무를 지정하기 위한 키워드
//private : 클래스 내부에서만 접근 가능하며 클래스 외부에서는 접근 불가능하도록 설정하는 키워드
// => 일반적으로 필드 선언시 사용 : 객체로 필드에 직접적인 접근하는 것을 차단하기 위해 사용 
// => 은닉화(Data Hiding)
//public : 모든 패키지의 클래스에서 접근 가능하도록 설정하는 키워드
// => 일반적으로 메소드 선언시 사용 : 프로그램 작성에 필요한 모든 클래스에서 접근할 수 있도록 사용

//자동차를 객체 모델링하여 작성된 클래스
// => 속성 : 모델명, 엔진상태, 현재속도 - 필드
// => 행위 : 시동 온(On), 시동 오프(Off), 속도 증가, 속도 감소, 이동 중지 - 메소드
public class Car { 
	//필드(Field) : 클래스에 선언된 모든 메소드는 필드 사용 가능
	private String modelName;//모델명
	private boolean engineStatus;//엔진상태 - false : Off, true : On
	private int currentSpeed;//현재속도
	
	//생성자(Constructor) : 생성자 선언을 생략하면 매개변수가 없는 기본 생성자(Default Constructor)가
	//존재하는 것으로 처리
		
	//메소드 : 필드를 이용하여 명령들로 필요한 기능을 제공
	public void startEngine() {//시동 온(On)
		engineStatus=true;
	System.out.println(modelName+"의 시동을 켰습니다.");
	}
	
	public void stopEngine() {//시동 오프(Off)
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
	
	public void speedUp(int speed) {//속도 증가
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
	
	public void speedDown(int speed) {//속도 감소
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
	
	public void speedZero() {
		currentSpeed=0;
		System.out.println(modelName+"의 자동차가 멈췄습니다.");
	}
	
	//은닉화 처리된 필드를 위해 필드값을 반환하는 Getter 메소드와 필드값을 변경하는 Setter 메소드 선언 - 캡슐화
	//캡슐화(Encapsulation) : 표현대상을 속성(필드)와 행위(메소드)를 묶어 클래스로 선언
	// => 필드를 은닉화 처리하여 보호되여 사용되도록 설정하는 작업
	//Getter 메소드 : 클래스 외부에서 필드값을 사용할 수 있도록 반환하는 메소드
	// => 은닉화 선언된 필드의 자료형이 boolean인 경우 get 대신 is를 사용하여 메소드 작성
	//형식) public 반환형 get필드명() { return 필드명; }
	public String getModelName() {
		return modelName;
	}
	
	//Setter 메소드 : 매개변수로 값을 전달받아 필드값을 변경하는 메소드
	//형식)public void set필드명(자료형 매개변수) { 필드명=매개변수; }
	// => 매개변수에 전달되어 저장된 값에 대한 검증 가능
	public void setModelName(String modelName) {
		//this : 메소드 내부에서 클래스의 객체를 표현하는 키워드
		// => this 키워드를 사용하여 필드 표현
		this.modelName=modelName;
	}

	//이클립스는 은닉화 선언된 필드에 Getter와 Setter 메소드를 생성하는 기능 제공
	//[Alt]+[Shift]+[S] >> 팝업메뉴 >> [R] >> 필드 선택 >> Generate
	public boolean isEngineStatus() {
		return engineStatus;
	}

	public void setEngineStatus(boolean engineStatus) {
		this.engineStatus = engineStatus;
	}

	public int getCurrentSpeed() {
		return currentSpeed;
	}

	public void setCurrentSpeed(int currentSpeed) {
		this.currentSpeed = currentSpeed;
	}
}