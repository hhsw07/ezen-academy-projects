package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Notice;
import funfun.vo.Paging;
import funfun.vo.Rtqna;

@Repository
public interface Sw_RtqnaDao {
	// 검색할 내용의 전체 데이터 건수.
	public int rtqnatotCnt();
	
	// 검색된 데이터 리스트
	public ArrayList<Rtqna> list(Paging sch);
	public void insert(Rtqna ins);
	
	// 데이터 상세보기
	public ArrayList<Rtqna> detail(int mem_code);
	public void update(Rtqna upt);
	public void delete(int rtqna_code);
	
	/*
	// 파일 정보 등록..
	public void insertRepo(String fname);
	// 파일 다운로드 정보 
	public ArrayList<String> fnames(int no);
	public void insFileInfo(HashMap hm);
	public void uptFileInfo(HashMap hm);
	public void deleteFile(int no);
	
	*/
	
	
}
