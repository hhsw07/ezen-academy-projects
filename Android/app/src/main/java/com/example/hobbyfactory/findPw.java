package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class findPw extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.find_pass);

        Button pf = (Button) findViewById(R.id.pass_find);

        pf.setOnClickListener(pfListen);
    }

    View.OnClickListener pfListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent pf= new Intent(findPw.this, new_pass.class );
            startActivity(pf);
        }
    };
}

