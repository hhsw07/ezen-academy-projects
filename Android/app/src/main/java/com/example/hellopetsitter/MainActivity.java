package com.example.hellopetsitter;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button login = (Button)findViewById(R.id.go_login);
        Button cs = (Button)findViewById(R.id.go_cs);
        Button fs = (Button)findViewById(R.id.find_sitter);

        login.setOnClickListener(glListen);
        cs.setOnClickListener(csListen);
        fs.setOnClickListener(fsListen);
    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(MainActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener csListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent csl = new Intent(MainActivity.this, notice.class);
            startActivity(csl);
        }
    };
    View.OnClickListener fsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent fsl = new Intent(MainActivity.this, findsitter.class);
            startActivity(fsl);
        }
    };
}
