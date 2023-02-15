package xyz.itwill05.lombok;

import java.util.List;

public class MemberDAOImpl implements MemberDAO {
	public MemberDAOImpl() {
		System.out.println("### MemberDAOImpl 클래스의 기본 생성자 호출 ###");
	}
	
	@Override
	public int insertMember(Member member) {
		System.out.println("*** MemberDAOImpl 클래스의 insertMember(Member member) 메소드 호출 ***");
		return 0;
	}

	@Override
	public int updateMember(Member member) {
		System.out.println("*** MemberDAOImpl 클래스의 updateMember(Member member) 메소드 호출 ***");
		return 0;
	}

	@Override
	public int deleteMember(String id) {
		System.out.println("*** MemberDAOImpl 클래스의 deleteMember(String id) 메소드 호출 ***");
		return 0;
	}

	@Override
	public Member seleteMember(String id) {
		System.out.println("*** MemberDAOImpl 클래스의 Member seleteMember(String id) 메소드 호출 ***");
		return null;
	}

	@Override
	public List<Member> seleteMemberList() {
		System.out.println("*** MemberDAOImpl 클래스의 seleteMemberList() 메소드 호출 ***");
		return null;
	}

}
