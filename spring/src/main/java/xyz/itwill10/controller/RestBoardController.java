package xyz.itwill10.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.service.RestBoardService;
import xyz.itwill10.util.Pager;

@Controller
@RequiredArgsConstructor
public class RestBoardController {
	private final RestBoardService restBoardService;
	
	@RequestMapping("/board")
	public String restBoard() {
		return "rest/board";
	}
	
	//페이지 번호를 전달받아 RESTBOARD 테이블에 저장된 게시글 목록 중 해당 페이지 번호의 범위에
	//게시글 목록 검색하여 JSON 형식의 데이타로 응답하는 요청 처리 메소드
	// => 게시글 목록을 페이징 처리하여 출력하기 위해 요청 페이지 번호의 게시글 목록과 페이지 
	//번호 출력 관련 값이 저장된 객체를 Map 객체의 엔트리로 저장하여 JSON 형식의 데이타로 응답
	//처리되도록 반환
	@RequestMapping(value="/board_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> restBoardList(@RequestParam(defaultValue = "1") int pageNum) {
		//System.out.println("pageNum = "+pageNum);
		
		//RESTBOARD 테이블에 저장된 모든 게시글의 갯수를 반환하는 메소드 호출
		int totalBoard=restBoardService.getRestBoardCount();
		int pageSize=5;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=5;//하나의 블럭에 출력될 페이지 번호의 갯수 저장
		
		//페이징 처리 관련 값이 필드에 저장된 Pager 객체 생성 
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		return null;
	}
}














