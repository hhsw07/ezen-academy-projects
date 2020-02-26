package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class sitteraddaccountActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.sitteraddaccount);

        Button gm = (Button) findViewById(R.id.go_my);
        ImageView gma = (ImageView) findViewById(R.id.go_main);

        gm.setOnClickListener(gmListen);
        gma.setOnClickListener(gmaListen);
    }
    View.OnClickListener gmListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gml = new Intent(sitteraddaccountActivity.this,mypageaddpetActivity.class);
            startActivity(gml);
        }
    };
    View.OnClickListener gmaListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gmal = new Intent(sitteraddaccountActivity.this,MainActivity.class);
            startActivity(gmal);
        }
    };
}
