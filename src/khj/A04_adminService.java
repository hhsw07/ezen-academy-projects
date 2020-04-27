package khj;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import cmk.AsDao;
import z01_vo.As;
import z01_vo.Member;
import z01_vo.Nk;

public class A04_adminService {

		private A04_adminDao dao;
		private AsDao asDao;
		
		public A04_adminService() {
			super();
			dao = new A04_adminDao();
		}
		
		public Member detail(HttpServletRequest request) {
			return dao.getMember(Nk.toStr(request.getParameter("mem_name")));
		}
		
		
		// mgr 관련 
		// int mgr_no, int as_no, Date as_date, String as_cate,
		// String mem_id, Date mgr_date, String mgr_stat
		public ArrayList<As> asList(){
			return asDao.asList();
		}
		
		
		public As asList(HttpServletRequest request){
			int as_no = Nk.toInt(request.getParameter("as_no"));
			
			return asDao.asList(as_no);
		}
		public ArrayList<As> asDetail(HttpServletRequest request){
			int as_no = Nk.toInt(request.getParameter("as_no"));
			return asDao.getAs(as_no);
		}
		
}
