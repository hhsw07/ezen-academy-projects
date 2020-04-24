package khj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z01_vo.Nk;

/**
 * Servlet implementation class A02_serviceCenterCtrl
 */
@WebServlet(name = "notice", urlPatterns = {"/notice"})
public class A02_serviceCenterCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A02_serviceCenterService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_serviceCenterCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A02_serviceCenterService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String proc = Nk.toStr(request.getParameter("proc"));
		System.out.println("proc확인"+proc);
		
		
		
		// 공지리스트 불러오기
		
		request.getSession().setAttribute("nlist", service.Notice(request));
		
		String page = "main/serviceCenter/notice.jsp";
		
		
		if(proc.equals("goAs")) {
			request.setAttribute("aslist", "");
			page = "main/serviceCenter/notice.jsp";
		}
		
		
		
		RequestDispatcher rd= request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
