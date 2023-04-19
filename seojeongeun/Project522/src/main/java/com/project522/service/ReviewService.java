package com.project522.service;

import java.util.List;

import com.project522.domain.ReviewVO;
import com.project522.domain.TagVO;

public interface ReviewService {
	public void register(ReviewVO reviewvo) throws Exception;
	public List<TagVO> getReviewTagList1(TagVO tagvo) throws Exception;
	public List<TagVO> getReviewTagList2(TagVO tagvo) throws Exception;
	public List<TagVO> getReviewTagList3(TagVO tagvo) throws Exception;
	public List<TagVO> getReviewTagList4(TagVO tagvo) throws Exception;
	public ReviewVO getReview(int Rnum);
	
	public int delReview(int Rnum);
	public int modiReview(ReviewVO reviewvo);

}
