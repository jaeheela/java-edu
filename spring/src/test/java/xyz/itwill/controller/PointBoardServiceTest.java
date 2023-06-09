package xyz.itwill.controller;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

import xyz.itwill10.dto.PointBoard;
import xyz.itwill10.dto.PointUser;
import xyz.itwill10.service.PointBoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class PointBoardServiceTest {
	private static final Logger logger=LoggerFactory.getLogger(PointUserServiceTest.class);

	@Autowired
	private PointBoardService pointBoardService;
	
	@Transactional
	@Test
	public void test1() throws Exception {
		PointBoard board=new PointBoard();
		//board.setWriter("abc123");
		board.setWriter("xyz789");//게시글 작성자가 회원정보에 존재하지 않도록 작성
		board.setSubject("테스트");
		
		//게시글 작성자가 없는 경우 예외 발생
		//문제점)예외 발생전에 실행된 게시글 삽입에 대한 SQL 명령은 이미 전달되어 실행된 
		//상태로 POINTBOARD 테이블에 게시글 저장
		// => 게시글 작성자가 존재하지 않는 게시글 - 게시글을 검색하여 출력할 경우 문제가 발생
		//해결법)예외 발생전 실행된 모든 SQL 명령은 취소되도록 롤백 처리
		// => Spring Framework에서는 TransactionManager 관련 클래스를 사용하여 일관성 있는
		//트렌젝션 처리 기능 제공
		PointUser user=pointBoardService.addPointBoard(board);
		
		logger.info(pointBoardService.getPointBoardList().toString());
		logger.info(user.toString());
	}
	
	/*
	@Transactional
	@Test
	public void test2() {
		PointUser user=pointBoardService.removePointBoard(1);
		
		logger.info(pointBoardService.getPointBoardList().toString());
		logger.info(user.toString());
	}
	*/
}
