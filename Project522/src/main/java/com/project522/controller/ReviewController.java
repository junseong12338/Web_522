package com.project522.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project522.domain.ReviewVO;
import com.project522.domain.TagVO;
import com.project522.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {

	private ReviewService service;

	// 리뷰 리스트 화면
	@GetMapping("/listReview")
	public String listReview() {
		return "review/listReview";
	}
	

	// 리뷰 작성 페이지 화면

	@GetMapping("/insertReview")
	public String insertReview(TagVO tagvo, Model model) throws Exception {
		log.info("리뷰 작성페이지 진입");
		model.addAttribute("getTagList1", service.getReviewTagList1(tagvo));
		model.addAttribute("getTagList2", service.getReviewTagList2(tagvo));
		model.addAttribute("getTagList3", service.getReviewTagList3(tagvo));
		model.addAttribute("getTagList4", service.getReviewTagList4(tagvo));
		return "review/insertReview";

	}

	@ResponseBody
	@PostMapping("/reviewinsert")
	public void insertReview(ReviewVO reviewvo, RedirectAttributes rttr) throws Exception {

		String path = "C:\\upload\\temp\\";
		// String projectPath = System.getProperty("user.dir") +
		// "\\src\\main\\resources\\static\\files";

		String fileName = "";

		List<MultipartFile> uploadFile = reviewvo.getReview_Image1();

		log.info("--------------------");

		for (MultipartFile mf : uploadFile) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈
			if(fileSize==0) {//사진 파일이 들어온게 없을때 -> 파일 사이즈 0
				break;
			}

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);

			String ext = FilenameUtils.getExtension(originFileName);
			UUID uuid = UUID.randomUUID();
			String uuid_filename = uuid + "." + ext;
			String safeFile = path + uuid_filename;
			log.info(safeFile);
			log.info("--------------------");
			try {
				mf.transferTo(new File(safeFile));
				fileName = fileName + "," + uuid_filename;
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		// log.info("파일 이름:" + fileName);

		reviewvo.setReview_Image(fileName);

		log.info("ReviewVO : " + reviewvo);
		String str = reviewvo.getReview_HashTag();
		log.info("str : " + str);

		reviewvo.setReview_HashTag(str);

		service.register(reviewvo);
		int rnumber = reviewvo.getReview_Num();
		// rttr.addFlashAttribute("result", reviewvo.getReview_Num());
		System.out.println("rnumber : " + rnumber);

		log.info(rnumber);

	}

	@GetMapping("/getReview")
	public void getReview(@RequestParam("Rnum") int Rnum, ReviewVO reviewvo, Model model) throws Exception {
		log.info("리뷰 상세 조회 페이지 진입");
		model.addAttribute("review", service.getReview(Rnum));
		reviewvo = service.getReview(Rnum);
		log.info(reviewvo);
		if (reviewvo.getReview_Image() != null) {
			String str = reviewvo.getReview_Image();
			String[] str2 = str.substring(1).split(",");

			for (int i = 0; i < str2.length; i++) {
				System.out.println(str2[i]);
			}

			model.addAttribute("imgarray", str2);

		}
		if (reviewvo.getReview_HashTag() != null) {
			String str = reviewvo.getReview_HashTag();
			String[] str2 = str.split(",");

			for (int i = 0; i < str2.length; i++) {
				System.out.println(str2[i]);
			}

			model.addAttribute("hashtagarray", str2);

		}
	}
	
	@GetMapping("/modifyReview")
	public void modifyReview(@RequestParam("Rnum") int Rnum, ReviewVO reviewvo,TagVO tagvo, Model model) throws Exception {
		log.info("수정 페이지 진입");
		model.addAttribute("review", service.getReview(Rnum));
		model.addAttribute("getTagList1", service.getReviewTagList1(tagvo));
		model.addAttribute("getTagList2", service.getReviewTagList2(tagvo));
		model.addAttribute("getTagList3", service.getReviewTagList3(tagvo));
		model.addAttribute("getTagList4", service.getReviewTagList4(tagvo));
		
		reviewvo = service.getReview(Rnum);

		log.info(reviewvo);
		if (reviewvo.getReview_Image() != null) {
			String str = reviewvo.getReview_Image();
			String[] str2 = str.substring(1).split(",");

			for (int i = 0; i < str2.length; i++) {
				System.out.println(str2[i]);
			}

			model.addAttribute("imgarray", str2);

		}
		if (reviewvo.getReview_HashTag() != null) {
			String str = reviewvo.getReview_HashTag();
			String[] str2 = str.split(",");

			for (int i = 0; i < str2.length; i++) {
				System.out.println(str2[i]);
			}

			model.addAttribute("hashtagarray", str2);

		}
		
	}
	
	@PostMapping("/reviewmodify")
	public String reviewmodify(ReviewVO reviewvo, RedirectAttributes rttr) {
		log.info("수정 버튼 클릭");

		log.info("ReviewVO : " + reviewvo);
		String str = reviewvo.getReview_HashTag();
		log.info("str : " + str);

		reviewvo.setReview_HashTag(str);

		//service.modiReview(reviewvo);
		return "redirect:/review/getReview?Rnum="+reviewvo.getReview_Num();

	}
	
	@PostMapping("/reviewdelete")
	public String reviewdelete(@RequestParam("Rnum") int Rnum,RedirectAttributes rttr) {
		log.info("리뷰 삭제 실행");
		int result=service.delReview(Rnum);
		if(result==1) {
			log.info("리뷰 삭제 완료"+Rnum);

		}
		return "redirect:/";
			
	}

	
	
}
