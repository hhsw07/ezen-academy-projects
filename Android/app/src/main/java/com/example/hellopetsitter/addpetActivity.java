package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class addpetActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.addpet);

        Button rs2 = (Button) findViewById(R.id.register2);

        rs2.setOnClickListener(rs2Listen);
    }
    View.OnClickListener rs2Listen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent rs2l = new Intent(addpetActivity.this, mypageaddpetActivity.class);
            startActivity(rs2l);
        }
    };
}