package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class CLA extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.classlist);

        Button gocd = (Button) findViewById(R.id.go_cld);

        gocd.setOnClickListener(gcdListen);
    }

    View.OnClickListener gcdListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gcd= new Intent(CLA.this, Cdetail.class );
            startActivity(gcd);
        }
    };
}

