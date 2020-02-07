package javaexp.a07_object2;

import java.util.ArrayList;

/*
# 배열(Array)은 한번 만들어지면, 크기를 변경할 수 없기 때문에 새로운 배열을 선언하고 해당 배열에 for, ArrayCopy를 통해서 처리하여야 한다.
	int[] num01 = new int[3];
	int[] num02 = new int[5];
1. for문
	for(int idx = 0; idx < num01.length; idx++){
		num02[idx] = num01[idx]; }
2. System.arraycopy();
	System.arraycopy(num01,0,num02,0,num01.length);
# 동적배열은 배열이 동적으로 작아졌다가 커졌다 효과적으로 활용할 수 있다.	**매우 중요
# java에서 동적배열을 지원하는 객체는 ArrayList가 있다.
# ArrayList의 선언
	ArrayList 참조변수 = new ArrayList();	// java.utill.하위 package에 있기에 import가 필요하다.ex) Scanner
																	     단축키: ctrl + shift + o
# 들어갈 데이터type의 설정
	1) 객체 형식으로 generic을 활용할 수 있다.
		ex) 선언하지 않으면 모든 객체의 최상위 객체인 object가 자동으로 선언되어 할당은 할 수 있지만, 가져올때 casting이 필요하다.
		ex) ArrayList<String> list1 = new ArrayList<String>();
		ex) ArrayList<Integer> list2 = new ArrayList<Integer>();
		ex) ArrayList<Product> list3 = new ArrayList<Product>();
	2) ArrayList를 문자열로 할당하게 선언하고
		- 데이터 추가: 참조변수.add("추가할문자열");
		- 데이터 가져오기: 참조변수.get(인덱스번호);
		- 배열의 크기: 참조변수.size();
		- 데이터 수정: 참조변수.set(인덱스번호, "변경될데이터");
		- 데이터 삭제: 참조변수.remove(인덱스번호);
 */
public class A02_DynamicArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList list = new ArrayList();
		Object o = new Object();	// 최상위 객체 클래스
		Object o1 = new ArrayList();
		Object o2 = new Woman();	// 할당은 promote이기에 자동으로 된다.
		// int -> double 자동형변환(promote) double -> int 강제형변환(casting)
//		o2.getLoc(); (X)
		Woman w1 = (Woman)o2;		// 가져와 해당 클래스의 정의된 메서드를 사용하려면 casting 작업이 필요하다.
		w1.getLoc();
		// 문자열이 동적으로 들어갈 수 있는 동적배열인 ArrayList를 선언
		// 객체가 heap영역에 생성.
		ArrayList<String> flist = new ArrayList<String>();
		flist.add("사과");
		flist.add("바나나");
		flist.add("딸기");
		flist.add("파인애플");
		flist.add("감");
		System.out.println(flist.get(0));
		System.out.println(flist.get(1));
		System.out.println(flist.get(2));
		flist.remove(2);
		System.out.println("동적배열의 크기: "+flist.size());
		for(int idx = 0; idx < flist.size(); idx++) {
			System.out.println((idx+1)+") "+flist.get(idx));
		}
		// ex1) 빨주노초파남보 무지개 색상을 할당하고, 반복문을 통해서 내용을 출력
		// ex2)	7개 색상 중에 임의의 색상을 흰색으로 변경처리
		// ex3) 첫번째와 마지막 색상을 삭제 후, 남은 색상 list를 for문으로 출력처리
		ArrayList<String> rainbowList = new ArrayList<String>();
		rainbowList.add("빨강");
		rainbowList.add("주황");
		rainbowList.add("노랑");
		rainbowList.add("초록");
		rainbowList.add("파랑");
		rainbowList.add("남색");
		rainbowList.add("보라");
		System.out.println("## 빨주노초파남보 무지개 색상을 할당하고, 반복문을 통해서 내용을 출력 ##");
		System.out.println("while문 사용");
		int jdx =0;
		while(jdx < rainbowList.size()) {
			System.out.print(rainbowList.get(jdx)+"\t");
			jdx++;
		}
		System.out.println("\nfor문 활용");
		for(int idx = 0; idx < rainbowList.size();idx++) {
			System.out.print(rainbowList.get(idx)+"\t");
		}
		System.out.println("\n향상된 for문 활용");
		for(String color:rainbowList) {
			System.out.print(color+"\t");
		}
		System.out.println("\n## 7개 색상 중에 임의의 색상을 흰색으로 변경처리 ##"); //임의 idx = ranIdx
		// Math.random()*경우수: .size() 크기를 경우수로 할당
		rainbowList.set((int)(Math.random()*rainbowList.size()), "흰색");
		for(int idx = 0; idx < rainbowList.size();idx++) {
			System.out.print(rainbowList.get(idx)+"\t");
		}
		System.out.println("\n## 첫번째와 마지막 색상을 삭제 후, 남은 색상 list를 for문으로 출력처리 ##");
		// 첫번쨰 idx = 0, 마지막 idx = rainbowList.size()-1
		rainbowList.remove(0);
		rainbowList.remove(rainbowList.size()-1);
		for(int idx = 0; idx < rainbowList.size();idx++) {
			System.out.print(rainbowList.get(idx)+"\t");
		}
	}

}
