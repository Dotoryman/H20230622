package com.yedam.common;

import java.util.List;

import com.yedam.board.service.BoardService;
import com.yedam.board.service.BoardServiceMybatis;
import com.yedam.board.vo.BoardVO;

public class TestMain {
	public static void main(String[] args) {
		BoardService service = new BoardServiceMybatis();
		
//		List<BoardVO> list = service.list(5);
//		System.out.println(list.size() + "개의 항목");
//		System.out.println(service.delBoard(434));

//		for (BoardVO vo : list) {
//			System.out.println(vo.toString());
//		}
		
//		수정하기
		BoardVO vo = new BoardVO();
//		vo.setBrdNo(436);
		vo.setBrdTitle("수정테스트");
		vo.setBrdWriter("휠체어");
		vo.setBrdContent("수정내용");
		
		System.out.println(service.addBoard(vo));
		
//		PageDTO dto = new PageDTO(3,service.totalCnt() );
//		System.out.println(dto);
		
		
		
		
		
		
		
		
		
//		PageDTO dto = new PageDTO(22, 235);
//		System.out.println(dto.toString());

//		BoardDAO dao = new BoardDAO();
//		
//		
//		
//		
//		
////		BoardVO brd = new BoardVO();
////		brd.setBrdNo(21);
////		brd.setBrdTitle("톰소여의 모험 수정2");
////		brd.setBrdContent("내용 수정 테스트유2");
//////		brd.setBrdWriter("Dotoryman");
////		
////		
////		if(dao.selectBoard(brd.getBrdNo()) !=null) {
////			System.out.println("입력 성공했어요~");
////		}
////		
//		List<BoardVO> list = dao.boardListPaging(3);
//		for(BoardVO vo : list) {
//			System.out.println(vo.toString());
//		}
	}
}
