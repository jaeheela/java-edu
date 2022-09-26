package oop;

//학생정보(학번,이름,국어,영어,총점)를 저장하기 위한 클래스 - VO 클래스
public class Student {
	//인스턴스 필드(Instance Field) : 객체 생성시 메모리(Heap)에 만들어지는 필드 
	private int num;
	private String name;
	private int kor, eng, tot;
	
	//생성자(Constructor) - 객체 생성시 인스턴스 필드에 원하는 초기값을 저장하기 위해 작성
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(int num, String name, int kor, int eng) {
		super();
		this.num = num;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
	}

	//인스턴스 메소드
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getTot() {
		return tot;
	}

	public void setTot(int tot) {
		this.tot = tot;
	}

	
	
	
	
	
}
