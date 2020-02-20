package com.example.pet_care;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class termActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.term);

        Button login = (Button)findViewById(R.id.go_login);
        Button next =(Button)findViewById(R.id.nextjoin);

        login.setOnClickListener(glListen);
        next.setOnClickListener(njListener);
    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(termActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener njListener = new View.OnClickListener() {
        Intent nj;
        @Override
        public void onClick(View v) {
            nj = new Intent(termActivity.this, joinActivity.class);
            startActivity(nj);
        }
    };
}
