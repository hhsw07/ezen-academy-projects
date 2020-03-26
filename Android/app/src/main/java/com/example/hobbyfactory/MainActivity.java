package com.example.hobbyfactory;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        Button gc = (Button)findViewById(R.id.go_cl);
        Button gp = (Button)findViewById(R.id.go_pl);
        Button mp = (Button)findViewById(R.id.go_cls);

        gc.setOnClickListener(gclListen);
        gp.setOnClickListener(gplListen);
        mp.setOnClickListener(mpListen);
    }
    View.OnClickListener gclListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gcl = new Intent(MainActivity.this, CLA.class);
            startActivity(gcl);
        }
    };
    View.OnClickListener gplListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gpl = new Intent(MainActivity.this, PLA.class);
            startActivity(gpl);
        }
    };
    View.OnClickListener mpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mp = new Intent(MainActivity.this, mypOrder.class);
            startActivity(mp);
        }
    };


}
