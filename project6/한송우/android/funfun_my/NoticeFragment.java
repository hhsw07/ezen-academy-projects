package com.example.funfun_my;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class NoticeFragment extends Fragment {
    static RequestQueue requestQueue;
    private RecyclerView recyclerView;
    private NoticeAdapter adapter;


    @NonNull
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState){
        ViewGroup root = (ViewGroup)inflater.inflate(R.layout.fragment_notice, container, false);


        // recyclerviewr 불러오기.
        recyclerView = (RecyclerView)root.findViewById(R.id.recyclerview_notice);

        adapter = new NoticeAdapter();
        makeRequest_ajaxtoplist();
        makeRequest_ajaxlist();

        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        recyclerView.setAdapter(adapter);

        return root;
    }



    public void makeRequest_ajaxlist() {
        // json데이터를 가져오는 주소 입력 text
        // ex) http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200421
        requestQueue = Volley.newRequestQueue(getContext());
        String url = "http://192.168.4.34:5080/funfun/notice.do?method=ajaxlist";
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

    public void makeRequest_ajaxtoplist() {
        requestQueue = Volley.newRequestQueue(getContext());
        String url = "http://192.168.4.34:5080/funfun/notice.do?method=ajaxtoplist";

        StringRequest request = new StringRequest(
                Request.Method.GET,
                url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        println("응답 -> " + response);

                        processResponse_ajaxtoplist(response);
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

    public void processResponse(String response) {
        Gson gson = new Gson();
        NoticeList noticeList = gson.fromJson(response, NoticeList.class);

        println("공지사항 수 : " + noticeList.getList().size());

        for (int i = 0; i < noticeList.getList().size(); i++) {
            Notice notice = noticeList.getList().get(i);
            adapter.addItem(notice);
        }
        adapter.notifyDataSetChanged();
    }

    public void processResponse_ajaxtoplist(String response) {
        Gson gson = new Gson();
        NoticeList noticeList = gson.fromJson(response, NoticeList.class);

        println("공지사항 수 : " + noticeList.getToplist().size());

        for (int i = 0; i < noticeList.getToplist().size(); i++) {
            Notice notice = noticeList.getToplist().get(i);
            notice.setCnt(0);
            adapter.addItem(notice);
        }
        adapter.notifyDataSetChanged();
    }



}
