package xyz.itwill03.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//스프링 컨테이너(Spring Container)를 이용하여 객체를 생성하여 제공받아 사용
// => Spring Container : Spring Framework에서 프로그램 작성에 필요한 객체를 관리하는 컴퍼넌트
// => 프로그래머가 아닌 스프링 컨테이너가 객체 관리 - Spring IoC
// => 스프링 컨테이너는 환경설정파일(Spring Bean Configuration File - XML)을 이용하여 객체의
//생명주기(LifeCycle) 관리 및 객체간의 관계 설정
public class MessagePrintApp {
	public static void main(String[] args) {
		/*
		HelloMessageObject object=new HelloMessageObject();
		MessagePrint print=new MessagePrint();
		print.setObject(object);//포함관계 성립 - 필드에 HelloMessageObject 객체 저장
		print.messagePrint();
		*/

		//ApplicationContext 객체(스프링 컨테이너 기능을 제공하는 객체) 생성
		// => Spring Bean Configuration File을 제공받아 Spring Bean를 생성하여 관리
		ApplicationContext context=new ClassPathXmlApplicationContext("03_message.xml");
		
		//스프링 컨테이너로부터 필요한 Spring Bean를 제공받아 저장
		// => Spring Bean을 구분하기 위한 식별자(beanName 또는 beanId)를 전달 
		MessagePrint print=(MessagePrint)context.getBean("messagePrint");
		
		print.messagePrint();
		
		//스프링 컨테이너 제거
		((ClassPathXmlApplicationContext)context).close();
	}
}
