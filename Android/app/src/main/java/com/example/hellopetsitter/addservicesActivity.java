package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class addservicesActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.addservices2);

        Button rs3 = (Button) findViewById(R.id.register3);

        rs3.setOnClickListener(rs3Listen);
    }
    View.OnClickListener rs3Listen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent rs3l = new Intent(addservicesActivity.this, sitteraddservicesActivity.class);
            startActivity(rs3l);
        }
    };
}