package xyz.itwill.io;

import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;

public class DataInputStreamApp {
	public static void main(String[] args) throws IOException {
		//DataInputStream : InputStream 객체를 전달받아 원시데이타를 원하는 자료형의 값으로 
		//읽기 위한 기능의 입력스트림을 생성하는 클래스
		DataInputStream in=new DataInputStream(new FileInputStream("c:/data/data.txt"));
		
		//반드시 파일에 저장된 자료형의 순서대로 값을 읽어서 사용
		// => 값을 순차적으로 읽어 사용하지 않은 경우 비정상적인 결과 발생
		
		//DataInputStream.readInt() : 입력스트림의 원시데이타를 정수값으로 읽어와 반환하는 메소드 
		int value1=in.readInt();
		
		//DataInputStream.readBoolean() : 입력스트림의 원시데이타를 논리값으로 읽어와 반환하는 메소드 
		boolean value2=in.readBoolean();
		
		//DataInputStream.readUTF() : 입력스트림의 원시데이타를 문자열로 읽어와 반환하는 메소드 
		String value3=in.readUTF();
		
		System.out.println("value1 = "+value1);
		System.out.println("value2 = "+value2);
		System.out.println("value3 = "+value3);
		
		in.close();
	}
}
