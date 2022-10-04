package xyz.itwill.exception;

import java.util.Scanner;

//키보드로 정수값을 입력받아 저장된 비밀번호와 비교하여 비교결과를 출력하는 프로그램 작성
public class PasswordMatchApp {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		
		System.out.print("비밀번호 입력 >> ");
		int password=scanner.nextInt();
		
		if(password==123456) {
			System.out.println("[결과]입력된 비밀번호가 맞습니다.");
		} else {
			System.out.println("[결과]입력된 비밀번호가 다릅니다.");
		}
		
		scanner.close();
	}
}
