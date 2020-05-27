package funfun.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import funfun.repository.MK_FundingReposi;
import funfun.vo.Funding;
import funfun.vo.Paging;
import funfun.vo.ProOption;
import funfun.vo.Project;
import funfun.vo.ProjectQna;
import funfun.vo.ProjectSch;
import funfun.vo.Report;

@Service
public class MK_FundingService {
	@Autowired(required=false)
	private MK_FundingReposi dao;
	// 프로젝트 목록
	public ArrayList<Project> projectList(ProjectSch sch){
		sch.setCount(dao.projcnt());
		
		if(sch.getPageSize()==0) {
			sch.setPageSize(16);
		}
		sch.setPageCount((int)(Math.ceil(sch.getCount()/(double)sch.getPageSize())));
		if(sch.getCurPage() == 0) {
			sch.setCurPage(1);
		}
		
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1); // start => (curPage-1)*pageSize+1
		sch.setEnd(sch.getCurPage()*sch.getPageSize());			// end 	 => curPage*pageSize
		
		sch.setBlocksize(5);
		// int blocknum 현재 위치한 블럭의 단계 1~5 = 1, 6~10=2..
		int blocknum = (int)Math.ceil(sch.getCurPage()/(double)sch.getBlocksize());
		sch.setStartBlock((blocknum-1)*sch.getBlocksize()+1);
		int endblock = blocknum*sch.getBlocksize();
		sch.setEndBlock(endblock>sch.getPageCount()?sch.getPageCount():endblock);
		
		return dao.projectList(sch);
	}
	// 프로젝트 상세보기
	public Project detail(int pro_code) {
		return dao.detail(pro_code);
	}
	// 프로젝트 옵션
	public ArrayList<ProOption> proOptList(int pro_code){
		return dao.proOptList(pro_code);
	} 
	// 관심프로젝트 등록 확인
	public boolean ckfavor(Project sf) {
		if(dao.ckfavor(sf)==1) {
			return false;
		} else {
			return true;
		}
	}
	// 관심프로젝트 등록
	public void insFavor(Project proj) {
		System.out.println("관심service");
		dao.insFavor(proj);
	}
	// 프로젝트 신고
	@Value("${upload}")
	private String upload; // 업로드 할 위치
	@Value("${tmpUpload}")
	private String tmpUpload; // 임시 업로드 위치
	public void insReport(Report ins) {
		System.out.println("신고service");
		for(MultipartFile report:ins.getReport()) {
			// 물리적 파일 정리
			upload(report, ins);
		}
		System.out.println("파일명:"+ins.getReport_img());
		dao.insReport(ins);
	}
	// 파일정보 등록
	public void upload(MultipartFile mtf, Report ins) {
		String fileName = mtf.getOriginalFilename();
		if(fileName!=null&&!fileName.equals("")) {
			File tmpFile = new File(tmpUpload+fileName);
			// 해당 폴더에 동일한 파일이 있으면 삭제 처리
			if(tmpFile.exists()) {
				tmpFile.delete();
			}
			try {
				// Stream으로 온 MultipartFile을 실제 파일로 변경처리
				mtf.transferTo(tmpFile);
				File orgFile = new File(upload+fileName);
				// tmp 위치에 있는 파일을 현재 웹서버에 특정한 폴더로 이동
				// StandardCopyOption.REPLACE_EXISTING : 기존 동일 파일명이 마지막에 올린 파일로 변경처리
				Files.copy(tmpFile.toPath(), orgFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		ins.setReport_img(fileName);
	}
	// 문의 리스트
	public ArrayList<ProjectQna> inquiryList(int pro_code){
		return dao.inquiryList(pro_code);
	}
	// 문의하기
	public void inquiry(ProjectQna qna) {
		dao.inquiry(qna);
	}
	// 문의 답변
	public void answer(ProjectQna upt) {
		dao.answer(upt);
	}
	// 펀딩하기
	public void funding(Funding ins) {
		dao.funding(ins); // 펀딩
		dao.uptMoney(ins); // 프로젝트 현재 펀딩금액 변경
	}

}
