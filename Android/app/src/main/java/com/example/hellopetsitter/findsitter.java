package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class findsitter extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.findsitter);

        Button search = (Button)findViewById(R.id.search_sitter);

        search.setOnClickListener(scListen);
    }
    View.OnClickListener scListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent scl = new Intent(findsitter.this, findresult.class);
            startActivity(scl);
        }
    };
}
