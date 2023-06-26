package com.yedam.member.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Controller;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class ModifyMemberControl implements Controller {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// id, phone, addr

		// service / mapper / jsp 전송
		// modifyMember / update/ 게시글 목록
		String id = req.getParameter("id");
		String phone = req.getParameter("phone");
		String addr = req.getParameter("addr");

		MemberService service = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		member.setUserId(id);
		member.setUserPhone(phone);
		member.setUserAddr(addr);
		if (service.ModiMember(member)) {
			resp.sendRedirect("boardList.do");
		} else {
			resp.sendRedirect("modifyMember.do");
		}

	}

}
