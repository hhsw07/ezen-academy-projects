package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class joinActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.join);

        Button back = (Button)findViewById(R.id.backterm);
        Button auth = (Button)findViewById(R.id.auth);
        Button sm = (Button)findViewById(R.id.join_compl);

        back.setOnClickListener(btListener);
        auth.setOnClickListener(aListen);
        sm.setOnClickListener(smListen);
    }
    View.OnClickListener aListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast.makeText(getApplicationContext(), "인증번호가 발송되었습니다", Toast.LENGTH_LONG).show();
        }
    };
    View.OnClickListener btListener = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            finish();
        }
    };
    View.OnClickListener smListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast.makeText(getApplicationContext(), "가입이 완료되었습니다", Toast.LENGTH_LONG).show();
            Intent submit = new Intent(joinActivity.this, loginActivity.class);
            startActivity(submit);
        }
    };
}
