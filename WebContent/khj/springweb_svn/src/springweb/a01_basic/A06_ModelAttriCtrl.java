package springweb.a01_basic;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springweb.z01_vo.Code;
import springweb.z01_vo.Member;
import springweb.z01_vo.Product;

@Controller
public class A06_ModelAttriCtrl {
/*
# ModelAttribute
1. 요청값과 모델데이터를 함께 처리해준다.
2. controller에서 공통적인 모델 선언을 할 수 있다.

 * */	
	@ModelAttribute("mem")
	public Member getMember() {
		return new Member("himan","7777");
	}
	@ModelAttribute("sel01")
	public ArrayList<Code> getCode() {
		ArrayList<Code> sel = new ArrayList<Code>();
		sel.add(new Code("fruit1","사과"));
		sel.add(new Code("fruit2","바나나"));
		sel.add(new Code("fruit3","딸기"));
		return sel;
	}	
	
	@RequestMapping(value="/mdattr.do", 
					method= {RequestMethod.GET,RequestMethod.POST})
	public String form(@ModelAttribute("p01") Product p) {
		return "WEB-INF\\views\\a01_basic\\a14_productInfo.jsp";
	}
/*
# 수학 문제
숫자1:[    ]
숫자2:[    ]
연산식:[select +,-,*,/ ]
선택했을 때, submit 처리 되어.
결과  @@@ + @@ = @@
 */	
	/*	
Controller
	1) 요청처리.
		변수, 객체 setXXX 
	2) Model 처리..
	3) 요청+Model : ModelAttribute
	4) View
	5) Model + view : ModelAndView

		
		
	*/	
	
}




