package hsw;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import z01_vo.Nk;
import z01_vo.Parts;

/**
 * Servlet implementation class A01_Assembly
 */
@WebServlet(name = "assembly", urlPatterns = { "/assembly" })
public class A01_AssemblyCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A01_AssemblyService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_AssemblyCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A01_AssemblyService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 0. 한글 encoding
		request.setCharacterEncoding("utf-8");
		// 1. 요청
		HttpSession session = request.getSession();
		
		String proc = Nk.toStr(request.getParameter("proc"),"first");
		String parts_mc = Nk.toStr(request.getParameter("parts_mc"),"CPU");
		int com_no = (int)session.getAttribute("com_no");
		
		// 2. 모델
		request.setAttribute("parts_mc",parts_mc);
		request.setAttribute("plist", service.plist(request));
		
		if(proc.equals("first")) {
			if(session.getAttribute("mem") == null) {
				if(session.getAttribute("com_no") == null) {
					Double ran = Math.random();
					String mem = Nk.toStr("guest"+ran);
					// 멤버만들고
					service.regMem(mem);
					// 견적용 컴퓨터 만들기
					service.regCom(mem);
					// 견적용 컴퓨터 번호
					com_no = service.comNo(mem);
					session.setAttribute("com_no", com_no);
				}
			}else {
				String mem = (String)session.getAttribute("mem");
				// 견적용 컴퓨터 만들기
				service.regCom(mem);
				// 견적용 컴퓨터 번호
				com_no = service.comNo(mem);
				session.setAttribute("com_no", com_no);
			}
		}
		
		
		// proc ins => 카트에 추가
		if(proc.equals("ins")) {
			// 견적테이블에 추가
			service.insertCart(request, com_no);
			// 견적테이블 불러오기
			session.setAttribute("cart", service.cartList(com_no));
			
			// 카트에 있을 때
			// 수량 추가
			
		}
		
		// proc del => 카트에서 제거
		if(proc.equals("del")) {
			// 세션에서 삭제
			ArrayList<Parts> cart = (ArrayList<Parts>)session.getAttribute("cart");
			//cart.remove(service.insertCart(request));
			session.setAttribute("cart", cart);
			System.out.println("카트세션에서 삭제");
			// service.deleteCart(request);
		}
		
		// proc delAll => 카트에서 모두제거
		if(proc.equals("delAll")) {
			// 세션 모두 삭제
			ArrayList<Parts> cart = new ArrayList<Parts>();
			session.setAttribute("cart", cart);
			// service.deleteAllCart(request);
		}
		// proc reg => 견적목록에 추가
		if(proc.equals("reg")) {
			service.regEstimate(request);
		}

		
		// 3. view
		String page = "main\\estimate\\estimate.jsp";
		
		RequestDispatcher rd= request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
