package realization;

public class JdbcOracle implements Jdbc {
	/*
	public void add() {
		System.out.println("[oracle]학생정보를 삽입하는 메소드");
	}
	
	public void modify() {
		System.out.println("[oracle]학생정보를 변경하는 메소드");
	}
	
	public void remove() {
		System.out.println("[oracle]학생정보를 삭제하는 메소드");
	}
	
	public void search() {
		System.out.println("[oracle]학생정보를 검색하는 메소드");
	}
	*/

	@Override
	public void insert() {
		System.out.println("[oracle]학생정보를 삽입하는 메소드");
	}
	
	@Override
	public void update() {
		System.out.println("[oracle]학생정보를 변경하는 메소드");
	}
	
	@Override
	public void delete() {
		System.out.println("[oracle]학생정보를 삭제하는 메소드");
	}
	
	@Override
	public void select() {
		System.out.println("[oracle]학생정보를 검색하는 메소드");
	}
}
