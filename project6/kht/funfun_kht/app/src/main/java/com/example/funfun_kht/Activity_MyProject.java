package com.example.funfun_kht;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

public class Activity_MyProject extends AppCompatActivity {

    TextView textView;

    static RequestQueue requestQueue;

    RecyclerView recyclerView;
    Adapter_MyProject adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ht_user_m_ms_myproject);


        if (requestQueue == null) {
            requestQueue = Volley.newRequestQueue(getApplicationContext());
        }

        recyclerView = findViewById(R.id.myProjectRecyclerView);

        LinearLayoutManager layoutManager = new LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new Adapter_MyProject();
        recyclerView.setAdapter(adapter);
        makeRequest();

    }


    public void makeRequest() {
        // json데이터를 가져오는 주소 입력 text
        // ex) http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200421
        String url = "http://192.168.4.19:6080/funfun/androidMyProject.do?method=myProject";
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
        MyProject_List myProjectList = gson.fromJson(response, MyProject_List.class);

        println("데이터 갯수 : " + myProjectList.getMyProject_Result().size());

        for (int i = 0; i < myProjectList.getMyProject_Result().size(); i++) {
            // 해당 ArrayList객체에서 단위 데이터를 가져오서..
            MyProject_VO myProject = myProjectList.getMyProject_Result().get(i);
            // adapter에 할당 처리..
            adapter.addItem(myProject);
        }

        adapter.notifyDataSetChanged();
    }

}

