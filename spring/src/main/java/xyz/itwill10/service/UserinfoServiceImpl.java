package xyz.itwill10.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.dao.UserinfoDAO;
import xyz.itwill10.dto.Userinfo;
import xyz.itwill10.exception.ExistsUserinfoException;
import xyz.itwill10.exception.LoginAuthFailException;
import xyz.itwill10.exception.UserinfoNotFoundException;

//Service 클래스의 메소드는 데이타 처리시 발생되는 문제에 대한 인위적 예외 발생
// => 발생된 예외는 Controller 클래스에서 예외 처리되도록 예외 전달
@Service
@RequiredArgsConstructor
public class UserinfoServiceImpl implements UserinfoService {
	private final UserinfoDAO userinfoDAO;
	
	@Override
	public void addUserinfo(Userinfo userinfo) throws ExistsUserinfoException {
		//전달받은 회원정보의 아이디가 기존 회원정보의 아이디와 중복된 경우 
		if(userinfoDAO.selectUserinfo(userinfo.getUserid())!=null) {
			//사용자 정의 예외 클래스로 인위적 예외 발생
			// => 예외를 명확하게 구분하고 예외처리시 필요값을 저장하여 전달하기 위한 사용자 정의 예외 클래스 작성
			throw new ExistsUserinfoException("이미 사용중인 아이디를 입력 하였습니다.", userinfo);
		}
		
		//전달받은 회원정보의 비밀번호는 암호화 처리하여 필드값으로 저장
		// => 전달받은 회원정보의 비밀번호를 암호화 처리하여 필드값으로 변경하는 명령은
		//Controller 클래스의 요청 처리 메소드에서 		
		userinfoDAO.insertUserinfo(userinfo);
	}

	@Override
	public void modifyUserinfo(Userinfo userinfo) throws UserinfoNotFoundException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeUserinfo(String userid) throws UserinfoNotFoundException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Userinfo getUserinfo(String userid) throws UserinfoNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Userinfo> getUserinfoList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void loginAuth(Userinfo userinfo) throws LoginAuthFailException {
		// TODO Auto-generated method stub
		
	}

}
