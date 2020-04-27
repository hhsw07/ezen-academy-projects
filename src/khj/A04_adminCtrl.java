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
 * Servlet implementation class A04_adminCtrl
 */
@WebServlet(name = "memList", urlPatterns = {"/memList"})
public class A04_adminCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A04_adminService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_adminCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A04_adminService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String proc= Nk.toStr(request.getParameter("proc"));
		System.out.println("proc확인"+proc);
			
		String page= "main/admin/memList.jsp";
		
		if(proc.equals("member")) {
			request.getSession().setAttribute("mlist", service.Member(request));
		}
		

		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
