package com.example.hellopetsitter;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class sitterpageActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.sitterpage);

        Button sv = (Button) findViewById(R.id.add_sv);
        Button ac = (Button) findViewById(R.id.add_ac);
        Button gm = (Button) findViewById(R.id.go_my);
        ImageView gma = (ImageView) findViewById(R.id.go_main);

        sv.setOnClickListener(svListen);
        ac.setOnClickListener(acListen);
        gm.setOnClickListener(gmListen);
        gma.setOnClickListener(gmaListen);


    }

        View.OnClickListener svListen = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent svl = new Intent(sitterpageActivity.this, addservicesActivity.class);
                startActivity(svl);
            }
        };
        View.OnClickListener acListen = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Intent acl = new Intent(sitterpageActivity.this, addaccountActivity.class);
                startActivity(acl);
            }
        };
        View.OnClickListener gmListen = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Intent gml = new Intent(sitterpageActivity.this,mypageActivity.class);
                startActivity(gml);
            }
        };
        View.OnClickListener gmaListen = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Intent gmal = new Intent(sitterpageActivity.this,MainActivity.class);
                startActivity(gmal);
            }
        };
    }

