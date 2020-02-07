package javaexp.z01_util;

public class A03_Random {
/*
# Math.random() 메서드
1. 임의로 0.0<=R<1.0의 데이터가 나오게 한다.
2. 특정 범위에서 임의로 데이터가 처리되게 하려면?
	1)0.0 <= Math.random() < 1.0
	2)0.0 * 6 <= Math.random() * 6 < 1.0 * 6
	3)0.0 <= Math.random() * 6 < 6.0
	4)0 <= (int)(Math.random() * 6) < 6   // 정수형으로 변환
			0 1 2 3 4 5
	5)1 <= (int)(Math.random() * 6) + 1 < 7 // 임의의 주사위눈이 나옴
			1 2 3 4 5 6
3. 특정한 정수를 임의로 출력 처리 공식
	1)(int)(Math.random()*경우의 수) + 시작번호
4. 특정한 배열에서 임의의 데이터가 나오게 하려면
1) int rIdx = (int)(Math.random()*배열의 크기);
2) 배열명[rIdx]
	ex) String []game = {"가위","바위","보"};
	 	String[] game = {"가위","바위","보"};
	 	String game[] = {"가위","바위","보"};
		int rIdx = (int)(Math.random()*game.length);
		임의의 가위/바위/보 문자열 출력
		String chGame = game[rIdx];
		System.out.print(game[rIdx]);
 */
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(Math.random());
		System.out.println(Math.random()*6);
		System.out.println((int)(Math.random()*6));
		System.out.println((int)(Math.random()*6)+1);
		// 임의의 구구단 문제 출제
		// 2단 ~ 9단까지
		
		int grade = (int)(Math.random()*8) + 2; 
		int cnt = (int)(Math.random()*9) + 1; 	
		
		System.out.println(grade + " X " + cnt);
		System.out.println("정답: " +grade*cnt);
		
		// 가위바위보 가 임의로 나오게 하기
		String game[] = {"가위", "바위", "보"};
		System.out.println(game[0]+":"+game[1]+":"+game[2]);
		// 0, 1, 2 중에 임의의 숫자가 나오게 하여 game 배열에 index로 할당
		int ranIdx = (int)(Math.random()*3);
		System.out.println("가위! 바위! 보! : "+game[ranIdx]);
		// ex) 모두의 마블에서 주사위 2개를 던지기로 했다.
		//		주사위 2개를 던져 합산된 번호를 출력하세요.
		
		int dice01 = (int)(Math.random()*6)+1;
		int dice02 = (int)(Math.random()*6)+1;
		System.out.println("첫번째 주사위: "+dice01);
		System.out.println("두번째 주사위: "+dice02);
		System.out.println("주사위 합계: "+(dice01+dice02));
		
		// ex2) 카드게임에서 카드 숫자가 A,2,3,4,5,6,7,8,9,10,J,Q,K
		//					모양이 ♠ ◆ ♣ ♥ 카드 한장으로 임의로 출력되게 하세요. 예시 ♣4 
		String carkNum[] = {"A","2","3","4","5","6","7","8","9","10","J","Q","K"};
		String carkMark[] = {"♠","◆","♣","♥"};
		// 배열.length : 배열의 길이로 현재 경우수로 처리할 수 있다.
		int numIdx = (int)(Math.random()*carkNum.length);
		int markIdx = (int)(Math.random()*carkMark.length);
		System.out.println("당신의 카드는 : "+carkMark[markIdx]+carkNum[numIdx]+" 입니다.");
		
		
		
	}

}
