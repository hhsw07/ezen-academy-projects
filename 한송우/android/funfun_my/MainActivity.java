package com.example.funfun_my;

import androidx.annotation.ColorInt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.graphics.Color;
import android.graphics.Movie;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.gson.Gson;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
    FragmentManager fm;
    FragmentTransaction tr;
    Fragment fragment;
    NoticeFragment noticeFragment;
    FaqFragment faqFragment;
    RtqnaFragment rtqnaFragment;
    static RequestQueue requestQueue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.nav_sc);

        fm = getSupportFragmentManager();
        fragment = fm.findFragmentById(R.id.sc_frame);

        noticeFragment = new NoticeFragment();
        faqFragment = new FaqFragment();
        rtqnaFragment = new RtqnaFragment();

        // fragment 초기할당
        tr = fm.beginTransaction();
        //tr.add(R.id.sc_frame, noticeFragment, "notice");
        tr.add(R.id.sc_frame, faqFragment, "faq");
        tr.commit();


    }

    public void nav_scClick(View v){
        TextView notice = (TextView)findViewById(R.id.nav_notice);
        TextView faq = (TextView)findViewById(R.id.nav_faq);
        TextView rtqna = (TextView)findViewById(R.id.nav_rtqna);
        String sc_color1 = "#FF9E00";
        String sc_color2 = "#FFFFFF";


        switch (v.getId()){
            case R.id.nav_notice:
                tr = fm.beginTransaction();
                tr.replace(R.id.sc_frame, noticeFragment, "notice");
                notice.setBackgroundColor(Color.parseColor(sc_color1));
                notice.setTextColor(Color.parseColor(sc_color2));
                faq.setBackgroundColor(Color.parseColor(sc_color2));
                faq.setTextColor(Color.parseColor(sc_color1));
                rtqna.setBackgroundColor(Color.parseColor(sc_color2));
                rtqna.setTextColor(Color.parseColor(sc_color1));
                tr.commit();
                break;
            case R.id.nav_faq:
                tr = fm.beginTransaction();
                tr.replace(R.id.sc_frame, faqFragment, "faq");
                notice.setBackgroundColor(Color.parseColor(sc_color2));
                notice.setTextColor(Color.parseColor(sc_color1));
                faq.setBackgroundColor(Color.parseColor(sc_color1));
                faq.setTextColor(Color.parseColor(sc_color2));
                rtqna.setBackgroundColor(Color.parseColor(sc_color2));
                rtqna.setTextColor(Color.parseColor(sc_color1));
                tr.commit();
                break;
            case R.id.nav_rtqna:
                tr = fm.beginTransaction();
                tr.replace(R.id.sc_frame, rtqnaFragment, "rtqna");
                notice.setBackgroundColor(Color.parseColor(sc_color2));
                notice.setTextColor(Color.parseColor(sc_color1));
                faq.setBackgroundColor(Color.parseColor(sc_color2));
                faq.setTextColor(Color.parseColor(sc_color1));
                rtqna.setBackgroundColor(Color.parseColor(sc_color1));
                rtqna.setTextColor(Color.parseColor(sc_color2));
                tr.commit();
                break;
        }
    }
    public void println(String data) {
        Log.d("MainActivity", data);
    }

}
