package com.example.sh_funfun;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.gson.Gson;

import org.w3c.dom.Text;

import java.util.HashMap;
import java.util.Map;

public class Activity_mypage extends AppCompatActivity {
    EditText editText;
    TextView textView;
    android.widget.ImageView ImageView;

    static RequestQueue requestQueue;

    RecyclerView recyclerView;
    Adapter_mypageInfo adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mypage);

        if (requestQueue == null) {
            requestQueue = Volley.newRequestQueue(getApplicationContext());
        }

        new Thread(new Runnable(){
            public void run(){
                Log.d("Activity_mypage","실행여부");
                getName();
            }
        }).start();

    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);

        String userEmail = intent.getStringExtra("user");

    }

    public void getName() {
        // json데이터를 가져오는 주소 입력 text
        // ex) http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200421
        String url = "http://192.168.4.4:5080/funfun/androidMypage.do";
        // StringRequest(get/post,"주소", 응답값을 가져오는 객체, 에러가 났을 때 처리해주는 객체)
        // 1. 익명 클래스에서 바로 정의해서 처리하는 메서드 추가.
        // 		1) protected Map<String, String> getParams():재정의 메서드 처리
        // 2. 수행 처리 내용..
        //    익명 클래스로 정의하는 request의 메서드
        //    request.setShouldCache(false);
        //    requestQueue.add(request);
        //
        StringRequest request = new StringRequest(
                Request.Method.GET,
                url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        println("응답 -> " + response);

                        processResponse(response);
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        println("에러 -> " + error.getMessage());
                    }
                }
        ) {
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                Map<String,String> params = new HashMap<String,String>();

                return params;
            }
        };

        request.setShouldCache(false);
        requestQueue.add(request);
        println("요청 보냄.");

    }

    public void println(String data) {
        Log.d("MainActivity", data);
    }
    // json 문자열 데이터를 ArrayList형태로 변환 처리하는 메서드..
    // 1. Gson api 클래스가.
    //    1) fromJson(요청json문자열,  ArrayList형 MovieList객체로 전환처리)
    ///       showRange속성(json)이 있으면 해당데이터는  showRange속성(java)
    ///      showRange속성(java)로 할당 처리..
    public void processResponse(String response) {
        Gson gson = new Gson();
        mypageVo mlist = gson.fromJson(response, mypageVo.class);

        TextView name = findViewById(R.id.name);
        name.setText(mlist.getMemName());

        TextView fcnt = findViewById(R.id.fcnt);
        fcnt.setText(String.valueOf(mlist.getFundCnt()));

        TextView ocnt = findViewById(R.id.ocnt);
        ocnt.setText(String.valueOf(mlist.getOrderCnt()));

        TextView usertype = findViewById(R.id.usertype);
        usertype.setText(mlist.getMemState());

        ImageView memProfile = findViewById(R.id.memProfile);
        memProfile.setImageBitmap(BitmapFactory.decodeResource(getResources(),R.drawable.profile01));



    }

}