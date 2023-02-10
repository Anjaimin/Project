package com.medi.myapp.BoardService.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medi.myapp.BoardDao.BoardRepository;
import com.medi.myapp.BoardService.BoardService;
import com.medi.myapp.vo.BoardVO;
import com.medi.myapp.vo.CommentVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardRepository boardDao;
	
	@Override
	public List<BoardVO> selectFreeBoardList() {
		List<BoardVO> boardVoList = boardDao.selectFreeBoardList();
		return boardVoList;
	}
	
	@Override
	public int insertFreeBoard(BoardVO boardVo) {
		return boardDao.insertFreeBoard(boardVo);
	}
	
	@Override
	public int updateFreeBoard(BoardVO boardVo) {
		return boardDao.updateFreeBoard(boardVo);
	}
	
	@Override
	public BoardVO selectFreeBoardDetail(BoardVO paramBoardVo) {
		BoardVO boardVo = boardDao.selectFreeBoardDetail(paramBoardVo);
		return boardVo;
	}
	
	@Override
	public int deleteFreeBoard(int free_num) {
		return boardDao.deleteFreeBoard(free_num);
	}
	
	@Override
	public void updateFreeBoardReadCount(BoardVO boardVo) {
		boardDao.updateFreeBoardReadCount(boardVo);
	}
	
	@Override
	public int insertComment(CommentVO commentVo) {
		return boardDao.insertComment(commentVo);
	}
	
	@Override
	public List<CommentVO> commentList(int free_number){
		return boardDao.commentList(free_number);
	}
	
	
}
