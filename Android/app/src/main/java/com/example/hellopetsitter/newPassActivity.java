package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class newPassActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.new_pass);

        Button login = (Button)findViewById(R.id.go_login);
        Button cp = (Button)findViewById(R.id.change_pass);

        login.setOnClickListener(glListen);
        cp.setOnClickListener(cpListen);
    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(newPassActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener cpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast.makeText(getApplicationContext(), "비밀번호가 변경되었습니다", Toast.LENGTH_LONG).show();
            Intent cp = new Intent(newPassActivity.this, loginActivity.class);
            startActivity(cp);
        }
    };
}
