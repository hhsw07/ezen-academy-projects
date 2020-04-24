package jspexp.c01_mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class B01_CallJsonData
 */
@WebServlet(name = "empjson", urlPatterns = { "/empjson" })
public class B01_CallJsonData extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A02_EmpService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B01_CallJsonData() {
        super();
        // TODO Auto-generated constructor stub
        service = new A02_EmpService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청.
		// 2. 서비스단
		// 3. view단
		// {"name":"himan","age":25,"loc":"seoul"}
		response.getWriter().println(service.jsonList(request));
	}

}









