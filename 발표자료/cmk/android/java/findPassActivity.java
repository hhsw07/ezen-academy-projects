package com.example.pet_care;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class findPassActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.find_pass);

        Button login = (Button)findViewById(R.id.go_login);
        Button auth = (Button)findViewById(R.id.auth);
        Button pf = (Button)findViewById(R.id.pass_find);

        login.setOnClickListener(glListen);
        auth.setOnClickListener(aListen);
        pf.setOnClickListener(pfListen);
    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(findPassActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };

    View.OnClickListener aListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast.makeText(getApplicationContext(), "인증번호가 발송되었습니다", Toast.LENGTH_LONG).show();
        }
    };
    View.OnClickListener pfListen = new View.OnClickListener() {
        Intent pf;
        @Override
        public void onClick(View v) {
            pf = new Intent(findPassActivity.this, newPassActivity.class);
            startActivity(pf);
        }
    };
}
