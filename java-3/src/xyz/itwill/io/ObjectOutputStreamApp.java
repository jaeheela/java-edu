package xyz.itwill.io;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Date;

public class ObjectOutputStreamApp {
	public static void main(String[] args) throws IOException {
		//ObjectOutputStream : OutputStream 객체를 전달받아 원하는 형태의 객체를 원시데이타로 
		//전달하기 위한 기능의 출력스트림을 생성하는 클래스
		ObjectOutputStream out=new ObjectOutputStream(new FileOutputStream("c:/data/object.txt"));
		
		//ObjectOutputStream.writeObject(Object o) : 출력스트림으로 객체를 전달하기 위한 메소드
		out.writeObject("홍길동");//String 객체 전달
		out.writeObject(new Date());//Date 객체 전달
		out.writeObject(Arrays.asList("임꺽정","전우치","일지매"));//ArrayList 객체 전달
		
		out.close();
		
		System.out.println("c:\\data\\object.txt 파일에 여러개의 객체가 저장 되었습니다.");
	}
}
