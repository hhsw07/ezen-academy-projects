package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

public class hb_faclass extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hb_faclass);

        Button mp = (Button)findViewById(R.id.go_cls6);
        Button gh = (Button)findViewById(R.id.go_hbc6);
        Button gm = (Button)findViewById(R.id.go_mycls6);
        Button gs = (Button)findViewById(R.id.go_sv6);
        ImageButton gt = (ImageButton)findViewById(R.id.go_title6);
        Button bh1 = (Button)findViewById(R.id.btn_hb016);
        Button bh2 = (Button)findViewById(R.id.btn_hb026);

        mp.setOnClickListener(mpListen);
        gh.setOnClickListener(ghListen);
        gm.setOnClickListener(gmListen);
        gs.setOnClickListener(gsListen);
        gt.setOnClickListener(gtListen);
        bh1.setOnClickListener(bh1Listen);
        bh2.setOnClickListener(bh2Listen);
    }

    View.OnClickListener mpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mp = new Intent(hb_faclass.this, mypOrder.class);
            startActivity(mp);
        }
    };
    View.OnClickListener ghListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gh = new Intent(hb_faclass.this, hb_faclass.class);
            startActivity(gh);
        }
    };
    View.OnClickListener gmListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gm = new Intent(hb_faclass.this, hb_myclass.class);
            startActivity(gm);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gs = new Intent(hb_faclass.this, Snotice.class);
            startActivity(gs);
        }
    };
    View.OnClickListener gtListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gt = new Intent(hb_faclass.this, MainActivity.class);
            startActivity(gt);
        }
    };
    View.OnClickListener bh1Listen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent bh1 = new Intent(hb_faclass.this, hb_faclass.class);
            startActivity(bh1);
        }
    };
    View.OnClickListener bh2Listen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent bh2 = new Intent(hb_faclass.this, hb_cart.class);
            startActivity(bh2);
        }
    };
}

