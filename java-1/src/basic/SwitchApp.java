package basic;

//switch : 값을 비교하여 명령 선택 실행 - 실수값 비교 제외
//형식) switch(비교대상) {
//           case 값1: 명령; 명령; ... [break;]
//           case 값2: 명령; 명령; ... [break;]
//           case 값3: 명령; 명령; ... [break;]
//           ...
//           [default: 명령; 명령; ...]
//      }
// => 비교대상에는 변수 또는 연산식을 작성하여 비교하고자 하는 값을 제공
// => switch의 값을 case에 작성된 값과 비교하여 같은 경우 해당 위치로부터 작성된 모든 명령 실행
// => 모든 비교값이 다른 경우 default에 작성된 명령 실행 - 생략 가능
// => break 구문을 만나면 switch 구문 강제 종료

public class SwitchApp {
	public static void main(String[] args) {
		//int choice=1;
		//int choice=2;
		int choice=3;
		
		switch(choice) {
		case 1:
			System.out.println("수성으로 이동합니다.");
		case 2:
			System.out.println("금성으로 이동합니다.");		
		case 3:
			System.out.println("화성으로 이동합니다.");	
		}
		System.out.println("===============================================================");
		choice=4;
		
		//switch의 값과 case의 값이 모두 다른 경우 명령 미실행
		switch(choice) {
		case 1:
			System.out.println("수성으로 이동합니다.");
		case 2:
			System.out.println("금성으로 이동합니다.");		
		case 3:
			System.out.println("화성으로 이동합니다.");	
		}
		System.out.println("===============================================================");
		choice=4;

		//switch의 값과 case의 값이 모두 다른 경우 default 위치의 명령 실행
		switch(choice) {
		case 1:
			System.out.println("수성으로 이동합니다.");
		case 2:
			System.out.println("금성으로 이동합니다.");		
		case 3:
			System.out.println("화성으로 이동합니다.");
		default:	
			System.out.println("지구로 이동합니다.");
		}
		System.out.println("===============================================================");
		choice=1;
		
		switch(choice) {
		case 1:
			System.out.println("수성으로 이동합니다.");
			//break;
		case 2:
			System.out.println("금성으로 이동합니다.");	
			break;	
		case 3:
			System.out.println("화성으로 이동합니다.");	
			break;
		}
		System.out.println("===============================================================");
	}
}











