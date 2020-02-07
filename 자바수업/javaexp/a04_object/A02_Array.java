package javaexp.a04_object;

public class A02_Array {
/*
# 배열 타입
1. 배열이란? 같은 타입의 데이터를 연속된 공간에 저장하는 자료구조
2. 배열의 장점
	1) 배열은 여러 데이터를 동일한 변수에 할당하기 때문에 변수 선언을 줄일 수 있다.
		int num01, num02, num03; --> int[] num;
	2) 반복문을 이용해서 요소들의 할당, 수정, 호출을 효과적으로 할 수 있다.
		num01 = (int)(Math.random()*6);
		num02 = (int)(Math.random()*6);
		num03 = (int)(Math.random()*6);
		-->
		for(int idx = 0;idx <= num.length;idx++){
			num[idx] = (int)(Math.random()*6);
		}
3. 배열의 선언
	1) 배열을 사용하기 위해 우선 배열 변수를 선언하여야 한다.
		데이터type[] 변수명;	데이터type 변수명[];
		int[] point;		String names[];
	2) 배열 변수는 객체로 생성하기 전에 null로 초기화가 가능하다.
		데이터type[] 변수명 = null;
		boolean []passes = null;
		- 배열 객체도 생성이 되지 않은 상태에서 배열명[index번호]로 호출하면 nullPointerException이 발생한다.
			points[3]; //에러 발생 프로세스 중단 (변수 선언이 없었다면 실행 자체가 되지 않음)
4. 배열 객체의 생성
	1) 크기만 생성(값은 비워둠)
		타입[] 변수 = new 타입[길이];
		ex) int[] points = new int[5];
		주의) 객체는 생성하지만, 구성요소의 값은 할당되지 않은 상황
	2) 객체의 값을 초기에 할당하면서 생성
		타입[] 변수 = {값1, 값2, 값3};
		ex) String fruits = {"사과", "바나나", "딸기"};
	3) 위 둘 다 객체를 생성하기 때문에, stack영역과 heap영역을 활용한다.
5. 배열의 사용
	1) 배열은 배열명[index번호] = 데이터 할당;	배열명[index번호]형식으로 호출이 가능하다.
		ex) points[0] = 50;
			System.out.print("마지막 과일명: " + fruits[2]);
	2) 배열의 기본 속성1
		index : 각 데이터 저장 위치는 0부터 시작하는 인덱스로 접근이 가능하다.
				0 부터 시작하기 때문에 마지막 데이터 배열명[배열길이-1]까지 접근하여 사용할 수 있다.
		ex) 배열명[index번호] names[0], point[2]: 3개일 때 마지막 데이터
	3) 배열의 기본 속성2
		배열명.length : 배열의 길이를 가져온다. 전체 배열의 크기 활용이 필요할 때 활용하는 것을 읽기만 가능하다.
		ex) fruits.length : fruits 배열의 길이를 가져옴.
	4) 배열의 반복문 활용
		배열의 index와 배열 길이 (배열명.length)를 반복문과 함께 활용하면 효과적으로 사용할 수 있다.
		for(배열의 index값 0 설정; 배열길이보다 -1로 조건설정;index값의 증가{
			배열명[index값]...
		}
		ex)
		String fruits[] = {"사과","바나나","딸기"};
		fruits.length : 3
		fruits[0], fruits[1], fruits[2]
		idx < fruits.length : index의 한계치를 배열의 길이보다 1 작게 사용

		for(int idx = 0; idx < fruits.length; idx++){
			System.out.println(fruits[idx]+" 팔아요~");
		}
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
ex) 배열 선언과 활용 연습 예제
1. 정수형으로 가격을 할당할 배열을 선언하세요.
2. 실수형으로 학생 3명의 키를 할당할 배열을 선언하고 생성(초기화)하세요.
3. 성인인지 여부를 나타내는 배열 3개를 선언과 할당하세요.
4. 위 2번의 두번째 학생 키를 할당하세요.
5. 주사위 3번 던진 값을 배열에 할당하여 출력하세요.
 */
		
//		int[] price;	// 배열 선언
//		double[] studentsHeight = new double[3]; //배열 선언 및 크기만 생성(초기화)
//		boolean isAdults[] = {true, false, true}; //배열 선언 및 데이터 할당하면서 생성
//		studentsHeight[1] = 176.4;	// 두번째 배열: index 1
//		
//		int dice[] = new int[3];
//		for(int idx =0;idx<dice.length;idx++) {
//			dice[idx] = (int)(Math.random()*6+1);
//			System.out.print((idx+1)+"번 주사위: "+dice[idx]+"\t");
//		}
		
/*
# 다차원 배열
1. 2차원 이상의 배열을 처리할 때 활용된다.
2. 형식
	데이터type [][] 배열명 = new 데이터type[크기1][크기2];
	1) [][][] 차원수 만큼 선언 - 3차원
	2) 크기1 : 최상위 차원의 배열의 크기
	3) 크기2 : 하위 차원의 배열의 크기
3. 사용
	1) 데이터 할당
		배열명[1차원의 index번호][2차원의 index번호] = 데이터;
	2) 호출
		System.out.print(배열명[1차원의 index번호][2차원의 index번호]);
	3) 선언과 할당
		데이터tpye 배열명[][] = { {데이터1,데이터2}, {데이터1,데이터2}, {데이터1,데이터2} };
 */
//		// 1차원은 7칸
//		// 2차원은 60좌석
//		int trains[][] = new int[7][60];
//		
//		// 첫번째 칸의 첫번째 좌석에 번호를 1로 할당 처리
//		trains[0][0] = 1;
//		System.out.println("default 데이터 확인: "+trains[0][1]);
//		// 학생별로 국어, 영어, 수학, 과학 점수 저장
//		int point[][] = {{70,80,70,60}, {80,90,90,70}, {90,90,90,90}};	//3x4 배열이 선언됨
//		System.out.println("첫번째 학생의 수학점수(3번째): "+point[0][2]);
/*
ex) 다차원 배열 연습
1. 기차가 5호차, 좌석이 50칸이 있는 배열을 선언하고, 2번째 칸 5번째 좌석에 있는 데이터를 좌석번호를 임의로 할당하세요.
2. 고등학교 3개 학년, 5개반의 @@학년 @@반 담임@@@ 정보를 입력하려고 한다.
	문자열 2차원 배열로 선언하고, 3학년 2반 담임 홍길동을 3번째 배열 2번째 데이터에 할당하세요.
3. 한개 학년의 영어 성적으로 2차원 배열로 할당하려고 한다. 학급수는 5개반, 학생은 한 반에 35이다. 배열을 선언하고, 랜덤데이터를 할당하세요.
*/		
		// 5호차 50좌석 중 2호차 5번석의 데이터
		int train[][] = new int[5][50];
		train[1][4] = 191224;
		
