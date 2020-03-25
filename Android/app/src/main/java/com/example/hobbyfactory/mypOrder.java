package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypOrder extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_orderlist);
        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_my02 = (Button)findViewById(R.id.btn_my02);
        Button btn_my03 = (Button)findViewById(R.id.btn_my03);
        Button btn_01mc = (Button)findViewById(R.id.btn_01mc);
        Button btn_01addr = (Button)findViewById(R.id.btn_01addr);
        Button btn_01add = (Button)findViewById(R.id.btn_01add);

        btn_home.setOnClickListener(home);
        btn_my02.setOnClickListener(toMy02);
        btn_my03.setOnClickListener(toMy03);
        btn_01mc.setOnClickListener(to01mc);
        btn_01addr.setOnClickListener(to01addr);
        btn_01add.setOnClickListener(to01add);

    }
    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypOrder.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toMy02 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my02 = new Intent(mypOrder.this, mypCreview.class);
            startActivity(my02);
        }
    };
    View.OnClickListener toMy03 = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent my03 = new Intent(mypOrder.this, mypInfo.class);
            startActivity(my03);
        }
    };
    View.OnClickListener to01mc = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mc01 = new Intent(mypOrder.this, mypClass.class);
            startActivity(mc01);
        }
    };
    View.OnClickListener to01addr = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent addr01 = new Intent(mypOrder.this, mypAddr.class);
            startActivity(addr01);
        }
    };
    View.OnClickListener to01add = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent add01 = new Intent(mypOrder.this, mypAdd.class);
            startActivity(add01);
        }
    };
}
