package com.example.a20_serverconn;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class MainActivity extends AppCompatActivity {
    private TextView tv;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.d("##@@@ 로그 출력 입니다.##","시작합니다!!!");
		String url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200421";
//        String url = "http://localhost:5080/springweb/emplist.do";
        new Thread(new Runnable() {
            @Override
            public void run() {
                // TODO Auto-generated method stub
                // 서버와 통신 모듈 호출. 처리..
//				String url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200421";
                String url = "http://211.238.140.48:5080/springweb/emplist.do";
                request(url);
            }
        }).start();


    }
    // 서버 통신 처리하는 기능 메서드 정의
    public void request(String urlS) {
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
                    String  line="";
                    StringBuffer sb = new StringBuffer();

                    while(( line = reader.readLine() )!=null) {
                        Log.d("### json 데이터",""+line);
                        sb.append(line);
                    }
                    tv =findViewById(R.id.showText);
                    tv.setText(sb.toString());
                }
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("통신 및 stream 에러 발생:"+e.getMessage());
        }


    }
}
