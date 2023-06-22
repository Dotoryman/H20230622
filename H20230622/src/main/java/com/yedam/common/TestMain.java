package com.yedam.common;

import java.util.List;

import com.yedam.board.persistence.BoardDAO;
import com.yedam.board.vo.BoardVO;


public class TestMain {
	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		
		BoardVO brd = new BoardVO();
		brd.setBrdNo(21);
		brd.setBrdTitle("톰소여의 모험 수정2");
		brd.setBrdContent("내용 수정 테스트유2");
//		brd.setBrdWriter("Dotoryman");
		
		
		if(dao.selectBoard(brd.getBrdNo()) !=null) {
			System.out.println("입력 성공했어요~");
		}
		
		List<BoardVO> list = dao.boardList();
		for(BoardVO vo : list) {
			System.out.println(vo.toString());
		}
	}
}
