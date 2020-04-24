package springweb.z02.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class A02_ConnObj {
	/*
# java로 서버에 접근하여 데이터(문자열) 가져오기
1. 통신환경에 서버에 접근할려면,
    접속의 상태를 나누어 여러 multi thread로 처리하여야 한다.
    (Thread 환경에서 특정 서버에 접속)
    	그것을 파일이나, 문자열로 처리하여야 한다.
2. 서버에 접속 처리하는 객체 HttpURLConnection     
	1) network상에서 tcp/ip 프로토콜 기반하에  데이터를 가져올려면
	 통신 객체가 필요로 한다.    
3. 서버에서 가져오는 데이터는 Stream형식으로 가져와야한다.
    1) network, local에 있는 file등의 내용을 가져올 때는,
    	java의 프로그래밍으로는 Stream형식으로 변환하여 가져오고,
	*/	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 1. 기반 환경 Thread 환경을 만든다..
		//    Thread객체로  run()메서더를 통해서 수행한다.
		/*
		Runnable 인테페이스를 상속받은 클래스 정의 
		1) Runnable 인터페이스를 상속받아서 수행..
			class Prog implements Runnable{
				public void run(){
				    // threading으로 특정프로그램을 수행한다.
				     
				}
			} 
			Prog p1 = new Prog();
			Thread t1 = new Thread(p1);
			t1.start();  // run()의 선언된 내용을 수행..
			==> 익명 클래스로 선언과 수행을 간편화 처리..
			new Thread(new Runnable(){
				 public void run(){
				 
				 }
			}).start();
			
		
		2) Thread 클래스를 바로 사용..
		class Prog2 extends Thread{
			public void run(){
			    // threading으로 특정프로그램을 수행한다.
			     
			}		
		}
		Prog2 p2 = new Prog2();
		
		 * 
		 * */
//		1. Thread 환경에서 통신처리하기..
		/*
		ThredEnron te = new ThredEnron("웹사용자1");
		Thread t1 = new Thread(te);
		t1.start();
		ThredEnron te2 = new ThredEnron("웹사용자2");
		Thread t2 = new Thread(te2);
		t2.start();
		*/
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				// 서버와 통신 모듈 호출. 처리..
//				String url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200421";
				String url = "http://localhost:5080/springweb/emplist.do";
				request(url);
			}
		}).start();
	}
	// 서버 통신 처리하는 기능 메서드 정의
	public static void request(String urlS) {
		// 1. 통신 처리 모듈..
		//   1) 주소 처리 객체 URL
		try {
			URL url = new URL(urlS);
        //   2) HttpURLConnection 객체를 통해서 서버에 stream을 통해서 데이터 가져오기.
			HttpURLConnection conn=(HttpURLConnection)url.openConnection();
			if(conn != null) {
//			- connectTimeout : 1/1000초 단위로 접속후, Timeout시간 지정.
				conn.setConnectTimeout(10000);
//			- 요청형식 선언 get/post
				conn.setRequestMethod("GET");
//			- 입력형식 여부 ..
				conn.setDoInput(true);	
				int resCode = conn.getResponseCode();
				System.out.println("반응 코드값:"+resCode); // 정상 범위일때 처리..
				if(resCode == 200) {
		// 2. 통신에 의해 받은 스트림 데이터를 출력.	
//			 1) Stream으로 일단 서버에서 준 데이터 받가..
					System.out.println("## 서버에서 온 stream 객체 ##");
					System.out.println(conn.getInputStream());
					// HttpInputStream ==> InputStreamReader(2byte 문자열을 가져오는 객체)
//						==> BufferedReader (줄바꿈으로 line별로 문자열을 가져오는 처리)
					BufferedReader reader = new BufferedReader(
												new InputStreamReader(
														conn.getInputStream()));
//			2) line별로 문자열 내용을 확인..
					String  line=null;
					while(( line = reader.readLine() )!=null) {
						System.out.println(line);
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("통신 및 stream 에러 발생:"+e.getMessage());
		}

		
	}
	
}
class ThredEnron implements Runnable{
	private String name;
	ThredEnron(String name){
		this.name = name;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		// 통신 처리할 내용 구현..
		for(int cnt=0;cnt<10;cnt++) {
			System.out.println(name+"수행:"+cnt+"번 수행 내용");
		}
	}
}











