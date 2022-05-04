package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class sitteraddservicesActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.sitteraddservices);

        Button ac = (Button) findViewById(R.id.add_ac);
        Button gl = (Button) findViewById(R.id.go_list);

        ac.setOnClickListener(acListen);
        gl.setOnClickListener(glListen);
    }
    View.OnClickListener acListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent acl = new Intent(sitteraddservicesActivity.this, addaccountActivity.class);
            startActivity(acl);
        }
    };
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gll = new Intent(sitteraddservicesActivity.this, list.class);
            startActivity(gll);
        }
    };
}
