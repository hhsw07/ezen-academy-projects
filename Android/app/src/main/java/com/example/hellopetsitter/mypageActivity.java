package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypageActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mypage);

        Button ap = (Button) findViewById(R.id.add_pet);
        Button gs = (Button) findViewById(R.id.go_sitter);

        ap.setOnClickListener(apListen);
        gs.setOnClickListener(gsListen);
    }
        View.OnClickListener apListen = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent apl = new Intent(mypageActivity.this, addpetActivity.class);
                startActivity(apl);
            }
        };
        View.OnClickListener gsListen = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Intent gsl = new Intent(mypageActivity.this, sitterpageActivity.class);
                startActivity(gsl);
            }
        };
    }

