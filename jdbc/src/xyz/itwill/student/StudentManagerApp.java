package xyz.itwill.student;

import java.io.BufferedReader;
import java.io.InputStreamReader;

//학생정보를 관리하는 프로그램 작성
// => 메뉴 선택에 따른 학생정보 삽입,변경,삭제,검색 기능 제공

public class StudentManagerApp {
	//키보드 입력스트림을 저장하기 위한 필드
	private BufferedReader in;
	
	public StudentManagerApp() {
		//키보드로 문자열을 입력받기 위한 입력스트림 생성
		in=new BufferedReader(new InputStreamReader(System.in));
		
		String[] menu={"1.학생정보 삽입","2.학생정보 변경","3.학생정보 삭제"
				,"4.학생이름 검색","5.학생목록 출력","6.프로그램 종료"};
		
		System.out.println("<<학생 관리 프로그램>>");
		
		while(true) {
			//메뉴 출력
			for(String item:menu) {
				System.out.println(item);
			}
			
			//메뉴 선택
			int choice;
			try {
				System.out.print("선택[1~6] >> ");
				choice=Integer.parseInt(in.readLine());//NumberFormatException 발생 가능
				if(choice<1 || choice>6) {//비정상적 입력값인 경우
					throw new Exception();//인위적 예외 발생 
				} 
			} catch (Exception e) {//모든 예외에 대한 처리 가능
				System.out.println("[에러]메뉴를 잘못 선택 하였습니다.");
				System.out.println();
				continue;//반복문 재실행
			}
			System.out.println();
			
			//[6.프로그램 종료] 메뉴를 선택한 경우 반복문 종료 - 프로그램 종료
			if(choice==6) break;
			
			//메뉴 선택에 따른 메소드 호출
			switch (choice) {
			case 1:	addStudent(); break;
			case 2:	modifyStudent(); break;
			case 3:	removeStudent(); break;
			case 4:	searchNameStudent(); break;
			case 5:	displayAllStudent(); break;
			}
			System.out.println();
		}
		
		System.out.println("[메세지]학생 관리 프로그램을 종료합니다.");
	}
	
	public static void main(String[] args) {
		new StudentManagerApp();
	}
	
	//[1.학생정보 삽입] 메뉴를 선택한 경우 호출되는 메소드
	public void addStudent() {
		
	}
	
	//[2.학생정보 변경] 메뉴를 선택한 경우 호출되는 메소드
	public void modifyStudent() {
		
	}

	//[3.학생정보 삭제] 메뉴를 선택한 경우 호출되는 메소드
	public void removeStudent() {
			
	}
	
	//[4.학생이름 검색] 메뉴를 선택한 경우 호출되는 메소드
	public void searchNameStudent() {
		
	}
	
	//[5.학생목록 출력] 메뉴를 선택한 경우 호출되는 메소드
	public void displayAllStudent() {
		
	}
}




