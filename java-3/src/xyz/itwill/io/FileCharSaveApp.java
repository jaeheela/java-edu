package xyz.itwill.io;

import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

//키보드 입력값을 문자데이타로 제공받아 파일에 전달하여 저장하는 프로그램 
// => EOF(End Of File : 입력종료 - Ctrl+Z) 신호를 입력하면 프로그램 종료
public class FileCharSaveApp {
	public static void main(String[] args) throws IOException {
		System.out.println("[메세지]키보드를 눌러 값을 입력해 주세요.[프로그램 종료 : Ctrl+Z]");
		
		InputStreamReader in=new InputStreamReader(System.in);

		//FileWriter : 파일에 문자데이타를 전달하기 위한 출력스트림을 생성하기 위한 클래스
		//FileWriter(String filename) : 파일경로를 전달받아 파일 출력스트림을 생성하는 생성자
		// => 전달받은 파일경로에 파일이 없는 경우 FileNotFoundException 발생 - 예외처리
		// => 예외처리 하지 않고 예외를 전달할 경우 파일을 자동으로 생성하여 출력스트림 제공
		// => 전달받은 파일경로에 파일이 있는 경우 기존 파일값 대신 새로운 값이 파일에 저장 - 덮어씌우기
		//FileWriter out=new FileWriter("c:/data/char.txt");
	
		//FileWriter(String filename, boolean append) : 파일경로와 추가 유무에 대한 논리값을
		//전달받아 파일 출력스트림을 생성하는 생성자
		// => false : 파일 덮어씌우기(기본), true : 파일 이어쓰기
		FileWriter out=new FileWriter("c:/data/char.txt",true);
		
		int readByte;
		while(true) {
			//키보드 입력값을 문자데이타로 얻어와 저장
			readByte=in.read();
			if(readByte==-1) break;
			//문자데이타를 파일 출력스트림을 이용하여 전달하여 저장 - SAVE
			out.write(readByte);
		}
		
		//FileWriter.close() : 파일 출력스트림을 제거하는 메소드
		out.close();
		System.out.println("c:\\data\\char.txt 파일에 키보드 입력값이 저장 되었습니다.");
	}
}







