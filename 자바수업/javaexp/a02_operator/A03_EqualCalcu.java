package javaexp.a02_operator;

public class A03_EqualCalcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


/*
# 비교 연산자
1. 두개의 데이터나 변수를 비교하여 해당 값에 대한 논리값(true/false)을 가져오는 연산자.
      조건문과 반복문에서 해당 블럭 ({})을 처리할 기준으로 사용한다.
2. 기본 형식
  1) 변수1 == 변수2: 변수1과 변수2가 (stack 영역에 데이터가) 동일할 때 true 값을 가져오고,
                                     동일하지 않을 때 false 값을 가져온다.
  2) 변수1 != 변수2: 변수1과 변수2가 동일하지 않을 때 true 값을 가져오고, 동일할 때 false 값을 가져온다.
  3) >(큰), <(작은), >=(크거나 같은), <=(작거나 같은): 변수에 대한 크기가 적은지 많은지 여부에 대한
                   boolean값을 가져온다.
     ex) point >= 60 : 60이상인 경우만 true
3. 논리 연산자: 비교 연산자를 이용해서 만든 연산식을 2개 이상 활용할  때 논리 연산자라고 한다.
     ex) 점수가 80점 이상이고, 90점 미만인 경우에 B학점입니다. 라고 출력하는 프로그램
     ex) 아이디와 패스워드가 지정된 정보와 둘 다 맞을 때 로그인 된다.
  1) 두개의 비교 연산자를 다 충족 시킬 때, boolean true를 처리하게 하려면, 비교연산자1 && 비교연산자2로
          연결하여 처리하여야 하는데, 이를 논리 연산자라고 한다.
  2) 비교연산자1 || 비교연산자2: 두개의 비교연산자 중에 하나만 true이면 true로 처리하는 경우를 말한다.
  3) not 논리 연산자(!연산자): 결과 boolean의 반대 boolean을 처리
     ex) boolean isPass = point >= 60;
         boolean isNotPass = !point >= 60; // 60 미만일 때 true
         boolean isNouPass = !isPass;
4. 조건 삼항 연산자
  1) 조건식에 따라서 결과값을 return해주는 연산자를 말한다.
     (조건식)?true일 때 처리할 데이터:false일 때 처리할 데이터
     ex) point >= 60 ?"합격":"불합격" //point가 60 이상일 때, "합격"문자열과 "불합격"문자열을 선택적으로 return 처리
  2) 비교연산자나 논리연산자는 true/false값만 나오지만, 삼항 연산자는 true/false에 따라 원하는 값을 지정하여 처리할 수 있다.
     
 */
		int num01 = 30;
		int num02 = 30;
		int num03 = 40;
		int num04 = 20;
		System.out.println("num01==num02 :" + (num01==num02));
		System.out.println("num01==num03 :" + (num01==num03));
		System.out.println("(##주의 대입)num03=num04 :" + (num03=num04));//num03에 20이 대입됨
		
		if(num01==num02) {
			System.out.println("빙고! num01과 num02는 동일한 데이터입니다.");
		}
		
		System.out.println("not비교 num01!=num03:"+(num01!=num03));
/*
예제1) 사지선다 문제를 냈을 때, 정답 여부를 논리값으로 가져오도록 처리하시오.
변수(선택한 번호, 정답), if()를 이용해서 정답이 아닌 경우에 "오답입니다." 출력하시오.
 */
		int checkNum = 1;
		int rightNum = 3;
		System.out.println("정답여부 :"+(checkNum==rightNum));
		// 두개 변수가 같지 않을 때.. 처리 block({}) 조건에 의해 처리
		if(checkNum!=rightNum) {
			System.out.println("오답입니다.");
		}
		
		int num05 = 70;
		int num06 = 80;
		System.out.println("num05>=num06: "+(num05 >= num06));
		System.out.println("num05>num06: "+(num05 > num06));
		System.out.println("num05<=num06: "+(num05 <= num06));
/*
예제2) 획득한 점수가 70점 이상일 때, boolean 값 출력하시오
예제3) 나이가 20세 이상인 경우, 조건문을 이용해서 "성인입니다."를 출력하시오.
*/
		//예제2
		int point = 80;
		System.out.println("70점 이상 여부: "+(point >= 70));
		//예제3
		int age = 23;
		if(age >= 20) {
			System.out.println("성인입니다.");
		}
		
/*
예제4. 점수가 80점에서 90점미만 사이 일 때, B학점을 처리한다.
*/
		//예제4	
		System.out.println("점수가 80점에서 90점미만 사이 여부:"+(point >= 80 && point < 90));
		if(point>=80 && point < 90) {
			System.out.println("B 학점입니다.");
		}
		//점수가 0점 미만 이거나 100점 초과하면 유효한 점수가 아닙니다.를 출력하시오
		point = 105;
		System.out.println("유효하지 않는 여부:"+(point < 0 || point > 100));
		if(point < 0 || point > 100) {
			System.out.println("점수는 0~100 사이 이여야 합니다.");
		}
		
/*
예제5. 나이를 기준으로 14~20 사이이면 청소년 요금제, 4 미만이거나 65 이상은 무료로 처리하시오
청소년 요금제 여부 : @@@
무료에 해당할 때, "어서오세요. 고객님은 무료입니다!!" 로 출력하시오.
 */
		age = 3;
		System.out.println("청소년 요금제 여부 : "+(age >= 14 && age <=20));
		
		age = 80;
		if(age < 4 || age >= 65) {
			System.out.println("어서오세요. 고객님은 무료입니다!!");
		}
		
		point = 80;
		String result = point>=60?"합격":"불합격";
		System.out.println("결과:"+result);
		
		//나이가 14~20 일 때 청소년요금제
		// 그 외에는 일반요금제 라고 문자열을 삼항 연산자를 이용해서 출력처리 하시오.
		
		String payRule = (age >=14 && age <=20)?"청소년요금제":"일반요금제";
		System.out.println("나이가 "+age+"세 이므로 사용하실 요금제는 "+ payRule + "입니다.");
	}

}
