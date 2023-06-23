package com.yedam;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.board.control.BoardAddControl;
import com.yedam.board.control.BoardFormControl;
import com.yedam.board.control.BoardListControl;
import com.yedam.board.control.BoardModifyControl;
import com.yedam.board.control.BoardModifyFormControl;
import com.yedam.board.control.BoardSearchControl;
import com.yedam.common.Controller;

public class FrontController extends HttpServlet {
	
	HashMap <String, Controller> menu;
	String enc;
	
	public FrontController() {
		menu = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메소드가 실행되었슈");

		enc = config.getInitParameter("charset");
		menu.put("/main.do", new MainControl());
		menu.put("/boardList.do", new BoardListControl());
		menu.put("/boardForm.do", new BoardFormControl());
		menu.put("/addBoard.do", new BoardAddControl());
		menu.put("/searchBoard.do", new BoardSearchControl());
		menu.put("/modifyForm.do", new BoardModifyFormControl());
		menu.put("/boardModify.do", new BoardModifyControl());
		
		menu.put("/member.do", new MemberControl());
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(enc);
		
		
		String uri = req.getRequestURI();
		String cpath = req.getContextPath(); // application 이름
		String path = uri.substring(cpath.length());
//		System.out.println("uri : " + uri);
//		System.out.println("cpath : " + cpath);
		System.out.println("path : " + path);
		
		Controller msg = menu.get(path);
		msg.exec(req, resp);
	}
}
