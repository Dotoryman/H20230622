package com.yedam.member.service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.member.persistence.MemberMapper;
import com.yedam.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService { // 이름은 Impl이지만 마이바티스로 할거임
	SqlSession session = DataSource.getInstance().openSession(true);
	MemberMapper mapper = session.getMapper(MemberMapper.class);

	@Override
	public MemberVO login(String id, String pw) {
//		MemberVO vo = new MemberVO();
//		vo.setUserAddr(id);
//		vo.setUserAddr(pw);
		return mapper.login(id, pw);
	}

	@Override
	public boolean addMember(MemberVO member) {

		return mapper.insert(member) == 1;
	}

	@Override
	public MemberVO getMember(String id) {
		MemberVO vo = new MemberVO();
		vo.setUserId(id);
		return mapper.search(vo);
	}

	@Override
	public boolean ModiMember(MemberVO vo) {
		return mapper.modiMember(vo) == 1;
	}

}
