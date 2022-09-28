package inheritance;

//사원 급여 관련 프로그램
public class EmployeeApp {
	public static void main(String[] args) {
		//추상클래스로 객체를 생성할 경우 에러 발생
		//Employee employee=new Employee();
		
		//추상클래스(부모클래스)로 참조변수를 생성하여 모든 자식클래스의 객체 저장 가능
		//Employee employee1=new EmployeeRegular();
		//Employee employee2=new EmployeeTime();
		//Employee employee3=new EmployeeContract();
		
		//모든 사원정보를 저장할 수 있는 참조요소가 존재하는 배열 생성
		Employee[] empArray=new Employee[5];
		
		empArray[0]=new EmployeeRegular(1000, "홍길동", 96000000);
		empArray[1]=new EmployeeTime(2000, "임꺽정", 50000, 150);
		empArray[2]=new EmployeeContract(3000, "전우치", 7000000);
		empArray[3]=new EmployeeTime(4000, "일지매", 20000, 100);
		empArray[4]=new EmployeeRegular(5000, "장길산", 60000000);
		
		for(Employee employee:empArray) {
			System.out.println("사원번호 = "+employee.getEmpNo());			
			System.out.println("사원이름 = "+employee.getEmpName());
			
			//사원의 급여를 반환받아 출력
			// => 참조변수는 부모클래스의 객체만 참조 가능하므로 자식클래스의 메소드 호출 불가능
			// => 명시적 객체 형변환을 사용하여 참조변수로 자식클래스의 객체를 참조하여 메소드 호출 가능
			// => instanceof 연산자를 사용하여 자식클래스를 구분하여 객체 형변환 - ClassCastException 발생 방지
			if(employee instanceof EmployeeRegular) {
				System.out.println("급여 = "+((EmployeeRegular)employee).computeRegular());
			} else if(employee instanceof EmployeeTime) {
				System.out.println("급여 = "+(( EmployeeTime)employee).computeTime());
			} else if(employee instanceof EmployeeContract) {
				System.out.println("급여 = "+(( EmployeeContract)employee).computeContract());
			}
			System.out.println("==========================================================");			
		}
	}
}