		// 3학년 5개반의 각 담임 이름
		String claTer[][] = new String[3][5];
		claTer[2][1] = "홍길동";
		
		// 5개반 35명의 영어성적
		int engPt[][] = new int[5][35];
		// engPt.length : 최상의 배열의 크기 = 5
		// engPt[0].length : 첫번째 배열의 크기 = 35
		
		for(int idx = 0; idx < engPt.length; idx++) {
			System.out.println("## "+(idx+1)+"반 영어 성적 ##");
			// jdx<engPt[idx].length : 각 반의 학생수를 조건으로 처리
			for(int jdx = 0; jdx < engPt[idx].length;jdx++) {
				// engPt[idx][jdx] : engPt[반의 index][학생의 index]
				engPt[idx][jdx] = (int)(Math.random()*101);
				System.out.println((jdx+1)+"번: "+engPt[idx][jdx]);
			}
		}
		
		for(int jdx = -1; jdx<35;jdx++){
			for(int idx = 0; idx<5;idx++){
				if(jdx == -1) {
					System.out.print("## "+(idx+1)+"반 수학점수 ##\t");
					continue;
				}
				engPt[idx][jdx] = (int)(Math.random()*101);
				System.out.printf("%d반 %2d번 %3d점\t",(idx+1),(jdx+1),engPt[idx][jdx]);
			}
			System.out.println();
		}
		
		
		String[][] prods = {{"사과","바나나","딸기"}, {"오렌지"},{"딸기","감","수박"} };
		
		for(int idx = 0; idx < prods.length;idx++) {
			System.out.println(idx+1+"번 사람의 물건");
			for(int jdx = 0; jdx < prods[idx].length;jdx++) {
				System.out.print(prods[idx][jdx]+"\t");
			}
			System.out.println();
		}
				
		
		
		
	}

}
