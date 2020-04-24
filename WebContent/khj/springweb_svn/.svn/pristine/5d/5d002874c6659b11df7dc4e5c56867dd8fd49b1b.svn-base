package springweb.a02_di.z01_vo;

import java.util.ArrayList;
// springweb.a02_di.z01_vo.DailySchedule
public class DailySchedule {
	private String date;
	private ArrayList<Schedule> slist;
	public DailySchedule() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DailySchedule(String date) {
		super();
		this.date = date;
	}
	public void showSch() {
		System.out.println("## "+date+"일정계획 ##");
		for(Schedule sch: slist) {
			sch.plan();
		}
	}
	
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public ArrayList<Schedule> getSlist() {
		return slist;
	}
	public void setSlist(ArrayList<Schedule> slist) {
		this.slist = slist;
	}
	
}
