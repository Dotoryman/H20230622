package com.yedam.member.control;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Controller;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class MemberInfoControl implements Controller {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// "loginID" 
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("loginId");
		
		MemberService service = new MemberServiceImpl();
		//service(getMember) /mapper(select) / jsp 등록
		MemberVO member = service.getMember(id);
	
		
		
		req.setAttribute("info", member);
		
		req.getRequestDispatcher("WEB-INF/jsp/member/infoForm.jsp").forward(req, resp);
	}

}
