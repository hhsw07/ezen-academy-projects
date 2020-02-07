package javaexp.a04_object;
/*
# 열거 타입(Enumeration형)
1. 한정된 값만 갖는 데이터 타입
2. 한정된 값을 열거 상수로 정의
3. 선언/생성
	1) 파일 이름과 동일한 이름을 선언한다.
		public enum 열거타입이름
	2) 한정된 값인 열거 상수 정의
		열거 상수 이름을 관례적으로 모두 대문자로 작성.
		합성어인 경우, 관례적으로 _로 연결

 */
public enum Week {
	MONDAY,		// 열거 상수
	TUESDAY,
	WEDESDAY,
	THURSDAY,
	FRIDAY,
	SATURDAY,
	SUNDAY

}
