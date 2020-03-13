package z01_vo;
import java.util.Scanner;

public class updown {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// +버튼 pb
		// -버튼 mb
		// 상품개수 rn
		// 상품가격 rp
		int num = 0; // 상품개수
		int price = 1000; // 상품가격
		boolean swit = true;
		while(swit) {
		System.out.print("숫자를 입력해주세요. 1.업 2.다운 3.종료 : ");
		int choice = sc.nextInt(); // +-버튼
			if(choice==1) { // +버튼
				num+=1;
			}else if(choice==2) { // -버튼
				num-=1;
				
			}else if(choice==3) { // 1아래로 내려갈경우
				swit=false;
			}else {
				System.out.println("잘못입력했습니다.");
			}
			System.out.println("결과 : "+price*num); //상품개수 * 상품가격 (결과값)
		}
	}

}
