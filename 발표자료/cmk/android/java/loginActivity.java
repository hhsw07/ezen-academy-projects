package com.example.pet_care;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

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

        goj.setOnClickListener(gjListen);
        fi.setOnClickListener(fiListen);
        fp.setOnClickListener(fpListen);
    }
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
