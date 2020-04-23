package cmk;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Nk;
import z01_vo.As;

public class AsService {
	private AsDao dao;

	public AsService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new AsDao();
	}
	
	public ArrayList<As> asList(){
		return dao.asList();
	}
	
	public ArrayList<As> asDetail(HttpServletRequest request){
		int as_no = Nk.toInt(request.getParameter("as_no"));
		
		return dao.getAs(as_no);
	}

}
