package xyz.itwill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import xyz.itwill.dto.AjaxCommentDTO;

public class AjaxCommentDAO extends JdbcDAO {
	private static AjaxCommentDAO _dao;
	
	private AjaxCommentDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new AjaxCommentDAO();
	}
	
	public static AjaxCommentDAO getDAO() {
		return _dao;
	}
	
	//댓글정보를 전달받아 AJAX_COMMENT 테이블에 삽입하고 삽입행의 갯수를 반환하는 메소드
	public int insertAjaxComment(AjaxCommentDTO ajaxComment) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		try {
			con=getConnection();
			
			String sql="insert into ajax_comment values(ajax_comment_seq.nextval,?,?,sysdate)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, ajaxComment.getWriter());
			pstmt.setString(2, ajaxComment.getContent());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertAjaxComment() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		} 
		return rows;		
	}
	
	//댓글정보를 전달받아 AJAX_COMMENT 테이블에 저장된 해당 댓글정보를 변경하고 변경행의 갯수를 반환하는 메소드

	//댓글번호를 전달받아 AJAX_COMMENT 테이블에 저장된 해당 댓글번호의 댓글정보를 삭제하고 삭제행의 갯수를 반환하는 메소드
	
	//댓글번호를 전달받아 AJAX_COMMENT 테이블에 저장된 해당 댓글번호의 댓글정보를 검색하여 반환하는 메소드
	
	//AJAX_COMMENT 테이블에 저장된 모든 댓글정보를 검색하여 반환하는 메소드
	
}











