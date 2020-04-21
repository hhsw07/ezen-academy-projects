package cmk;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import z01_vo.Cart;
import z01_vo.Nk;

public class PayService {
	private PayDao dao;

	public PayService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new PayDao();
	}
	public Cart getProd(HttpServletRequest request) {
		int req_no = Nk.toInt(request.getParameter("req_no"));
		return dao.getCart(req_no);
		
	}

}
