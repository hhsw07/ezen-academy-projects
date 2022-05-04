package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

public class Snotice extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro04_notice);


        Button mp = (Button)findViewById(R.id.go_cls3);
        Button gh = (Button)findViewById(R.id.go_hbc3);
        Button gm = (Button)findViewById(R.id.go_mycls3);
        Button gs = (Button)findViewById(R.id.go_sv3);
        ImageButton gt = (ImageButton)findViewById(R.id.go_title3);
        Button tn = (Button)findViewById(R.id.title_notice3);
        Button tf = (Button)findViewById(R.id.title_faq3);
        Button tq = (Button)findViewById(R.id.title_qna3);
        Button tr = (Button)findViewById(R.id.title_req3);

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
            Intent mp = new Intent(Snotice.this, mypOrder.class);
            startActivity(mp);
        }
    };
    View.OnClickListener ghListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gh = new Intent(Snotice.this, hb_faclass.class);
            startActivity(gh);
        }
    };
    View.OnClickListener gmListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gm = new Intent(Snotice.this, hb_myclass.class);
            startActivity(gm);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gs = new Intent(Snotice.this, Snotice.class);
            startActivity(gs);
        }
    };
    View.OnClickListener gtListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gt = new Intent(Snotice.this, MainActivity.class);
            startActivity(gt);
        }
    };
    View.OnClickListener tnListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tn = new Intent(Snotice.this, Snotice.class);
            startActivity(tn);
        }
    };
    View.OnClickListener tfListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tf = new Intent(Snotice.this, SFAQ.class);
            startActivity(tf);
        }
    };
    View.OnClickListener tqListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tq = new Intent(Snotice.this, Snewqna.class);
            startActivity(tq);
        }
    };
    View.OnClickListener trListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tr = new Intent(Snotice.this, Sreqhost.class);
            startActivity(tr);
        }
    };
}

