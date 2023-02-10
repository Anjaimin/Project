package com.medi.myapp.BoardDao;

import java.util.List;

import com.medi.myapp.vo.BoardVO;
import com.medi.myapp.vo.CommentVO;

public interface BoardRepository {
	
	public List<BoardVO> selectFreeBoardList();
	
	public int insertFreeBoard(BoardVO boardVo);
	
	public int updateFreeBoard(BoardVO boardVo);
	
	public BoardVO selectFreeBoardDetail(BoardVO boardVo);
	
	public int deleteFreeBoard(int free_number);

	public void updateFreeBoardReadCount(BoardVO boardVo);

	public int insertComment(CommentVO commentVo);

	public List<CommentVO> commentList(int free_number);
}
