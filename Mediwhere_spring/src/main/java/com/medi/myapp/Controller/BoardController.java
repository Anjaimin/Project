package com.medi.myapp.Controller;

import java.util.Locale;
import java.util.List;

import com.medi.myapp.BoardVO.BoardVO;
import com.medi.myapp.vo.CommentVO;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.medi.myapp.HomeController;
import com.medi.myapp.BoardService.BoardService;

@Controller
public class BoardController {

	@Resource(name = "boardService")
	private BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 자유게시판 게시글 목록 조회
	@RequestMapping(value = "/selectFreeBoardList", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {

		List<BoardVO> boardVoList = boardService.selectFreeBoardList();

		model.addAttribute("freeBoardList", boardVoList);
		System.out.println("게시판 목록 진입");
		return "freeboardlist";
	}

	// 자유게시판 게시글 작성 화면 호출
	@RequestMapping(value = "/freeBoardWriteView", method = RequestMethod.GET)
	public String freeBoardWriteView(Locale locale, Model model) {
		System.out.println("게시판 글쓰기 진입");
		return "freeboardwrite";
	}

	// 자유게시판 게시글 등록
	@RequestMapping(value = "/insertFreeBoard", method = { RequestMethod.POST })
	@ResponseBody
	public int insertFreeBoard(@RequestBody BoardVO boardVo) {

		return boardService.insertFreeBoard(boardVo);
	}

	// 자유게시판 게시글 상세 조회
	@RequestMapping(value = "/selectFreeBoardDetail", method = RequestMethod.POST)
	public String selectFreeBoardDetail(@ModelAttribute("paramBoardVo") BoardVO paramBoardVo, Model model) {

		boardService.updateFreeBoardReadCount(paramBoardVo); // 게시글 조회수 업데이트
		BoardVO boardVo = boardService.selectFreeBoardDetail(paramBoardVo);
		model.addAttribute("freeBoard", boardVo);
		System.out.println("게시판 상세조회 진입");
		return "freeboardview";
	}

	// 자유게시판 게시글 수정
	/*
	 * @RequestMapping(value = "/freeBoardModify", method = RequestMethod.GET)
	 * public String freeBoardModify(Locale locale, Model model) { return
	 * "freeboardmodify"; }
	 */

	// 자유게시판 게시글 수정
	@RequestMapping(value = "/updateFreeBoard", method = { RequestMethod.POST })
	@ResponseBody
	public int updateFreeBoard(@RequestBody BoardVO boardVo) {
		System.out.println("게시판 수정");
		return boardService.updateFreeBoard(boardVo);
	}

	// 자유게시판 게시글 삭제
	@RequestMapping(value = "/deleteFreeBoard", method = { RequestMethod.POST })
	@ResponseBody
	public int deleteFreeBoard(@RequestBody BoardVO boardVo) {
		System.out.println("게시판 삭제");
		return boardService.deleteFreeBoard(boardVo.getFree_number());
	}
	
	// 자유게시판 댓글 등록
	@RequestMapping(value = "/insertComment", method = { RequestMethod.POST })
	@ResponseBody
	public int insertComment(@RequestBody CommentVO commentVo, HttpSession session) {
		String writer = (String)session.getAttribute("name");
		if( writer == null ) writer = "";
		commentVo.setWriter(writer);
		// System.out.println(commentVo.toString());
		return boardService.insertComment(commentVo);
	}
	
	// 댓글조회
	@RequestMapping(value = "/commentList", method = { RequestMethod.GET })
	@ResponseBody
	public List<CommentVO> commentList(@RequestParam int free_number, HttpSession session) {
		//System.out.println(""+free_number);
		List<CommentVO> commentVoList = boardService.commentList(free_number);
		System.out.println(commentVoList.toString());
		return commentVoList;
	}
	


}