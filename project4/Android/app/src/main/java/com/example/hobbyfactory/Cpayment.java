package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class Cpayment extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.classpayment);
        Button gomcp = (Button) findViewById(R.id.go_mcp);

        gomcp.setOnClickListener(gmcpListen);
    }

    View.OnClickListener gmcpListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gcd= new Intent(Cpayment.this, MainActivity.class );
            startActivity(gcd);
        }
    };
}