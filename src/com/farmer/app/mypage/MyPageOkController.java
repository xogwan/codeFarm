package com.farmer.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.farmer.app.Execute;
import com.farmer.app.Result;
import com.farmer.app.member.vo.MemberVO;
import com.farmer.app.mypage.dao.MypageDAO;

public class MyPageOkController implements Execute {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MypageDAO mypageDAO = new MypageDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		HttpSession session = req.getSession();
		
//		임시로 세션 설정, memberNumber 1로 설정
		session.setAttribute("memberNumber", 1);
		int memberNumber = (Integer)session.getAttribute("memberNumber");
		
		memberVO = mypageDAO.selectMyPage(memberNumber);
		
		String memberId = memberVO.getMemberId();
		String memberPassword = memberVO.getMemberPassword();
		String memberName = memberVO.getMemberName();
		String memberLocation = memberVO.getMemberLocation();
		int memberGrade = memberVO.getMemberGrade();
		String memberPhoneNumber = memberVO.getMemberPhoneNumber();
		String memberType;
		String mentorType;
		
		
		session.setAttribute("memberId",memberId );
		session.setAttribute("memberPassword", memberPassword);
		session.setAttribute("memberName", memberName);
		session.setAttribute("memberPhoneNumber", memberPhoneNumber);
		session.setAttribute("memberGrade", memberGrade);
		
//		가입 형태 검사
		if(memberGrade < 0) {
			memberType = "농장주";
			req.setAttribute("memberType", memberType);
		}else if(memberGrade == 0) {
			memberType = "관리자";
			req.setAttribute("memberType", memberType);
		}else if(memberGrade == 1) {
			memberType = "일반 사용자";
			req.setAttribute("memberType", memberType);
		}else {
			memberType = "비정상 가입자";
			req.setAttribute("memberType", memberType);
		}

//		멘토링 검사
		if(memberGrade != -1) {
			mentorType = "X";
			req.setAttribute("mentorType", mentorType);
		}else {
			if(memberVO == null) {
				mentorType = "X";
				req.setAttribute("mentorType", mentorType);
			}else{
				mentorType = "멘토";
				req.setAttribute("mentorType", mentorType);
			}
		}
		
		req.setAttribute("memberName", memberName);
		req.setAttribute("memberLocation", memberLocation);		
		
		return result;
	}
}
