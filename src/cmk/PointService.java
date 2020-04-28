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
	public ArrayList<Point> ptList(HttpServletRequest request){
		String mem_id= Nk.toStr(request.getParameter("mem_id"));

		return dao.ptList(mem_id);
	}
}
