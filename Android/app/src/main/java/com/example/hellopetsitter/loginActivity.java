package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class loginActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);

        Button goj = (Button)findViewById(R.id.go_join);
        Button fi = (Button)findViewById(R.id.find_id);
        Button fp = (Button)findViewById(R.id.find_pass);
        ImageView main = (ImageView)findViewById(R.id.logo);

        goj.setOnClickListener(gjListen);
        fi.setOnClickListener(fiListen);
        fp.setOnClickListener(fpListen);
        main.setOnClickListener(home);
    }
    View.OnClickListener home = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(loginActivity.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener fiListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent fi = new Intent(loginActivity.this, findIdActivity.class);
            startActivity(fi);
        }
    };
    View.OnClickListener fpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent fp = new Intent(loginActivity.this, findPassActivity.class);
            startActivity(fp);
        }
    };

    View.OnClickListener gjListen = new View.OnClickListener() {
        Intent gj;
        @Override
        public void onClick(View v) {
            gj = new Intent(loginActivity.this, termActivity.class);
            startActivity(gj);
        }
    };
}
