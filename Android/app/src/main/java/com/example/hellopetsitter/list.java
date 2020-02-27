package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class list extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro03_list);

        Button login = (Button)findViewById(R.id.go_login);
        Button cs = (Button)findViewById(R.id.go_cs);
        Button fs = (Button)findViewById(R.id.find_sitter);
        Button mp = (Button)findViewById(R.id.mypage);
        ImageView logo = (ImageView)findViewById(R.id.logolist);

        TextView review1 = (TextView)findViewById(R.id.textView56);
        TextView review2 = (TextView)findViewById(R.id.textView36);

        review1.setOnClickListener(reListen);
        review2.setOnClickListener(reListen);
        logo.setOnClickListener(maListen);
    }
    View.OnClickListener maListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(list.this, MainActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener reListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(list.this, list_review.class);
            startActivity(gl);
        }
    };

}
