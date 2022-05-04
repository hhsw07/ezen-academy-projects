package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class Pdetail extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pdtdetail);

        Button goppm = (Button) findViewById(R.id.go_ppm);

        goppm.setOnClickListener(gppListen);
    }

    View.OnClickListener gppListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gpp= new Intent(Pdetail.this, Ppayment.class );
            startActivity(gpp);
        }
    };
}