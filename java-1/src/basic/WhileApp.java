package basic;

//while : 명령에 대한 반복 횟수가 불확실한 경우 사용되는 반복문

//형식) while(조건식) { 명령; 명령; ... }
// => 조건식의 결과가 참인 경우 블럭 안의 명령을 반복 실행하고 거짓인 경우 반복문 종료 
// => 조건식 생략 불가능
// => 블럭 안의 명령을 0번 이상 반복 실행 - 조건식의 결과가 처음부터 거짓인 경우 반복문 종료 

//형식) do { 명령; 명령; ...} while(조건식);
// => 블럭 안의 명령을 1번 이상 반복 실행 - 조건식의 결과가 처음부터 거짓인 경우에도 명령 실행 후 반복문 종료

public class WhileApp {
	public static void main(String[] args) {
		//"Java Programming"를 화면에 5번 출력
		int i=1;
		while(i<=5) {
			System.out.println("Java Programming");
			i++;
		}
		System.out.println("===============================================================");
		//1~100 범위의 정수들의 합계를 계산하여 출력
		int j=1, tot=0;
		do {
			tot+=j;
			j++;
		} while(j<=100);
		System.out.println("1~100 범위의 정수들의 합계 = "+tot);
		System.out.println("===============================================================");
		//A4 용지를 반으로 계속 접어 펼쳤을 경우 사각형 모양의 갯수가 500개 이상이 만들어지려면
		//몇번 접어야 되는지 계산하여 출력
		int cnt=0, gae=1;//cnt : 접는 횟수, gae : 사각형 모양의 갯수
		while(gae<500) {//A4 용지를 반으로 접는 행위를 반복 처리
			cnt++;//접는 횟수는 1씩 증가
			gae*=2;//사각형 모양의 갯수는 2배씩 증가
		}
		System.out.println(cnt+"번 접으면 "+gae+"개의 사각형이 만들어집니다.");
		System.out.println("===============================================================");
		//1~X 범위의 정수들의 합계가 300 이상이 만들어지려면 X가 얼마인지 계산하여 출력
		int x=0, sum=0;//x : 1씩 증가되는 정수값 저장, sum : 누적결과(합계) 저장
		while(sum<300) {
			x++;
			sum+=x;
		}
		System.out.println("1~"+x+" 범위의 정수들의 합계 = "+sum);
		System.out.println("===============================================================");
	}
}















