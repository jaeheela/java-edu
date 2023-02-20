package xyz.itwill07.aop;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//횡단관심모듈 - Advice 클래스
public class EmailSendAdvice {
	private static final Logger logger=LoggerFactory.getLogger(EmailSendAdvice.class);
	
	//메일을 전송하기 전에 삽입되어 실행될 명령이 작성된 메소드 - Before Advice 메소드
	// => 받는 사람의 이메일 주소와 제목을 얻어와 저장하기 위해 JointPoint 매개변수 필요
	public void accessLog(JoinPoint joinPoint) {
		//타겟메소드(sendEmail)의 매개변수에 저장된 값(객체)를 반환받아 저장
		String email=(String)joinPoint.getArgs()[0];//받는 사람의 이메일 주소
		String subject=(String)joinPoint.getArgs()[1];//메일 제목
		logger.info(email+"님에게 <"+subject+"> 제목을 이메일을 전송합니다.");
	}
	
	//메일 전송이 성공한 경우 삽입되어 실행될 명령이 작성된 메소드 - After Returning Advice 메소드
	// => 타겟메소드(sendEmail)의 반환값(받는 사람의 이메일 주소)을 얻어와 저장하기 위해 매개변수 필요
	public void successLog(String email) {
		logger.info(email+"님에게 이메일을 성공적으로 전송 하였습니다.");
	}
	
	//예외가 발생되어 메일 전송이 실패한 경우 삽입되어 실행될 명령이 작성된 메소드 - After Throwing 메소드
	// => 타겟메소드(sendEmail)의 명령 실행시 발생된 예외(Exception 객체)를 얻어와 저장하기 위한 매개변수 필요
	public void errorLog(Exception exception) {
		logger.error("이메일 전송 실패 = "+exception.getMessage());
	}
}
