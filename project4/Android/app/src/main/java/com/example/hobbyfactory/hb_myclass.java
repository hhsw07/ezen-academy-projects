package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

public class hb_myclass extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hb_myclass);

        Button mp = (Button)findViewById(R.id.go_cls7);
        Button gh = (Button)findViewById(R.id.go_hbc7);
        Button gm = (Button)findViewById(R.id.go_mycls7);
        Button gs = (Button)findViewById(R.id.go_sv7);
        ImageButton gt = (ImageButton)findViewById(R.id.go_title7);


        mp.setOnClickListener(mpListen);
        gh.setOnClickListener(ghListen);
        gm.setOnClickListener(gmListen);
        gs.setOnClickListener(gsListen);
        gt.setOnClickListener(gtListen);


    }

    View.OnClickListener mpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mp = new Intent(hb_myclass.this, mypOrder.class);
            startActivity(mp);
        }
    };
    View.OnClickListener ghListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gh = new Intent(hb_myclass.this, hb_faclass.class);
            startActivity(gh);
        }
    };
    View.OnClickListener gmListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gm = new Intent(hb_myclass.this, hb_myclass.class);
            startActivity(gm);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gs = new Intent(hb_myclass.this, Snotice.class);
            startActivity(gs);
        }
    };
    View.OnClickListener gtListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gt = new Intent(hb_myclass.this, MainActivity.class);
            startActivity(gt);
        }
    };

}

