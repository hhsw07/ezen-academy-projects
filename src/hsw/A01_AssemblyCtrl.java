package hsw;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import z01_vo.Nk;

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
		int com_no = 0;
		if(session.getAttribute("com_no") != null) {
			com_no = (int)session.getAttribute("com_no");
		}
		System.out.println("com_no:"+com_no);
		System.out.println("proc: "+proc);
		// 2. 모델
		request.setAttribute("parts_mc",parts_mc);
		request.setAttribute("plist", service.plist(request));
		request.setAttribute("asqlist", service.asqlist());
		
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
				}else {
					service.deleteAllCart(com_no);
					session.setAttribute("ecart", service.cartList(com_no));
					System.out.println("카트비우고 시작");
				}
			}else {
				String mem = (String)session.getAttribute("mem");
				// 견적용 컴퓨터 번호 찾기
				com_no = service.comNo(mem);
				if(!service.ckCom(com_no)) {
					// 견적용 컴퓨터가 없다면 새로 만들기 
					// 있다면 새로 만들지 않음
					service.regCom(mem);
					com_no = service.comNo(mem);
				}
				session.setAttribute("com_no", com_no);
				// 카트를 비우고 시작
				service.deleteAllCart(com_no);
				session.setAttribute("ecart", service.cartList(com_no));
				System.out.println("카트비우고 시작");
			}
		}
		
		
		// proc ins => 카트에 추가
		if(proc.equals("ins")) {
			if(service.isCart(request, com_no)) {
				System.out.println("있다"+service.isCart(request, com_no));
				// 카트에 있을 때 수량 추가
				service.updateCart(request, com_no);
			}else {
				System.out.println("없다."+service.isCart(request, com_no));
				// 견적테이블에 추가
				service.insertCart(request, com_no);
			}
			// 견적테이블 불러오기
			session.setAttribute("ecart", service.cartList(com_no));
		}
		
		// proc del => 카트에서 제거
		if(proc.equals("del")) {
			service.deleteCart(com_no, Nk.toInt(request.getParameter("parts_no")));
			session.setAttribute("ecart", service.cartList(com_no));
		}
		
		// proc delAll => 카트에서 모두제거
		if(proc.equals("delAll")) {
			service.deleteAllCart(com_no);
			session.setAttribute("ecart", service.cartList(com_no));
			System.out.println("카트비우기 버튼");	
		}
		// proc assque => 견적목록에 추가
		if(proc.equals("regAsq")) {
			System.out.println("견적문의 등록");
			service.regEstimate(request);
			// com 상태 변경.
			service.updateCom(request);
		}
		
		if(proc.equals("buy")) {
			System.out.println("구매버튼");
			if(session.getAttribute("mem") != null) {
				service.regEstimate(request);
				// com 상태 변경.
				service.updateCom(request);
				System.out.println("mem 있음");
			}else {
				System.out.println("mem 없음");
			}
		}
		
		
		// 3. view
		String page = "main\\estimate\\estimate.jsp";
		
		if(proc.equals("goAsq")) {
			// asq 객체 불러오기
			request.setAttribute("asq", service.asqSch(request));
			request.setAttribute("assemble", service.assList(request) ); 
			page = "main\\estimate\\assque.jsp";
		}
		
		if(proc.equals("buy")) {
			if(session.getAttribute("mem") == null) {
				page = "main\\estimate\\NewFile.jsp?name=이름없음";
			}else {
				page = "main\\estimate\\NewFile.jsp";
			}
		}
		RequestDispatcher rd= request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
