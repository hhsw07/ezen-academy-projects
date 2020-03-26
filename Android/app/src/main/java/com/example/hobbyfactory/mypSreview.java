package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypSreview extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_sreview);

        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_host = (Button)findViewById(R.id.btn_host);
        Button btn_my01 = (Button)findViewById(R.id.btn_my01);
        Button btn_my03 = (Button)findViewById(R.id.btn_my03);
        Button btn_02inquiry = (Button)findViewById(R.id.btn_02inquiry);
        Button btn_02point = (Button)findViewById(R.id.btn_02point);
        Button btn_02cr = (Button)findViewById(R.id.btn_02cr);

        btn_home.setOnClickListener(home);
        btn_host.setOnClickListener(toHost);
        btn_my01.setOnClickListener(toMy01);
        btn_my03.setOnClickListener(toMy03);
        btn_02inquiry.setOnClickListener(to02Inq);
        btn_02point.setOnClickListener(to02Pt);
        btn_02cr.setOnClickListener(to02Cr);
    }
    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypSreview.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toHost = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent host = new Intent(mypSreview.this, mypHostC.class);
            startActivity(host);
        }
    };
    View.OnClickListener toMy01 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my01 = new Intent(mypSreview.this, mypOrder.class);
            startActivity(my01);
        }
    };
    View.OnClickListener toMy03 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my03 = new Intent(mypSreview.this, mypInfo.class);
            startActivity(my03);
        }
    };
    View.OnClickListener to02Inq = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent inq02 = new Intent(mypSreview.this, mypInquiry.class);
            startActivity(inq02);
        }
    };
    View.OnClickListener to02Pt = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent pt02 = new Intent(mypSreview.this, mypMileage.class);
            startActivity(pt02);
        }
    };
    View.OnClickListener to02Cr = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent cr02 = new Intent(mypSreview.this, mypSreview.class);
            startActivity(cr02);
        }
    };
}
