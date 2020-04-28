package cmk;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import z01_vo.Cart;
import z01_vo.Nk;
import z01_vo.Order;
import z01_vo.Pay;
import z01_vo.Point;
import z01_vo.Request;

public class PayService2 {
	private PayDao dao;

	public PayService2() {
		super();
		// TODO Auto-generated constructor stub
		dao = new PayDao();
	}
	public Cart getProd(HttpServletRequest request) {
		int req_no = Nk.toInt(request.getParameter("req_no"));
		int req_cnt = Nk.toInt(request.getParameter("req_cnt"));
		return dao.getCart(req_no, req_cnt);
	}
	
	public ArrayList<Cart> getCart(HttpServletRequest request){	
		Cart p = new Cart();
		ArrayList<Cart> buy = new ArrayList<Cart>();
		String []req_nos = request.getParameterValues("req_no");
		String []req_cnts = request.getParameterValues("req_cnt");
		System.out.println("req_nos:"+req_nos);
		System.out.println("req_cnts:"+req_cnts);
		for(int idx=0;idx<req_nos.length;idx++) {
			int req_no = Nk.toInt(req_nos[idx]);
			int req_cnt = Nk.toInt(req_cnts[idx]);
			buy.add(dao.getCart(req_no, req_cnt));
		}
		
		return buy;
	}
	
	public int getPt(HttpServletRequest request) {
		int pt = dao.getPoint(Nk.toStr(request.getParameter("mem_id")));
		return pt;
	}
	
	public void insOrder(HttpServletRequest request){
		String mem_id = Nk.toStr(request.getParameter("mem_id"));
		
		String ord_name = Nk.toStr(request.getParameter("ord_name"));
		String ord_tel = Nk.toStr(request.getParameter("ord_tel"));
		String ord_post = Nk.toStr(request.getParameter("ord_post"));
		String ord_addr1 = Nk.toStr(request.getParameter("ord_addr1"));
		String ord_addr2 = Nk.toStr(request.getParameter("ord_addr2"));
		String ord_req = Nk.toStr(request.getParameter("ord_req"));
		
		Order ins = new Order(mem_id,ord_name,ord_tel,ord_post,ord_addr1,ord_addr2,ord_req);
		dao.insertOrder(ins);

		int ord_no = dao.getOrdno(request.getParameter("mem_id"));
		
		String []req_nos = request.getParameterValues("req_no");
		String []req_cnts = request.getParameterValues("req_cnt");
		
		for(int idx=0;idx<req_nos.length;idx++) {
			int req_no = Nk.toInt(req_nos[idx]);
			int req_cnt = Nk.toInt(req_cnts[idx]);
			Request ins2 = new Request(ord_no, req_no,req_cnt);
			
			dao.insertRequest(ins2);
			if(req_no<1000) {
				dao.uptPartsCnt(req_no, req_cnt);
			}
		}
		
		String pay_method = Nk.toStr(request.getParameter("pay_method"));
		int pay_point = Nk.toInt(request.getParameter("pay_point"));
		int pay_price = Nk.toInt(request.getParameter("pay_price"));
		
		Pay ins3 = new Pay(ord_no, pay_method, pay_point, pay_price);
		dao.insertPay(ins3);
		if(pay_point!=0) {
			Point use = new Point(mem_id,"상품구매사용",pay_point);
			dao.insPoint(use);
		}
		Point saving = new Point(mem_id,"상품구매적립",pay_price);
		dao.insPoint(saving);
	}

}
