package association;

//클래스와 클래스의 관계 : 객체 관계 
// => UML(Unified Modeling Language)를 사용하여 클래스 다이어그램(Class Diagram)으로 표현 
//1.일반화 관계(Generalization) : 상속 관계(is a 관계) 
// => 클래스 선언시 기존 클래스를 상속받아 작성
// => 사원클래스와 관리자클래스 - 관리자는 사원이다.(O)  사원은 관리자이다(X)
//2.실체화 관계(Realization) : 상속 관계(is a 관계)
// => 클래스 선언시 인터페이스를 상속받아 작성
// => 인터페이스 : 클래스보다 추상적으로 표현된 자료형
//3.연관관계(Association) 또는 직접연관관계(Direct Association) : 포함 관계(has a 관계)
// => 클래스 선언시 필드를 참조변수로 선언하여 객체를 저장한 관계
// => Computer <--- CPU + MainBoard + Memory 
//4.집합연관관계(Aggregation) : 포함관계의 객체간의 생명주기가 다른 경우
// => Computer --- Printer
//5.복합연관관계(Composition) : 포함관계의 객체간의 생명주기가 같은 경우
// => Game --- Character
//6.의존관계(Dependency) : 포함관계 - 참조필드에 저장된 객체가 변경될 수 있는 관계
// => TV --- RemoteControl

//자동차정보(모델명,생산년도,엔진)를 저장하기 위한 클래스
public class Car {
	private String modelName;
	private int productionYear;
	//엔진정보(Engine 객체)를 저장하기 위한 참조필드 - 포함관계 : Direct Association
	// => 포함관계가 성립되기 위해서는 반드시 생성자 또는 Setter 메소드를 이용하여 참조필드에
	//객체가 저장되도록 설정
	private Engine carEngine;
	
	
}









