package com.project522.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project522.domain.ReviewVO;
import com.project522.domain.TagVO;
import com.project522.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {
	private ReviewMapper mapper; // 주입받는 생성자를 만든다.

	@Override
	public void register(ReviewVO reviewvo) throws Exception {
		log.info("register------" + reviewvo);
		mapper.insertReview(reviewvo);
	}

	@Override
	public List<TagVO> getReviewTagList1(TagVO tagvo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getReviewTag1(tagvo);
	}

	@Override
	public List<TagVO> getReviewTagList2(TagVO tagvo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getReviewTag2(tagvo);
	}

	@Override
	public List<TagVO> getReviewTagList3(TagVO tagvo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getReviewTag3(tagvo);
	}

	@Override
	public List<TagVO> getReviewTagList4(TagVO tagvo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getReviewTag4(tagvo);
	}
	@Override
	public ReviewVO getReview(int Rnum) {
		// TODO Auto-generated method stub
		log.info("get......" + Rnum);
		return mapper.get(Rnum);
	}
	
	
	// 리뷰 전체 리스트
	public List<ReviewVO> getReviewList() throws Exception {
	    return mapper.getReviewList();
	  }
	

	@Override
	public int delReview(int Rnum) {
		log.info("delete......"+Rnum);
		return mapper.deleteReview(Rnum);
	}

}
