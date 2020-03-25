package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class PLA extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pdtlist);

        Button gopd = (Button) findViewById(R.id.go_pld);

        gopd.setOnClickListener(gpdListen);
    }

    View.OnClickListener gpdListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gpd= new Intent(PLA.this, Pdetail.class );
            startActivity(gpd);
        }
    };
}
