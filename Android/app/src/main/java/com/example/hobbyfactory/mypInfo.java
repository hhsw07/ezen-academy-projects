package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypInfo extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_editinfo);

        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_host = (Button)findViewById(R.id.btn_host);
        Button btn_my01 = (Button)findViewById(R.id.btn_my01);
        Button btn_my02 = (Button)findViewById(R.id.btn_my02);
        Button btn_03pw = (Button)findViewById(R.id.btn_03pw);
        Button btn_03drop = (Button)findViewById(R.id.btn_03drop);

        btn_home.setOnClickListener(home);
        btn_host.setOnClickListener(toHost);
        btn_my01.setOnClickListener(toMy01);
        btn_my02.setOnClickListener(toMy02);
        btn_03pw.setOnClickListener(to03pw);
        btn_03drop.setOnClickListener(to03drop);
    }
    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypInfo.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toHost = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent host = new Intent(mypInfo.this, mypHostC.class);
            startActivity(host);
        }
    };
    View.OnClickListener toMy01 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my01 = new Intent(mypInfo.this, mypOrder.class);
            startActivity(my01);
        }
    };
    View.OnClickListener toMy02 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my02 = new Intent(mypInfo.this, mypCreview.class);
            startActivity(my02);
        }
    };
    View.OnClickListener to03pw = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent pw03 = new Intent(mypInfo.this, mypPass.class);
            startActivity(pw03);
        }
    };
    View.OnClickListener to03drop = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent drop03 = new Intent(mypInfo.this, mypDrop.class);
            startActivity(drop03);
        }
    };
}
