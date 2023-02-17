package xyz.itwill07.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//횡단관심모듈(CrossCutting Concern Module) : 횡단관심코드만 이용하여 메소드를 작성한 클래스 - Advice 클래스
// => 횡단관심코드 : 데이타 처리 명령을 제외한 보조적인 기능을 제공하는 명령
// => 로그 처리, 보안(권한) 처리, 트렌젝션 처리, 예외 처리 등의 명령
public class StudentAdvice {
	private static final Logger logger=LoggerFactory.getLogger(StudentAdvice.class);
	
	//타겟메소드의 명령 실행전에 삽입되어 실행될 명령을 작성한 메소드 - Before Advice 메소드
	// => JoinPoint : 핵심관심코드를 기준으로 횡단관심코드가 삽입되어 동작될 위치를 표현
	//타겟메소드(Target Method) : 핵심관심모듈의 메소드 중 PointCut 표현식으로 지정되어 횡단관심코드가 삽입될 메소드
	// => PointCut 표현식 : 핵심관심모듈의 메소드 중 원하는 메소드만 지정하기 위한 언어
	public void beforeLog() {
		logger.info("[before]핵심관심코드 동작 전 삽입되어 실행될 횡단관심코드");
	}
	
	//타겟메소드의 명령 실행후에 예외와 상관없이 무조건 삽입되어 실행될 명령을 작성한 메소드
	// => After Advice 메소드
	public void afterLog() {
		logger.info("[after]핵심관심코드 동작 후 무조건 삽입되어 실행될 횡단관심코드");
	}
	
	//타겟메소드의 명령이 정상적으로 실행된 후에 삽입되어 실행될 명령을 작성한 메소드
	// => After Returning Advice 메소드
	public void afterReturningLog() {
		logger.info("[after-returning]핵심관심코드가 정삭적으로 동작된 후 삽입되어 실행될 횡단관심코드");
	}

	//타겟메소드의 명령 실행시 예외가 발생된 경우에만 삽입되어 실행될 명령을 작성한 메소드
	// => After Throwing Advice 메소드
	public void afterThrowingLog() {
		logger.info("[after-throwing]핵심관심코드 동작시 예외가 발생된 경우 삽입되어 실행될 횡단관심코드");
	}
	
	//타겟메소드의 명령이 실행 전과 후에 삽입되어 실행될 명령을 작성한 메소드
	// => Around Advice 메소드
	public void aroundLog(ProceedingJoinPoint joinPoint) throws Throwable {
		logger.info("[around]핵심관심코드 동작 전 삽입되어 실행될 횡단관심코드");
		joinPoint.proceed();//타겟메소드 호출 - 핵심관심코드 실행 
		logger.info("[around]핵심관심코드 동작 후 삽입되어 실행될 횡단관심코드");
	}
}











