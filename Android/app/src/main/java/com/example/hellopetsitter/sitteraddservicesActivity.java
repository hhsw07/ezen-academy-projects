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

        ac.setOnClickListener(acListen);
    }
    View.OnClickListener acListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent acl = new Intent(sitteraddservicesActivity.this, addaccountActivity.class);
            startActivity(acl);
        }
    };
}
