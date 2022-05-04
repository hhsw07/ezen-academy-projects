package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class findresult extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.findresult);

        Button sd = (Button)findViewById(R.id.sitDetail);
        sd.setOnClickListener(sdListen);
    }
    View.OnClickListener sdListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent sdl = new Intent(findresult.this, sitter_detailActivity.class);
            startActivity(sdl);
        }
    };
}
