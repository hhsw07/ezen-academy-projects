package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Faq;
import funfun.vo.Paging;

@Repository
public interface Sw_FaqDao {
	
	public int faqtotCnt();
	public ArrayList<Faq> list(Paging sch);
}
