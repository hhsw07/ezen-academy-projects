package cmk;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Cart;

public class MyorderService {
	private MyorderDao dao;

	public MyorderService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new MyorderDao();
	}
	
	public ArrayList<Myorder> olist(){
		
		return dao.olist();
	}
	

}
