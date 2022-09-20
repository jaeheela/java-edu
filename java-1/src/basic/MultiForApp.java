package basic;

public class MultiForApp {
	public static void main(String[] args) {
		int cnt=0;//이동방법의 갯수를 저장하기 위한 변수
		
		for(int i=1;i<=3;i++) {//A나라 >> 섬 - 반복문
			for(int j=1;j<=4;j++) {//섬 >> B나라 - 반복문
				cnt++;
			}
		}
		
		System.out.println("이동방법의 갯수 = "+cnt);
		System.out.println("==============================================================");
	}
}
