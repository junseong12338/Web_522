package com.project522.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project522.domain.MPCVO;
import com.project522.domain.MyPageCriteria;
import com.project522.domain.MyPagePageDTO;
import com.project522.domain.ReplyVO;
import com.project522.domain.ReviewVO;
import com.project522.domain.UserInfoVO;
import com.project522.mapper.AdminMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/Admin")
@AllArgsConstructor
public class AdminController {
	@Autowired
	private AdminMapper mapper;
	
	@GetMapping("/AdminReview")
	public String getMPRList(HttpServletRequest request, Model model, MyPageCriteria cri) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO userInfo = (UserInfoVO) session.getAttribute("userInfo");
		String user_id = userInfo.getUser_id();
		/* System.out.println("user_id" + user_id); */
		
		/* System.out.println(dtoList); */
		cri.setUser_id(user_id);
		/*여기서부터 변경*/
		List<ReviewVO> AdminMPRList = mapper.AdminReviewGet(cri); 
		model.addAttribute("AdminmprList", AdminMPRList); 

		model.addAttribute("list", mapper.AdminReviewGet(cri)); 
		model.addAttribute("pageMaker", new MyPagePageDTO(cri, mapper.AdminReviewTotalCount(cri)));

		return "/Admin/AdminReview";
	}
	
	@GetMapping("/AdminCommunity")
	public String getCommunityList(HttpServletRequest request, Model model, MyPageCriteria cri) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO userInfo = (UserInfoVO) session.getAttribute("userInfo");
		String user_id = userInfo.getUser_id();
		/* System.out.println("user_id" + user_id); */
		
		/* System.out.println(dtoList); */
		cri.setUser_id(user_id);
		/*여기서부터 변경*/
		List<MPCVO> AdminCommunityList = mapper.AdminCommunityGet(cri); 
		model.addAttribute("AdminCommunityList", AdminCommunityList); 

		model.addAttribute("list", mapper.AdminCommunityGet(cri)); 
		model.addAttribute("pageMaker", new MyPagePageDTO(cri, mapper.AdminCommunityTotalCount(cri)));

		return "Admin/AdminCommunity";
	}
	
	@GetMapping("/AdminReply")
	public String getReplyList(HttpServletRequest request, Model model, MyPageCriteria cri) throws Exception {
		HttpSession session = request.getSession();
		UserInfoVO userInfo = (UserInfoVO) session.getAttribute("userInfo");
		String user_id = userInfo.getUser_id();
		/* System.out.println("user_id" + user_id); */
		
		/* System.out.println(dtoList); */
		cri.setUser_id(user_id);
		/*여기서부터 변경*/
		List<ReplyVO> AdminReplyList = mapper.AdminReplyGet(cri); 
		model.addAttribute("AdminReplyList", AdminReplyList); 

		model.addAttribute("list", mapper.AdminReplyGet(cri)); 
		model.addAttribute("pageMaker", new MyPagePageDTO(cri, mapper.AdminReplyTotalCount(cri)));

		return "Admin/AdminReply";
	}
}
