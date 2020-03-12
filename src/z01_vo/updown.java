package z01_vo;
import java.util.Scanner;

public class updown {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num = 0;
		int price = 1000;
		boolean swit = true;
		while(swit) {
		System.out.print("숫자를 입력해주세요. 1.업 2.다운 3.종료 : ");
		int choice = sc.nextInt();
			if(choice==1) {
				num+=1;
			}else if(choice==2) {
				num-=1;
				
			}else if(choice==3) {
				swit=false;
			}else {
				System.out.println("잘못입력했습니다.");
			}
			System.out.println("결과 : "+price*num);
		}
	}

}
