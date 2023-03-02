package xyz.itwill10.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.dao.PointBoardDAO;
import xyz.itwill10.dao.PointUserDAO;
import xyz.itwill10.dto.PointBoard;
import xyz.itwill10.dto.PointUser;

//Spring Framework의 TransactionManager를 사용하여 트렌젝션을 처리하는 방법
//1.spring-tx 라이브러리를 프로젝트에 빌드 처리 - 메이븐 : pom.xml
// => spring-jdbc 라이브러리를 빌드 처리하면 의존 관계에 의해 자동으로 빌드 처리
//2.SpringMVC 프로그램의 Spring Bean Configuration File(root-context.xml)에 TransactionManager
//관련 클래스를 Spring Bean으로 등록  
//3.SpringMVC 프로그램의 Spring Bean Configuration File(servlet-context.xml)에 트렌젝션 처리를 
//위한 SpringAOP 설정 
// => 트렌젝션 처리 기능을 제공받고 싶은 메소드에 @Transactional 어노테이션을 사용하여 작성하면
//메소드의 명령 실행시 예외(Exception)가 되면 자동으로 롤백 처리
// => @Transactional 어노테이션을 사용할 경우 Spring Bean Configuration File(root-context.xml)에
//spring-tx.xsd 파일이 제공하는 annotation-driven 엘리먼트를 반드시 설정
// => 테스트 클래스의 테스트 메소드에  @Transactional 어노테이션을 사용할 경우 명령 실행 후 무조건 롤백 처리

@Service
@RequiredArgsConstructor
public class PointBoardServiceImpl implements PointBoardService {
	//@Autowired
	//private PointUserDAO pointUserDAO;
	//@Autowired
	//private PointBoardDAO pointBoardDAO;
	
	private final PointUserDAO pointUserDAO;
	private final PointBoardDAO pointBoardDAO;
	
	//게시글을 전달받아 POINTBOARD 테이블에 삽입하고 게시글 작성자에 대한 회원정보를 POINTUSER
	//테이블에서 검색하여 반환하는 메소드
	// => 게시글 작성자를 전달받아 POINTUSER 테이블에 저장된 회원정보의 포인트가 증가되도록 변경
	@Transactional
	@Override
	public PointUser addPointBoard(PointBoard board) throws Exception {
		pointBoardDAO.insertPointBoard(board);//게시글 삽입
		//게시글 작성자에 대한 회원정보를 없는 경우 인위적 예외 발생
		// => 예외가 발생되면 하단에 작성된 명령은 실행되지 않고 메소드 강제 종료
		if(pointUserDAO.selectPointUser(board.getWriter())==null) {
			throw new Exception("게시글 작성자가 존재하지 않습니다.");
		}
		pointUserDAO.updatePlusPointUser(board.getWriter());//회원의 포인트 증가
		return pointUserDAO.selectPointUser(board.getWriter());//회원정보 검색
	}

	//게시글 번호를 전달받아 POINTBOARD 테이블에 저장된 게시글을 삭제하고 게시글 작성자에 대한
	//회원정보를 POINTUSER 테이블에서 검색하여 반환하는 메소드
	// => 게시글 작성자를 전달받아 POINTUSER 테이블에 저장된 회원정보의 포인트가 감소되도록 변경
	@Transactional
	@Override
	public PointUser removePointBoard(int num) throws Exception {
		PointBoard board=pointBoardDAO.selectPointBoard(num);//게시글 검색
		//게시글 번호에 대한 게시글이 없는 경우 인위적 예외 발생
		if(board==null) {
			throw new Exception("게시글이 존재하지 않습니다.");
		}
		
		pointBoardDAO.deletePointBoard(num);//게시글 삭제
		
		//삭제된 게시글의 작성자에 대한 회원정보를 없는 경우 인위적 예외 발생
		if(pointUserDAO.selectPointUser(board.getWriter())==null) {
			throw new Exception("게시글 작성자가 존재하지 않습니다.");
		}
		
		pointUserDAO.updateMinusPointUser(board.getWriter());//회원의 포인트 감소
				
		return pointUserDAO.selectPointUser(board.getWriter());//회원정보 검색
	}

	//POINTBOARD 테이블에 저장된 모든 게시글을 검색하여 반환하는 메소드
	@Override
	public List<PointBoard> getPointBoardList() {
		return pointBoardDAO.selectPointBoardList();
	}
}
