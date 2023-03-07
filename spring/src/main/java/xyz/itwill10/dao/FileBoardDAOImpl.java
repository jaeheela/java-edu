package xyz.itwill10.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.dto.FileBoard;
import xyz.itwill10.mapper.FileBoardMapper;

@Repository
@RequiredArgsConstructor
public class FileBoardDAOImpl implements FileBoardDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertFileBoard(FileBoard fileBoard) {
		return sqlSession.getMapper(FileBoardMapper.class).insertFileBoard(fileBoard);
	}

	@Override
	public int deleteFileBoard(int num) {
		return sqlSession.getMapper(FileBoardMapper.class).deleteFileBoard(num);
	}

	@Override
	public FileBoard selectFileBoard(int num) {
		return sqlSession.getMapper(FileBoardMapper.class).selectFileBoard(num);
	}

	@Override
	public List<FileBoard> selectFileBoardList() {
		return sqlSession.getMapper(FileBoardMapper.class).selectFileBoardList();
	}

}
