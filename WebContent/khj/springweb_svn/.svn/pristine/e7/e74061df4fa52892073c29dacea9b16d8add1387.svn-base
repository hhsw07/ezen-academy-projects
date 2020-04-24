package springweb.a02_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_vo.Member;

public class A09_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
		ctx = new GenericXmlApplicationContext("springweb\\a02_di\\a09_DIEXP.xml");
		Member mem=ctx.getBean("member", Member.class);
		System.out.println("## 회원 정보 ##");
		System.out.println(mem.getId());
		System.out.println(mem.getPass());
		ctx.close();

		
		
	}

}




