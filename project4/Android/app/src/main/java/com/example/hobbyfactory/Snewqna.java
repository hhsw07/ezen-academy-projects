package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

public class Snewqna extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro04_newqna);


        Button mp = (Button)findViewById(R.id.go_cls2);
        Button gh = (Button)findViewById(R.id.go_hbc2);
        Button gm = (Button)findViewById(R.id.go_mycls2);
        Button gs = (Button)findViewById(R.id.go_sv2);
        ImageButton gt = (ImageButton)findViewById(R.id.go_title2);
        Button tn = (Button)findViewById(R.id.title_notice2);
        Button tf = (Button)findViewById(R.id.title_faq2);
        Button tq = (Button)findViewById(R.id.title_qna2);
        Button tr = (Button)findViewById(R.id.title_req2);

        mp.setOnClickListener(mpListen);
        gh.setOnClickListener(ghListen);
        gm.setOnClickListener(gmListen);
        gs.setOnClickListener(gsListen);
        gt.setOnClickListener(gtListen);
        tn.setOnClickListener(tnListen);
        tf.setOnClickListener(tfListen);
        tq.setOnClickListener(tqListen);
        tr.setOnClickListener(trListen);
    }

    View.OnClickListener mpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mp = new Intent(Snewqna.this, mypOrder.class);
            startActivity(mp);
        }
    };
    View.OnClickListener ghListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gh = new Intent(Snewqna.this, hb_faclass.class);
            startActivity(gh);
        }
    };
    View.OnClickListener gmListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gm = new Intent(Snewqna.this, hb_myclass.class);
            startActivity(gm);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gs = new Intent(Snewqna.this, Snotice.class);
            startActivity(gs);
        }
    };
    View.OnClickListener gtListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gt = new Intent(Snewqna.this, MainActivity.class);
            startActivity(gt);
        }
    };
    View.OnClickListener tnListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tn = new Intent(Snewqna.this, Snotice.class);
            startActivity(tn);
        }
    };
    View.OnClickListener tfListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tf = new Intent(Snewqna.this, SFAQ.class);
            startActivity(tf);
        }
    };
    View.OnClickListener tqListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tq = new Intent(Snewqna.this, Snewqna.class);
            startActivity(tq);
        }
    };
    View.OnClickListener trListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tr = new Intent(Snewqna.this, Sreqhost.class);
            startActivity(tr);
        }
    };
}

