package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypageaddpetActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mypage_addpet);

        ImageView gma = (ImageView) findViewById(R.id.go_main);
        Button gs = (Button) findViewById(R.id.go_sitter);

        gma.setOnClickListener(gmaListen);
        gs.setOnClickListener(gsListen);
    }
    View.OnClickListener gmaListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gmal = new Intent(mypageaddpetActivity.this,MainActivity.class);
            startActivity(gmal);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gsl = new Intent(mypageaddpetActivity.this, sitterpageActivity.class);
            startActivity(gsl);
        }
    };
}

