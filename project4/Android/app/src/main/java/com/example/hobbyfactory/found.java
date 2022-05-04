package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class found extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.found);

        Button fp = (Button) findViewById(R.id.find_pass);
        Button gl = (Button) findViewById(R.id.go_login2);

        fp.setOnClickListener(fpListen);
        gl.setOnClickListener(glListen);
    }

    View.OnClickListener fpListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent fp= new Intent(found.this, findPw.class );
            startActivity(fp);
        }
    };
    View.OnClickListener glListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gl= new Intent(found.this, login.class );
            startActivity(gl);
        }
    };
}

