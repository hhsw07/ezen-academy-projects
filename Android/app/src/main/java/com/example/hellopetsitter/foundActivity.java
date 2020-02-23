package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class foundActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.found);

        Button login = (Button)findViewById(R.id.go_login);
        Button fp = (Button)findViewById(R.id.find_pass);
        Button login2 = (Button)findViewById(R.id.go_login2);

        login.setOnClickListener(glListen);
        fp.setOnClickListener(fpListen);
        login2.setOnClickListener(glListen);
    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(foundActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener fpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent fp = new Intent(foundActivity.this, findPassActivity.class);
            startActivity(fp);
        }
    };
}
