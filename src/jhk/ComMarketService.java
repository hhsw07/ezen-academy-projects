package jhk;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Computer;
import z01_vo.Nk;

public class ComMarketService {
	private ComMarketDao dao;
	
	public ComMarketService() {
		dao = new ComMarketDao();
	}
	
	public ArrayList<Computer> clist(HttpServletRequest request){
		String category = Nk.toStr(request.getParameter("category"));
		if(category==null||category.equals("")) category="all";
		return dao.getComList(category);
	}
}
