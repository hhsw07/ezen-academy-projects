package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.z01_vo.Product;

// springweb.a01_basic.A04_ProductCtrl
@Controller
public class A04_ProductCtrl {
	
	// http://localhost:5080/springweb/buy.do
	@RequestMapping("buy.do")
	public String buy() {
		return "WEB-INF\\views\\a01_basic\\a05_buy_product.jsp";
	}
	@RequestMapping("buyPrc.do")
	public String buyPrc(@RequestParam("pname") String pname,
						 @RequestParam("price") int price,
						 @RequestParam("cnt") int cnt,
						 Model d
						) {
		String result=pname+"을/를 "+cnt+"개 구매하여  총 "
						+(price*cnt)+"원 입니다";
		d.addAttribute("result", result);
		return "WEB-INF\\views\\a01_basic\\a05_buy_product.jsp";
	}
/*
/prod.do
물건명:[   ]
가격:[  ]
갯수:[  ]
[구매] -- 클릭시, 요청값을 받는 부분에 Product 객체 활용.
/prodShow.do      
@@@을 @@개 @@@원 구매하여
총비용이 @@ 입니다.
 * */
	// 초기 화면 호출
	@RequestMapping("/prod.do")
	public String prod() {
		return "WEB-INF\\views\\a01_basic\\a10_prodForm.jsp";
	}
	// ?name=사과&price=3000&cnt=5
	// Product 클래스의
	// setName(), setPrice() setCnt()가 있으면
	// 요청값을 Product 객체에 데이터 할당 처리..
	@RequestMapping("/prodShow.do")
	public String prodShow(Product p, Model d) {
		System.out.println("물건명:"+p.getName());
		System.out.println("가격:"+p.getPrice());
		System.out.println("갯수:"+p.getCnt());
		
		d.addAttribute("tot", p.getPrice()*p.getCnt());
		return "WEB-INF\\views\\a01_basic\\a10_prodForm.jsp";
	}
	
	
	
	
	
	
	
}
