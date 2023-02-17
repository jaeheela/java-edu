package xyz.itwill07.aop;

import org.aspectj.lang.ProceedingJoinPoint;

public class ExecutionTimeAdvice {
	//타겟메소드의 명령이 싱행되는 처리시간을 계산하여 출력하기 위한 메소드 - Around Advice Method
	public Object timeWatchLog(ProceedingJoinPoint joinPoint) throws Throwable {
		//타겟메소드의 명령 실행전에 동작될 명령 작성
		long startTime=System.currentTimeMillis();

		//타겟메소드 호출하여 명령 실행
		Object object=joinPoint.proceed();
		
		//타겟메소드의 명령 실행후에 동작될 명령 작성
		long endTime=System.currentTimeMillis();
		
		String className=joinPoint.getTarget().getClass().getSimpleName();
		String methodName=joinPoint.getSignature().getName();
		
		System.out.println(className+" 클래스의 "+methodName+" 메소드 실행 시간 = "+(endTime-startTime)+"ms");
		
		return object;
	}
}
