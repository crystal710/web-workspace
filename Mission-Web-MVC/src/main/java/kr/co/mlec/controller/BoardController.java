package kr.co.mlec.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.mlec.board.vo.BoardVO;

public class BoardController {

	//전체게시글 조회에 관련된 비즈니스로직
	public String selectAll(HttpServletRequest request, HttpServletResponse response) {
		List<BoardVO> boardList = new ArrayList<>();
		
		boardList.add(new BoardVO(4,"제목입니다","홍길동","2021-05-12"));
		boardList.add(new BoardVO(3,"제목2입니다","홍길동","2021-05-11"));
		boardList.add(new BoardVO(2,"제목3입니다","홍길동","2021-05-10"));
		boardList.add(new BoardVO(1,"제목4입니다","홍길동","2021-05-09"));
		
		request.setAttribute("boardList", boardList);
		
		return "/board/list.jsp";
	}
	
	//새글등록
	public String newBoard(HttpServletRequest request, HttpServletResponse response) {
		
		return "board/writeForm.jsp";
	}
}
