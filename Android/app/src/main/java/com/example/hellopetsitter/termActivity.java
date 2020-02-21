package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class termActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.term);

        Button login = (Button)findViewById(R.id.go_login);
        Button next =(Button)findViewById(R.id.nextjoin);
        ImageView main = (ImageView)findViewById(R.id.logo);

        login.setOnClickListener(glListen);
        next.setOnClickListener(njListener);
        main.setOnClickListener(home);
    }
    View.OnClickListener home = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(termActivity.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(termActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener njListener = new View.OnClickListener() {
        Intent nj;
        @Override
        public void onClick(View v) {
            nj = new Intent(termActivity.this, joinActivity.class);
            startActivity(nj);
        }
    };
}
