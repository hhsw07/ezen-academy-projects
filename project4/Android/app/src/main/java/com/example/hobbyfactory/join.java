package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class join extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.join);

        Button bl = (Button) findViewById(R.id.backLogin);
        Button jc = (Button) findViewById(R.id.join_compl);

        bl.setOnClickListener(blListen);
        jc.setOnClickListener(jcListen);
    }

    View.OnClickListener blListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent bl= new Intent(join.this, login.class );
            startActivity(bl);
        }
    };

    View.OnClickListener jcListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent jc= new Intent(join.this, MainActivity.class );
            startActivity(jc);
        }
    };
}

