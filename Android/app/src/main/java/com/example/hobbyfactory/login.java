package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class login extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);

        Button lo = (Button) findViewById(R.id.login);
        Button gj = (Button) findViewById(R.id.go_join);
        Button fi = (Button) findViewById(R.id.find_id);
        Button fw = (Button) findViewById(R.id.find_pass);

        lo.setOnClickListener(loListen);
        gj.setOnClickListener(gjListen);
        fi.setOnClickListener(fiListen);
        fw.setOnClickListener(fwListen);

    }

    View.OnClickListener loListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent lo= new Intent(login.this, MainActivity.class );
            startActivity(lo);
        }
    };
    View.OnClickListener gjListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gj= new Intent(login.this, join.class );
            startActivity(gj);
        }
    };
    View.OnClickListener fiListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent fi= new Intent(login.this, findId.class );
            startActivity(fi);
        }
    };
    View.OnClickListener fwListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent fw= new Intent(login.this, findPw.class );
            startActivity(fw);
        }
    };

}

