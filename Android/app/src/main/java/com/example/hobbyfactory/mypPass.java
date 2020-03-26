package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypPass extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_changepw);

        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_host = (Button)findViewById(R.id.btn_host);
        Button btn_my01 = (Button)findViewById(R.id.btn_my01);
        Button btn_my02 = (Button)findViewById(R.id.btn_my02);
        Button btn_03edit = (Button)findViewById(R.id.btn_03edit);
        Button btn_03drop = (Button)findViewById(R.id.btn_03drop);

        btn_home.setOnClickListener(home);
        btn_host.setOnClickListener(toHost);
        btn_my01.setOnClickListener(toMy01);
        btn_my02.setOnClickListener(toMy02);
        btn_03edit.setOnClickListener(to03edit);
        btn_03drop.setOnClickListener(to03drop);
    }
    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypPass.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toHost = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent host = new Intent(mypPass.this, mypHostC.class);
            startActivity(host);
        }
    };
    View.OnClickListener toMy01 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my01 = new Intent(mypPass.this, mypOrder.class);
            startActivity(my01);
        }
    };
    View.OnClickListener toMy02 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my02 = new Intent(mypPass.this, mypCreview.class);
            startActivity(my02);
        }
    };
    View.OnClickListener to03edit = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent edit03 = new Intent(mypPass.this, mypInfo.class);
            startActivity(edit03);
        }
    };
    View.OnClickListener to03drop = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent drop03 = new Intent(mypPass.this, mypDrop.class);
            startActivity(drop03);
        }
    };
}
