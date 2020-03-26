package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class Ppayment extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pdtpayment);

        Button gomsp = (Button) findViewById(R.id.go_msp);

        gomsp.setOnClickListener(gmspListen);
    }

    View.OnClickListener gmspListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gcd= new Intent(Ppayment.this, MainActivity.class );
            startActivity(gcd);
        }
    };
}