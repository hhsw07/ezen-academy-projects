package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

public class list_review extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro03_list_review);

        ImageView logo = (ImageView)findViewById(R.id.logolist);

        Button btn1 = (Button)findViewById(R.id.button20);
        Button btn2 = (Button)findViewById(R.id.button22);

        logo.setOnClickListener(maListen);
        btn1.setOnClickListener(liListen);
        btn2.setOnClickListener(liListen);
    }
    View.OnClickListener maListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(list_review.this, MainActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener liListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(list_review.this, list.class);
            startActivity(gl);
        }
    };


}
