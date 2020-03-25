package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class Cdetail extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.classdetail);

        Button gocpm = (Button) findViewById(R.id.go_cpm);

        gocpm.setOnClickListener(gcpListen);
    }

    View.OnClickListener gcpListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gcp= new Intent(Cdetail.this, Cpayment.class );
            startActivity(gcp);
        }
    };
}