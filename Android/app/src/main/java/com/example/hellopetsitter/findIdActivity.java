package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class findIdActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.find_id);

        Button login = (Button)findViewById(R.id.go_login);
        Button auth = (Button)findViewById(R.id.auth);
        Button idf = (Button)findViewById(R.id.id_find);

        login.setOnClickListener(glListen);
        auth.setOnClickListener(aListen);
        idf.setOnClickListener(idfListen);
    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(findIdActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener aListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast.makeText(getApplicationContext(), "인증번호가 발송되었습니다", Toast.LENGTH_LONG).show();
        }
    };
    View.OnClickListener idfListen = new View.OnClickListener() {
        Intent idf;
        @Override
        public void onClick(View v) {
            idf = new Intent(findIdActivity.this, foundActivity.class);
            startActivity(idf);
        }
    };
}
