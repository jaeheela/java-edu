package xyz.itwill.util;

import java.util.ArrayList;
import java.util.List;

//List 인터페이스를 상속받은 자료구조 클래스 - ArrayList, Vector, LinkedList 등
// => List 객체는 요소를 차례대로 저장 - 첨자(Index)를 이용하여 요소를 구분하여 처리
public class ListApp {
	public static void main(String[] args) {
		List<String> list=new ArrayList<String>();
		
		//List.add(E element) : List 객체에 요소를 추가하는 메소드
		list.add("홍길동");
		list.add("임꺽정");
		list.add("전우치");
		list.add("일지매");
		
		//List.toString() : List 객체에 저장된 모든 요소를 문자열로 변환하여 반환하는 메소드
		//System.out.println("list.toString() = "+list.toString());
		System.out.println("list = "+list);
		System.out.println("===============================================================");
		//List 객체에는 동일한 값의 객체를 요소로 저장 가능
		list.add("임꺽정");
		System.out.println("list = "+list);
		System.out.println("===============================================================");
	}
}








