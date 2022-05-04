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

        TextView chat1 = (TextView)findViewById(R.id.textView37);
        TextView chat2 = (TextView)findViewById(R.id.textView47);
        TextView chat3 = (TextView)findViewById(R.id.textView57);
        TextView chat4 = (TextView)findViewById(R.id.textView67);
        TextView chat5 = (TextView)findViewById(R.id.textView70);
        TextView chat6 = (TextView)findViewById(R.id.textView81);
        TextView chat7 = (TextView)findViewById(R.id.textView89);

        review1.setOnClickListener(reListen);
        review2.setOnClickListener(reListen);
        logo.setOnClickListener(maListen);

        chat1.setOnClickListener(chListen);
        chat2.setOnClickListener(chListen);
        chat3.setOnClickListener(chListen);
        chat4.setOnClickListener(chListen);
        chat5.setOnClickListener(chListen);
        chat6.setOnClickListener(chListen);
        chat7.setOnClickListener(chListen);
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
    View.OnClickListener chListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(list.this, list_chatting.class);
            startActivity(gl);
        }
    };

}
