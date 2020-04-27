package khj;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Member;
import z01_vo.Nk;
import z01_vo.Notice;

public class A04_adminService {

		private A04_adminDao dao;
		
		public A04_adminService() {
			super();
			dao = new A04_adminDao();
		}
		
		public ArrayList<Member> Member(HttpServletRequest request) {
			return dao.mlist();
		}
}
