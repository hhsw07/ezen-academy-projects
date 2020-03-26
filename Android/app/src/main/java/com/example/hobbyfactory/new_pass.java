package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class new_pass extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.new_pass);

        Button cp = (Button) findViewById(R.id.change_pass);

        cp.setOnClickListener(cpListen);
    }

    View.OnClickListener cpListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent cp= new Intent(new_pass.this, login.class );
            startActivity(cp);
        }
    };
}

