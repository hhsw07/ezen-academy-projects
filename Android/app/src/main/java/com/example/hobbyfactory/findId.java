package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class findId extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.find_id);

        Button ifb = (Button) findViewById(R.id.id_find);

        ifb.setOnClickListener(ifbListen);
    }

    View.OnClickListener ifbListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent ifb= new Intent(findId.this, found.class );
            startActivity(ifb);
        }
    };
}

