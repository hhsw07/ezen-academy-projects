package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class addaccountActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.addaccount);

        Button rs1 = (Button) findViewById(R.id.register1);

        rs1.setOnClickListener(rs1Listen);
    }
    View.OnClickListener rs1Listen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent rs1l = new Intent(addaccountActivity.this, sitterpageActivity.class);
            startActivity(rs1l);
        }
    };
}
