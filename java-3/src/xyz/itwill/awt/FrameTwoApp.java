package xyz.itwill.awt;

import java.awt.Frame;

//GUI 프로그램은 Frame 클래스를 상속받아 작성하는 것을 권장
public class FrameTwoApp extends Frame {
	private static final long serialVersionUID = 1L;

	//생성자에서 프레임에 대한 디자인 설정 - UI(User Interface) 구현
	// => 생성자 매개변수로 프레임의 제목을 전달받아 사용
	public FrameTwoApp(String title) {
		super(title);//super 키워드로 부모클래스의 원하는 생성자 호출
		
		//Frame.setTitle(String title) : 프레임의 제목을 변경하는 메소드
		//setTitle(title);		
		
		//setSize(400, 300);//프레임의 크기 변경
		//setLocation(600, 100);//프레임의 출력위치 변경
		
		//Component.setBounds(int x, int y, int width, int height) : 컴퍼넌트의 크기와 출력위치를 변경하는 메소드
		setBounds(600, 100, 400, 300);
		
		//Frame.setResizable(boolean resize) : 프레임의 크기 변경 여부를 설정하는 메소드
		// => false : 프레임 크기 변경 불가능, true : 프레임 크기 변경 가능(기본)
		setResizable(false);
		
		setVisible(true);//프레임 출력
	}
	
	public static void main(String[] args) {
		//Frame 클래스를 상속받은 자식클래스로 객체 생성 - Frame 객체 생성 : 프레임 생성
		new FrameTwoApp("프레임 연습");
	}
}




