package xyz.itwill.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

//웹프로그램 작성에 필요한 부가적인 기능을 제공하기 위한 클래스
public class Utility {
	//문자열을 전달받아 암호화 처리하여 반환하는 메소드
	public static String encrypt(String source) {
		//암호화 처리된 문자열을 저장하기 위한 변수 선언
		String password="";
		try {
			//MessageDigest 객체 : 암호화 처리 기능을 제공하는 객체
			//MessageDigest.getInstance(String algorithm) : 매개변수에 전달된 암호화 알고리즘이 
			//저장된 MessageDigest 객체를 생성하여 반환하는 메소드
			// => 매개변수에 잘못된 암호화 알고리즘을 전달할 경우 NoSuchAlgorithmException 발생
			//단방향 암호화 알고리즘 : MD5, SHA-1, SHA-256(권장), SHA-512 등
			//양방향 암호화 알고리즘 : AES-123, RSA 등
			MessageDigest messageDigest=MessageDigest.getInstance("SHA-256");
			
			//MessageDigest.update(byte[] input) : MessageDigest 객체에 암호화 처리하기 위한
			//값(byte 배열)을 전달받아 저장하기 위한 메소드
			//String.getBytes() : String 객체에 저장된 문자열을 원시데이타(byte 배열)로 
			//변환하여 반환하는 메소드
			messageDigest.update(source.getBytes());
			
			//MessageDigest.digest() : MessageDigest 객체에 저장된 암호화 알고리즘으로 원시
			//데이타를 암호화 처리하여 byte 배열로 반환하는 메소드
			byte[] digest=messageDigest.digest();
			
			//암호화 처리된 byte 배열을 문자열(String 객체)로 변환하여 저장
			for(int i=0;i<digest.length;i++) {
				//Integer.toHexString(int i) : 정수값을 전달받아 16진수의 문자열로 변환하여 반환하는 메소드
				password+=Integer.toHexString(digest[i]&0xff);
			}
		} catch (NoSuchAlgorithmException e) {
			System.out.println("[에러]잘못된 암호화 알고리즘을 사용 하였습니다.");
		}
		return password;
	}
}









