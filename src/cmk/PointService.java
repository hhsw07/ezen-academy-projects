package cmk;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Nk;
import z01_vo.Point;

public class PointService {
	private PointDao dao;

	public PointService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new PointDao();
	}
	public ArrayList<Point> ptList(String mem_id){

		return dao.ptList(mem_id);
	}
	public ArrayList<Myorder> olist(String mem_id){
		
		return dao.olist(mem_id);
	}
}
