package javaexp.a04_object;

public class A02_Array2 {
/*
# 배열의 복사
1. 배열은 한번 만들어지면 구조를 변경할 수 없다.
	- 크기가 3개 데이터가 들어가는 배열은 크기를 4 이상으로 변경할 수 없다.
	- 기존 배열 데이터를 기준으로 배열의 크기를 변경하려면, 새로운 배열을 만들고 데이터를 할당한 후  추가 데이터를 처리하여야 한다.
2. 배열의 구조를 변경하는 복사 방법
	1) for문을 이용
	2) System.arraycopy(기존배열, 시작index, 새로운배열, 시작index, 기존배열의 크기)
	
# 배열을 위한 향상된 for문
1. for(단위 데이터 : 배열){
		단위 데이터를 할당/호출
	}
	ex)
	String[] fruits = {"사과","바나나","딸기"};
	String fruit = fruits[0];
   	for(String fruit : fruits){
   	   fruit는 반복을 통해서 데이터가 있을 때까지 할당되어 출력 처리할 수 있다.
   	}

 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] num01Array = {90,80,70};
		int[] num02Array = new int[5];
		// 기존 데이터 복사 할당 처리.
		for(int idx = 0;idx < num01Array.length;idx++) {
			num02Array[idx] = num01Array[idx];
		}
		// 추가데이터 할당 처리.
		num02Array[3] = 80;
		num02Array[4] = 100;
		// java에서는 한 번 정해진 배열의 구조는 변경하지 못한다.
		// 동적 배열로 새로운 배열을 만들어야 한다.
		System.out.println("새로운 배열 내용");
		for(int idx=0;idx < num02Array.length;idx++) {
			System.out.println("num02Array["+idx+"]: "+num02Array[idx]);
		}
	
		/*
		Syytem.arraycopy(복사할배열, 복사할배열의시작index, 결과배열, 결과배열의시작index, 복사하는 배열의 개수);
		 */
		int[] num03Array = new int[5];
		// {0,0,90,80,70}으로 복사
		System.arraycopy(num01Array,0,num03Array,2,3); //3번째 부터 이지만 index번호는 **2
		for(int idx=0;idx < num03Array.length;idx++) {
			System.out.println("num03Array["+idx+"]: "+num03Array[idx]);
		}
		// {0,0,90,80,0}으로 복사
		int num04Array[] = new int[5];
		System.arraycopy(num01Array,0,num04Array,2,2);
		for(int idx=0;idx < num04Array.length;idx++) {
			System.out.println("num04Array["+idx+"]: "+num04Array[idx]);
		}
		
		// ex) 배열 복사 : 사과 바나나 딸기 배열을 선언하고, 현재 배열을 5개 크기의 배열로 만들고 해당 3개 물품은 복사, 오렌지와 수박을 추가하시오.
		String[] fruitArr01 = {"사과", "바나나", "딸기"};
		String[] fruitArr02 = new String[5];
		String[] fruitArr03 = new String[5];
		
		// 1)for문 처리
		for(int idx = 0; idx < fruitArr01.length; idx++) {
			fruitArr02[idx] = fruitArr01[idx];
		}
		fruitArr02[3] = "오렌지";
		fruitArr02[4] = "수박";
		System.out.println("fruitArr02의 과일 순서: ");
		for(int idx = 0; idx < fruitArr02.length;idx++) {
			System.out.println("fruitArr02["+idx+"]: "+fruitArr02[idx]+"\t");
		}
		// 2) System.arraycopy()를 이용: 3개를 뒤쪽에 채워넣고 앞쪽을 오렌지와 수박으로 처리
		System.arraycopy(fruitArr01, 0, fruitArr03, 2, fruitArr01.length);	// 3번째: idx=2
		fruitArr03[0] = "오렌지";
		fruitArr03[1] = "수박";
		System.out.println("fruitArr03의 과일 순서: ");
		for(int idx = 0; idx < fruitArr03.length;idx++) {
			System.out.println("fruiterr03["+idx+"]: "+fruitArr03[idx]+"\t");
		}
		//향상된 for문
		String movies[] = {"천문","백두산","시동"};
		System.out.println("# 향상된 for문 활용 #");
		for(String a : movies) { //가져올 항목이 있을 경우 반복
			System.out.println(a);
		}
		// ex) 좋아하는 연예인 Rank3를 데이터를 할당하고, 향상된 for문을 통해 출력하세요.
		String[] starRank = {"유재석","강호동","신동엽"};
		System.out.println("# 좋아하는 연예인 Rank3 #");
		for(String star :starRank) {
			System.out.println(star);
		}
		
	}

}
