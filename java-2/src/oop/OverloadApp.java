package oop;

public class OverloadApp {
	public static void main(String[] args) {
		Overload overload=new Overload();
		
		overload.displayInt(100);
		//메소드 호출시 매개변수에 값을 잘못 전달한 경우 에러 발생
		//overload.displayInt(false);
		overload.displayBoolean(false);
		overload.displatString("홍길동");
	}
}
