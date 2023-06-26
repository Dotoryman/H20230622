package com.yedam.member.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Controller;

public class LogoutControl implements Controller {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		
		
//		session.removeAttribute("loginId", member.getUserId());
//		session.removeribute("loginName", member.getUserName());
		
		session.invalidate(); //세션 지우기
		
		resp.sendRedirect("memberLoginForm.do");
	}

}
