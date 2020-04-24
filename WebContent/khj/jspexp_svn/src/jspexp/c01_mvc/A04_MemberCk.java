package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.b01_database.A04_MemberDao;
import jspexp.z02_util.Nk;

/**
 * Servlet implementation class A04_MemberCk
 */
@WebServlet(name = "ckmem", urlPatterns = { "/ckmem" })
public class A04_MemberCk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A04_MemberDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_MemberCk() {
        super();
        // TODO Auto-generated constructor stub\
        dao = new A04_MemberDao();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = Nk.toStr(request.getParameter("id"));
		// "isInvalid":
		
		// DB를 통해서, 해당 값이 있는지 여부를 true/false값으로 가져온다.
		// json 문자열 형식으로 요청하는 곳에 넘겨준다.
		// {"isInvalid":true}
		response.getWriter().print("{\"isInvalid\":"
				+dao.memberCk(id)+"}");
	}

}




