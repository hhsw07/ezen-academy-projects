package cmk;

import java.util.ArrayList;

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

}
