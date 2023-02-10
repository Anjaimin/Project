package com.medi.myapp.BoardService;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;

import com.medi.myapp.vo.BoardVO;
import com.medi.myapp.vo.CommentVO;

public interface BoardService {
	public List<BoardVO> selectFreeBoardList();
	
	public int insertFreeBoard(BoardVO boardVo);
	
	public int updateFreeBoard(BoardVO boardVo);
	
	public BoardVO selectFreeBoardDetail(BoardVO paramBoardVo);
	
	public int deleteFreeBoard(int free_num);

	public void updateFreeBoardReadCount(BoardVO paramBoardVo);

	public int insertComment(CommentVO commentVo);

	public List<CommentVO> commentList(int free_number);
}
