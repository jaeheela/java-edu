package oop;

public class MemberApp {
	public static void main(String[] args) {
		Member member1=new Member();
		
		System.out.println("아이디 = "+member1.getId());
		System.out.println("이름 = "+member1.getName());
		System.out.println("이메일 = "+member1.getEmail());
	}
}
