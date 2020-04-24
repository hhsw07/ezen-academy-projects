package khj;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import z01_vo.*;
import z01_vo.Nk;

public class A02_serviceCenterService {
	private A02_serviceCenterDao dao;
	public A02_serviceCenterService() {
		super();
		dao = new A02_serviceCenterDao();
	}
	
	// 공지리스트 불러오기
	public ArrayList<Notice> Notice(HttpServletRequest request) {
		return dao.nlist();
	}
}		

