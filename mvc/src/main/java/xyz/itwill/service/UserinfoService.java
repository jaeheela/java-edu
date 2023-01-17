package xyz.itwill.service;

import java.sql.SQLException;

import xyz.itwill.dao.UserinfoModelTwoDAO;
import xyz.itwill.dto.UserinfoDTO;
import xyz.itwill.exception.ExistsUserinfoException;

//Service 클래스 : 모델(Model) 클래스의 요청 처리 메소드에게 데이타베이스 관련 처리 기능을 
//제공하기 위한 클래스 - 단위 프로그램(모듈 프로그램) : 컴퍼넌트(Component)
// => 다수의 DAO 클래스의 메소드를 호출하여 필요한 기능을 제공하기 위한 메소드 작성 - 모듈화
// => 데이타베이스 관련 기능 구현시 발생되는 모든 문제에 대한 인위적 예외 발생
public class UserinfoService {
	private static UserinfoService _service;
	
	private UserinfoService() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_service=new UserinfoService();
	}
	
	public static UserinfoService getService() {
		return _service;
	}
	
	//회원정보를 전달받아 USERINFO 테이블에 삽입하는 메소드
	// => 전달받은 회원정보의 아이디가 USERINFO 테이블에 저장된 기존 회원정보의 아이디와 
	//중복될 경우 인위적 예외 발생
	public void addUserinfo(UserinfoDTO userinfo) throws SQLException, ExistsUserinfoException {
		if(UserinfoModelTwoDAO.getDAO().selectUserinfo(userinfo.getUserid())!=null) {
			//예외가 발생될 경우 아래에 작성된 명령 미실행
			throw new ExistsUserinfoException("이미 사용중인 아이디를 입력 하였습니다.");
		}
		UserinfoModelTwoDAO.getDAO().insertUserinfo(userinfo);
	}
	
	//회원정보를 전달받아 USERINFO 테이블에 저장된 회원정보를 변경하는 메소드
	// => 전달받은 회원정보가 USERINFO 테이블에 없는 경우 인위적 예외 발생
	public void modifyUserinfo(UserinfoDTO userinfo) throws SQLException {
		if(UserinfoModelTwoDAO.getDAO().selectUserinfo(userinfo.getUserid())==null) {
			
		}
		UserinfoModelTwoDAO.getDAO().updateUserinfo(userinfo);
	}
}












