package xyz.itwill.util;

import java.util.Random;

//숫자야구게임 : 정수난수(0~9)를 3개 제공받아 키보드로 입력하여 맞추는 게임
// => 난수와 키보드 입력값은 0~9 범위의 3개의 정수값으로 서로 다르며 0으로 시작 불가능
// => 키보드 입력값이 형식에 맞지 않은 경우 재입력되도록 작성
// => 난수와 입력값을 서로 비교하여 동일한 정수값이 존재할 경우 위치가 같으면 스트라이크 처리하고 다르면 볼로 처리하여 계산
// => 스트라이크가 3개라면 성공 메세지 출력 후 프로그램을 종료하고 아니라면 스트라이크와 볼의 갯수 출력
// => 키보드 입력 기회는 15번을 제공하며 15번 이내에 맞추지 못한 경우 정답(난수) 출력
public class BaseBallApp {
	public static void main(String[] args) {
		Random random=new Random();
		
		//0~9 범위의 정수값 3개를 저장하기 위한 배열 선언
		int[] dap=new int[3];
		
		//규칙에 맞는 난수값을 배열 요소에 저장하도록 처리하는 반복문
		while(true) {
			for(int i=0;i<dap.length;i++) {
				dap[i]=random.nextInt(10);//0~9 범위의 난수값을 배열 요소에 저장
			}
			
			//규칙에 맞는 난수값인 경우에만 반복문 종료
			if(dap[0]!=0 && dap[0]!=dap[1] && dap[1]!=dap[2] && dap[2]!=dap[0]) break;
		}
		
		for(int num:dap) {
			System.out.print(num);
		}
		System.out.println();
	}
}












