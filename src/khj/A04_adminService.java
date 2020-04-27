package khj;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Member;
import z01_vo.Nk;

public class A04_adminService {

		private A04_adminDao dao;
		
		public A04_adminService() {
			super();
			dao = new A04_adminDao();
		}
		
		public Member detail(HttpServletRequest request) {
			return dao.getMember(Nk.toStr(request.getParameter("mem_name")));
		}
}
