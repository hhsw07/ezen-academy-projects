package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypInquiry extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_inquiry);

        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_my01 = (Button)findViewById(R.id.btn_my01);
        Button btn_my03 = (Button)findViewById(R.id.btn_my03);
        Button btn_02review = (Button)findViewById(R.id.btn_02review);
        Button btn_02point = (Button)findViewById(R.id.btn_02point);

        btn_home.setOnClickListener(home);
        btn_my01.setOnClickListener(toMy01);
        btn_my03.setOnClickListener(toMy03);
        btn_02review.setOnClickListener(to02Rev);
        btn_02point.setOnClickListener(to02Pt);
    }
    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypInquiry.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toMy01 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my01 = new Intent(mypInquiry.this, mypOrder.class);
            startActivity(my01);
        }
    };
    View.OnClickListener toMy03 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my03 = new Intent(mypInquiry.this, mypInfo.class);
            startActivity(my03);
        }
    };
    View.OnClickListener to02Rev = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent rev02 = new Intent(mypInquiry.this, mypInquiry.class);
            startActivity(rev02);
        }
    };
    View.OnClickListener to02Pt = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent pt02 = new Intent(mypInquiry.this, mypMileage.class);
            startActivity(pt02);
        }
    };
}
