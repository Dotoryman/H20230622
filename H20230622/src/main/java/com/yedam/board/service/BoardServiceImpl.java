package com.yedam.board.service;

import java.util.List;

import com.yedam.board.persistence.BoardDAO;
import com.yedam.board.vo.BoardVO;


//jdbc를 활용해서 업무로직을 구현하기위함.
public class BoardServiceImpl implements BoardService{

	
	BoardDAO dao = new BoardDAO();
	
	@Override
	public boolean addBoard(BoardVO vo) {
		return dao.insertBoard(vo);
	}

	@Override
	public BoardVO getBoard(long brdNo) {
		BoardVO vo = dao.selectBoard(brdNo);
		dao.clickCount(brdNo);
		return vo;
		
	}

	@Override
	public boolean editBoard(BoardVO vo) {
		return dao.updateBoard(vo);
	}

	@Override
	public boolean delBoard(long brdNo) {
		return dao.deleteBoard(brdNo);
	}

	@Override
	public List<BoardVO> list() {
		return dao.boardList();
	}

}
