package jspexp.c01_mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import jspexp.b01_database.A03_ShoppingDao;
import jspexp.z01_vo.Buy;
import jspexp.z01_vo.Product2;
import jspexp.z02_util.Nk;

public class A05_ProductService {
	
	private A03_ShoppingDao dao;

	public A05_ProductService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new A03_ShoppingDao();
	}
	public ArrayList<Product2> getProductList(HttpServletRequest request){
		String name=  Nk.toStr(request.getParameter("name"));
		int frPrice=  Nk.toInt(request.getParameter("frPrice"));
		int toPrice=  Nk.toInt(request.getParameter("toPrice"),999999999);
		return dao.plist(new Product2(name, frPrice,toPrice));
	}	
	// 등록 처리.
	public void insertProduct(HttpServletRequest request) {
		int div = Nk.toInt(request.getParameter("div"));
		String name=  Nk.toStr(request.getParameter("name"));
		String img=  Nk.toStr(request.getParameter("img"));
		int price = Nk.toInt(request.getParameter("price"));
		int cnt = Nk.toInt(request.getParameter("cnt"));
		String etc=  Nk.toStr(request.getParameter("etc"));
		dao.insertProduct(new Product2(div, name, img, price, cnt, etc));
	}
	public Product2 detailProduct(HttpServletRequest request) {
		int sno = Nk.toInt(request.getParameter("sno"));
		return dao.getProduct2(sno);
	}
	public Product2 cartProduct(HttpServletRequest request) {
		// 구매 갯수 정보외에는 DB에서 가져오게 처리.
		Product2 p = detailProduct(request);
		// 장바구니에 담을 구매갯수만 입력한 데이터를 처리하게 
		p.setCnt(Nk.toInt(request.getParameter("cnt"),1));
		return p;
	}	
	// 구매처리..
	public ArrayList<Buy> buyProduct(HttpServletRequest req){
		String[] snos= req.getParameterValues("sno");
		String[] cnts = req.getParameterValues("cnt");
		for(int idx=0;idx<snos.length;idx++) {
			int sno = Nk.toInt(snos[idx]);
			int cnt = Nk.toInt(cnts[idx]);
			// id, sno, cnt, status, etc
			dao.insBuyProduct(new Buy("himan",sno,cnt,"구매완료",
								"기타정보"));
			dao.uptProdCnt(sno, cnt);
		}
		return dao.buylist(new Buy("himan", "구매완료"));
	}
	// 구매리스트 확인.
	public ArrayList<Buy> getBuyList(String id, String sts){
		return dao.buylist(new Buy(id, sts));
	}
	
	
	
	
}




