package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypMileage extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_mileage);

        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_host = (Button)findViewById(R.id.btn_host);
        Button btn_my01 = (Button)findViewById(R.id.btn_my01);
        Button btn_my03 = (Button)findViewById(R.id.btn_my03);
        Button btn_02review = (Button)findViewById(R.id.btn_02review);
        Button btn_02inquiry = (Button)findViewById(R.id.btn_02inquiry);

        btn_home.setOnClickListener(home);
        btn_host.setOnClickListener(toHost);
        btn_my01.setOnClickListener(toMy01);
        btn_my03.setOnClickListener(toMy03);
        btn_02review.setOnClickListener(to02Rev);
        btn_02inquiry.setOnClickListener(to02Inq);
    }
    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypMileage.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toHost = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent host = new Intent(mypMileage.this, mypHostC.class);
            startActivity(host);
        }
    };
    View.OnClickListener toMy01 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my01 = new Intent(mypMileage.this, mypOrder.class);
            startActivity(my01);
        }
    };
    View.OnClickListener toMy03 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my03 = new Intent(mypMileage.this, mypInfo.class);
            startActivity(my03);
        }
    };
    View.OnClickListener to02Rev = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent rev02 = new Intent(mypMileage.this, mypInquiry.class);
            startActivity(rev02);
        }
    };
    View.OnClickListener to02Inq = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent inq02 = new Intent(mypMileage.this, mypInquiry.class);
            startActivity(inq02);
        }
    };
}
