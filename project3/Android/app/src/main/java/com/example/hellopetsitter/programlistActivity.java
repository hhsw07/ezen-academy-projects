package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class programlistActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.programlist);

        Button pd = (Button)findViewById(R.id.proDetail);
        pd.setOnClickListener(pdListen);
    }
    View.OnClickListener pdListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent pdl = new Intent(programlistActivity.this, programdetailActivity.class);
            startActivity(pdl);
        }
    };
}
